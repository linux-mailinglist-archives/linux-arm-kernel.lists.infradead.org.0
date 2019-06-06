Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B80F337529
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 15:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxLyUVoAK+V7N/DoucSOq3pcd+2Gdilhz2cK4Gn1qXk=; b=lSdAXXAZqVsdGm
	EMvj0o7S3SIuCgCg4yul0Jc+SjXtsvSdsZRYQx9DDTqPXznHecoWmI64NKMtSyT/tJuj+3HNuV0Al
	ydu91YPkkf+q4/ofcI1PLdyCFnJkBXTCwEj0yE1l0EoKCjwSZNMBtVUSBTO99cK1ff1dLe95m5ud7
	tsvW3YGJT2dJykUwsD24XdTtT6HEPu7KkfQu8bXkihtwnDrUOm6APyJQyjq7UuogMoXNcCCqpr58P
	VGUK6uaHXQN7yK31+Mawvgluzttu+VLIpqc4NM0Rx/kg3nl5QaP4m5ssjCR9Q86VSfDjKDSIUHkT1
	JUKPT7m2fGww41T3HiVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYsOW-000797-QD; Thu, 06 Jun 2019 13:25:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYsOP-00078X-53
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 13:25:22 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 997C620866;
 Thu,  6 Jun 2019 13:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559827520;
 bh=dp7g/H+79z/b4Sr+YnW8NJAD90DROpv/HAND1DJpnck=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QZw7oLnA9JXkcfkQAe8weiwNqXZjf3cpoNhfBKK7qH0efI9qGEEePX/x6XXRNO+D6
 IxCjI2UOkQXHJpqMbQZH/ldV8n31gHNCJHk89neX4A+6CteSwfnBsTYCcD2W8KrkAZ
 Pz3kuo9I2ZEY6MA7Z15zLQ3g3f6wuk3zZ2bK6LGk=
Date: Thu, 6 Jun 2019 15:25:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dragan Cvetic <dragan.cvetic@xilinx.com>
Subject: Re: [PATCH V4 02/12] misc: xilinx-sdfec: add core driver
Message-ID: <20190606132517.GA7943@kroah.com>
References: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
 <1558784245-108751-3-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558784245-108751-3-git-send-email-dragan.cvetic@xilinx.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_062521_224038_FF7607E7 
X-CRM114-Status: GOOD (  33.67  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arnd@arndb.de,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 25, 2019 at 12:37:15PM +0100, Dragan Cvetic wrote:
> Implements an platform driver that matches with xlnx,
> sd-fec-1.1 device tree node and registers as a character
> device, including:
> - SD-FEC driver binds to sdfec DT node.
> - creates and initialise an initial driver dev structure.
> - add the driver in Linux build and Kconfig.
> 
> Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
> Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> ---
>  drivers/misc/Kconfig             |  12 ++++
>  drivers/misc/Makefile            |   1 +
>  drivers/misc/xilinx_sdfec.c      | 136 +++++++++++++++++++++++++++++++++++++++
>  include/uapi/misc/xilinx_sdfec.h |  44 +++++++++++++
>  4 files changed, 193 insertions(+)
>  create mode 100644 drivers/misc/xilinx_sdfec.c
>  create mode 100644 include/uapi/misc/xilinx_sdfec.h
> 
> diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> index 6a0365b..15d93a7 100644
> --- a/drivers/misc/Kconfig
> +++ b/drivers/misc/Kconfig
> @@ -480,6 +480,18 @@ config PCI_ENDPOINT_TEST
>             Enable this configuration option to enable the host side test driver
>             for PCI Endpoint.
>  
> +config XILINX_SDFEC
> +	tristate "Xilinx SDFEC 16"
> +	help

No dependancies at all?  Nice!  Let's see what 0-day has to say about it :)

> +	  This option enables support for the Xilinx SDFEC (Soft Decision
> +	  Forward Error Correction) driver. This enables a char driver
> +	  for the SDFEC.
> +
> +	  You may select this driver if your design instantiates the
> +	  SDFEC(16nm) hardened block. To compile this as a module choose M.
> +
> +	  If unsure, say N.
> +
>  config MISC_RTSX
>  	tristate
>  	default MISC_RTSX_PCI || MISC_RTSX_USB
> diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
> index b9affcd..29fd1d7 100644
> --- a/drivers/misc/Makefile
> +++ b/drivers/misc/Makefile
> @@ -49,6 +49,7 @@ obj-$(CONFIG_VMWARE_VMCI)	+= vmw_vmci/
>  obj-$(CONFIG_LATTICE_ECP3_CONFIG)	+= lattice-ecp3-config.o
>  obj-$(CONFIG_SRAM)		+= sram.o
>  obj-$(CONFIG_SRAM_EXEC)		+= sram-exec.o
> +obj-$(CONFIG_XILINX_SDFEC)	+= xilinx_sdfec.o
>  obj-y				+= mic/
>  obj-$(CONFIG_GENWQE)		+= genwqe/
>  obj-$(CONFIG_ECHO)		+= echo/
> diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> new file mode 100644
> index 0000000..c437f78
> --- /dev/null
> +++ b/drivers/misc/xilinx_sdfec.c
> @@ -0,0 +1,136 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Xilinx SDFEC
> + *
> + * Copyright (C) 2019 Xilinx, Inc.
> + *
> + * Description:
> + * This driver is developed for SDFEC16 (Soft Decision FEC 16nm)
> + * IP. It exposes a char device interface in sysfs and supports file
> + * operations like  open(), close() and ioctl().

There are no "char device interfaces in sysfs".  What are you trying to
say here?

> + */
> +
> +#include <linux/miscdevice.h>
> +#include <linux/io.h>
> +#include <linux/interrupt.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of_platform.h>
> +#include <linux/poll.h>
> +#include <linux/slab.h>
> +#include <linux/clk.h>
> +
> +#include <uapi/misc/xilinx_sdfec.h>
> +
> +static atomic_t xsdfec_ndevs = ATOMIC_INIT(0);

why an atomic variable?  What are you using this for?  Why not an idr?

> +
> +/**
> + * struct xsdfec_dev - Driver data for SDFEC
> + * @regs: device physical base address
> + * @dev: pointer to device struct
> + * @config: Configuration of the SDFEC device
> + * @open_count: Count of char device being opened

Ugh ugh ugh.  Don't try to count the number of times open is called.
It's pointless and almost always wrong.  And it doesn't stop anyone from
really accessing the device "twice".  If they do stupid things like
that, they deserve the errors that it will cause...

> + * @miscdev: Misc device handle
> + * @irq_lock: Driver spinlock

locks what?  The irq?

> + *
> + * This structure contains necessary state for SDFEC driver to operate
> + */
> +struct xsdfec_dev {
> +	void __iomem *regs;
> +	struct device *dev;

Is this the parent pointer?  Or something else?

> +	struct xsdfec_config config;
> +	atomic_t open_count;
> +	struct miscdevice miscdev;
> +	/* Spinlock to protect state_updated and stats_updated */
> +	spinlock_t irq_lock;
> +};
> +
> +static const struct file_operations xsdfec_fops = {
> +	.owner = THIS_MODULE,
> +};

empty fops?

> +
> +#define NAMEBUF_SIZE ((size_t)32)

what is this for?

> +static int xsdfec_probe(struct platform_device *pdev)
> +{
> +	struct xsdfec_dev *xsdfec;
> +	struct device *dev;
> +	struct resource *res;
> +	int err;
> +	char buf[NAMEBUF_SIZE];
> +
> +	xsdfec = devm_kzalloc(&pdev->dev, sizeof(*xsdfec), GFP_KERNEL);
> +	if (!xsdfec)
> +		return -ENOMEM;
> +
> +	xsdfec->dev = &pdev->dev;
> +	xsdfec->config.fec_id = atomic_read(&xsdfec_ndevs);
> +	spin_lock_init(&xsdfec->irq_lock);
> +
> +	dev = xsdfec->dev;
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	xsdfec->regs = devm_ioremap_resource(dev, res);
> +	if (IS_ERR(xsdfec->regs)) {
> +		dev_err(dev, "Unable to map resource");

doesn't this call already print an error?

> +		err = PTR_ERR(xsdfec->regs);
> +		goto err_xsdfec_dev;
> +	}
> +
> +	/* Save driver private data */
> +	platform_set_drvdata(pdev, xsdfec);
> +
> +	snprintf(buf, NAMEBUF_SIZE, "xsdfec%d", xsdfec->config.fec_id);
> +	xsdfec->miscdev.minor = MISC_DYNAMIC_MINOR;
> +	xsdfec->miscdev.name = buf;
> +	xsdfec->miscdev.fops = &xsdfec_fops;
> +	xsdfec->miscdev.parent = dev;
> +	err = misc_register(&xsdfec->miscdev);
> +	if (err) {
> +		dev_err(dev, "Unable to register device");

Print the error number that was returned to you?

> +		goto err_xsdfec_dev;
> +	}
> +
> +	atomic_set(&xsdfec->open_count, 1);
> +	dev_info(dev, "XSDFEC%d Probe Successful", xsdfec->config.fec_id);

No need to be noisy when things work correctly, just keep on going.

> +	atomic_inc(&xsdfec_ndevs);
> +	return 0;
> +
> +	/* Failure cleanup */
> +err_xsdfec_dev:
> +	return err;

You cleaned up nothing, not good at all :(

> +}
> +
> +static int xsdfec_remove(struct platform_device *pdev)
> +{
> +	struct xsdfec_dev *xsdfec;
> +
> +	xsdfec = platform_get_drvdata(pdev);
> +	if (!xsdfec)
> +		return -ENODEV;

How can this be null?

> +
> +	misc_deregister(&xsdfec->miscdev);
> +	atomic_dec(&xsdfec_ndevs);
> +	return 0;

You free nothing?

You are leaking resources like crazy here, this is not ok at all.

> +}
> +
> +static const struct of_device_id xsdfec_of_match[] = {
> +	{
> +		.compatible = "xlnx,sd-fec-1.1",
> +	},
> +	{ /* end of table */ }
> +};
> +MODULE_DEVICE_TABLE(of, xsdfec_of_match);
> +
> +static struct platform_driver xsdfec_driver = {
> +	.driver = {
> +		.name = "xilinx-sdfec",
> +		.of_match_table = xsdfec_of_match,
> +	},
> +	.probe = xsdfec_probe,
> +	.remove =  xsdfec_remove,
> +};
> +
> +module_platform_driver(xsdfec_driver);
> +
> +MODULE_AUTHOR("Xilinx, Inc");
> +MODULE_DESCRIPTION("Xilinx SD-FEC16 Driver");
> +MODULE_LICENSE("GPL");
> diff --git a/include/uapi/misc/xilinx_sdfec.h b/include/uapi/misc/xilinx_sdfec.h
> new file mode 100644
> index 0000000..1b8a63f
> --- /dev/null
> +++ b/include/uapi/misc/xilinx_sdfec.h
> @@ -0,0 +1,44 @@
> +/* SPDX-License-Identifier: GPL-2.0+ WITH Linux-syscall-note */
> +/*
> + * Xilinx SD-FEC
> + *
> + * Copyright (C) 2016 - 2017 Xilinx, Inc.
> + *
> + * Description:
> + * This driver is developed for SDFEC16 IP. It provides a char device
> + * in sysfs and supports file operations like open(), close() and ioctl().
> + */
> +#ifndef __XILINX_SDFEC_H__
> +#define __XILINX_SDFEC_H__
> +
> +#include <linux/types.h>
> +
> +/**
> + * enum xsdfec_state - State.
> + * @XSDFEC_INIT: Driver is initialized.
> + * @XSDFEC_STARTED: Driver is started.
> + * @XSDFEC_STOPPED: Driver is stopped.
> + * @XSDFEC_NEEDS_RESET: Driver needs to be reset.
> + * @XSDFEC_PL_RECONFIGURE: Programmable Logic needs to be recofigured.
> + *
> + * This enum is used to indicate the state of the driver.
> + */
> +enum xsdfec_state {
> +	XSDFEC_INIT = 0,
> +	XSDFEC_STARTED,
> +	XSDFEC_STOPPED,
> +	XSDFEC_NEEDS_RESET,
> +	XSDFEC_PL_RECONFIGURE,
> +};

This is not used in this patch, why have it?

> +
> +/**
> + * struct xsdfec_config - Configuration of SD-FEC core.
> + * @fec_id: ID of SD-FEC instance. ID is limited to the number of active
> + *          SD-FEC's in the FPGA and is related to the driver instance
> + *          Minor number.
> + */
> +struct xsdfec_config {
> +	__s32 fec_id;

Why signed?

And you are NOT tieing this to the minor number at all, don't lie in the
comment, that is only going to cause you major problems.

Why does userspace care about this structure?

Do I need to really review the rest of this series?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
