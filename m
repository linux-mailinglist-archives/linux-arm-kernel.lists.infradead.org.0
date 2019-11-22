Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8F3106862
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 09:53:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZenAX8sMN9ZRJvCLJ72GO3EHtx7b23IayZ4oUQu8w7k=; b=HydslB86N7iNNP
	VUJE1pAgPWt34j26Mk5Hd9fL5aPXrmBErAoLNPzuxxK32WJ6IdJT4LENnZPsBOQmHXTDVeDAKV2CJ
	tZFxfr0nDFHiWvZUvpKK5JGn9kc/o59/6ZCorKemR2r9iCayx8LQ4pqBQ9+NYCPwrgBRZ2dcP552/
	2k3B5E74z2qAVDS1eC5yReFO7+nKaYsLH35V07RuK3g5TgspK3KLFbBfZQ4y27iWtyBL61kYy5y0U
	x/yoaFGB8QeLlcqtWyw+7PtpAi20+E33+0G303wsbgozu++arHmkCI59rgRtWCdlfz+yvFqBOH17x
	158wvsL5P3IOITXmGU9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY4hG-0006Ra-Ga; Fri, 22 Nov 2019 08:53:46 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY4h5-0006PQ-Ih
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 08:53:37 +0000
Received: by mail-wm1-x344.google.com with SMTP id l1so6552441wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 00:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=/s4JZuFFNAzrE5UZcQkgO/Qk4eJi/XeiLoxEUKg8zgI=;
 b=oTw5sGMSvOBuT/qeN01UXC1tk0K0EgNnAfgiOH31VyNABvVP43s7v79cl7glHdJOap
 xsMST5vH6cVygvztm1YT6+HKuGVkyWUWBMvoOQTQ32lFIYvtrIsp0MoECGhv3AIz4x3l
 bQkFHeDhR4JIFR23WN6t/8CaoWAjAUAJ/TSD/2jHjzq379bWgGu1N7UQswoqRVSzXO+U
 OZTFnZsBa1BAPHNy65gEw4UP6ZXBl9EES6HLzQLtacSHGYc5LDKhL0u104yfYth8goIi
 37PRFWVyWrrbpRHbDGaO+KkhMrny9IfYbC0cc4sMdkw3hjvsRKW6fFRbmiIW285kQOn+
 8Wxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=/s4JZuFFNAzrE5UZcQkgO/Qk4eJi/XeiLoxEUKg8zgI=;
 b=QpWhw0pzg2bBEYHTqYaTnishtAECh9iX7RJ8g68pAmWuc2Jmx8N8YYMgrIylE1fgS1
 H0GljDyHM2Vd9lgj8uTmk4oAcIc4H1v9l6/hklqQXv9tp7y2xnb7uqyMceWAUXKVk+p6
 3UUw09zgrF0waX9hsnR/kBnOibtrZEQiKZ3oBGssTtvoQWUAmkZ0NtmaRgRs+O5SIzyO
 2oy1p26h1O2WahNpbBYwnJU7AP65kM9I5zyHCllePUWPGfJAxw9MLA6upZ119zgc8Q/n
 rxOBxn59UGMJOsiOJGqCQ0U7GHp+MSbBpOVNkKrOyVkmiJBY5h+igoRzD8Wey2MTE+r4
 Qt3A==
X-Gm-Message-State: APjAAAUTakqsc77VGoTbbvjbrGkmh9DgXENrUcnZF7iSNgch/aumHyco
 xD43ZU5uIjo3E5zq0uFoKKq+lQ==
X-Google-Smtp-Source: APXvYqxOuLdOsNLHTVJvka/qzbGSMK2B+ALt7IBEOm/OuhWKi2V0vwBMBKCYbJXulkLDXTj9F0NNVQ==
X-Received: by 2002:a7b:c858:: with SMTP id c24mr15813967wml.174.1574412813793; 
 Fri, 22 Nov 2019 00:53:33 -0800 (PST)
Received: from [192.168.1.68] (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id g74sm2646250wme.5.2019.11.22.00.53.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 Nov 2019 00:53:33 -0800 (PST)
Subject: Re: [PATCH 4/6] usb: dwc3: Add Amlogic A1 DWC3 glue
To: Hanjie Lin <hanjie.lin@amlogic.com>, Jerome Brunet
 <jbrunet@baylibre.com>, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Kevin Hilman <khilman@baylibre.com>
References: <1574405757-76184-1-git-send-email-hanjie.lin@amlogic.com>
 <1574405757-76184-5-git-send-email-hanjie.lin@amlogic.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <b1781a06-1b8a-2fad-f49c-ac7e940a8798@baylibre.com>
Date: Fri, 22 Nov 2019 09:53:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1574405757-76184-5-git-send-email-hanjie.lin@amlogic.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_005335_623654_67E43902 
X-CRM114-Status: GOOD (  22.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Liang Yang <liang.yang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jian Hu <jian.hu@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 22/11/2019 07:55, Hanjie Lin wrote:
> Adds support for Amlogic A1 USB Control Glue HW.
> 
> The Amlogic A1 SoC Family embeds 1 USB Controllers:
> - a DWC3 IP configured as Host for USB2 and USB3
> 
> A glue connects the controllers to the USB2 PHY of A1 SoC.
> 
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> ---
>  drivers/usb/dwc3/Kconfig         |  11 ++
>  drivers/usb/dwc3/Makefile        |   1 +
>  drivers/usb/dwc3/dwc3-meson-a1.c | 397 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 409 insertions(+)
>  create mode 100644 drivers/usb/dwc3/dwc3-meson-a1.c
> 
> diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
> index 556a876..9bfb159 100644
> --- a/drivers/usb/dwc3/Kconfig
> +++ b/drivers/usb/dwc3/Kconfig
> @@ -96,6 +96,17 @@ config USB_DWC3_KEYSTONE
>  	  Support of USB2/3 functionality in TI Keystone2 and AM654 platforms.
>  	  Say 'Y' or 'M' here if you have one such device
>  
> +config USB_DWC3_MESON_A1
> +	tristate "Amlogic Meson A1 Platforms"
> +	depends on OF && COMMON_CLK
> +	depends on ARCH_MESON || COMPILE_TEST
> +	default USB_DWC3
> +	help
> +	  Support USB2 functionality in MESON A1 platforms.
> +	  The MESON A1 USB2 support a DWC3 USB IP Core configured for USB2 in
> +	  host-only mode.
> +	  Say 'Y' or 'M' if you have one such device.
> +
>  config USB_DWC3_MESON_G12A
>         tristate "Amlogic Meson G12A Platforms"
>         depends on OF && COMMON_CLK
> diff --git a/drivers/usb/dwc3/Makefile b/drivers/usb/dwc3/Makefile
> index ae86da0..a3fc655 100644
> --- a/drivers/usb/dwc3/Makefile
> +++ b/drivers/usb/dwc3/Makefile
> @@ -47,6 +47,7 @@ obj-$(CONFIG_USB_DWC3_EXYNOS)		+= dwc3-exynos.o
>  obj-$(CONFIG_USB_DWC3_PCI)		+= dwc3-pci.o
>  obj-$(CONFIG_USB_DWC3_HAPS)		+= dwc3-haps.o
>  obj-$(CONFIG_USB_DWC3_KEYSTONE)		+= dwc3-keystone.o
> +obj-$(CONFIG_USB_DWC3_MESON_A1)		+= dwc3-meson-a1.o
>  obj-$(CONFIG_USB_DWC3_MESON_G12A)	+= dwc3-meson-g12a.o
>  obj-$(CONFIG_USB_DWC3_OF_SIMPLE)	+= dwc3-of-simple.o
>  obj-$(CONFIG_USB_DWC3_ST)		+= dwc3-st.o
> diff --git a/drivers/usb/dwc3/dwc3-meson-a1.c b/drivers/usb/dwc3/dwc3-meson-a1.c
> new file mode 100644
> index 00000000..db2b99a
> --- /dev/null
> +++ b/drivers/usb/dwc3/dwc3-meson-a1.c
> @@ -0,0 +1,397 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * USB Glue for Amlogic A1 SoCs
> + *
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved
> + * Author: Yue Wang <yue.wang@amlogic.com>
> + */
> +
> +/*
> + * The USB is organized with a glue around the DWC3 Controller IP as :
> + * - Control registers for each USB2 Ports
> + * - Control registers for the USB PHY layer
> + */
> +
> +#include <linux/module.h>
> +#include <linux/kernel.h>
> +#include <linux/platform_device.h>
> +#include <linux/clk.h>
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/pm_domain.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
> +#include <linux/bitfield.h>
> +#include <linux/bitops.h>
> +#include <linux/reset.h>
> +#include <linux/phy/phy.h>
> +#include <linux/usb/otg.h>
> +#include <linux/usb/role.h>
> +#include <linux/regulator/consumer.h>
> +
> +/* USB2 Ports Control Registers */
> +#define U2P_R0							0x20
> +	#define U2P_R0_HOST_DEVICE				BIT(0)
> +	#define U2P_R0_POWER_OK					BIT(1)
> +	#define U2P_R0_HAST_MODE				BIT(2)
> +	#define U2P_R0_POWER_ON_RESET				BIT(3)
> +	#define U2P_R0_ID_PULLUP				BIT(4)
> +	#define U2P_R0_DRV_VBUS					BIT(5)
> +
> +#define U2P_R1							0x24
> +	#define U2P_R1_PHY_READY				BIT(0)
> +	#define U2P_R1_ID_DIG					BIT(1)
> +	#define U2P_R1_OTG_SESSION_VALID			BIT(2)
> +	#define U2P_R1_VBUS_VALID				BIT(3)
> +
> +/* USB Glue Control Registers */
> +
> +#define USB_R0							0x80
> +	#define USB_R0_P30_LANE0_TX2RX_LOOPBACK			BIT(17)
> +	#define USB_R0_P30_LANE0_EXT_PCLK_REQ			BIT(18)
> +	#define USB_R0_P30_PCS_RX_LOS_MASK_VAL_MASK		GENMASK(28, 19)
> +	#define USB_R0_U2D_SS_SCALEDOWN_MODE_MASK		GENMASK(30, 29)
> +	#define USB_R0_U2D_ACT					BIT(31)
> +
> +#define USB_R1							0x84
> +	#define USB_R1_U3H_BIGENDIAN_GS				BIT(0)
> +	#define USB_R1_U3H_PME_ENABLE				BIT(1)
> +	#define USB_R1_U3H_HUB_PORT_OVERCURRENT_MASK		GENMASK(4, 2)
> +	#define USB_R1_U3H_HUB_PORT_PERM_ATTACH_MASK		GENMASK(9, 7)
> +	#define USB_R1_U3H_HOST_U2_PORT_DISABLE_MASK		GENMASK(13, 12)
> +	#define USB_R1_U3H_HOST_U3_PORT_DISABLE			BIT(16)
> +	#define USB_R1_U3H_HOST_PORT_POWER_CONTROL_PRESENT	BIT(17)
> +	#define USB_R1_U3H_HOST_MSI_ENABLE			BIT(18)
> +	#define USB_R1_U3H_FLADJ_30MHZ_REG_MASK			GENMASK(24, 19)
> +	#define USB_R1_P30_PCS_TX_SWING_FULL_MASK		GENMASK(31, 25)
> +
> +#define USB_R2							0x88
> +	#define USB_R2_P30_PCS_TX_DEEMPH_3P5DB_MASK		GENMASK(25, 20)
> +	#define USB_R2_P30_PCS_TX_DEEMPH_6DB_MASK		GENMASK(31, 26)
> +
> +#define USB_R3							0x8c
> +	#define USB_R3_P30_SSC_ENABLE				BIT(0)
> +	#define USB_R3_P30_SSC_RANGE_MASK			GENMASK(3, 1)
> +	#define USB_R3_P30_SSC_REF_CLK_SEL_MASK			GENMASK(12, 4)
> +	#define USB_R3_P30_REF_SSP_EN				BIT(13)
> +
> +#define USB_R4							0x90
> +	#define USB_R4_P21_PORT_RESET_0				BIT(0)
> +	#define USB_R4_P21_SLEEP_M0				BIT(1)
> +	#define USB_R4_MEM_PD_MASK				GENMASK(3, 2)
> +	#define USB_R4_P21_ONLY					BIT(4)
> +
> +#define USB_R5							0x94
> +	#define USB_R5_ID_DIG_SYNC				BIT(0)
> +	#define USB_R5_ID_DIG_REG				BIT(1)
> +	#define USB_R5_ID_DIG_CFG_MASK				GENMASK(3, 2)
> +	#define USB_R5_ID_DIG_EN_0				BIT(4)
> +	#define USB_R5_ID_DIG_EN_1				BIT(5)
> +	#define USB_R5_ID_DIG_CURR				BIT(6)
> +	#define USB_R5_ID_DIG_IRQ				BIT(7)
> +	#define USB_R5_ID_DIG_TH_MASK				GENMASK(15, 8)
> +	#define USB_R5_ID_DIG_CNT_MASK				GENMASK(23, 16)
> +
> +static const char *phy_names = {
> +	"usb2-phy0",
> +};
> +
> +struct dwc3_meson_a1 {
> +	struct device		*dev;
> +	struct regmap		*regmap;
> +	struct clk		*clk_usb_ctrl;
> +	struct clk		*clk_usb_bus;
> +	struct clk		*clk_xtal_usb_phy;
> +	struct clk		*clk_xtal_usb_ctrl;
> +	struct reset_control	*reset;
> +	struct phy		*phys;
> +	unsigned int		usb2_ports;
> +};
> +
> +static void dwc3_meson_a1_usb_init(struct dwc3_meson_a1 *priv)
> +{
> +	regmap_update_bits(priv->regmap, U2P_R0,
> +			   U2P_R0_POWER_ON_RESET,
> +			   U2P_R0_POWER_ON_RESET);
> +
> +	regmap_update_bits(priv->regmap, U2P_R0,
> +			   U2P_R0_HOST_DEVICE,
> +			   U2P_R0_HOST_DEVICE);
> +
> +	regmap_update_bits(priv->regmap, U2P_R0,
> +			   U2P_R0_POWER_ON_RESET, 0);
> +
> +	regmap_update_bits(priv->regmap, USB_R1,
> +			   USB_R1_U3H_FLADJ_30MHZ_REG_MASK,
> +			   FIELD_PREP(USB_R1_U3H_FLADJ_30MHZ_REG_MASK, 0x20));
> +
> +	regmap_update_bits(priv->regmap, USB_R0,
> +			   USB_R0_U2D_ACT, 0);
> +
> +	regmap_update_bits(priv->regmap, USB_R4,
> +			   USB_R4_P21_SLEEP_M0, 0);
> +}
> +
> +static const struct regmap_config phy_meson_a1_usb_regmap_conf = {
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +	.max_register = USB_R5,
> +};
> +
> +static int dwc3_meson_a1_get_phys(struct dwc3_meson_a1 *priv)
> +{
> +	priv->phys = devm_phy_optional_get(priv->dev, phy_names);
> +	if (IS_ERR(priv->phys))
> +		return PTR_ERR(priv->phys);
> +
> +	priv->usb2_ports++;
> +
> +	dev_info(priv->dev, "USB2 ports: %d\n", priv->usb2_ports);
> +
> +	return 0;
> +}
> +
> +static int dwc3_meson_a1_enable_clk(struct dwc3_meson_a1 *priv)
> +{
> +	int ret;
> +
> +	ret = clk_prepare_enable(priv->clk_usb_ctrl);
> +	if (ret < 0) {
> +		dev_err(priv->dev, "can't enable usb_ctrl clock.\n");
> +		return ret;
> +	}
> +
> +	ret = clk_prepare_enable(priv->clk_usb_bus);
> +	if (ret < 0) {
> +		dev_err(priv->dev, "can't enable usb_bus clock.\n");
> +		goto disable_clk_usb_ctrl;
> +	}
> +
> +	ret = clk_prepare_enable(priv->clk_xtal_usb_phy);
> +	if (ret < 0) {
> +		dev_err(priv->dev, "can't enable xtal_usb_phy clock.\n");
> +		goto disable_clk_usb_bus;
> +	}
> +
> +	ret = clk_prepare_enable(priv->clk_xtal_usb_ctrl);
> +	if (ret < 0) {
> +		dev_err(priv->dev, "can't enable xtal_usb_ctrl clock.\n");
> +		goto disable_clk_xtal_usb_phy;
> +	}
> +
> +	return 0;
> +
> +disable_clk_xtal_usb_phy:
> +	clk_disable_unprepare(priv->clk_xtal_usb_phy);
> +disable_clk_usb_bus:
> +	clk_disable_unprepare(priv->clk_usb_bus);
> +disable_clk_usb_ctrl:
> +	clk_disable_unprepare(priv->clk_usb_ctrl);
> +
> +	return ret;
> +}
> +
> +static void dwc3_meson_a1_disable_clk(struct dwc3_meson_a1 *priv)
> +{
> +	clk_disable_unprepare(priv->clk_usb_ctrl);
> +	clk_disable_unprepare(priv->clk_usb_bus);
> +	clk_disable_unprepare(priv->clk_xtal_usb_phy);
> +	clk_disable_unprepare(priv->clk_xtal_usb_ctrl);
> +}
> +
> +static int dwc3_meson_a1_setup_clk(struct dwc3_meson_a1 *priv)
> +{
> +	int ret;
> +
> +	priv->clk_usb_ctrl = devm_clk_get(priv->dev, "usb_ctrl");
> +	if (IS_ERR(priv->clk_usb_ctrl)) {
> +		dev_err(priv->dev, "can't get usb_ctrl clock.\n");
> +		return PTR_ERR(priv->clk_usb_ctrl);
> +	}
> +
> +	priv->clk_usb_bus = devm_clk_get(priv->dev, "usb_bus");
> +	if (IS_ERR(priv->clk_usb_bus)) {
> +		dev_err(priv->dev, "can't get usb_bus clock.\n");
> +		return PTR_ERR(priv->clk_usb_bus);
> +	}
> +
> +	priv->clk_xtal_usb_phy = devm_clk_get(priv->dev, "xtal_usb_phy");
> +	if (IS_ERR(priv->clk_xtal_usb_phy)) {
> +		dev_err(priv->dev, "can't get xtal_usb_phy clock.\n");
> +		return PTR_ERR(priv->clk_xtal_usb_phy);
> +	}
> +
> +	priv->clk_xtal_usb_ctrl = devm_clk_get(priv->dev, "xtal_usb_ctrl");
> +	if (IS_ERR(priv->clk_xtal_usb_ctrl)) {
> +		dev_err(priv->dev, "can't get xtal_usb_ctrl clock.\n");
> +		return PTR_ERR(priv->clk_xtal_usb_ctrl);
> +	}
> +
> +	ret = dwc3_meson_a1_enable_clk(priv);
> +	if (ret)
> +		return ret;
> +
> +	devm_add_action_or_reset(priv->dev,
> +				 (void(*)(void *))clk_disable_unprepare,
> +				 priv->clk_usb_ctrl);
> +	devm_add_action_or_reset(priv->dev,
> +				 (void(*)(void *))clk_disable_unprepare,
> +				 priv->clk_usb_bus);
> +	devm_add_action_or_reset(priv->dev,
> +				 (void(*)(void *))clk_disable_unprepare,
> +				 priv->clk_xtal_usb_phy);
> +	devm_add_action_or_reset(priv->dev,
> +				 (void(*)(void *))clk_disable_unprepare,
> +				 priv->clk_xtal_usb_ctrl);
> +
> +	return 0;
> +}
> +
> +static int dwc3_meson_a1_probe(struct platform_device *pdev)
> +{
> +	struct dwc3_meson_a1	*priv;
> +	struct device		*dev = &pdev->dev;
> +	struct device_node	*np = dev->of_node;
> +	void __iomem *base;
> +	int ret;
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, priv);
> +	priv->dev = dev;
> +
> +	base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	priv->regmap = devm_regmap_init_mmio(dev, base,
> +					     &phy_meson_a1_usb_regmap_conf);
> +	if (IS_ERR(priv->regmap))
> +		return PTR_ERR(priv->regmap);
> +
> +	ret = dwc3_meson_a1_setup_clk(priv);
> +	if (ret)
> +		return ret;
> +
> +	priv->reset = devm_reset_control_get(dev, NULL);
> +	if (IS_ERR(priv->reset)) {
> +		ret = PTR_ERR(priv->reset);
> +		dev_err(dev, "failed to get device reset, err=%d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = reset_control_reset(priv->reset);
> +	if (ret)
> +		return ret;
> +
> +	ret = dwc3_meson_a1_get_phys(priv);
> +	if (ret)
> +		return ret;
> +
> +	dwc3_meson_a1_usb_init(priv);
> +
> +	/* Init PHYs */
> +	ret = phy_init(priv->phys);
> +	if (ret)
> +		return ret;
> +
> +	/* Set PHY Power */
> +	ret = phy_power_on(priv->phys);
> +	if (ret)
> +		goto err_phys_exit;
> +
> +	ret = of_platform_populate(np, NULL, NULL, dev);
> +	if (ret)
> +		goto err_phys_power;
> +
> +	return 0;
> +
> +err_phys_power:
> +	phy_power_off(priv->phys);
> +
> +err_phys_exit:
> +	phy_exit(priv->phys);
> +
> +	return ret;
> +}
> +
> +static int dwc3_meson_a1_remove(struct platform_device *pdev)
> +{
> +	struct dwc3_meson_a1 *priv = platform_get_drvdata(pdev);
> +	struct device *dev = &pdev->dev;
> +
> +	of_platform_depopulate(dev);
> +
> +	phy_power_off(priv->phys);
> +	phy_exit(priv->phys);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused dwc3_meson_a1_suspend(struct device *dev)
> +{
> +	struct dwc3_meson_a1 *priv = dev_get_drvdata(dev);
> +
> +	phy_power_off(priv->phys);
> +	phy_exit(priv->phys);
> +
> +	reset_control_assert(priv->reset);
> +
> +	dwc3_meson_a1_disable_clk(priv);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused dwc3_meson_a1_resume(struct device *dev)
> +{
> +	struct dwc3_meson_a1 *priv = dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret = dwc3_meson_a1_enable_clk(priv);
> +	if (ret)
> +		return ret;
> +
> +	reset_control_deassert(priv->reset);
> +
> +	dwc3_meson_a1_usb_init(priv);
> +
> +	/* Init PHYs */
> +	ret = phy_init(priv->phys);
> +	if (ret)
> +		return ret;
> +
> +	/* Set PHY Power */
> +	ret = phy_power_on(priv->phys);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static const struct dev_pm_ops dwc3_meson_a1_dev_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(dwc3_meson_a1_suspend, dwc3_meson_a1_resume)
> +};
> +
> +static const struct of_device_id dwc3_meson_a1_match[] = {
> +	{ .compatible = "amlogic,meson-a1-usb-ctrl" },
> +	{ /* Sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, dwc3_meson_a1_match);
> +
> +static struct platform_driver dwc3_meson_a1_driver = {
> +	.probe		= dwc3_meson_a1_probe,
> +	.remove		= dwc3_meson_a1_remove,
> +	.driver		= {
> +		.name	= "dwc3-meson-a1",
> +		.of_match_table = dwc3_meson_a1_match,
> +		.pm	= &dwc3_meson_a1_dev_pm_ops,
> +	},
> +};
> +
> +module_platform_driver(dwc3_meson_a1_driver);
> +MODULE_LICENSE("GPL v2");
> +MODULE_DESCRIPTION("Amlogic Meson A1 USB Glue Layer");
> +MODULE_AUTHOR("Yue Wang <yue.wang@amlogic.com>");
> 

This driver looks very close to the g12a glue driver, could you reuse the g12a driver instead ?

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
