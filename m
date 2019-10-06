Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79795CCDCD
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 03:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ed4DPTjRCx7iU+/bjRsvA3gPSWK/ulXE+DTVkqxmGBc=; b=JrYjMcdLFEmyr5
	eZkrNQw+ZnIauJZxyvOCzqVsKw4aT7F/Jr8j/i1zDQWssHMyKwFYf7hYdkK+8B6jZW4e8y7NuamkD
	AhW3u9uVP5uNJRjQmarn8XgSXIGHlcCpA76ykH4360PqtU8Pd88A93PNhdFYeWsGrqUvvDMkL+wHw
	aw3pNsQWPkPixYQdYODqime+NOXIlFZI/J9JtdmY/Q1K2b63Ig10dX65FURPwuZ9Jud7K3WNYw/80
	RRhupWTMFruQZfMkdT5j8hHjHteeaZbxnH4BdsKVfSatyM8keA7C+Udf9JveBSASzJy69WctPaMaY
	qFX5tN3WhvaqW9hhTlDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGvnT-00022h-Mk; Sun, 06 Oct 2019 01:57:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGvnN-00022K-7Z
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 01:57:15 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3D8E4218AC;
 Sun,  6 Oct 2019 01:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570327032;
 bh=wN7wNz4gA27GLibRdH8VOT/fbLaH+ygQiJp4aTxdamU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wFWayoCjgHN6i8EgC/gYVeYlgKPkP1MhCpEm3OLiZw2soOKUC8FfevBa1BWzqkOu6
 6Dcvjd526nAbZalpOmJYMkdaUtTo5+SGyIdQSvsCzIh23zUVm7m0TKyt6xtotsnKLO
 n8SkuHU8ZovZUJQOA/uQ4++5YNJUTAaQaQlrR8Sc=
Date: Sun, 6 Oct 2019 09:56:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 3/6] serial: fsl_linflexuart: Be consistent with the
 name
Message-ID: <20191006015647.GJ7150@dragon>
References: <20190905115803.19565-1-stefan-gabriel.mirea@nxp.com>
 <20190905115803.19565-4-stefan-gabriel.mirea@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905115803.19565-4-stefan-gabriel.mirea@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_185713_311041_DBF8ACB3 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 11:58:36AM +0000, Stefan-gabriel Mirea wrote:
> For consistency reasons, spell the controller name as "LINFlexD" in
> comments and documentation.
> 
> Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>

Hi Greg,

The series looks good to me.  I assume that you will take this patch
and #5.

Shawn

> ---
>  Documentation/admin-guide/kernel-parameters.txt | 2 +-
>  drivers/tty/serial/Kconfig                      | 8 ++++----
>  drivers/tty/serial/fsl_linflexuart.c            | 4 ++--
>  include/uapi/linux/serial_core.h                | 4 ++--
>  4 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 614012a61754..23162492ea2f 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -1091,7 +1091,7 @@
>  			mapped with the correct attributes.
>  
>  		linflex,<addr>
> -			Use early console provided by Freescale LinFlex UART
> +			Use early console provided by Freescale LINFlexD UART
>  			serial driver for NXP S32V234 SoCs. A valid base
>  			address must be provided, and the serial port must
>  			already be setup and configured.
> diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> index b658589208bf..2d5115375345 100644
> --- a/drivers/tty/serial/Kconfig
> +++ b/drivers/tty/serial/Kconfig
> @@ -1434,19 +1434,19 @@ config SERIAL_FSL_LPUART_CONSOLE
>  	  you can make it the console by answering Y to this option.
>  
>  config SERIAL_FSL_LINFLEXUART
> -	tristate "Freescale linflexuart serial port support"
> +	tristate "Freescale LINFlexD UART serial port support"
>  	depends on PRINTK
>  	select SERIAL_CORE
>  	help
> -	  Support for the on-chip linflexuart on some Freescale SOCs.
> +	  Support for the on-chip LINFlexD UART on some Freescale SOCs.
>  
>  config SERIAL_FSL_LINFLEXUART_CONSOLE
> -	bool "Console on Freescale linflexuart serial port"
> +	bool "Console on Freescale LINFlexD UART serial port"
>  	depends on SERIAL_FSL_LINFLEXUART=y
>  	select SERIAL_CORE_CONSOLE
>  	select SERIAL_EARLYCON
>  	help
> -	  If you have enabled the linflexuart serial port on the Freescale
> +	  If you have enabled the LINFlexD UART serial port on the Freescale
>  	  SoCs, you can make it the console by answering Y to this option.
>  
>  config SERIAL_CONEXANT_DIGICOLOR
> diff --git a/drivers/tty/serial/fsl_linflexuart.c b/drivers/tty/serial/fsl_linflexuart.c
> index 26b9601a0952..ca90551384ca 100644
> --- a/drivers/tty/serial/fsl_linflexuart.c
> +++ b/drivers/tty/serial/fsl_linflexuart.c
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
>  /*
> - * Freescale linflexuart serial port driver
> + * Freescale LINFlexD UART serial port driver
>   *
>   * Copyright 2012-2016 Freescale Semiconductor, Inc.
>   * Copyright 2017-2018 NXP
> @@ -938,5 +938,5 @@ static void __exit linflex_serial_exit(void)
>  module_init(linflex_serial_init);
>  module_exit(linflex_serial_exit);
>  
> -MODULE_DESCRIPTION("Freescale linflex serial port driver");
> +MODULE_DESCRIPTION("Freescale LINFlexD serial port driver");
>  MODULE_LICENSE("GPL v2");
> diff --git a/include/uapi/linux/serial_core.h b/include/uapi/linux/serial_core.h
> index 63fa56b899e8..26967c2f4a4f 100644
> --- a/include/uapi/linux/serial_core.h
> +++ b/include/uapi/linux/serial_core.h
> @@ -293,7 +293,7 @@
>  /* Sunix UART */
>  #define PORT_SUNIX	121
>  
> -/* Freescale Linflex UART */
> -#define PORT_LINFLEXUART	121
> +/* Freescale LINFlexD UART */
> +#define PORT_LINFLEXUART	122
>  
>  #endif /* _UAPILINUX_SERIAL_CORE_H */
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
