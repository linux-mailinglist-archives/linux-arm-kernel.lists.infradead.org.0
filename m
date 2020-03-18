Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB3D189B64
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 12:54:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SI+OzfWin2BS9fevI+oWWRIgRWyVNEeiqUnC73rfGFc=; b=ptc5zAfsA9W3C0
	Q0/0QM3MpDN1Oedsw2IFxhD4mdEka5MPZFfPfjM52cTKLhoAKQ5hDMDLTo4I0J8Q968XZ62iuNr6d
	SC99Pc2xfybWBoC2fhkyonL+/mJclu7bKFNLr78iLiehAxGtP0jAkxgV6GwgMoNjsKU5CX5bwansR
	bam2zyUedmH72Rndh18Gg9qeTgdBJiiWbE3K37/MVCJNWPnejtkWCB61C9+AsTEyVQFuOueVSZ95C
	YMb7w3hvEJNL/cfdHnm2FwwEA0LjKYkOdeBoYMErcVWVXrsQFBJ7EoRQpz3Vn817DhWlPYgscof8c
	bc7o/tLs0EiS7Y560jmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEXHC-0007lT-E3; Wed, 18 Mar 2020 11:54:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEXGs-0007f7-T2
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 11:54:06 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 963F52076D;
 Wed, 18 Mar 2020 11:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584532442;
 bh=L9X+VrJlSHvHryCDWyCIYjaqgiWMJHd2xRjgHoDrUnc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nBWYu8ErKBLAy75lRWkcPa5SdQBMw77hEoJ6xnVoyGil13sOFu3fNx8HI0VmEoGcM
 jC5lALrm+m+tuWKpFlI/lItovNV1RDNE7fjur1S7PxDLw1DMtMEgc50jVM5Ccypmv4
 JP8IzfxDCqHK4kpyVabjr+GmbFUBMwLqWXscbnJo=
Date: Wed, 18 Mar 2020 12:53:58 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jolly Shah <jolly.shah@xilinx.com>
Subject: Re: [PATCH v3 24/24] firmware: xilinx: Add sysfs and API to set boot
 health status
Message-ID: <20200318115358.GE2472686@kroah.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
 <1583538452-1992-25-git-send-email-jolly.shah@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583538452-1992-25-git-send-email-jolly.shah@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_045403_102309_1DE45947 
X-CRM114-Status: GOOD (  19.94  )
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

On Fri, Mar 06, 2020 at 03:47:32PM -0800, Jolly Shah wrote:
> From: Rajan Vaja <rajan.vaja@xilinx.com>
> 
> Add sysfs interface to set boot health status from user space.
> Add API used by this interface to communicate with firmware.
> 
> If PMUFW is compiled with CHECK_HEALTHY_BOOT, it will check the
> healthy bit on FPD WDT expiration. If healthy bit is set by a user
> application running in Linux, PMUFW will do APU only restart. If
> healthy bit is not set during FPD WDT expiration, PMUFW will do
> system restart.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Jolly Shah <jollys@xilinx.com>
> Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> ---
>  .../ABI/stable/sysfs-driver-firmware-zynqmp        | 21 ++++++++
>  drivers/firmware/xilinx/zynqmp.c                   | 63 ++++++++++++++++++++++
>  include/linux/firmware/xlnx-zynqmp.h               |  3 ++
>  3 files changed, 87 insertions(+)
> 
> diff --git a/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp b/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
> index b46ec0c..a37b408 100644
> --- a/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
> +++ b/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
> @@ -80,3 +80,24 @@ Description:
>  		# echo "subsystem" > /sys/devices/platform/firmware\:zynqmp-firmware/shutdown_scope
>  
>  Users:		Xilinx
> +
> +What:		/sys/devices/platform/firmware\:zynqmp-firmware/health_status
> +Date:		March 2020
> +KernelVersion:	5.6
> +Contact:	"Jolly Shah" <jollys@xilinx.com>
> +Description:
> +		This sysfs interface allows to set the health status. If PMUFW
> +		is compiled with CHECK_HEALTHY_BOOT, it will check the healthy
> +		bit on FPD WDT expiration. If healthy bit is set by a user
> +		application running in Linux, PMUFW will do APU only restart. If
> +		healthy bit is not set during FPD WDT expiration, PMUFW will do
> +		system restart.
> +
> +		Usage:
> +		Set healthy bit
> +		# echo 1 > /sys/devices/platform/firmware\:zynqmp-firmware/health_status
> +
> +		Unset healthy bit
> +		# echo 0 > /sys/devices/platform/firmware\:zynqmp-firmware/health_status
> +
> +Users:		Xilinx
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index 9caf1cf..fc3aa4e 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -667,6 +667,21 @@ int zynqmp_pm_read_pggs(u32 index, u32 *value)
>  EXPORT_SYMBOL_GPL(zynqmp_pm_read_pggs);
>  
>  /**
> + * zynqmp_pm_set_boot_health_status() - PM API for setting healthy boot status
> + * @value	Status value to be written
> + *
> + * This function sets healthy bit value to indicate boot health status
> + * to firmware.
> + *
> + * @return      Returns status, either success or error+reason
> + */
> +int zynqmp_pm_set_boot_health_status(u32 value)
> +{
> +	return zynqmp_pm_invoke_fn(PM_IOCTL, 0, IOCTL_SET_BOOT_HEALTH_STATUS,
> +				   value, 0, NULL);
> +}
> +
> +/**
>   * zynqmp_pm_reset_assert - Request setting of reset (1 - assert, 0 - release)
>   * @reset:		Reset to be configured
>   * @assert_flag:	Flag stating should reset be asserted (1) or
> @@ -995,6 +1010,53 @@ static const struct attribute_group shutdown_scope_attribute_group = {
>  };
>  
>  /**
> + * health_status_store - Store health_status sysfs attribute
> + * @device:	Device structure
> + * @attr:	Device attribute structure
> + * @buf:	User entered health_status attribute string
> + * @count:	Buffer size
> + *
> + * User-space interface for setting the boot health status.
> + * Usage: echo <value> > /sys/devices/platform/firmware\:zynqmp-firmware/health_status
> + *
> + * Value:
> + *	1 - Set healthy bit to 1
> + *	0 - Unset healthy bit
> + *
> + * Return:	count argument if request succeeds, the corresponding error
> + *		code otherwise
> + */
> +static ssize_t health_status_store(struct device *device,
> +				   struct device_attribute *attr,
> +				   const char *buf, size_t count)
> +{
> +	int ret;
> +	unsigned int value;
> +
> +	ret = kstrtouint(buf, 10, &value);
> +	if (ret)
> +		return ret;
> +
> +	ret = zynqmp_pm_set_boot_health_status(value);
> +	if (ret) {
> +		pr_err("unable to set healthy bit value to %u\n", value);

You have a valid struct device right there, use it!

dev_err() please...

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
