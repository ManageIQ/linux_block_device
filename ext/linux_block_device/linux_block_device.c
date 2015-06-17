/*
 * Ruby module to block device operations on Linux platforms.
 */

#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <linux/fs.h>
#include <malloc.h>

#include "ruby.h"

static const char *module_name = "LinuxBlockDevice";

static VALUE
lbd_size(VALUE self, VALUE rfd)	{
	int	fd;
	int64_t sz;
	
	fd = NUM2INT(rfd);
	
	if (ioctl(fd, BLKGETSIZE64, &sz) < 0)   {
		rb_raise(rb_eSystemCallError,
			"%s.size - ioctl failed on file descriptor: %d, %s\n",
			module_name,
			fd,
			strerror(errno)
		);
	}
	return OFFT2NUM(sz);
}

VALUE	mLinuxBlockDevice;

/*
 * Initialize the class.
 */
void Init_linux_block_device()	{
	/*
	 * Define the module.
	 */
	mLinuxBlockDevice = rb_define_module(module_name);

	rb_define_singleton_method(mLinuxBlockDevice, "size", lbd_size, 1);
}
