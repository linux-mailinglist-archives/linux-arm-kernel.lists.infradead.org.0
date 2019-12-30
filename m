Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2133812D44C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 21:11:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DwmKGv7AGNsEyU5LZBAQ65q4uVfDsqklE39c3B5HI3I=; b=bJT+tdT/BzX6g75dMdknPi9i/M
	o1sEJIkvMwgqkJcCYWznFc29FmXusGGsJOjx57nt+o+g0hYOB+65+N+U7xaz15le+vM+p8lKobQ0g
	jBZD8sLdC18jOzIEA+EdRnlTHmO3/BoNdr6Mb/Y2NimW4zdLfL+QdgLE5Z/7BddIOvyfZpzI0euyb
	rWJ7LIOD6pQCY3G14Fax2dAfK/zDyMv9B8C5N6cMi6gS7pvBX55UpqawwvO/yqsFFwedhGcegYS2i
	b6BjwLcK5x3ErXzZFAbMVSgUAmMMbnyBNwZ6QupoXbgIUP5ncvyq4Uc3MG0LKRoTjAXjf5VkFUbxJ
	LkmzVkcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im1Nc-0005dy-3y; Mon, 30 Dec 2019 20:11:08 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im1NR-0005cL-6M; Mon, 30 Dec 2019 20:10:58 +0000
Received: by mail-ed1-x542.google.com with SMTP id m8so33734970edi.13;
 Mon, 30 Dec 2019 12:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OdWN2VZt7r/0qVQN2N6DJ853sCi1Y1JAuLy91U8S5nc=;
 b=f/bIxziYW4bHwbJKkI3mYgpDYCheY5o5G1AhIkeyzeIzCYIvAVvViUZIhxZH1PlJYZ
 fbA5BIPLD+iJ2AP4aQwMiwEBiHhgze8jrtw/oYpF4P1YOH3r2ewVOraSqxizhrC+D7HQ
 uEsis8UJ66qjYy1mSEPGcuRM+hhsKSCbmMprNB8aCpeGkcu/tQrriK7VBvBArLl8K2G4
 wxmhUoO6+895/1nxxKGmyQ6mafXkDKlwQzlCFM/rxfH/U1GOtnjO4lMpXpR2jERW1DvU
 8HeOG+A9EcKFsR9f0KUhVr6fQ4PvqDyOXvzsngrYsRASIIDEeGdzpVzeM1rrhB0eNMxw
 F8ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OdWN2VZt7r/0qVQN2N6DJ853sCi1Y1JAuLy91U8S5nc=;
 b=Zihkegs2yHAsM4fZfqxJppvN5LXXGLoE7+YhLUSsfGy0TjYXGuhPekVSsK1M3/7LL6
 4ro4jwRbAbsYFYW33CAuZxaZocO0YvxOVsK8SJYcMehY76MII5jxJaMbqDjFqR3HjbnG
 3vhhoSJXBFf3x+1KkkSvpIW54BHssOtnM3n6Aa4P0RyueWV9k1IpTx+Kk38Y2wkOBldc
 CtdCJ4kPwPwQ6wJlmuEceD/lAM7AoglRkwu+HKbyU0rwDnkgRVR8uIY2qnokZjhx0t9h
 6hGXckr9fV59mI/GFW9qC/yU1i5x3qXON2XCWMCba1IBTHeQDJywMqs5RjvmVDern7q0
 OH8Q==
X-Gm-Message-State: APjAAAVsH/P3YsGUB9UmiH/Bcm4NRPNpAeTNCJnsp6+xkEIo+G+7XWJK
 3qgHmrH11rNzDWdYqn9tg8qMQT6U
X-Google-Smtp-Source: APXvYqz74/Q+DJr6TY1BdcXnQnWy3KCUxK5Sio3RUPWE2tI1MgZGjPwsjJccrL/ApXMb3hobajEIkg==
X-Received: by 2002:a17:906:1117:: with SMTP id
 h23mr71761232eja.88.1577736655378; 
 Mon, 30 Dec 2019 12:10:55 -0800 (PST)
Received: from [10.67.50.49] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id 2sm5523277edv.87.2019.12.30.12.10.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Dec 2019 12:10:54 -0800 (PST)
Subject: Re: [PATCH 2/2] phy: Enable compile testing for some of drivers
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Maxime Ripard
 <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20191230172449.17648-1-krzk@kernel.org>
 <20191230172449.17648-2-krzk@kernel.org>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <791d83ef-faee-d6e6-445e-a8088c5ac654@gmail.com>
Date: Mon, 30 Dec 2019 12:10:51 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191230172449.17648-2-krzk@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_121057_234052_C73958EA 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 12/30/19 9:24 AM, Krzysztof Kozlowski wrote:
> Some of the phy drivers can be compile tested to increase build
> coverage.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

This looks fine, you could also consider adding a bunch of other
Broadcom PHY drivers which are not currently under COMPILE_TEST, yet
build fine:

diff --git a/drivers/phy/broadcom/Kconfig b/drivers/phy/broadcom/Kconfig
index d3d983c128ea..d56db6d375e1 100644
--- a/drivers/phy/broadcom/Kconfig
+++ b/drivers/phy/broadcom/Kconfig
@@ -50,7 +50,7 @@ config PHY_BCM_NS_USB3

 config PHY_NS2_PCIE
        tristate "Broadcom Northstar2 PCIe PHY driver"
-       depends on OF && MDIO_BUS_MUX_BCM_IPROC
+       depends on (OF && MDIO_BUS_MUX_BCM_IPROC) || COMPILE_TEST
        select GENERIC_PHY
        default ARCH_BCM_IPROC
        help
@@ -83,7 +83,7 @@ config PHY_BRCM_SATA

 config PHY_BRCM_USB
        tristate "Broadcom STB USB PHY driver"
-       depends on ARCH_BRCMSTB
+       depends on ARCH_BRCMSTB || COMPILE_TEST
        depends on OF
        select GENERIC_PHY
        select SOC_BRCMSTB

> ---
>  drivers/phy/allwinner/Kconfig | 3 ++-
>  drivers/phy/marvell/Kconfig   | 8 +++++---
>  drivers/phy/mediatek/Kconfig  | 9 ++++++---
>  drivers/phy/samsung/Kconfig   | 8 ++++----
>  drivers/phy/ti/Kconfig        | 4 ++--
>  5 files changed, 19 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/phy/allwinner/Kconfig b/drivers/phy/allwinner/Kconfig
> index 3dab79e9d52b..e760d89d3976 100644
> --- a/drivers/phy/allwinner/Kconfig
> +++ b/drivers/phy/allwinner/Kconfig
> @@ -48,7 +48,8 @@ config PHY_SUN9I_USB
>  
>  config PHY_SUN50I_USB3
>  	tristate "Allwinner H6 SoC USB3 PHY driver"
> -	depends on ARCH_SUNXI && HAS_IOMEM && OF
> +	depends on ARCH_SUNXI || COMPILE_TEST
> +	depends on HAS_IOMEM && OF
>  	depends on RESET_CONTROLLER
>  	select GENERIC_PHY
>  	help
> diff --git a/drivers/phy/marvell/Kconfig b/drivers/phy/marvell/Kconfig
> index 005e02dd4a91..8f6273c837ec 100644
> --- a/drivers/phy/marvell/Kconfig
> +++ b/drivers/phy/marvell/Kconfig
> @@ -10,14 +10,16 @@ config ARMADA375_USBCLUSTER_PHY
>  
>  config PHY_BERLIN_SATA
>  	tristate "Marvell Berlin SATA PHY driver"
> -	depends on ARCH_BERLIN && HAS_IOMEM && OF
> +	depends on ARCH_BERLIN || COMPILE_TEST
> +	depends on OF && HAS_IOMEM
>  	select GENERIC_PHY
>  	help
>  	  Enable this to support the SATA PHY on Marvell Berlin SoCs.
>  
>  config PHY_BERLIN_USB
>  	tristate "Marvell Berlin USB PHY Driver"
> -	depends on ARCH_BERLIN && RESET_CONTROLLER && HAS_IOMEM && OF
> +	depends on ARCH_BERLIN || COMPILE_TEST
> +	depends on OF && HAS_IOMEM && RESET_CONTROLLER
>  	select GENERIC_PHY
>  	help
>  	  Enable this to support the USB PHY on Marvell Berlin SoCs.
> @@ -95,7 +97,7 @@ config PHY_PXA_28NM_USB2
>  
>  config PHY_PXA_USB
>  	tristate "Marvell PXA USB PHY Driver"
> -	depends on ARCH_PXA || ARCH_MMP
> +	depends on ARCH_PXA || ARCH_MMP || COMPILE_TEST
>  	select GENERIC_PHY
>  	help
>  	  Enable this to support Marvell PXA USB PHY driver for Marvell
> diff --git a/drivers/phy/mediatek/Kconfig b/drivers/phy/mediatek/Kconfig
> index 7d19134c6b7c..dee757c957f2 100644
> --- a/drivers/phy/mediatek/Kconfig
> +++ b/drivers/phy/mediatek/Kconfig
> @@ -4,7 +4,8 @@
>  #
>  config PHY_MTK_TPHY
>  	tristate "MediaTek T-PHY Driver"
> -	depends on ARCH_MEDIATEK && OF
> +	depends on ARCH_MEDIATEK || COMPILE_TEST
> +	depends on OF
>  	select GENERIC_PHY
>  	help
>  	  Say 'Y' here to add support for MediaTek T-PHY driver,
> @@ -16,7 +17,8 @@ config PHY_MTK_TPHY
>  
>  config PHY_MTK_UFS
>  	tristate "MediaTek UFS M-PHY driver"
> -	depends on ARCH_MEDIATEK && OF
> +	depends on ARCH_MEDIATEK || COMPILE_TEST
> +	depends on OF
>  	select GENERIC_PHY
>  	help
>  	  Support for UFS M-PHY on MediaTek chipsets.
> @@ -26,7 +28,8 @@ config PHY_MTK_UFS
>  
>  config PHY_MTK_XSPHY
>  	tristate "MediaTek XS-PHY Driver"
> -	depends on ARCH_MEDIATEK && OF
> +	depends on ARCH_MEDIATEK || COMPILE_TEST
> +	depends on OF
>  	select GENERIC_PHY
>  	help
>  	  Enable this to support the SuperSpeedPlus XS-PHY transceiver for
> diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
> index 290a6c70f570..349fcb23e5f3 100644
> --- a/drivers/phy/samsung/Kconfig
> +++ b/drivers/phy/samsung/Kconfig
> @@ -32,7 +32,7 @@ config PHY_EXYNOS_PCIE
>  config PHY_SAMSUNG_USB2
>  	tristate "Samsung USB 2.0 PHY driver"
>  	depends on HAS_IOMEM
> -	depends on USB_EHCI_EXYNOS || USB_OHCI_EXYNOS || USB_DWC2
> +	depends on USB_EHCI_EXYNOS || USB_OHCI_EXYNOS || USB_DWC2 || COMPILE_TEST
>  	select GENERIC_PHY
>  	select MFD_SYSCON
>  	default ARCH_EXYNOS
> @@ -60,7 +60,7 @@ config PHY_EXYNOS5250_USB2
>  config PHY_S5PV210_USB2
>  	bool "Support for S5PV210"
>  	depends on PHY_SAMSUNG_USB2
> -	depends on ARCH_S5PV210
> +	depends on ARCH_S5PV210 || COMPILE_TEST
>  	help
>  	  Enable USB PHY support for S5PV210. This option requires that Samsung
>  	  USB 2.0 PHY driver is enabled and means that support for this
> @@ -69,7 +69,7 @@ config PHY_S5PV210_USB2
>  
>  config PHY_EXYNOS5_USBDRD
>  	tristate "Exynos5 SoC series USB DRD PHY driver"
> -	depends on ARCH_EXYNOS && OF
> +	depends on (ARCH_EXYNOS && OF) || COMPILE_TEST
>  	depends on HAS_IOMEM
>  	depends on USB_DWC3_EXYNOS
>  	select GENERIC_PHY
> @@ -82,7 +82,7 @@ config PHY_EXYNOS5_USBDRD
>  
>  config PHY_EXYNOS5250_SATA
>  	tristate "Exynos5250 Sata SerDes/PHY driver"
> -	depends on SOC_EXYNOS5250
> +	depends on SOC_EXYNOS5250 || COMPILE_TEST
>  	depends on HAS_IOMEM
>  	depends on OF
>  	select GENERIC_PHY
> diff --git a/drivers/phy/ti/Kconfig b/drivers/phy/ti/Kconfig
> index 174888609779..e231c0e369c5 100644
> --- a/drivers/phy/ti/Kconfig
> +++ b/drivers/phy/ti/Kconfig
> @@ -4,7 +4,7 @@
>  #
>  config PHY_DA8XX_USB
>  	tristate "TI DA8xx USB PHY Driver"
> -	depends on ARCH_DAVINCI_DA8XX
> +	depends on ARCH_DAVINCI_DA8XX || COMPILE_TEST
>  	select GENERIC_PHY
>  	select MFD_SYSCON
>  	help
> @@ -14,7 +14,7 @@ config PHY_DA8XX_USB
>  
>  config PHY_DM816X_USB
>  	tristate "TI dm816x USB PHY driver"
> -	depends on ARCH_OMAP2PLUS
> +	depends on ARCH_OMAP2PLUS || COMPILE_TEST
>  	depends on USB_SUPPORT
>  	select GENERIC_PHY
>  	select USB_PHY
> 


-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
