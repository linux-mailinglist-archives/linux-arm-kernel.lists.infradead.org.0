Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F76DE4A3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 13:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Q/wMElc61q+2tJ7rpFULyp5SjsWm2KeFICukvx40eQ=; b=XWYS3e1wMlFj0W
	VgzZdRQJssgZ6EyP6keHjS0H4764dBshNN7pJ9r4q5fbkxWAQBzjwz0kYvqmMMHaD3rgb040JUKX3
	Omzcl82jO5TnfsTi/cBk41GD6bE3BCgZ62H6pg5up264f2URMj3v1UcH6Cp+87bSqWd5BOa2O5IFS
	AHdFPDHz1CK2iOpY7Rwk1VqY6tjKBW7V5Ns/r72otxI8kfvOtlg1uwy+jpubpLFQ/cRq1CULVwus8
	cCzG98dpAi7Y8mg7soZv4+7kwhSwcpO3Kj1B1AGKe2cLdhetymoZaRbgO+BSGzTHoZZ1+PZQ9oUxe
	GOWREVc+++PuhE+1y73g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNy3M-0005kA-0w; Fri, 25 Oct 2019 11:46:48 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNy3B-0005j1-NX
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 11:46:39 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9PBk0uX092059;
 Fri, 25 Oct 2019 06:46:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572003960;
 bh=gipLVgrX2XvJaGiONhXv6tXJVahdjiAPKwWbGchh4eE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=l4T7eKbtrPl8WPLWtvgXYBxbPq69m9YNnxDLyDkSgbLDCelIyUzFUOucKMsGVWK0V
 KGLjWoXCvcSTwCI/HfGyYuA/BjiMhcXOkfeDkdMHzds+s61L9TR1xJwVmJE7dE53Pt
 Nd4KFvobxMjsHHNsrr15z6mUbKGU121x2FhEc4Jg=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9PBk0VY051064;
 Fri, 25 Oct 2019 06:46:00 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 25
 Oct 2019 06:46:00 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 25 Oct 2019 06:45:49 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9PBjt0R102018;
 Fri, 25 Oct 2019 06:45:56 -0500
Subject: Re: [PATCH v2 2/4] phy: allwinner: add phy driver for USB3 PHY on
 Allwinner H6 SoC
To: Ondrej Jirman <megous@megous.com>, <linux-sunxi@googlegroups.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Maxime
 Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Icenowy Zheng
 <icenowy@aosc.io>, Thomas Gleixner <tglx@linutronix.de>, Arnd Bergmann
 <arnd@arndb.de>
References: <20191024105500.2252707-1-megous@megous.com>
 <20191024105500.2252707-3-megous@megous.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <a1ec53c4-7dc9-3bb3-8193-cfa5baad378e@ti.com>
Date: Fri, 25 Oct 2019 17:15:25 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191024105500.2252707-3-megous@megous.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_044637_851591_18601C57 
X-CRM114-Status: GOOD (  24.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 24/10/19 4:24 PM, Ondrej Jirman wrote:
> From: Icenowy Zheng <icenowy@aosc.io>
> 
> Allwinner H6 SoC contains a USB3 PHY (with USB2 DP/DM lines also
> controlled).
> 
> Add a driver for it.
> 
> The register operations in this driver is mainly extracted from the BSP
> USB3 driver.
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> Acked-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/phy/allwinner/Kconfig           |  12 ++
>  drivers/phy/allwinner/Makefile          |   1 +
>  drivers/phy/allwinner/phy-sun50i-usb3.c | 195 ++++++++++++++++++++++++
>  3 files changed, 208 insertions(+)
>  create mode 100644 drivers/phy/allwinner/phy-sun50i-usb3.c
> 
> diff --git a/drivers/phy/allwinner/Kconfig b/drivers/phy/allwinner/Kconfig
> index 215425296c77..fcae35ddd430 100644
> --- a/drivers/phy/allwinner/Kconfig
> +++ b/drivers/phy/allwinner/Kconfig
> @@ -45,3 +45,15 @@ config PHY_SUN9I_USB
>  	  sun9i SoCs.
>  
>  	  This driver controls each individual USB 2 host PHY.
> +
> +config PHY_SUN50I_USB3
> +	tristate "Allwinner sun50i SoC USB3 PHY driver"
> +	depends on ARCH_SUNXI && HAS_IOMEM && OF
> +	depends on RESET_CONTROLLER
> +	select USB_COMMON

Looks like USB_COMMON is not required here.
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support the USB3.0-capable transceiver that is
> +	  part of some Allwinner sun50i SoCs.
> +
> +	  This driver controls each individual USB 2+3 host PHY combo.
> diff --git a/drivers/phy/allwinner/Makefile b/drivers/phy/allwinner/Makefile
> index 799a65c0b58d..bd74901a1255 100644
> --- a/drivers/phy/allwinner/Makefile
> +++ b/drivers/phy/allwinner/Makefile
> @@ -2,3 +2,4 @@
>  obj-$(CONFIG_PHY_SUN4I_USB)		+= phy-sun4i-usb.o
>  obj-$(CONFIG_PHY_SUN6I_MIPI_DPHY)	+= phy-sun6i-mipi-dphy.o
>  obj-$(CONFIG_PHY_SUN9I_USB)		+= phy-sun9i-usb.o
> +obj-$(CONFIG_PHY_SUN50I_USB3)		+= phy-sun50i-usb3.o
> diff --git a/drivers/phy/allwinner/phy-sun50i-usb3.c b/drivers/phy/allwinner/phy-sun50i-usb3.c
> new file mode 100644
> index 000000000000..8e170a4d0a11
> --- /dev/null
> +++ b/drivers/phy/allwinner/phy-sun50i-usb3.c
> @@ -0,0 +1,195 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Allwinner sun50i(H6) USB 3.0 phy driver
> + *
> + * Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
> + *
> + * Based on phy-sun9i-usb.c, which is:
> + *
> + * Copyright (C) 2014-2015 Chen-Yu Tsai <wens@csie.org>
> + *
> + * Based on code from Allwinner BSP, which is:
> + *
> + * Copyright (c) 2010-2015 Allwinner Technology Co., Ltd.
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/phy/phy.h>
> +#include <linux/usb/of.h>

this too..

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
