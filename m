Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F9A189B39
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 12:51:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2MDRpSSDoT5dbUTyzj2xUDUGP/BPZn2PFBsmJTd4Rz8=; b=SYvYiCwIh3QOj4
	Uzc1MCMo1G+Hi1bXP9C65Pzt8WRWLKh4DZFfIqscCP3xtVwVIPl64kp9JIi6UbGGzqkhM79yfHXzP
	tJ42mHM/IcpI8l4uqpbf1uOrWk5ofpGkPyQDMxNHPiHA5HOXRDltKc9IrxC70bi8AOoP44/7FtXQq
	CY+mxFz6lsDqj13u0wWau3AtOmAc8iWDc3hlueD9zh9lFoadilghJnl2L67W9bj7pEuBqvHO3oaXk
	1yJqjTihE5NAhdWZkaFAQu/PF+O8LW5jQx+yJq0jG5mH44fYJQuttx/wCHUB/o25MQ7lz6vpj3Yev
	IEsqZc9Y620cDW3/k/0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEXEE-0005M2-Pq; Wed, 18 Mar 2020 11:51:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEXE6-0005La-LN
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 11:51:12 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10DDE205ED;
 Wed, 18 Mar 2020 11:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584532269;
 bh=1Yb33p2EOgcIG+yF6C3ogUaPMdffTiWMrhOm8DQm7bM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qvb6ZWhVn28Qg7oOgvHErkfXXIlDizOs4yMIVZRaGpjLFjAU0jN2Qi+GJ9hdGt1x6
 oCZ6Wgq1P5omPGzSx7PyxGVaf+qptbxBgBSNrFd75c0lGPgTb6jYvByhE2kmnOs3VH
 F1dHYqNIgWq6TJh8cxtu/OexhJn8CDiSuyG3Nu1Q=
Date: Wed, 18 Mar 2020 12:51:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jolly Shah <jolly.shah@xilinx.com>
Subject: Re: [PATCH v3 21/24] firmware: xilinx: Add sysfs interface
Message-ID: <20200318115105.GA2472686@kroah.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
 <1583538452-1992-22-git-send-email-jolly.shah@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583538452-1992-22-git-send-email-jolly.shah@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_045110_744582_774117D7 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, keescook@chromium.org,
 Rajan Vaja <rajan.vaja@xilinx.com>, ard.biesheuvel@linaro.org,
 matt@codeblueprint.co.uk, dmitry.torokhov@gmail.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, Jolly Shah <jollys@xilinx.com>,
 rajanv@xilinx.com, sudeep.holla@arm.com, mingo@kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 03:47:29PM -0800, Jolly Shah wrote:
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
> + * echo 0xFFFFFFFF 0x1234ABCD > /sys/devices/platform/firmware\:zynqmp-firmware/ggs0
> + */

Do you really need a whole kernel_doc format for a static function?
Anyway...

> +static ssize_t ggs_store(struct device *device,
> +			 struct device_attribute *attr,
> +			 const char *buf, size_t count,
> +			 u32 reg)
> +{
> +	char *kern_buff, *inbuf, *tok;
> +	long mask, value;
> +	int ret;
> +	u32 ret_payload[PAYLOAD_ARG_CNT];
> +
> +	if (!device || !attr || !buf || !count || reg >= GSS_NUM_REGS)

How can !device, !attr, !buf, or !count ever happen?

Do not check for things that are impossible please.

> +		return -EINVAL;
> +
> +	kern_buff = kzalloc(count, GFP_KERNEL);
> +	if (!kern_buff)
> +		return -ENOMEM;
> +
> +	ret = strlcpy(kern_buff, buf, count);
> +	if (ret < 0) {
> +		count = -EFAULT;
> +		goto err;
> +	}
> +
> +	inbuf = kern_buff;
> +
> +	/* Read the write mask */
> +	tok = strsep(&inbuf, " ");
> +	if (!tok) {
> +		count = -EFAULT;
> +		goto err;
> +	}
> +
> +	ret = kstrtol(tok, 16, &mask);
> +	if (ret) {
> +		count = -EFAULT;
> +		goto err;
> +	}
> +
> +	/* Read the write value */
> +	tok = strsep(&inbuf, " ");
> +	if (!tok) {
> +		count = -EFAULT;
> +		goto err;
> +	}
> +
> +	ret = kstrtol(tok, 16, &value);
> +	if (ret) {
> +		count = -EFAULT;
> +		goto err;
> +	}

sysfs files are "one value per file" which prevents this string parsing
mess.  Please do not do that.

Again, one value per file, not X values.


> +
> +	ret = zynqmp_pm_read_ggs(reg, ret_payload);
> +	if (ret) {
> +		count = -EFAULT;
> +		goto err;
> +	}
> +	ret_payload[1] &= ~mask;
> +	value &= mask;
> +	value |= ret_payload[1];
> +
> +	ret = zynqmp_pm_write_ggs(reg, value);
> +	if (ret)
> +		count = -EFAULT;
> +
> +err:
> +	kfree(kern_buff);
> +
> +	return count;
> +}

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
> +	char *kern_buff, *inbuf, *tok;
> +	long mask, value;
> +	int ret;
> +	u32 ret_payload[PAYLOAD_ARG_CNT];
> +
> +	if (!device || !attr || !buf || !count || reg >= GSS_NUM_REGS)
> +		return -EINVAL;

Again, clean this up.

> +
> +	kern_buff = kzalloc(count, GFP_KERNEL);
> +	if (!kern_buff)
> +		return -ENOMEM;
> +
> +	ret = strlcpy(kern_buff, buf, count);
> +	if (ret < 0) {
> +		count = -EFAULT;
> +		goto err;
> +	}
> +
> +	inbuf = kern_buff;
> +
> +	/* Read the write mask */
> +	tok = strsep(&inbuf, " ");

No need to parse when there is only one value.

> +	if (!tok) {
> +		count = -EFAULT;
> +		goto err;
> +	}
> +
> +	ret = kstrtol(tok, 16, &mask);
> +	if (ret) {
> +		count = -EFAULT;
> +		goto err;
> +	}
> +
> +	/* Read the write value */
> +	tok = strsep(&inbuf, " ");
> +	if (!tok) {
> +		count = -EFAULT;
> +		goto err;
> +	}
> +
> +	ret = kstrtol(tok, 16, &value);
> +	if (ret) {
> +		count = -EFAULT;
> +		goto err;
> +	}
> +
> +	ret = zynqmp_pm_read_pggs(reg, ret_payload);
> +	if (ret) {
> +		count = -EFAULT;
> +		goto err;
> +	}
> +	ret_payload[1] &= ~mask;
> +	value &= mask;
> +	value |= ret_payload[1];
> +
> +	ret = zynqmp_pm_write_pggs(reg, value);
> +	if (ret)
> +		count = -EFAULT;
> +
> +err:
> +	kfree(kern_buff);
> +
> +	return count;
> +}

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
> +static const struct attribute_group ggs_attribute_group = {
> +	.attrs = zynqmp_ggs_attrs,
> +};
> +
> +const struct attribute_group *firmware_attribute_groups[] = {
> +	&ggs_attribute_group,
> +	NULL,
> +};

ATTRIBUTE_GROUPS()?



> +
>  static int zynqmp_firmware_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -910,6 +1226,7 @@ static struct platform_driver zynqmp_firmware_driver = {
>  	.driver = {
>  		.name = "zynqmp_firmware",
>  		.of_match_table = zynqmp_firmware_of_match,
> +		.dev_groups = firmware_attribute_groups,
>  	},
>  	.probe = zynqmp_firmware_probe,
>  	.remove = zynqmp_firmware_remove,
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
> index 725dccf..8ccaa39 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -13,6 +13,8 @@
>  #ifndef __FIRMWARE_ZYNQMP_H__
>  #define __FIRMWARE_ZYNQMP_H__
>  
> +#include <linux/device.h>

Why is this needed here?

> +
>  #define ZYNQMP_PM_VERSION_MAJOR	1
>  #define ZYNQMP_PM_VERSION_MINOR	0
>  
> @@ -42,6 +44,8 @@
>  
>  #define ZYNQMP_PM_MAX_QOS		100U
>  
> +#define GSS_NUM_REGS	(4)
> +
>  /* Node capabilities */
>  #define	ZYNQMP_PM_CAPABILITY_ACCESS	0x1U
>  #define	ZYNQMP_PM_CAPABILITY_CONTEXT	0x2U


You are not adding anything that depends on device.h in this file, so
just include the needed .h file in the .c file that needs it please.

Helps unwind .h include messes.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
