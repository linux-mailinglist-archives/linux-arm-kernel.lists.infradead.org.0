Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D16E13ACA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:53:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DinM5v0UXfrFYHNXHZOC9990Gfu16QqUlWsdMyK5IWI=; b=TJ9tPRkhW/9Yq9
	FaGXgipOGtEhMsYoSg/t5ZJI9UL0FbvEQ4xn38FI/OcA8ifr+/vL/Y3AAQtovyK4Q1b7VZUNxBPBL
	iVLhwzGOIwOFnBpapHtlIZYv2iMD5bBrEr/6HIav3nruHKyei4nPBiaeyFTnY90qPtW8acGoLPBKc
	pLd1zrvEMh1rBZvBdEovJWudEEPN81mZ6/J52ZMQjqciLWQTYvWGJz0wk24pRCHRG+qiBrcMXPl0I
	X7J7IjlNVUtxxmTmAlgFvYE0aXbMCmrwJAkKSi6MS7r3fuJziuPISVvhbeABKN9JzstivLaeLwQ1+
	aA8NV6MXWgKvDopx8ilw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNZC-0008G2-RS; Tue, 14 Jan 2020 14:53:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNYy-0008Eo-FE
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:53:04 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F20E222C4;
 Tue, 14 Jan 2020 14:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579013580;
 bh=aBwCATTPKFe/W1W+MZmlLlTUVtfHiH2bcEpzaDeGebk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ve+8LSWqX6+UXlfpssyFPuqMqnaH+f60E06Qrm6cAwDhU4x7oAj4p18gkRXjGTaHz
 OlQk82Lbz9vis47uXDxqkIgV2BTI9HVbehOtu6Y7iCYx/38oecVujQZOuML50TSXZ/
 OTdJ3FRo0VL2CARawgAh1/e5Irl21k+QrtO1ZJdo=
Date: Tue, 14 Jan 2020 15:52:57 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jolly Shah <jolly.shah@xilinx.com>
Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Message-ID: <20200114145257.GA1910108@kroah.com>
References: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
 <1578527663-10243-2-git-send-email-jolly.shah@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578527663-10243-2-git-send-email-jolly.shah@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_065300_556686_5EA50B4D 
X-CRM114-Status: GOOD (  28.25  )
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: keescook@chromium.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 ard.biesheuvel@linaro.org, matt@codeblueprint.co.uk, dmitry.torokhov@gmail.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 Jolly Shah <jollys@xilinx.com>, rajanv@xilinx.com, sudeep.holla@arm.com,
 mingo@kernel.org, linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 03:54:20PM -0800, Jolly Shah wrote:
> From: Rajan Vaja <rajan.vaja@xilinx.com>
> 
> Add Firmware-ggs sysfs interface which provides read/write
> interface to global storage registers.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Jolly Shah <jollys@xilinx.com>
> ---
> Changes in v2:
>  - Updated Linux kernel version in documentation.
>  - Used DEVICE_ATTR_* and ATTRIBUTE_GROUPS macros.
>  - Free Kobject structure in case of error.
>  - Resolved smatch errors.
>  - Updated Signed-off-by sequence.
> ---
>  Documentation/ABI/stable/sysfs-firmware-zynqmp |  50 +++++
>  drivers/firmware/xilinx/Makefile               |   2 +-
>  drivers/firmware/xilinx/zynqmp-ggs.c           | 284 +++++++++++++++++++++++++
>  drivers/firmware/xilinx/zynqmp.c               |  32 +++
>  include/linux/firmware/xlnx-zynqmp.h           |  10 +
>  5 files changed, 377 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/ABI/stable/sysfs-firmware-zynqmp
>  create mode 100644 drivers/firmware/xilinx/zynqmp-ggs.c
> 
> diff --git a/Documentation/ABI/stable/sysfs-firmware-zynqmp b/Documentation/ABI/stable/sysfs-firmware-zynqmp
> new file mode 100644
> index 0000000..cffa2fc
> --- /dev/null
> +++ b/Documentation/ABI/stable/sysfs-firmware-zynqmp
> @@ -0,0 +1,50 @@
> +What:		/sys/firmware/zynqmp/ggs*

Why are these attributes just not hanging off of the platform device for
the firmware controller?  Why do you need a new subdir under "firmware"?

> +Date:		January 2018
> +KernelVersion:	5.5

5.6?  :)

> +Contact:	"Jolly Shah" <jollys@xilinx.com>
> +Description:
> +		Read/Write PMU global general storage register value,
> +		GLOBAL_GEN_STORAGE{0:3}.
> +		Global general storage register that can be used
> +		by system to pass information between masters.
> +
> +		The register is reset during system or power-on
> +		resets. Three registers are used by the FSBL and
> +		other Xilinx software products: GLOBAL_GEN_STORAGE{4:6}.
> +
> +		Usage:
> +		# cat /sys/firmware/zynqmp/ggs0
> +		# echo <mask> <value> > /sys/firmware/zynqmp/ggs0
> +
> +		Example:
> +		# cat /sys/firmware/zynqmp/ggs0
> +		# echo 0xFFFFFFFF 0x1234ABCD > /sys/firmware/zynqmp/ggs0
> +
> +Users:		Xilinx
> +
> +What:		/sys/firmware/zynqmp/pggs*
> +Date:		January 2018
> +KernelVersion:	5.5
> +Contact:	"Jolly Shah" <jollys@xilinx.com>
> +Description:
> +		Read/Write PMU persistent global general storage register
> +		value, PERS_GLOB_GEN_STORAGE{0:3}.
> +		Persistent global general storage register that
> +		can be used by system to pass information between
> +		masters.
> +
> +		This register is only reset by the power-on reset
> +		and maintains its value through a system reset.
> +		Four registers are used by the FSBL and other Xilinx
> +		software products: PERS_GLOB_GEN_STORAGE{4:7}.
> +		Register is reset only by a POR reset.
> +
> +		Usage:
> +		# cat /sys/firmware/zynqmp/pggs0
> +		# echo <mask> <value> > /sys/firmware/zynqmp/pggs0
> +
> +		Example:
> +		# cat /sys/firmware/zynqmp/pggs0
> +		# echo 0xFFFFFFFF 0x1234ABCD > /sys/firmware/zynqmp/pggs0
> +
> +Users:		Xilinx
> diff --git a/drivers/firmware/xilinx/Makefile b/drivers/firmware/xilinx/Makefile
> index 875a537..1e8643c 100644
> --- a/drivers/firmware/xilinx/Makefile
> +++ b/drivers/firmware/xilinx/Makefile
> @@ -1,5 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
>  # Makefile for Xilinx firmwares
>  
> -obj-$(CONFIG_ZYNQMP_FIRMWARE) += zynqmp.o
> +obj-$(CONFIG_ZYNQMP_FIRMWARE) += zynqmp.o zynqmp-ggs.o
>  obj-$(CONFIG_ZYNQMP_FIRMWARE_DEBUG) += zynqmp-debug.o
> diff --git a/drivers/firmware/xilinx/zynqmp-ggs.c b/drivers/firmware/xilinx/zynqmp-ggs.c
> new file mode 100644
> index 0000000..e2a6700
> --- /dev/null
> +++ b/drivers/firmware/xilinx/zynqmp-ggs.c
> @@ -0,0 +1,284 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Xilinx Zynq MPSoC Firmware layer
> + *
> + *  Copyright (C) 2014-2018 Xilinx, Inc.
> + *
> + *  Jolly Shah <jollys@xilinx.com>
> + *  Rajan Vaja <rajanv@xilinx.com>
> + */
> +
> +#include <linux/compiler.h>
> +#include <linux/of.h>
> +#include <linux/init.h>
> +#include <linux/module.h>
> +#include <linux/uaccess.h>
> +#include <linux/slab.h>
> +#include <linux/firmware/xlnx-zynqmp.h>
> +
> +static ssize_t read_register(char *buf, u32 ioctl_id, u32 reg)
> +{
> +	int ret;
> +	u32 ret_payload[PAYLOAD_ARG_CNT];
> +	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
> +
> +	if (IS_ERR(eemi_ops) || !eemi_ops->ioctl)
> +		return -EFAULT;
> +
> +	ret = eemi_ops->ioctl(0, ioctl_id, reg, 0, ret_payload);
> +	if (ret)
> +		return ret;
> +
> +	return sprintf(buf, "0x%x\n", ret_payload[1]);
> +}
> +
> +static ssize_t write_register(const char *buf, size_t count, u32 read_ioctl,
> +			      u32 write_ioctl, u32 reg)
> +{
> +	char *kern_buff, *inbuf, *tok;
> +	long mask, value;
> +	int ret;
> +	u32 ret_payload[PAYLOAD_ARG_CNT];
> +	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
> +
> +	if (IS_ERR(eemi_ops) || !eemi_ops->ioctl)
> +		return -EFAULT;
> +
> +	kern_buff = kzalloc(count, GFP_KERNEL);
> +	if (!kern_buff)
> +		return -ENOMEM;
> +
> +	ret = strlcpy(kern_buff, buf, count);
> +	if (ret < 0) {
> +		ret = -EFAULT;
> +		goto err;
> +	}
> +
> +	inbuf = kern_buff;
> +
> +	/* Read the write mask */
> +	tok = strsep(&inbuf, " ");
> +	if (!tok) {
> +		ret = -EFAULT;

If you just set count to the error value, no need to test the value of
ret when you exit.  Not a big deal...

> +		goto err;
> +	}
> +
> +	ret = kstrtol(tok, 16, &mask);
> +	if (ret) {
> +		ret = -EFAULT;
> +		goto err;
> +	}
> +
> +	/* Read the write value */
> +	tok = strsep(&inbuf, " ");
> +	if (!tok) {
> +		ret = -EFAULT;
> +		goto err;
> +	}
> +
> +	ret = kstrtol(tok, 16, &value);
> +	if (ret) {
> +		ret = -EFAULT;
> +		goto err;
> +	}
> +
> +	ret = eemi_ops->ioctl(0, read_ioctl, reg, 0, ret_payload);

This feels "tricky", if you tie this to the device you have your driver
bound to, will this make it easier instead of having to go through the
ioctl callback?


> +	if (ret) {
> +		ret = -EFAULT;
> +		goto err;
> +	}
> +	ret_payload[1] &= ~mask;
> +	value &= mask;
> +	value |= ret_payload[1];
> +
> +	ret = eemi_ops->ioctl(0, write_ioctl, reg, value, NULL);
> +	if (ret)
> +		ret = -EFAULT;
> +
> +err:
> +	kfree(kern_buff);
> +	if (ret)
> +		return ret;
> +
> +	return count;
> +}
> +
> +/**
> + * ggs_show - Show global general storage (ggs) sysfs attribute
> + * @device: Device structure
> + * @attr: Device attribute structure
> + * @buf: Requested available shutdown_scope attributes string
> + * @reg: Register number
> + *
> + * Return:Number of bytes printed into the buffer.
> + *
> + * Helper function for viewing a ggs register value.
> + *
> + * User-space interface for viewing the content of the ggs0 register.
> + * cat /sys/firmware/zynqmp/ggs0
> + */
> +static ssize_t ggs_show(struct device *device,
> +			struct device_attribute *attr,
> +			char *buf,
> +			u32 reg)
> +{
> +	return read_register(buf, IOCTL_READ_GGS, reg);
> +}
> +
> +/**
> + * ggs_store - Store global general storage (ggs) sysfs attribute
> + * @device: Device structure
> + * @attr: Device attribute structure
> + * @buf: User entered shutdown_scope attribute string
> + * @count: Size of buf
> + * @reg: Register number
> + *
> + * Return: count argument if request succeeds, the corresponding
> + * error code otherwise
> + *
> + * Helper function for storing a ggs register value.
> + *
> + * For example, the user-space interface for storing a value to the
> + * ggs0 register:
> + * echo 0xFFFFFFFF 0x1234ABCD > /sys/firmware/zynqmp/ggs0
> + */
> +static ssize_t ggs_store(struct device *device,
> +			 struct device_attribute *attr,
> +			 const char *buf, size_t count,
> +			 u32 reg)
> +{
> +	if (!device || !attr || !buf || !count || reg >= GSS_NUM_REGS)
> +		return -EINVAL;
> +
> +	return write_register(buf, count, IOCTL_READ_GGS, IOCTL_WRITE_GGS, reg);
> +}
> +
> +/* GGS register show functions */
> +#define GGS0_SHOW(N)						\
> +	ssize_t ggs##N##_show(struct device *device,		\
> +			      struct device_attribute *attr,	\
> +			      char *buf)			\
> +	{							\
> +		return ggs_show(device, attr, buf, N);		\
> +	}
> +
> +static GGS0_SHOW(0);
> +static GGS0_SHOW(1);
> +static GGS0_SHOW(2);
> +static GGS0_SHOW(3);
> +
> +/* GGS register store function */
> +#define GGS0_STORE(N)						\
> +	ssize_t ggs##N##_store(struct device *device,		\
> +			       struct device_attribute *attr,	\
> +			       const char *buf,			\
> +			       size_t count)			\
> +	{							\
> +		return ggs_store(device, attr, buf, count, N);	\
> +	}
> +
> +static GGS0_STORE(0);
> +static GGS0_STORE(1);
> +static GGS0_STORE(2);
> +static GGS0_STORE(3);
> +
> +/**
> + * pggs_show - Show persistent global general storage (pggs) sysfs attribute
> + * @device: Device structure
> + * @attr: Device attribute structure
> + * @buf: Requested available shutdown_scope attributes string
> + * @reg: Register number
> + *
> + * Return:Number of bytes printed into the buffer.
> + *
> + * Helper function for viewing a pggs register value.
> + */
> +static ssize_t pggs_show(struct device *device,
> +			 struct device_attribute *attr,
> +			 char *buf,
> +			 u32 reg)
> +{
> +	return read_register(buf, IOCTL_READ_PGGS, reg);
> +}
> +
> +/**
> + * pggs_store - Store persistent global general storage (pggs) sysfs attribute
> + * @device: Device structure
> + * @attr: Device attribute structure
> + * @buf: User entered shutdown_scope attribute string
> + * @count: Size of buf
> + * @reg: Register number
> + *
> + * Return: count argument if request succeeds, the corresponding
> + * error code otherwise
> + *
> + * Helper function for storing a pggs register value.
> + */
> +static ssize_t pggs_store(struct device *device,
> +			  struct device_attribute *attr,
> +			  const char *buf, size_t count,
> +			  u32 reg)
> +{
> +	return write_register(buf, count, IOCTL_READ_PGGS,
> +			      IOCTL_WRITE_PGGS, reg);
> +}
> +
> +#define PGGS0_SHOW(N)						\
> +	ssize_t pggs##N##_show(struct device *device,		\
> +			       struct device_attribute *attr,	\
> +			       char *buf)			\
> +	{							\
> +		return pggs_show(device, attr, buf, N);		\
> +	}
> +
> +#define PGGS0_STORE(N)						\
> +	ssize_t pggs##N##_store(struct device *device,		\
> +				struct device_attribute *attr,	\
> +				const char *buf,		\
> +				size_t count)			\
> +	{							\
> +		return pggs_store(device, attr, buf, count, N);	\
> +	}
> +
> +/* PGGS register show functions */
> +static PGGS0_SHOW(0);
> +static PGGS0_SHOW(1);
> +static PGGS0_SHOW(2);
> +static PGGS0_SHOW(3);
> +
> +/* PGGS register store functions */
> +static PGGS0_STORE(0);
> +static PGGS0_STORE(1);
> +static PGGS0_STORE(2);
> +static PGGS0_STORE(3);
> +
> +/* GGS register attributes */
> +static DEVICE_ATTR_RW(ggs0);
> +static DEVICE_ATTR_RW(ggs1);
> +static DEVICE_ATTR_RW(ggs2);
> +static DEVICE_ATTR_RW(ggs3);
> +
> +/* PGGS register attributes */
> +static DEVICE_ATTR_RW(pggs0);
> +static DEVICE_ATTR_RW(pggs1);
> +static DEVICE_ATTR_RW(pggs2);
> +static DEVICE_ATTR_RW(pggs3);
> +
> +static struct attribute *zynqmp_ggs_attrs[] = {
> +	&dev_attr_ggs0.attr,
> +	&dev_attr_ggs1.attr,
> +	&dev_attr_ggs2.attr,
> +	&dev_attr_ggs3.attr,
> +	&dev_attr_pggs0.attr,
> +	&dev_attr_pggs1.attr,
> +	&dev_attr_pggs2.attr,
> +	&dev_attr_pggs3.attr,
> +	NULL,
> +};
> +
> +ATTRIBUTE_GROUPS(zynqmp_ggs);
> +
> +int zynqmp_pm_ggs_init(struct kobject *parent_kobj)
> +{
> +	return sysfs_create_group(parent_kobj, zynqmp_ggs_groups[0]);

You might be racing userspace here and loosing :(

> +}
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index 75bdfaa..4c1117d 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -473,6 +473,10 @@ static inline int zynqmp_is_valid_ioctl(u32 ioctl_id)
>  	case IOCTL_GET_PLL_FRAC_MODE:
>  	case IOCTL_SET_PLL_FRAC_DATA:
>  	case IOCTL_GET_PLL_FRAC_DATA:
> +	case IOCTL_WRITE_GGS:
> +	case IOCTL_READ_GGS:
> +	case IOCTL_WRITE_PGGS:
> +	case IOCTL_READ_PGGS:

Huh???

>  		return 1;
>  	default:
>  		return 0;
> @@ -704,6 +708,28 @@ const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
>  }
>  EXPORT_SYMBOL_GPL(zynqmp_pm_get_eemi_ops);
>  
> +static int zynqmp_pm_sysfs_init(void)
> +{
> +	struct kobject *zynqmp_kobj;
> +	int ret;
> +
> +	zynqmp_kobj = kobject_create_and_add("zynqmp", firmware_kobj);
> +	if (!zynqmp_kobj) {
> +		pr_err("zynqmp: Firmware kobj add failed.\n");
> +		return -ENOMEM;
> +	}
> +
> +	ret = zynqmp_pm_ggs_init(zynqmp_kobj);
> +	if (ret) {
> +		kobject_put(zynqmp_kobj);
> +		pr_err("%s() GGS init fail with error %d\n",
> +		       __func__, ret);
> +		goto err;
> +	}
> +err:
> +	return ret;
> +}
> +
>  static int zynqmp_firmware_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -751,6 +777,12 @@ static int zynqmp_firmware_probe(struct platform_device *pdev)
>  	/* Assign eemi_ops_table */
>  	eemi_ops_tbl = &eemi_ops;
>  
> +	ret = zynqmp_pm_sysfs_init();

See, you have a platform device, hang the attributes off of that instead
of making a kobject and detatching yourself from the global device tree!

Please redo this, I think it will make it a lot simpler and more
obvious.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
