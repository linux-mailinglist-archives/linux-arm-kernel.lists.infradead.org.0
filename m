Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C35EE1BF475
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uI8EWNMow34qo3qb1XqLEFtiM0/khYpKA2Nxm+DYQB4=; b=d9smFFwiEsZiFabKe0mY5/qakA
	lm2S4icYTEP1dsyA0LQbDIomnJv5PyIrBmnORgpIImHauugFAK9pzddUtBaN+BV0SXiSToj/fKtKK
	IuR8souJJJJ7dTSTVycohf0oRL8N7dA6bizro24mQLA4hRNC9QaxV753dT909orCPdHaGTzp1u9Ri
	ULTa2B6FXpuBI/eMI3WeaGF9dDeU/dHSLDTNbdEE9C5nBT3TDtOBqIiyQ0pfGHEsDjjDSDx8SucpJ
	XlYnWMzTQvpLLRbrCj5z4G8nfLIHa9TdhXKPxVAWWRWlPdaaE+uYzpGQyPpIhanfYapEM1phErCZ7
	2snHN9CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5ms-0001j5-IO; Thu, 30 Apr 2020 09:47:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5mf-0001gq-K8
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 09:47:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id r26so1148719wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 02:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=j6m5w+XxR2Cs/ltBdozEEmLNPE+qMrHDDHZrpcVAlcM=;
 b=0UYpVk4mWSvDgaOoXs4DE36K383RYuaGuyWfJLyXYeHfxAQoDFQPlYifjf0S40Od+F
 L8flmn++H7PEdmqBD2JxyYk0/mzNglElbJTmLyhrwhEMOenJzTciDyVKf/u7LWLKzuhp
 0bznF2IDnm2dS8o2Yh67OVn+ulVGwo3y1PZPzXzY123gAvCKWNam4XiB1+256ElGWquo
 AsFkflxPvBwyf9qA1qtnAB4GNQju5W/l8Lq416OVniY0taqGYXGKGfpZxxzgPjKXlO2O
 ZM2v2cXd6CcHo0/TudHpVZMdiPQpEEzNrgdlOgs4Rg2moqSHAXCuS0jXkdbkt1jffzs6
 5q8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=j6m5w+XxR2Cs/ltBdozEEmLNPE+qMrHDDHZrpcVAlcM=;
 b=LCCwCCOqygCuHH12usCCRefjxPVlmEtZguKb1Piw6puseO9R4HUACsodyoFlblTDTU
 hRpYYjbJa1763lncI0CKzpb3CKBayAQZf8B0+dwNnSpestIQzuInI+vkKnRw0aYH/mvi
 MSp1O1Vg0dPc+LGRzHoBIbtnHxCHTypnxhI68DQhVbRzcpJknHANEr0wKpezsUasCbI0
 wsdIVU+KdY3KHWM3NEkWfsqREExJM9Az+zllFqfbidc9b1JIjq1fq4RsH/ExUdSOJcH/
 GKqs8D4p8nQIp3QeRGN8SDPblH6gN4gOW3M7SbTdz1AggRRWpkFOx8/kwoGDvmiukLN0
 l1SQ==
X-Gm-Message-State: AGi0PuZkd3/PXpsWJFyGdlbiPx7LBtBjrRSJCjolsZMzfmVCNx4ghNNc
 0M3ZBTyodfUHg/5jT3NiTu3K1w==
X-Google-Smtp-Source: APiQypKeAzM+Z4FvFJmvOZdjtl+pnapWGUfnPv/lXx1CilsoLhzfDch5AqtQrf/T69KEAVB3AT2RdQ==
X-Received: by 2002:a7b:c772:: with SMTP id x18mr2109586wmk.39.1588240026126; 
 Thu, 30 Apr 2020 02:47:06 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id g6sm3201552wrw.34.2020.04.30.02.47.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 02:47:05 -0700 (PDT)
References: <20200428210229.703309-1-martin.blumenstingl@googlemail.com>
 <20200428210229.703309-3-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 ulf.hansson@linaro.org
Subject: Re: [PATCH v6 2/2] mmc: host: meson-mx-sdhc: new driver for the
 Amlogic Meson SDHC host
In-reply-to: <20200428210229.703309-3-martin.blumenstingl@googlemail.com>
Date: Thu, 30 Apr 2020 11:47:03 +0200
Message-ID: <1jlfmdi9uw.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_024709_705825_BCDF8DE2 
X-CRM114-Status: GOOD (  28.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, jianxin.pan@amlogic.com, linux.amoon@gmail.com,
 linux-kernel@vger.kernel.org, yinxin_1989@aliyun.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Tue 28 Apr 2020 at 23:02, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> The SDHC MMC host controller on Amlogic SoCs provides an eMMC and MMC
> card interface with 1/4/8-bit bus width.
> It supports eMMC spec 4.4x/4.5x including HS200 (up to 100MHz clock).
>
> The public S805 datasheet [0] contains a short documentation about the
> registers. Unfortunately it does not describe how to use the registers
> to make the hardware work. Thus this driver is based on reading (and
> understanding) the Amlogic 3.10 GPL kernel code.
>
> Some hardware details are not easy to see. Jianxin Pan was kind enough
> to answer my questions:
> The hardware has built-in busy timeout support. The maximum timeout is
> 30 seconds. This is only documented in Amlogic's internal
> documentation.
>
> The controller only works with very specific clock configurations. The
> details are not part of the public datasheet. In my own words the
> supported configurations are:
> - 399.812kHz:	clkin =  850MHz div = 2126 sd_rx_phase = 63
> - 1MHz:		clkin =  850MHz div = 850  sd_rx_phase = 55
> - 5.986MHz:	clkin =  850MHz div = 142  sd_rx_phase = 24
> - 25MHz:	clkin =  850MHz div = 34   sd_rx_phase = 15
> - 47.222MHz:	clkin =  850MHz div = 18   sd_rx_phase = 11/15 (SDR50/HS)
> - 53.125MHz:	clkin =  850MHz div = 16   sd_rx_phase = (tuning)
> - 70.833MHz:	clkin =  850MHz div = 12   sd_rx_phase = (tuning)
> - 85MHz:	clkin =  850MHz div = 10   sd_rx_phase = (tuning)
> - 94.44MHz:	clkin =  850MHz div = 9    sd_rx_phase = (tuning)
> - 106.25MHz:	clkin =  850MHz div = 8    sd_rx_phase = (tuning)
> - 127.5MHz:     clkin = 1275MHz div = 10   sd_rx_phase = (tuning)
> - 141.667MHz:   clkin =  850MHz div = 6    sd_rx_phase = (tuning)
> - 159.375MHz:	clkin = 1275MHz div = 8    sd_rx_phase = (tuning)
> - 212.5MHz:	clkin = 1275MHz div = 6    sd_rx_phase = (tuning)
> - (sd_tx_phase is always 1, 94.44MHz is not listed in the datasheet
>    but this is what the 3.10 BSP kernel on Odroid-C1 actually uses)
>
> NOTE: CMD23 support is disabled for now because it results in command
> timeouts and thus decreases read performance.
>
> Tested-by: Wei Wang <lnykww@gmail.com>
> Tested-by: Xin Yin <yinxin_1989@aliyun.com>
> Reviewed-by: Xin Yin <yinxin_1989@aliyun.com>
> Tested-by: Anand Moon <linux.amoon@gmail.com>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/mmc/host/Kconfig              |  14 +
>  drivers/mmc/host/Makefile             |   1 +
>  drivers/mmc/host/meson-mx-sdhc-clkc.c | 188 ++++++
>  drivers/mmc/host/meson-mx-sdhc.c      | 916 ++++++++++++++++++++++++++
>  drivers/mmc/host/meson-mx-sdhc.h      | 138 ++++
>  5 files changed, 1257 insertions(+)
>  create mode 100644 drivers/mmc/host/meson-mx-sdhc-clkc.c
>  create mode 100644 drivers/mmc/host/meson-mx-sdhc.c
>  create mode 100644 drivers/mmc/host/meson-mx-sdhc.h
>
> diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
> index 462b5352fea7..df3fc572f842 100644
> --- a/drivers/mmc/host/Kconfig
> +++ b/drivers/mmc/host/Kconfig
> @@ -405,6 +405,20 @@ config MMC_MESON_GX
>  
>  	  If you have a controller with this interface, say Y here.
>  
> +config MMC_MESON_MX_SDHC
> +	tristate "Amlogic Meson SDHC Host Controller support"
> +	depends on (ARM && ARCH_MESON) || COMPILE_TEST
> +	depends on COMMON_CLK
> +	depends on OF
> +	help
> +	  This selects support for the SDHC Host Controller on
> +	  Amlogic Meson6, Meson8, Meson8b and Meson8m2 SoCs.
> +	  The controller supports the SD/SDIO Spec 3.x and eMMC Spec 4.5x
> +	  with 1, 4, and 8 bit bus widths.
> +
> +	  If you have a controller with this interface, say Y or M here.
> +	  If unsure, say N.
> +
>  config MMC_MESON_MX_SDIO
>  	tristate "Amlogic Meson6/Meson8/Meson8b SD/MMC Host Controller support"
>  	depends on ARCH_MESON || COMPILE_TEST
> diff --git a/drivers/mmc/host/Makefile b/drivers/mmc/host/Makefile
> index b929ef941208..8bcb420e071c 100644
> --- a/drivers/mmc/host/Makefile
> +++ b/drivers/mmc/host/Makefile
> @@ -68,6 +68,7 @@ obj-$(CONFIG_MMC_VUB300)	+= vub300.o
>  obj-$(CONFIG_MMC_USHC)		+= ushc.o
>  obj-$(CONFIG_MMC_WMT)		+= wmt-sdmmc.o
>  obj-$(CONFIG_MMC_MESON_GX)	+= meson-gx-mmc.o
> +obj-$(CONFIG_MMC_MESON_MX_SDHC)	+= meson-mx-sdhc-clkc.o meson-mx-sdhc.o
>  obj-$(CONFIG_MMC_MESON_MX_SDIO)	+= meson-mx-sdio.o
>  obj-$(CONFIG_MMC_MOXART)	+= moxart-mmc.o
>  obj-$(CONFIG_MMC_SUNXI)		+= sunxi-mmc.o
> diff --git a/drivers/mmc/host/meson-mx-sdhc-clkc.c b/drivers/mmc/host/meson-mx-sdhc-clkc.c
> new file mode 100644
> index 000000000000..1e9dea94f9dc
> --- /dev/null
> +++ b/drivers/mmc/host/meson-mx-sdhc-clkc.c
> @@ -0,0 +1,188 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Amlogic Meson SDHC clock controller
> + *
> + * Copyright (C) 2020 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> + */
> +
> +#include <dt-bindings/clock/meson-mx-sdhc-clkc.h>
> +
> +#include <linux/clk-provider.h>
> +#include <linux/device.h>
> +#include <linux/platform_device.h>
> +
> +#include "meson-mx-sdhc.h"
> +
> +#define MESON_SDHC_NUM_BUILTIN_CLKS	6
> +
> +struct meson_mx_sdhc_clkc {
> +	struct clk_mux			src_sel;
> +	struct clk_divider		div;
> +	struct clk_gate			mod_clk_en;
> +	struct clk_gate			tx_clk_en;
> +	struct clk_gate			rx_clk_en;
> +	struct clk_gate			sd_clk_en;
> +	struct clk_hw_onecell_data	hw_onecell_data;
> +};
> +
> +static const struct clk_div_table meson_mx_sdhc_div_table[] = {
> +	{ .div = 6, .val = 5, },
> +	{ .div = 8, .val = 7, },
> +	{ .div = 9, .val = 8, },
> +	{ .div = 10, .val = 9, },
> +	{ .div = 12, .val = 11, },
> +	{ .div = 16, .val = 15, },
> +	{ .div = 18, .val = 17, },
> +	{ .div = 34, .val = 33, },
> +	{ .div = 142, .val = 141, },
> +	{ .div = 850, .val = 849, },
> +	{ .div = 2126, .val = 2125, },
> +	{ .div = 4096, .val = 4095, },
> +	{ /* sentinel */ }
> +};
> +
> +static const struct meson_mx_sdhc_clkc meson_mx_sdhc_clkc_data = {
> +	.src_sel = {
> +		.mask = 0x3,
> +		.shift = 16,
> +	},
> +	.div = {
> +		.shift = 0,
> +		.width = 12,
> +		.table = meson_mx_sdhc_div_table,
> +	},
> +	.mod_clk_en = {
> +		.bit_idx = 15,
> +	},
> +	.tx_clk_en = {
> +		.bit_idx = 14,
> +	},
> +	.rx_clk_en = {
> +		.bit_idx = 13,
> +	},
> +	.sd_clk_en = {
> +		.bit_idx = 12,
> +	},
> +};
> +
> +static const struct clk_init_data meson_mx_sdhc_clkc_init_data[] = {
> +	[SDHC_CLKID_SRC_SEL] = {
> +		.name = "sdhc_src_sel",
> +		.ops = &clk_mux_ops,
> +		.parent_data = (const struct clk_parent_data[]) {
> +			{ .fw_name = "clkin0" },
> +			{ .fw_name = "clkin1" },
> +			{ .fw_name = "clkin2" },
> +			{ .fw_name = "clkin3" },
> +		},
> +		.num_parents = 4,
> +	},
> +	[SDHC_CLKID_DIV] = {
> +		.name = "sdhc_div",
> +		.ops = &clk_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&meson_mx_sdhc_clkc_data.src_sel.hw,
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +	[SDHC_CLKID_MOD_CLK] = {
> +		.name = "sdhc_mod_clk_on",
> +		.ops = &clk_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&meson_mx_sdhc_clkc_data.div.hw,
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +	[SDHC_CLKID_SD_CLK] = {
> +		.name = "sdhc_tx_clk_on",
> +		.ops = &clk_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&meson_mx_sdhc_clkc_data.div.hw,
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +	[SDHC_CLKID_TX_CLK] = {
> +		.name = "sdhc_rx_clk_on",
> +		.ops = &clk_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&meson_mx_sdhc_clkc_data.div.hw,
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +	[SDHC_CLKID_RX_CLK] = {
> +		.name = "sdhc_sd_clk_on",
> +		.ops = &clk_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&meson_mx_sdhc_clkc_data.div.hw,
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};

That quite lot of structures.
The interesting information is the parent and divider table mostly, and
a few defines for the bit_idx.

I feel this could be simplified so it is easier to follow.
Maybe something in the same fashion as meson8b-dwmac driver ?

> +
> +int meson_mx_sdhc_register_clkc(struct device *dev, void __iomem *base)
> +{
> +	const struct clk_hw *div_parents[1], *gate_parents[1];
> +	struct clk_hw_onecell_data *onecell_data;
> +	struct meson_mx_sdhc_clkc *clkc_data;
> +	struct clk_init_data init_data;
> +	int i, ret;
> +
> +	clkc_data = devm_kzalloc(dev, struct_size(clkc_data,
> +						  hw_onecell_data.hws,
> +						  MESON_SDHC_NUM_BUILTIN_CLKS),
> +				 GFP_KERNEL);
> +	if (!clkc_data)
> +		return -ENOMEM;
> +
> +	memcpy(clkc_data, &meson_mx_sdhc_clkc_data,
> +	       sizeof(meson_mx_sdhc_clkc_data));
> +
> +	div_parents[0] = &clkc_data->src_sel.hw;
> +	gate_parents[0] = &clkc_data->div.hw;
> +
> +	clkc_data->src_sel.reg = base + MESON_SDHC_CLKC;
> +	clkc_data->div.reg = base + MESON_SDHC_CLKC;
> +	clkc_data->mod_clk_en.reg = base + MESON_SDHC_CLKC;
> +	clkc_data->sd_clk_en.reg = base + MESON_SDHC_CLKC;
> +	clkc_data->tx_clk_en.reg = base + MESON_SDHC_CLKC;
> +	clkc_data->rx_clk_en.reg = base + MESON_SDHC_CLKC;
> +
> +	onecell_data = &clkc_data->hw_onecell_data;
> +	onecell_data->hws[SDHC_CLKID_SRC_SEL] = &clkc_data->src_sel.hw;
> +	onecell_data->hws[SDHC_CLKID_DIV] = &clkc_data->div.hw;
> +	onecell_data->hws[SDHC_CLKID_MOD_CLK] = &clkc_data->mod_clk_en.hw;
> +	onecell_data->hws[SDHC_CLKID_SD_CLK] = &clkc_data->sd_clk_en.hw;
> +	onecell_data->hws[SDHC_CLKID_TX_CLK] = &clkc_data->tx_clk_en.hw;
> +	onecell_data->hws[SDHC_CLKID_RX_CLK] = &clkc_data->rx_clk_en.hw;
> +
> +	for (i = 0; i < MESON_SDHC_NUM_BUILTIN_CLKS; i++) {
> +		init_data = meson_mx_sdhc_clkc_init_data[i];
> +
> +		if (i == SDHC_CLKID_SRC_SEL)
> +			/* uses clk_parent_data instead */
> +			init_data.parent_hws = NULL;
> +		else if (i == SDHC_CLKID_DIV)
> +			init_data.parent_hws = div_parents;
> +		else
> +			init_data.parent_hws = gate_parents;
> +
> +		onecell_data->hws[i]->init = &init_data;
> +
> +		ret = devm_clk_hw_register(dev, onecell_data->hws[i]);
> +		if (ret) {
> +			dev_err(dev, "Registration of SDHC clock %d failed\n",
> +				i);
> +			return ret;
> +		}
> +	}
> +
> +	onecell_data->num = MESON_SDHC_NUM_BUILTIN_CLKS;
> +
> +	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
> +					   onecell_data);

I think registering a provider for a module that does not provide clocks
to any other device is a bit overkill.

I understand the matter is getting the per-user clk* pointer.
Since this is the module registering the clock, you can use clk_hw->clk
to get it.

Once you have the clk* of the leaf clocks, you don't even need to keep
track of the clk_hw* since you are using devm_

Afterward, we should propably discuss with Stephen if something should
be added in CCF to get a struct clk* from struct clk_hw*.

> +}
> diff --git a/drivers/mmc/host/meson-mx-sdhc.c b/drivers/mmc/host/meson-mx-sdhc.c
> new file mode 100644
> index 000000000000..3c54d5f91fbc
> --- /dev/null
> +++ b/drivers/mmc/host/meson-mx-sdhc.c
> @@ -0,0 +1,916 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Amlogic Meson6/Meson8/Meson8b/Meson8m2 SDHC MMC host controller driver.
> + *
> + * Copyright (C) 2020 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/device.h>
> +#include <linux/dma-mapping.h>
> +#include <linux/interrupt.h>
> +#include <linux/iopoll.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/types.h>
> +
> +#include <linux/mmc/host.h>
> +#include <linux/mmc/mmc.h>
> +#include <linux/mmc/sdio.h>
> +#include <linux/mmc/slot-gpio.h>
> +
> +#include "meson-mx-sdhc.h"
> +
> +#define MESON_SDHC_NUM_BULK_CLKS				4
> +#define MESON_SDHC_MAX_BLK_SIZE					512
> +#define MESON_SDHC_NUM_TUNING_TRIES				10
> +
> +#define MESON_SDHC_WAIT_CMD_READY_SLEEP_US			1
> +#define MESON_SDHC_WAIT_CMD_READY_TIMEOUT_US			100000
> +#define MESON_SDHC_WAIT_BEFORE_SEND_SLEEP_US			1
> +#define MESON_SDHC_WAIT_BEFORE_SEND_TIMEOUT_US			200
> +
> +struct meson_mx_sdhc_data {
> +	void		(*init_hw)(struct mmc_host *mmc);
> +	void		(*set_pdma)(struct mmc_host *mmc);
> +	void		(*wait_before_send)(struct mmc_host *mmc);
> +	bool		hardware_flush_all_cmds;
> +};
> +
> +struct meson_mx_sdhc_host {
> +	struct mmc_host			*mmc;
> +
> +	struct mmc_request		*mrq;
> +	struct mmc_command		*cmd;
> +	int				error;
> +
> +	struct regmap			*regmap;
> +
> +	struct clk			*pclk;
> +	struct clk			*sd_clk;
> +	struct clk_bulk_data		bulk_clks[MESON_SDHC_NUM_BULK_CLKS];
> +	bool				bulk_clks_enabled;
> +
> +	const struct meson_mx_sdhc_data	*platform;
> +};
> +
> +static const struct regmap_config meson_mx_sdhc_regmap_config = {
> +	.reg_bits = 8,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +	.max_register = MESON_SDHC_CLK2,
> +};
> +
> +static void meson_mx_sdhc_hw_reset(struct mmc_host *mmc)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +
> +	regmap_write(host->regmap, MESON_SDHC_SRST, MESON_SDHC_SRST_MAIN_CTRL |
> +		     MESON_SDHC_SRST_RXFIFO | MESON_SDHC_SRST_TXFIFO |
> +		     MESON_SDHC_SRST_DPHY_RX | MESON_SDHC_SRST_DPHY_TX |
> +		     MESON_SDHC_SRST_DMA_IF);
> +	usleep_range(10, 100);
> +
> +	regmap_write(host->regmap, MESON_SDHC_SRST, 0);
> +	usleep_range(10, 100);
> +}
> +
> +static void meson_mx_sdhc_clear_fifo(struct mmc_host *mmc)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +	u32 stat;
> +
> +	regmap_read(host->regmap, MESON_SDHC_STAT, &stat);
> +	if (!FIELD_GET(MESON_SDHC_STAT_RXFIFO_CNT, stat) &&
> +	    !FIELD_GET(MESON_SDHC_STAT_TXFIFO_CNT, stat))
> +		return;
> +
> +	regmap_write(host->regmap, MESON_SDHC_SRST, MESON_SDHC_SRST_RXFIFO |
> +		     MESON_SDHC_SRST_TXFIFO | MESON_SDHC_SRST_MAIN_CTRL);
> +	udelay(5);
> +
> +	regmap_read(host->regmap, MESON_SDHC_STAT, &stat);
> +	if (FIELD_GET(MESON_SDHC_STAT_RXFIFO_CNT, stat) ||
> +	    FIELD_GET(MESON_SDHC_STAT_TXFIFO_CNT, stat))
> +		dev_warn(mmc_dev(host->mmc),
> +			 "Failed to clear FIFOs, RX: %lu, TX: %lu\n",
> +			 FIELD_GET(MESON_SDHC_STAT_RXFIFO_CNT, stat),
> +			 FIELD_GET(MESON_SDHC_STAT_TXFIFO_CNT, stat));
> +}
> +
> +static void meson_mx_sdhc_wait_cmd_ready(struct mmc_host *mmc)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +	u32 stat, esta;
> +	int ret;
> +
> +	ret = regmap_read_poll_timeout(host->regmap, MESON_SDHC_STAT, stat,
> +				       !(stat & MESON_SDHC_STAT_CMD_BUSY),
> +				       MESON_SDHC_WAIT_CMD_READY_SLEEP_US,
> +				       MESON_SDHC_WAIT_CMD_READY_TIMEOUT_US);
> +	if (ret) {
> +		dev_warn(mmc_dev(mmc),
> +			 "Failed to poll for CMD_BUSY while processing CMD%d\n",
> +			 host->cmd->opcode);
> +		meson_mx_sdhc_hw_reset(mmc);
> +	}
> +
> +	ret = regmap_read_poll_timeout(host->regmap, MESON_SDHC_ESTA, esta,
> +				       !(esta & MESON_SDHC_ESTA_11_13),
> +				       MESON_SDHC_WAIT_CMD_READY_SLEEP_US,
> +				       MESON_SDHC_WAIT_CMD_READY_TIMEOUT_US);
> +	if (ret) {
> +		dev_warn(mmc_dev(mmc),
> +			 "Failed to poll for ESTA[13:11] while processing CMD%d\n",
> +			 host->cmd->opcode);
> +		meson_mx_sdhc_hw_reset(mmc);
> +	}
> +}
> +
> +static void meson_mx_sdhc_start_cmd(struct mmc_host *mmc,
> +				    struct mmc_command *cmd)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +	u32 ictl, send;
> +	int pack_len;
> +
> +	host->cmd = cmd;
> +
> +	ictl = MESON_SDHC_ICTL_DATA_TIMEOUT | MESON_SDHC_ICTL_DATA_ERR_CRC |
> +	       MESON_SDHC_ICTL_RXFIFO_FULL | MESON_SDHC_ICTL_TXFIFO_EMPTY |
> +	       MESON_SDHC_ICTL_RESP_TIMEOUT | MESON_SDHC_ICTL_RESP_ERR_CRC;
> +
> +	send = FIELD_PREP(MESON_SDHC_SEND_CMD_INDEX, cmd->opcode);
> +
> +	if (cmd->data) {
> +		send |= MESON_SDHC_SEND_CMD_HAS_DATA;
> +		send |= FIELD_PREP(MESON_SDHC_SEND_TOTAL_PACK,
> +				   cmd->data->blocks - 1);
> +
> +		if (cmd->data->blksz < MESON_SDHC_MAX_BLK_SIZE)
> +			pack_len = cmd->data->blksz;
> +		else
> +			pack_len = 0;
> +
> +		if (cmd->data->flags & MMC_DATA_WRITE)
> +			send |= MESON_SDHC_SEND_DATA_DIR;
> +
> +		/*
> +		 * If command with no data, just wait response done
> +		 * interrupt(int[0]), and if command with data transfer, just
> +		 * wait dma done interrupt(int[11]), don't need care about
> +		 * dat0 busy or not.
> +		 */
> +		if (host->platform->hardware_flush_all_cmds ||
> +		    cmd->data->flags & MMC_DATA_WRITE)
> +			/* hardware flush: */
> +			ictl |= MESON_SDHC_ICTL_DMA_DONE;
> +		else
> +			/* software flush: */
> +			ictl |= MESON_SDHC_ICTL_DATA_XFER_OK;
> +	} else {
> +		pack_len = 0;
> +
> +		ictl |= MESON_SDHC_ICTL_RESP_OK;
> +	}
> +
> +	if (cmd->opcode == MMC_STOP_TRANSMISSION)
> +		send |= MESON_SDHC_SEND_DATA_STOP;
> +
> +	if (cmd->flags & MMC_RSP_PRESENT)
> +		send |= MESON_SDHC_SEND_CMD_HAS_RESP;
> +
> +	if (cmd->flags & MMC_RSP_136) {
> +		send |= MESON_SDHC_SEND_RESP_LEN;
> +		send |= MESON_SDHC_SEND_RESP_NO_CRC;
> +	}
> +
> +	if (!(cmd->flags & MMC_RSP_CRC))
> +		send |= MESON_SDHC_SEND_RESP_NO_CRC;
> +
> +	if (cmd->flags & MMC_RSP_BUSY)
> +		send |= MESON_SDHC_SEND_R1B;
> +
> +	/* enable the new IRQs and mask all pending ones */
> +	regmap_write(host->regmap, MESON_SDHC_ICTL, ictl);
> +	regmap_write(host->regmap, MESON_SDHC_ISTA, MESON_SDHC_ISTA_ALL_IRQS);
> +
> +	regmap_write(host->regmap, MESON_SDHC_ARGU, cmd->arg);
> +
> +	regmap_update_bits(host->regmap, MESON_SDHC_CTRL,
> +			   MESON_SDHC_CTRL_PACK_LEN,
> +			   FIELD_PREP(MESON_SDHC_CTRL_PACK_LEN, pack_len));
> +
> +	if (cmd->data)
> +		regmap_write(host->regmap, MESON_SDHC_ADDR,
> +			     sg_dma_address(cmd->data->sg));
> +
> +	meson_mx_sdhc_wait_cmd_ready(mmc);
> +
> +	if (cmd->data)
> +		host->platform->set_pdma(mmc);
> +
> +	if (host->platform->wait_before_send)
> +		host->platform->wait_before_send(mmc);
> +
> +	regmap_write(host->regmap, MESON_SDHC_SEND, send);
> +}
> +
> +static void meson_mx_sdhc_disable_clks(struct mmc_host *mmc)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +
> +	if (!host->bulk_clks_enabled)
> +		return;
> +
> +	clk_bulk_disable_unprepare(MESON_SDHC_NUM_BULK_CLKS, host->bulk_clks);
> +
> +	host->bulk_clks_enabled = false;
> +}
> +
> +static int meson_mx_sdhc_enable_clks(struct mmc_host *mmc)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +	int ret;
> +
> +	if (host->bulk_clks_enabled)
> +		return 0;
> +
> +	ret = clk_bulk_prepare_enable(MESON_SDHC_NUM_BULK_CLKS,
> +				      host->bulk_clks);
> +	if (ret)
> +		return ret;
> +
> +	host->bulk_clks_enabled = true;
> +
> +	return 0;
> +}
> +
> +static int meson_mx_sdhc_set_clk(struct mmc_host *mmc, struct mmc_ios *ios)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +	u32 rx_clk_phase;
> +	int ret;
> +
> +	meson_mx_sdhc_disable_clks(mmc);
> +
> +	if (ios->clock) {
> +		ret = clk_set_rate(host->sd_clk, ios->clock);
> +		if (ret) {
> +			dev_warn(mmc_dev(mmc),
> +				 "Failed to set MMC clock to %uHz: %d\n",
> +				 ios->clock, host->error);
> +			return ret;
> +		}
> +
> +		ret = meson_mx_sdhc_enable_clks(mmc);
> +		if (ret)
> +			return ret;
> +
> +		mmc->actual_clock = clk_get_rate(host->sd_clk);
> +
> +		/*
> +		 * according to Amlogic the following latching points are
> +		 * selected with empirical values, there is no (known) formula
> +		 * to calculate these.
> +		 */
> +		if (mmc->actual_clock > 100000000) {
> +			rx_clk_phase = 1;
> +		} else if (mmc->actual_clock > 45000000) {
> +			if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_330)
> +				rx_clk_phase = 15;
> +			else
> +				rx_clk_phase = 11;
> +		} else if (mmc->actual_clock >= 25000000) {
> +			rx_clk_phase = 15;
> +		} else if (mmc->actual_clock > 5000000) {
> +			rx_clk_phase = 23;
> +		} else if (mmc->actual_clock > 1000000) {
> +			rx_clk_phase = 55;
> +		} else {
> +			rx_clk_phase = 1061;
> +		}
> +
> +		regmap_update_bits(host->regmap, MESON_SDHC_CLK2,
> +				   MESON_SDHC_CLK2_RX_CLK_PHASE,
> +				   FIELD_PREP(MESON_SDHC_CLK2_RX_CLK_PHASE,
> +					      rx_clk_phase));
> +	} else {
> +		mmc->actual_clock = 0;
> +	}
> +
> +	return 0;
> +}
> +
> +static void meson_mx_sdhc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +	unsigned short vdd = ios->vdd;
> +
> +	switch (ios->power_mode) {
> +	case MMC_POWER_OFF:
> +		vdd = 0;
> +		fallthrough;
> +
> +	case MMC_POWER_UP:
> +		if (!IS_ERR(mmc->supply.vmmc)) {
> +			host->error = mmc_regulator_set_ocr(mmc,
> +							    mmc->supply.vmmc,
> +							    vdd);
> +			if (host->error)
> +				return;
> +		}
> +
> +		break;
> +
> +	case MMC_POWER_ON:
> +		break;
> +	}
> +
> +	host->error = meson_mx_sdhc_set_clk(mmc, ios);
> +	if (host->error)
> +		return;
> +
> +	switch (ios->bus_width) {
> +	case MMC_BUS_WIDTH_1:
> +		regmap_update_bits(host->regmap, MESON_SDHC_CTRL,
> +				   MESON_SDHC_CTRL_DAT_TYPE,
> +				   FIELD_PREP(MESON_SDHC_CTRL_DAT_TYPE, 0));
> +		break;
> +
> +	case MMC_BUS_WIDTH_4:
> +		regmap_update_bits(host->regmap, MESON_SDHC_CTRL,
> +				   MESON_SDHC_CTRL_DAT_TYPE,
> +				   FIELD_PREP(MESON_SDHC_CTRL_DAT_TYPE, 1));
> +		break;
> +
> +	case MMC_BUS_WIDTH_8:
> +		regmap_update_bits(host->regmap, MESON_SDHC_CTRL,
> +				   MESON_SDHC_CTRL_DAT_TYPE,
> +				   FIELD_PREP(MESON_SDHC_CTRL_DAT_TYPE, 2));
> +		break;
> +
> +	default:
> +		dev_err(mmc_dev(mmc), "unsupported bus width: %d\n",
> +			ios->bus_width);
> +		host->error = -EINVAL;
> +		return;
> +	}
> +}
> +
> +static int meson_mx_sdhc_map_dma(struct mmc_host *mmc, struct mmc_request *mrq)
> +{
> +	struct mmc_data *data = mrq->data;
> +	int dma_len;
> +
> +	if (!data)
> +		return 0;
> +
> +	dma_len = dma_map_sg(mmc_dev(mmc), data->sg, data->sg_len,
> +			     mmc_get_dma_dir(data));
> +	if (dma_len <= 0) {
> +		dev_err(mmc_dev(mmc), "dma_map_sg failed\n");
> +		return -ENOMEM;
> +	}
> +
> +	return 0;
> +}
> +
> +static void meson_mx_sdhc_request(struct mmc_host *mmc, struct mmc_request *mrq)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +	struct mmc_command *cmd = mrq->cmd;
> +
> +	if (!host->error)
> +		host->error = meson_mx_sdhc_map_dma(mmc, mrq);
> +
> +	if (host->error) {
> +		cmd->error = host->error;
> +		mmc_request_done(mmc, mrq);
> +		return;
> +	}
> +
> +	host->mrq = mrq;
> +
> +	meson_mx_sdhc_start_cmd(mmc, mrq->cmd);
> +}
> +
> +static int meson_mx_sdhc_card_busy(struct mmc_host *mmc)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +	u32 stat;
> +
> +	regmap_read(host->regmap, MESON_SDHC_STAT, &stat);
> +	return FIELD_GET(MESON_SDHC_STAT_DAT3_0, stat) == 0;
> +}
> +
> +static bool meson_mx_sdhc_tuning_point_matches(struct mmc_host *mmc,
> +					       u32 opcode)
> +{
> +	unsigned int i, num_matches = 0;
> +	int ret;
> +
> +	for (i = 0; i < MESON_SDHC_NUM_TUNING_TRIES; i++) {
> +		ret = mmc_send_tuning(mmc, opcode, NULL);
> +		if (!ret)
> +			num_matches++;
> +	}
> +
> +	return num_matches == MESON_SDHC_NUM_TUNING_TRIES;
> +}
> +
> +static int meson_mx_sdhc_execute_tuning(struct mmc_host *mmc, u32 opcode)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +	int div, start, len, best_start, best_len;
> +	int curr_phase, old_phase, new_phase;
> +	u32 val;
> +
> +	len = 0;
> +	start = 0;
> +	best_len = 0;
> +
> +	regmap_read(host->regmap, MESON_SDHC_CLK2, &val);
> +	old_phase = FIELD_GET(MESON_SDHC_CLK2_RX_CLK_PHASE, val);
> +
> +	regmap_read(host->regmap, MESON_SDHC_CLKC, &val);
> +	div = FIELD_GET(MESON_SDHC_CLKC_CLK_DIV, val);
> +
> +	for (curr_phase = 0; curr_phase <= div; curr_phase++) {
> +		regmap_update_bits(host->regmap, MESON_SDHC_CLK2,
> +				   MESON_SDHC_CLK2_RX_CLK_PHASE,
> +				   FIELD_PREP(MESON_SDHC_CLK2_RX_CLK_PHASE,
> +					      curr_phase));
> +
> +		if (meson_mx_sdhc_tuning_point_matches(mmc, opcode)) {
> +			if (!len) {
> +				start = curr_phase;
> +
> +				dev_dbg(mmc_dev(mmc),
> +					"New RX phase window starts at %u\n",
> +					start);
> +			}
> +
> +			len++;
> +		} else {
> +			if (len > best_len) {
> +				best_start = start;
> +				best_len = len;
> +
> +				dev_dbg(mmc_dev(mmc),
> +					"New best RX phase window: %u - %u\n",
> +					best_start, best_start + best_len);
> +			}
> +
> +			/* reset the current window */
> +			len = 0;
> +		}
> +	}
> +
> +	if (len > best_len)
> +		/* the last window is the best (or possibly only) window */
> +		new_phase = start + (len / 2);
> +	else if (best_len)
> +		/* there was a better window than the last */
> +		new_phase = best_start + (best_len / 2);
> +	else
> +		/* no window was found at all, reset to the original phase */
> +		new_phase = old_phase;
> +
> +	regmap_update_bits(host->regmap, MESON_SDHC_CLK2,
> +			   MESON_SDHC_CLK2_RX_CLK_PHASE,
> +			   FIELD_PREP(MESON_SDHC_CLK2_RX_CLK_PHASE,
> +				      new_phase));
> +
> +	if (!len && !best_len)
> +		return -EIO;
> +
> +	dev_dbg(mmc_dev(mmc), "Tuned RX clock phase to %u\n", new_phase);
> +
> +	return 0;
> +}
> +
> +static const struct mmc_host_ops meson_mx_sdhc_ops = {
> +	.hw_reset			= meson_mx_sdhc_hw_reset,
> +	.request			= meson_mx_sdhc_request,
> +	.set_ios			= meson_mx_sdhc_set_ios,
> +	.card_busy			= meson_mx_sdhc_card_busy,
> +	.execute_tuning			= meson_mx_sdhc_execute_tuning,
> +	.get_cd				= mmc_gpio_get_cd,
> +	.get_ro				= mmc_gpio_get_ro,
> +};
> +
> +static void meson_mx_sdhc_request_done(struct meson_mx_sdhc_host *host)
> +{
> +	struct mmc_request *mrq = host->mrq;
> +	struct mmc_host *mmc = host->mmc;
> +
> +	/* disable interrupts and mask all pending ones */
> +	regmap_update_bits(host->regmap, MESON_SDHC_ICTL,
> +			   MESON_SDHC_ICTL_ALL_IRQS, 0);
> +	regmap_update_bits(host->regmap, MESON_SDHC_ISTA,
> +			   MESON_SDHC_ISTA_ALL_IRQS, MESON_SDHC_ISTA_ALL_IRQS);
> +
> +	host->mrq = NULL;
> +	host->cmd = NULL;
> +
> +	mmc_request_done(mmc, mrq);
> +}
> +
> +static u32 meson_mx_sdhc_read_response(struct meson_mx_sdhc_host *host, u8 idx)
> +{
> +	u32 val;
> +
> +	regmap_update_bits(host->regmap, MESON_SDHC_PDMA,
> +			   MESON_SDHC_PDMA_DMA_MODE, 0);
> +
> +	regmap_update_bits(host->regmap, MESON_SDHC_PDMA,
> +			   MESON_SDHC_PDMA_PIO_RDRESP,
> +			   FIELD_PREP(MESON_SDHC_PDMA_PIO_RDRESP, idx));
> +
> +	regmap_read(host->regmap, MESON_SDHC_ARGU, &val);
> +
> +	return val;
> +}
> +
> +static irqreturn_t meson_mx_sdhc_irq(int irq, void *data)
> +{
> +	struct meson_mx_sdhc_host *host = data;
> +	struct mmc_command *cmd = host->cmd;
> +	u32 ictl, ista;
> +
> +	regmap_read(host->regmap, MESON_SDHC_ICTL, &ictl);
> +	regmap_read(host->regmap, MESON_SDHC_ISTA, &ista);
> +
> +	if (!(ictl & ista))
> +		return IRQ_NONE;
> +
> +	if (ista & MESON_SDHC_ISTA_RXFIFO_FULL ||
> +	    ista & MESON_SDHC_ISTA_TXFIFO_EMPTY)
> +		cmd->error = -EIO;
> +	else if (ista & MESON_SDHC_ISTA_RESP_ERR_CRC)
> +		cmd->error = -EILSEQ;
> +	else if (ista & MESON_SDHC_ISTA_RESP_TIMEOUT)
> +		cmd->error = -ETIMEDOUT;
> +
> +	if (cmd->data) {
> +		if (ista & MESON_SDHC_ISTA_DATA_ERR_CRC)
> +			cmd->data->error = -EILSEQ;
> +		else if (ista & MESON_SDHC_ISTA_DATA_TIMEOUT)
> +			cmd->data->error = -ETIMEDOUT;
> +	}
> +
> +	if (cmd->error || (cmd->data && cmd->data->error))
> +		dev_dbg(mmc_dev(host->mmc), "CMD%d error, ISTA: 0x%08x\n",
> +			cmd->opcode, ista);
> +
> +	return IRQ_WAKE_THREAD;
> +}
> +
> +static irqreturn_t meson_mx_sdhc_irq_thread(int irq, void *irq_data)
> +{
> +	struct meson_mx_sdhc_host *host = irq_data;
> +	struct mmc_command *cmd;
> +	u32 val;
> +
> +	cmd = host->cmd;
> +	if (WARN_ON(!cmd))
> +		return IRQ_HANDLED;
> +
> +	if (cmd->data && !cmd->data->error) {
> +		if (!host->platform->hardware_flush_all_cmds &&
> +		    cmd->data->flags & MMC_DATA_READ) {
> +			meson_mx_sdhc_wait_cmd_ready(host->mmc);
> +
> +			val = FIELD_PREP(MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH,
> +					 2);
> +			regmap_update_bits(host->regmap, MESON_SDHC_PDMA,
> +					   MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH,
> +					   val);
> +		}
> +
> +		dma_unmap_sg(mmc_dev(host->mmc), cmd->data->sg,
> +			     cmd->data->sg_len, mmc_get_dma_dir(cmd->data));
> +
> +		cmd->data->bytes_xfered = cmd->data->blksz * cmd->data->blocks;
> +	}
> +
> +	meson_mx_sdhc_wait_cmd_ready(host->mmc);
> +
> +	if (cmd->flags & MMC_RSP_136) {
> +		cmd->resp[0] = meson_mx_sdhc_read_response(host, 4);
> +		cmd->resp[1] = meson_mx_sdhc_read_response(host, 3);
> +		cmd->resp[2] = meson_mx_sdhc_read_response(host, 2);
> +		cmd->resp[3] = meson_mx_sdhc_read_response(host, 1);
> +	} else {
> +		cmd->resp[0] = meson_mx_sdhc_read_response(host, 0);
> +	}
> +
> +	if (cmd->error == -EIO || cmd->error == -ETIMEDOUT)
> +		meson_mx_sdhc_hw_reset(host->mmc);
> +	else if (cmd->data)
> +		/*
> +		 * Clear the FIFOs after completing data transfers to prevent
> +		 * corrupting data on write access. It's not clear why this is
> +		 * needed (for reads and writes), but it mimics what the BSP
> +		 * kernel did.
> +		 */
> +		meson_mx_sdhc_clear_fifo(host->mmc);
> +
> +	meson_mx_sdhc_request_done(host);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static void meson_mx_sdhc_init_hw_meson8(struct mmc_host *mmc)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +
> +	regmap_write(host->regmap, MESON_SDHC_MISC,
> +		     FIELD_PREP(MESON_SDHC_MISC_TXSTART_THRES, 7) |
> +		     FIELD_PREP(MESON_SDHC_MISC_WCRC_ERR_PATT, 5) |
> +		     FIELD_PREP(MESON_SDHC_MISC_WCRC_OK_PATT, 2));
> +
> +	regmap_write(host->regmap, MESON_SDHC_ENHC,
> +		     FIELD_PREP(MESON_SDHC_ENHC_RXFIFO_TH, 63) |
> +		     MESON_SDHC_ENHC_MESON6_DMA_WR_RESP |
> +		     FIELD_PREP(MESON_SDHC_ENHC_MESON6_RX_TIMEOUT, 255) |
> +		     FIELD_PREP(MESON_SDHC_ENHC_SDIO_IRQ_PERIOD, 12));
> +};
> +
> +static void meson_mx_sdhc_set_pdma_meson8(struct mmc_host *mmc)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +
> +	if (host->cmd->data->flags & MMC_DATA_WRITE)
> +		regmap_update_bits(host->regmap, MESON_SDHC_PDMA,
> +				   MESON_SDHC_PDMA_DMA_MODE |
> +				   MESON_SDHC_PDMA_RD_BURST |
> +				   MESON_SDHC_PDMA_TXFIFO_FILL,
> +				   MESON_SDHC_PDMA_DMA_MODE |
> +				   FIELD_PREP(MESON_SDHC_PDMA_RD_BURST, 31) |
> +				   MESON_SDHC_PDMA_TXFIFO_FILL);
> +	else
> +		regmap_update_bits(host->regmap, MESON_SDHC_PDMA,
> +				   MESON_SDHC_PDMA_DMA_MODE |
> +				   MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH,
> +				   MESON_SDHC_PDMA_DMA_MODE |
> +				   FIELD_PREP(MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH,
> +					      1));
> +
> +	if (host->cmd->data->flags & MMC_DATA_WRITE)
> +		regmap_update_bits(host->regmap, MESON_SDHC_PDMA,
> +				   MESON_SDHC_PDMA_RD_BURST,
> +				   FIELD_PREP(MESON_SDHC_PDMA_RD_BURST, 15));
> +}
> +
> +static void meson_mx_sdhc_wait_before_send_meson8(struct mmc_host *mmc)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +	u32 val;
> +	int ret;
> +
> +	ret = regmap_read_poll_timeout(host->regmap, MESON_SDHC_ESTA, val,
> +				       val == 0,
> +				       MESON_SDHC_WAIT_BEFORE_SEND_SLEEP_US,
> +				       MESON_SDHC_WAIT_BEFORE_SEND_TIMEOUT_US);
> +	if (ret)
> +		dev_warn(mmc_dev(mmc),
> +			 "Failed to wait for ESTA to clear: 0x%08x\n", val);
> +
> +	if (host->cmd->data && host->cmd->data->flags & MMC_DATA_WRITE) {
> +		ret = regmap_read_poll_timeout(host->regmap, MESON_SDHC_STAT,
> +					val, val & MESON_SDHC_STAT_TXFIFO_CNT,
> +					MESON_SDHC_WAIT_BEFORE_SEND_SLEEP_US,
> +					MESON_SDHC_WAIT_BEFORE_SEND_TIMEOUT_US);
> +		if (ret)
> +			dev_warn(mmc_dev(mmc),
> +				 "Failed to wait for TX FIFO to fill\n");
> +	}
> +}
> +
> +static void meson_mx_sdhc_init_hw_meson8m2(struct mmc_host *mmc)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +
> +	regmap_write(host->regmap, MESON_SDHC_MISC,
> +		     FIELD_PREP(MESON_SDHC_MISC_TXSTART_THRES, 6) |
> +		     FIELD_PREP(MESON_SDHC_MISC_WCRC_ERR_PATT, 5) |
> +		     FIELD_PREP(MESON_SDHC_MISC_WCRC_OK_PATT, 2));
> +
> +	regmap_write(host->regmap, MESON_SDHC_ENHC,
> +		     FIELD_PREP(MESON_SDHC_ENHC_RXFIFO_TH, 64) |
> +		     FIELD_PREP(MESON_SDHC_ENHC_MESON8M2_DEBUG, 1) |
> +		     MESON_SDHC_ENHC_MESON8M2_WRRSP_MODE |
> +		     FIELD_PREP(MESON_SDHC_ENHC_SDIO_IRQ_PERIOD, 12));
> +}
> +
> +static void meson_mx_sdhc_set_pdma_meson8m2(struct mmc_host *mmc)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +
> +	regmap_update_bits(host->regmap, MESON_SDHC_PDMA,
> +			   MESON_SDHC_PDMA_DMA_MODE, MESON_SDHC_PDMA_DMA_MODE);
> +}
> +
> +static void meson_mx_sdhc_init_hw(struct mmc_host *mmc)
> +{
> +	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +
> +	meson_mx_sdhc_hw_reset(mmc);
> +
> +	regmap_write(host->regmap, MESON_SDHC_CTRL,
> +		     FIELD_PREP(MESON_SDHC_CTRL_RX_PERIOD, 0xf) |
> +		     FIELD_PREP(MESON_SDHC_CTRL_RX_TIMEOUT, 0x7f) |
> +		     FIELD_PREP(MESON_SDHC_CTRL_RX_ENDIAN, 0x7) |
> +		     FIELD_PREP(MESON_SDHC_CTRL_TX_ENDIAN, 0x7));
> +
> +	/*
> +	 * start with a valid divider and enable the memory (un-setting
> +	 * MESON_SDHC_CLKC_MEM_PWR_OFF).
> +	 */
> +	regmap_write(host->regmap, MESON_SDHC_CLKC, MESON_SDHC_CLKC_CLK_DIV);
> +
> +	regmap_write(host->regmap, MESON_SDHC_CLK2,
> +		     FIELD_PREP(MESON_SDHC_CLK2_SD_CLK_PHASE, 1));
> +
> +	regmap_write(host->regmap, MESON_SDHC_PDMA,
> +		     MESON_SDHC_PDMA_DMA_URGENT |
> +		     FIELD_PREP(MESON_SDHC_PDMA_WR_BURST, 7) |
> +		     FIELD_PREP(MESON_SDHC_PDMA_TXFIFO_TH, 49) |
> +		     FIELD_PREP(MESON_SDHC_PDMA_RD_BURST, 15) |
> +		     FIELD_PREP(MESON_SDHC_PDMA_RXFIFO_TH, 7));
> +
> +	/* some initialization bits depend on the SoC: */
> +	host->platform->init_hw(mmc);
> +
> +	/* disable and mask all interrupts: */
> +	regmap_write(host->regmap, MESON_SDHC_ICTL, 0);
> +	regmap_write(host->regmap, MESON_SDHC_ISTA, MESON_SDHC_ISTA_ALL_IRQS);
> +}
> +
> +static int meson_mx_sdhc_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct meson_mx_sdhc_host *host;
> +	struct mmc_host *mmc;
> +	void __iomem *base;
> +	int ret, irq;
> +
> +	mmc = mmc_alloc_host(sizeof(*host), dev);
> +	if (!mmc)
> +		return -ENOMEM;
> +
> +	ret = devm_add_action_or_reset(dev, (void(*)(void *))mmc_free_host,
> +				       mmc);
> +	if (ret) {
> +		dev_err(dev, "Failed to register mmc_free_host action\n");
> +		return ret;
> +	}
> +
> +	host = mmc_priv(mmc);
> +	host->mmc = mmc;
> +
> +	platform_set_drvdata(pdev, host);
> +
> +	host->platform = device_get_match_data(dev);
> +	if (!host->platform)
> +		return -EINVAL;
> +
> +	base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	host->regmap = devm_regmap_init_mmio(dev, base,
> +					     &meson_mx_sdhc_regmap_config);
> +	if (IS_ERR(host->regmap))
> +		return PTR_ERR(host->regmap);
> +
> +	host->pclk = devm_clk_get(dev, "pclk");
> +	if (IS_ERR(host->pclk))
> +		return PTR_ERR(host->pclk);
> +
> +	/* accessing any register requires the module clock to be enabled: */
> +	ret = clk_prepare_enable(host->pclk);
> +	if (ret) {
> +		dev_err(dev, "Failed to enable 'pclk' clock\n");
> +		return ret;
> +	}
> +
> +	meson_mx_sdhc_init_hw(mmc);
> +
> +	ret = meson_mx_sdhc_register_clkc(dev, base);
> +	if (ret)
> +		goto err_disable_pclk;
> +
> +	host->bulk_clks[0].id = "mod_clk";
> +	host->bulk_clks[1].id = "sd_clk";
> +	host->bulk_clks[2].id = "tx_clk";
> +	host->bulk_clks[3].id = "rx_clk";
> +	ret = devm_clk_bulk_get(dev, MESON_SDHC_NUM_BULK_CLKS,
> +				host->bulk_clks);
> +	if (ret)
> +		goto err_disable_pclk;
> +
> +	host->sd_clk = host->bulk_clks[1].clk;
> +
> +	/* Get regulators and the supported OCR mask */
> +	ret = mmc_regulator_get_supply(mmc);
> +	if (ret)
> +		goto err_disable_pclk;
> +
> +	mmc->max_req_size = SZ_128K;
> +	mmc->max_seg_size = mmc->max_req_size;
> +	mmc->max_blk_count = FIELD_GET(MESON_SDHC_SEND_TOTAL_PACK, ~0);
> +	mmc->max_blk_size = MESON_SDHC_MAX_BLK_SIZE;
> +	mmc->max_busy_timeout = 30 * MSEC_PER_SEC;
> +	mmc->f_min = clk_round_rate(host->sd_clk, 1);
> +	mmc->f_max = clk_round_rate(host->sd_clk, ULONG_MAX);
> +	mmc->max_current_180 = 300;
> +	mmc->max_current_330 = 300;
> +	mmc->caps |= MMC_CAP_ERASE | MMC_CAP_WAIT_WHILE_BUSY | MMC_CAP_HW_RESET;
> +	mmc->ops = &meson_mx_sdhc_ops;
> +
> +	ret = mmc_of_parse(mmc);
> +	if (ret)
> +		goto err_disable_pclk;
> +
> +	irq = platform_get_irq(pdev, 0);
> +	ret = devm_request_threaded_irq(dev, irq, meson_mx_sdhc_irq,
> +					meson_mx_sdhc_irq_thread, IRQF_ONESHOT,
> +					NULL, host);
> +	if (ret)
> +		goto err_disable_pclk;
> +
> +	ret = mmc_add_host(mmc);
> +	if (ret)
> +		goto err_disable_pclk;
> +
> +	return 0;
> +
> +err_disable_pclk:
> +	clk_disable_unprepare(host->pclk);
> +	return ret;
> +}
> +
> +static int meson_mx_sdhc_remove(struct platform_device *pdev)
> +{
> +	struct meson_mx_sdhc_host *host = platform_get_drvdata(pdev);
> +
> +	mmc_remove_host(host->mmc);
> +
> +	meson_mx_sdhc_disable_clks(host->mmc);
> +
> +	clk_disable_unprepare(host->pclk);
> +
> +	return 0;
> +}
> +
> +static const struct meson_mx_sdhc_data meson_mx_sdhc_data_meson8 = {
> +	.init_hw			= meson_mx_sdhc_init_hw_meson8,
> +	.set_pdma			= meson_mx_sdhc_set_pdma_meson8,
> +	.wait_before_send		= meson_mx_sdhc_wait_before_send_meson8,
> +	.hardware_flush_all_cmds	= false,
> +};
> +
> +static const struct meson_mx_sdhc_data meson_mx_sdhc_data_meson8m2 = {
> +	.init_hw			= meson_mx_sdhc_init_hw_meson8m2,
> +	.set_pdma			= meson_mx_sdhc_set_pdma_meson8m2,
> +	.hardware_flush_all_cmds	= true,
> +};
> +
> +static const struct of_device_id meson_mx_sdhc_of_match[] = {
> +	{
> +		.compatible = "amlogic,meson8-sdhc",
> +		.data = &meson_mx_sdhc_data_meson8
> +	},
> +	{
> +		.compatible = "amlogic,meson8b-sdhc",
> +		.data = &meson_mx_sdhc_data_meson8
> +	},
> +	{
> +		.compatible = "amlogic,meson8m2-sdhc",
> +		.data = &meson_mx_sdhc_data_meson8m2
> +	},
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, meson_mx_sdhc_of_match);
> +
> +static struct platform_driver meson_mx_sdhc_driver = {
> +	.probe   = meson_mx_sdhc_probe,
> +	.remove  = meson_mx_sdhc_remove,
> +	.driver  = {
> +		.name = "meson-mx-sdhc",
> +		.of_match_table = of_match_ptr(meson_mx_sdhc_of_match),
> +	},
> +};
> +
> +module_platform_driver(meson_mx_sdhc_driver);
> +
> +MODULE_DESCRIPTION("Meson6, Meson8, Meson8b and Meson8m2 SDHC Host Driver");
> +MODULE_AUTHOR("Martin Blumenstingl <martin.blumenstingl@googlemail.com>");
> +MODULE_LICENSE("GPL v2");
> diff --git a/drivers/mmc/host/meson-mx-sdhc.h b/drivers/mmc/host/meson-mx-sdhc.h
> new file mode 100644
> index 000000000000..2aa1e4401173
> --- /dev/null
> +++ b/drivers/mmc/host/meson-mx-sdhc.h
> @@ -0,0 +1,138 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright (C) 2020 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> + */
> +
> +#ifndef _MESON_MX_SDHC_H_
> +#define _MESON_MX_SDHC_H_
> +
> +#include <linux/bitfield.h>
> +
> +#define MESON_SDHC_ARGU						0x00
> +
> +#define MESON_SDHC_SEND						0x04
> +	#define MESON_SDHC_SEND_CMD_INDEX			GENMASK(5, 0)
> +	#define MESON_SDHC_SEND_CMD_HAS_RESP			BIT(6)
> +	#define MESON_SDHC_SEND_CMD_HAS_DATA			BIT(7)
> +	#define MESON_SDHC_SEND_RESP_LEN			BIT(8)
> +	#define MESON_SDHC_SEND_RESP_NO_CRC			BIT(9)
> +	#define MESON_SDHC_SEND_DATA_DIR			BIT(10)
> +	#define MESON_SDHC_SEND_DATA_STOP			BIT(11)
> +	#define MESON_SDHC_SEND_R1B				BIT(12)
> +	#define MESON_SDHC_SEND_TOTAL_PACK			GENMASK(31, 16)
> +
> +#define MESON_SDHC_CTRL						0x08
> +	#define MESON_SDHC_CTRL_DAT_TYPE			GENMASK(1, 0)
> +	#define MESON_SDHC_CTRL_DDR_MODE			BIT(2)
> +	#define MESON_SDHC_CTRL_TX_CRC_NOCHECK			BIT(3)
> +	#define MESON_SDHC_CTRL_PACK_LEN			GENMASK(12, 4)
> +	#define MESON_SDHC_CTRL_RX_TIMEOUT			GENMASK(19, 13)
> +	#define MESON_SDHC_CTRL_RX_PERIOD			GENMASK(23, 20)
> +	#define MESON_SDHC_CTRL_RX_ENDIAN			GENMASK(26, 24)
> +	#define MESON_SDHC_CTRL_SDIO_IRQ_MODE			BIT(27)
> +	#define MESON_SDHC_CTRL_DAT0_IRQ_SEL			BIT(28)
> +	#define MESON_SDHC_CTRL_TX_ENDIAN			GENMASK(31, 29)
> +
> +#define MESON_SDHC_STAT						0x0c
> +	#define MESON_SDHC_STAT_CMD_BUSY			BIT(0)
> +	#define MESON_SDHC_STAT_DAT3_0				GENMASK(4, 1)
> +	#define MESON_SDHC_STAT_CMD				BIT(5)
> +	#define MESON_SDHC_STAT_RXFIFO_CNT			GENMASK(12, 6)
> +	#define MESON_SDHC_STAT_TXFIFO_CNT			GENMASK(19, 13)
> +	#define MESON_SDHC_STAT_DAT7_4				GENMASK(23, 20)
> +
> +#define MESON_SDHC_CLKC						0x10
> +	#define MESON_SDHC_CLKC_CLK_DIV				GENMASK(11, 0)
> +	#define MESON_SDHC_CLKC_CLK_JIC				BIT(24)
> +	#define MESON_SDHC_CLKC_MEM_PWR_OFF			GENMASK(26, 25)
> +
> +#define MESON_SDHC_ADDR						0x14
> +
> +#define MESON_SDHC_PDMA						0x18
> +	#define MESON_SDHC_PDMA_DMA_MODE			BIT(0)
> +	#define MESON_SDHC_PDMA_PIO_RDRESP			GENMASK(3, 1)
> +	#define MESON_SDHC_PDMA_DMA_URGENT			BIT(4)
> +	#define MESON_SDHC_PDMA_WR_BURST			GENMASK(9, 5)
> +	#define MESON_SDHC_PDMA_RD_BURST			GENMASK(14, 10)
> +	#define MESON_SDHC_PDMA_RXFIFO_TH			GENMASK(21, 15)
> +	#define MESON_SDHC_PDMA_TXFIFO_TH			GENMASK(28, 22)
> +	#define MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH		GENMASK(30, 29)
> +	#define MESON_SDHC_PDMA_TXFIFO_FILL			BIT(31)
> +
> +#define MESON_SDHC_MISC						0x1c
> +	#define MESON_SDHC_MISC_WCRC_ERR_PATT			GENMASK(6, 4)
> +	#define MESON_SDHC_MISC_WCRC_OK_PATT			GENMASK(9, 7)
> +	#define MESON_SDHC_MISC_BURST_NUM			GENMASK(21, 16)
> +	#define MESON_SDHC_MISC_THREAD_ID			GENMASK(27, 22)
> +	#define MESON_SDHC_MISC_MANUAL_STOP			BIT(28)
> +	#define MESON_SDHC_MISC_TXSTART_THRES			GENMASK(31, 29)
> +
> +#define MESON_SDHC_DATA						0x20
> +
> +#define MESON_SDHC_ICTL						0x24
> +	#define MESON_SDHC_ICTL_RESP_OK				BIT(0)
> +	#define MESON_SDHC_ICTL_RESP_TIMEOUT			BIT(1)
> +	#define MESON_SDHC_ICTL_RESP_ERR_CRC			BIT(2)
> +	#define MESON_SDHC_ICTL_RESP_OK_NOCLEAR			BIT(3)
> +	#define MESON_SDHC_ICTL_DATA_1PACK_OK			BIT(4)
> +	#define MESON_SDHC_ICTL_DATA_TIMEOUT			BIT(5)
> +	#define MESON_SDHC_ICTL_DATA_ERR_CRC			BIT(6)
> +	#define MESON_SDHC_ICTL_DATA_XFER_OK			BIT(7)
> +	#define MESON_SDHC_ICTL_RX_HIGHER			BIT(8)
> +	#define MESON_SDHC_ICTL_RX_LOWER			BIT(9)
> +	#define MESON_SDHC_ICTL_DAT1_IRQ			BIT(10)
> +	#define MESON_SDHC_ICTL_DMA_DONE			BIT(11)
> +	#define MESON_SDHC_ICTL_RXFIFO_FULL			BIT(12)
> +	#define MESON_SDHC_ICTL_TXFIFO_EMPTY			BIT(13)
> +	#define MESON_SDHC_ICTL_ADDI_DAT1_IRQ			BIT(14)
> +	#define MESON_SDHC_ICTL_ALL_IRQS			GENMASK(14, 0)
> +	#define MESON_SDHC_ICTL_DAT1_IRQ_DELAY			GENMASK(17, 16)
> +
> +#define MESON_SDHC_ISTA						0x28
> +	#define MESON_SDHC_ISTA_RESP_OK				BIT(0)
> +	#define MESON_SDHC_ISTA_RESP_TIMEOUT			BIT(1)
> +	#define MESON_SDHC_ISTA_RESP_ERR_CRC			BIT(2)
> +	#define MESON_SDHC_ISTA_RESP_OK_NOCLEAR			BIT(3)
> +	#define MESON_SDHC_ISTA_DATA_1PACK_OK			BIT(4)
> +	#define MESON_SDHC_ISTA_DATA_TIMEOUT			BIT(5)
> +	#define MESON_SDHC_ISTA_DATA_ERR_CRC			BIT(6)
> +	#define MESON_SDHC_ISTA_DATA_XFER_OK			BIT(7)
> +	#define MESON_SDHC_ISTA_RX_HIGHER			BIT(8)
> +	#define MESON_SDHC_ISTA_RX_LOWER			BIT(9)
> +	#define MESON_SDHC_ISTA_DAT1_IRQ			BIT(10)
> +	#define MESON_SDHC_ISTA_DMA_DONE			BIT(11)
> +	#define MESON_SDHC_ISTA_RXFIFO_FULL			BIT(12)
> +	#define MESON_SDHC_ISTA_TXFIFO_EMPTY			BIT(13)
> +	#define MESON_SDHC_ISTA_ADDI_DAT1_IRQ			BIT(14)
> +	#define MESON_SDHC_ISTA_ALL_IRQS			GENMASK(14, 0)
> +
> +#define MESON_SDHC_SRST						0x2c
> +	#define MESON_SDHC_SRST_MAIN_CTRL			BIT(0)
> +	#define MESON_SDHC_SRST_RXFIFO				BIT(1)
> +	#define MESON_SDHC_SRST_TXFIFO				BIT(2)
> +	#define MESON_SDHC_SRST_DPHY_RX				BIT(3)
> +	#define MESON_SDHC_SRST_DPHY_TX				BIT(4)
> +	#define MESON_SDHC_SRST_DMA_IF				BIT(5)
> +
> +#define MESON_SDHC_ESTA						0x30
> +	#define MESON_SDHC_ESTA_11_13				GENMASK(13, 11)
> +
> +#define MESON_SDHC_ENHC						0x34
> +	#define MESON_SDHC_ENHC_MESON8M2_WRRSP_MODE		BIT(0)
> +	#define MESON_SDHC_ENHC_MESON8M2_CHK_WRRSP		BIT(1)
> +	#define MESON_SDHC_ENHC_MESON8M2_CHK_DMA		BIT(2)
> +	#define MESON_SDHC_ENHC_MESON8M2_DEBUG			GENMASK(5, 3)
> +	#define MESON_SDHC_ENHC_MESON6_RX_TIMEOUT		GENMASK(7, 0)
> +	#define MESON_SDHC_ENHC_MESON6_DMA_RD_RESP		BIT(16)
> +	#define MESON_SDHC_ENHC_MESON6_DMA_WR_RESP		BIT(17)
> +	#define MESON_SDHC_ENHC_SDIO_IRQ_PERIOD			GENMASK(15, 8)
> +	#define MESON_SDHC_ENHC_RXFIFO_TH			GENMASK(24, 18)
> +	#define MESON_SDHC_ENHC_TXFIFO_TH			GENMASK(31, 25)
> +
> +#define MESON_SDHC_CLK2						0x38
> +	#define MESON_SDHC_CLK2_RX_CLK_PHASE			GENMASK(11, 0)
> +	#define MESON_SDHC_CLK2_SD_CLK_PHASE			GENMASK(23, 12)
> +
> +int meson_mx_sdhc_register_clkc(struct device *dev, void __iomem *base);
> +
> +#endif /* _MESON_MX_SDHC_H_ */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
