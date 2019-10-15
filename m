Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9752D7F8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJI6934ErW2gbONH10uUbAa4rD2hl7llbYAgtoSiyxk=; b=X1WQAkZp+uroRR
	vK25o7wl95ibWxfIRnbjPg4iXlkIuMh0YH99q1yBZupMS8b3Ob7MXuCzdiekZgMKTCVDNZhWPTHmc
	00mIZjuECJnJtBf8EVDk/oWQBeJDXSDb2TNwpe+FY4EQiv9IINP3TiS28ZcAO6bEJLKRtSVZsHOSs
	z4UEjpqOURScoP69xmj2jv5xFMiGIC8bNl7mp5G9n6LruYCNUpTNOtKRhx/fGA0uCHnqI1mO0bPHz
	0oQTb+5TRc0qkAf+3TpcMCuGZg0WGunVDOUcznNXJ1LnY8gYW/HRVXtfkodGyxQQTw3A7iffI9gPx
	xJmxKN3k22SbUOGqBO2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKS89-0003pw-Gt; Tue, 15 Oct 2019 19:05:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKS7w-0003oC-Ev
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 19:05:01 +0000
Received: from localhost (unknown [38.98.37.135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81CDC20663;
 Tue, 15 Oct 2019 19:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571166298;
 bh=ZIaAvZnbtHuEZ4yVB6QTkkDmhzPaea3XJQXci8c1v1Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ysEUE+w2/SUgcm+INApP0pKGfkn+eJIxJi0wsXYoMDuLs+6Ztvx6GN0NKN8SFGtqf
 4b8liCT/Ywy9rBuFRUtBwHV8L4DFP1e6xlDxdltbzrGGrg5vlR9JPadIZVZgiyzjLr
 q4S3RCcNutRbS11kdKfgZo/W1BHLrQXFP92HiGIU=
Date: Tue, 15 Oct 2019 21:01:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Subject: Re: [PATCH v6 3/5] serial: fsl_linflexuart: Be consistent with the
 name
Message-ID: <20191015190155.GA1140159@kroah.com>
References: <1570726348-6420-1-git-send-email-stefan-gabriel.mirea@nxp.com>
 <1570726348-6420-4-git-send-email-stefan-gabriel.mirea@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570726348-6420-4-git-send-email-stefan-gabriel.mirea@nxp.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_120500_543850_715E0107 
X-CRM114-Status: GOOD (  19.62  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, corbet@lwn.net,
 catalin.marinas@arm.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 linux-serial@vger.kernel.org, jslaby@suse.com, shawnguo@kernel.org,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 07:52:26PM +0300, Stefan-Gabriel Mirea wrote:
> For consistency reasons, spell the controller name as "LINFlexD" in
> comments and documentation.
> 
> Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
> ---
>  Documentation/admin-guide/kernel-parameters.txt | 2 +-
>  drivers/tty/serial/Kconfig                      | 8 ++++----
>  drivers/tty/serial/fsl_linflexuart.c            | 4 ++--
>  include/uapi/linux/serial_core.h                | 2 +-
>  4 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index c7ac2f3ac99f..666326d74415 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -1101,7 +1101,7 @@
>  			mapped with the correct attributes.
>  
>  		linflex,<addr>
> -			Use early console provided by Freescale LinFlex UART
> +			Use early console provided by Freescale LINFlexD UART
>  			serial driver for NXP S32V234 SoCs. A valid base
>  			address must be provided, and the serial port must
>  			already be setup and configured.
> diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> index 4789b5d62f63..c8e11f62ea19 100644
> --- a/drivers/tty/serial/Kconfig
> +++ b/drivers/tty/serial/Kconfig
> @@ -1391,19 +1391,19 @@ config SERIAL_FSL_LPUART_CONSOLE
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
> index 68d74f2b5106..2d39e13176e1 100644
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
> @@ -933,5 +933,5 @@ static void __exit linflex_serial_exit(void)
>  module_init(linflex_serial_init);
>  module_exit(linflex_serial_exit);
>  
> -MODULE_DESCRIPTION("Freescale linflex serial port driver");
> +MODULE_DESCRIPTION("Freescale LINFlexD serial port driver");
>  MODULE_LICENSE("GPL v2");
> diff --git a/include/uapi/linux/serial_core.h b/include/uapi/linux/serial_core.h
> index 0f4f87a6fd54..49e61963e754 100644
> --- a/include/uapi/linux/serial_core.h
> +++ b/include/uapi/linux/serial_core.h
> @@ -290,7 +290,7 @@
>  /* Sunix UART */
>  #define PORT_SUNIX	121
>  
> -/* Freescale Linflex UART */
> +/* Freescale LINFlexD UART */
>  #define PORT_LINFLEXUART	121
>  
>  #endif /* _UAPILINUX_SERIAL_CORE_H */
> -- 
> 2.22.0
> 

This patch does not apply to my tree :(


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
