Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FB8189B5E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 12:54:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIxtIUDNB6k1/u2TpmXmJxkX1Hry7udZc/N9lG5wXCU=; b=s7R4Dg8ZMGnYvc
	u/+WDk6jY8EZL+ecZb52qmQRrlbJolnQTInkpH/OlAI0001UNT9zIdx8Tr3MJ6tw7j+0ItmilRjoc
	suQFAcrjdNsgZ0vtw3bL/S8haRLbQyyjOtLjFHhBJJ+dmTS+AouncJr2PUjs9Ss5R2i+x2QZprpb8
	qWcbjDXY2zndlq16HB8safYrKYaGXWWI1Uh2xeQwGZs4ktCthD1gsIPA+erHI30kXo8Dm5gManuxN
	zg5vfoRApF1Gep8NLbF8dMwHHEXnP80FgOpt7Ej5CggFbjC8B+DYumgHaMgzXWjR0u/ryzugxkeIK
	C3KtuRspmQRCXEK17L3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEXGp-0007OI-FM; Wed, 18 Mar 2020 11:53:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEXGC-0006qD-2z
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 11:53:25 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 43BAC2076D;
 Wed, 18 Mar 2020 11:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584532399;
 bh=m9FmbwR3S9CLC9zLKu9zuaEdpr6gT37kN2ogRUDA0VI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HQcKfhLwnK+HV659sYu/fUTj2VTa0miJBbFZrmAzGEIQVIaHNUlRakPsGiufzom7Z
 PdoL34HsBA5gF5fPzIMLBoyJiI/bgzOeFiRyT7XsSimp9Efcy6KS7by7eyU9tfAwMf
 VTPlix9VHdwO9q8plCNjWhTohMZl64sXq5vUtwWs=
Date: Wed, 18 Mar 2020 12:53:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jolly Shah <jolly.shah@xilinx.com>
Subject: Re: [PATCH v3 23/24] firmware: xilinx: Add sysfs to set shutdown scope
Message-ID: <20200318115317.GD2472686@kroah.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
 <1583538452-1992-24-git-send-email-jolly.shah@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583538452-1992-24-git-send-email-jolly.shah@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_045320_211550_F119971F 
X-CRM114-Status: GOOD (  26.83  )
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
Cc: Tejas Patel <tejas.patel@xilinx.com>,
 Stefan Krsmanovic <stefan.krsmanovic@aggios.com>, keescook@chromium.org,
 Rajan Vaja <rajan.vaja@xilinx.com>, ard.biesheuvel@linaro.org,
 matt@codeblueprint.co.uk, dmitry.torokhov@gmail.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, Jolly Shah <jollys@xilinx.com>,
 rajanv@xilinx.com, sudeep.holla@arm.com, mingo@kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 03:47:31PM -0800, Jolly Shah wrote:
> From: Rajan Vaja <rajan.vaja@xilinx.com>
> 
> The Linux shutdown functionality implemented via PSCI system_off does
> not include an option to set a scope, i.e. which parts of the system to
> shut down.
> 
> This patch creates sysfs that allows to set the shutdown scope for the
> next shutdown request. When the next shutdown is performed, the platform
> specific portion of PSCI-system_off can use the chosen shutdown scope.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> Signed-off-by: Stefan Krsmanovic <stefan.krsmanovic@aggios.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Jolly Shah <jollys@xilinx.com>
> Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> ---
>  .../ABI/stable/sysfs-driver-firmware-zynqmp        |  32 +++++
>  drivers/firmware/xilinx/zynqmp.c                   | 150 ++++++++++++++++++++-
>  include/linux/firmware/xlnx-zynqmp.h               |  12 ++
>  3 files changed, 193 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp b/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
> index 7fd6e70..b46ec0c 100644
> --- a/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
> +++ b/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
> @@ -48,3 +48,35 @@ Description:
>  		# echo 0xFFFFFFFF 0x1234ABCD > /sys/devices/platform/firmware\:zynqmp-firmware/pggs0
>  
>  Users:		Xilinx
> +
> +What:		/sys/devices/platform/firmware\:zynqmp-firmware/shutdown_scope
> +Date:		March 2020
> +KernelVersion:	5.6
> +Contact:	"Jolly Shah" <jollys@xilinx.com>
> +Description:
> +		This sysfs interface allows to set the shutdown scope for the
> +		next shutdown request. When the next shutdown is performed, the
> +		platform specific portion of PSCI-system_off can use the chosen
> +		shutdown scope.
> +
> +		Following are available shutdown scopes(subtypes):
> +
> +		subsystem:	Only the APU along with all of its peripherals
> +				not used by other processing units will be
> +				shut down. This may result in the FPD power
> +				domain being shut down provided that no other
> +				processing unit uses FPD peripherals or DRAM.
> +		ps_only:	The complete PS will be shut down, including the
> +				RPU, PMU, etc.  Only the PL domain (FPGA)
> +				remains untouched.
> +		system:		The complete system/device is shut down.
> +
> +		Usage:
> +		# cat /sys/devices/platform/firmware\:zynqmp-firmware/shutdown_scope
> +		# echo <scope> > /sys/devices/platform/firmware\:zynqmp-firmware/shutdown_scope
> +
> +		Example:
> +		# cat /sys/devices/platform/firmware\:zynqmp-firmware/shutdown_scope
> +		# echo "subsystem" > /sys/devices/platform/firmware\:zynqmp-firmware/shutdown_scope
> +
> +Users:		Xilinx
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index d3f637b..9caf1cf 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -847,6 +847,154 @@ int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype)
>  }
>  
>  /**
> + * struct zynqmp_pm_shutdown_scope - Struct for shutdown scope
> + * @subtype:	Shutdown subtype
> + * @name:	Matching string for scope argument
> + *
> + * This struct encapsulates mapping between shutdown scope ID and string.
> + */
> +struct zynqmp_pm_shutdown_scope {
> +	const enum zynqmp_pm_shutdown_subtype subtype;
> +	const char *name;
> +};
> +
> +static struct zynqmp_pm_shutdown_scope shutdown_scopes[] = {
> +	[ZYNQMP_PM_SHUTDOWN_SUBTYPE_SUBSYSTEM] = {
> +		.subtype = ZYNQMP_PM_SHUTDOWN_SUBTYPE_SUBSYSTEM,
> +		.name = "subsystem",
> +	},
> +	[ZYNQMP_PM_SHUTDOWN_SUBTYPE_PS_ONLY] = {
> +		.subtype = ZYNQMP_PM_SHUTDOWN_SUBTYPE_PS_ONLY,
> +		.name = "ps_only",
> +	},
> +	[ZYNQMP_PM_SHUTDOWN_SUBTYPE_SYSTEM] = {
> +		.subtype = ZYNQMP_PM_SHUTDOWN_SUBTYPE_SYSTEM,
> +		.name = "system",
> +	},
> +};
> +
> +static struct zynqmp_pm_shutdown_scope *selected_scope =
> +		&shutdown_scopes[ZYNQMP_PM_SHUTDOWN_SUBTYPE_SYSTEM];
> +
> +/**
> + * zynqmp_pm_is_shutdown_scope_valid - Check if shutdown scope string is valid
> + * @scope_string:	Shutdown scope string
> + *
> + * Return:		Return pointer to matching shutdown scope struct from
> + *			array of available options in system if string is valid,
> + *			otherwise returns NULL.
> + */
> +static struct zynqmp_pm_shutdown_scope*
> +		zynqmp_pm_is_shutdown_scope_valid(const char *scope_string)
> +{
> +	int count;
> +
> +	for (count = 0; count < ARRAY_SIZE(shutdown_scopes); count++)
> +		if (sysfs_streq(scope_string, shutdown_scopes[count].name))
> +			return &shutdown_scopes[count];
> +
> +	return NULL;
> +}
> +
> +/**
> + * shutdown_scope_show - Show shutdown_scope sysfs attribute
> + * @device:	Device structure
> + * @attr:	Device attribute structure
> + * @buf:	Requested available shutdown_scope attributes string
> + *
> + * User-space interface for viewing the available scope options for system
> + * shutdown. Scope option for next shutdown call is marked with [].
> + *
> + * Usage: cat /sys/devices/platform/firmware\:zynqmp-firmware/shutdown_scope
> + *
> + * Return:	Number of bytes printed into the buffer.
> + */
> +static ssize_t shutdown_scope_show(struct device *device,
> +				   struct device_attribute *attr,
> +				   char *buf)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(shutdown_scopes); i++) {
> +		if (&shutdown_scopes[i] == selected_scope) {
> +			strcat(buf, "[");
> +			strcat(buf, shutdown_scopes[i].name);
> +			strcat(buf, "]");
> +		} else {
> +			strcat(buf, shutdown_scopes[i].name);
> +		}
> +		strcat(buf, " ");
> +	}
> +	strcat(buf, "\n");
> +
> +	return strlen(buf);
> +}
> +
> +/**
> + * shutdown_scope_store - Store shutdown_scope sysfs attribute
> + * @device:	Device structure
> + * @attr:	Device attribute structure
> + * @buf:	User entered shutdown_scope attribute string
> + * @count:	Buffer size
> + *
> + * User-space interface for setting the scope for the next system shutdown.
> + * Usage: echo <scope> > /sys/devices/platform/firmware\:zynqmp-firmware/shutdown_scope
> + *
> + * The Linux shutdown functionality implemented via PSCI system_off does not
> + * include an option to set a scope, i.e. which parts of the system to shut
> + * down.
> + *
> + * This API function allows to set the shutdown scope for the next shutdown
> + * request by passing it to the ATF running in EL3. When the next shutdown
> + * is performed, the platform specific portion of PSCI-system_off can use
> + * the chosen shutdown scope.
> + *
> + * subsystem:	Only the APU along with all of its peripherals not used by other
> + *		processing units will be shut down. This may result in the FPD
> + *		power domain being shut down provided that no other processing
> + *		unit uses FPD peripherals or DRAM.
> + * ps_only:	The complete PS will be shut down, including the RPU, PMU, etc.
> + *		Only the PL domain (FPGA) remains untouched.
> + * system:	The complete system/device is shut down.
> + *
> + * Return:	count argument if request succeeds, the corresponding error
> + *		code otherwise
> + */
> +static ssize_t shutdown_scope_store(struct device *device,
> +				    struct device_attribute *attr,
> +				    const char *buf, size_t count)
> +{
> +	int ret;
> +	struct zynqmp_pm_shutdown_scope *scope;
> +
> +	scope = zynqmp_pm_is_shutdown_scope_valid(buf);
> +	if (!scope)
> +		return -EINVAL;
> +
> +	ret = zynqmp_pm_system_shutdown(ZYNQMP_PM_SHUTDOWN_TYPE_SETSCOPE_ONLY,
> +					scope->subtype);
> +	if (ret) {
> +		pr_err("unable to set shutdown scope %s\n", buf);
> +		return ret;
> +	}
> +
> +	selected_scope = scope;
> +
> +	return count;
> +}
> +
> +static DEVICE_ATTR_RW(shutdown_scope);
> +
> +static struct attribute *zynqmp_shutdown_scope_attrs[] = {
> +	&dev_attr_shutdown_scope.attr,
> +	NULL,
> +};
> +
> +static const struct attribute_group shutdown_scope_attribute_group = {
> +	.attrs = zynqmp_shutdown_scope_attrs,
> +};

ATTRIBUTE_GROUPS()?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
