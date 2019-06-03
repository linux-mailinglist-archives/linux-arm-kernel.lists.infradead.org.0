Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90424326CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 04:53:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=onNSog9GGbZMWp5QxuUV72n0ioYkobOaSngqZpWjtAY=; b=onOtgwuLsxw4TY
	3TcM09o9f5tFzRTctnWNSqosgfEPaA3nvkIb9oD3IE6xkUExtB1UpCNuCYDuamEI7NOYdpYtBatwN
	cZw2V6y6bLUtJd3AQg8rmtNmhzFkbuokDFW/TA+YLeotkLVoNEM8fUtIoE10vXHIxSkzk8XEvJudj
	1gCjmbbAmtJyWw72yGquzua2NfEosCiknJBtMqJqEGqltIFRkwiJTxhHK3bBDYqL6DDOZ8f1HS6bS
	u6/VybmoKDP/ZodZamd3e3iNVwAWG9xo1qO0WjVw+Fcw8KI5dOpWv72bLE5vNfcPHC7EQHsbPNKJ2
	KIwEwzsY5tHePvxIJHVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXd6b-00019b-Gq; Mon, 03 Jun 2019 02:53:49 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXd6S-00018f-Pb; Mon, 03 Jun 2019 02:53:42 +0000
X-UUID: a3e8252ce227418fa96643eea19f8b54-20190602
X-UUID: a3e8252ce227418fa96643eea19f8b54-20190602
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1522237117; Sun, 02 Jun 2019 18:53:39 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 2 Jun 2019 19:53:37 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS33DR.mediatek.inc (172.27.6.106) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Jun 2019 10:53:34 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 3 Jun 2019 10:53:33 +0800
Message-ID: <1559530413.32185.8.camel@mtksdaap41>
Subject: Re: [v4 3/3] drm/mediatek: add mipi_tx driver for mt8183
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Mon, 3 Jun 2019 10:53:33 +0800
In-Reply-To: <20190601095235.9194-4-jitao.shi@mediatek.com>
References: <20190601095235.9194-1-jitao.shi@mediatek.com>
 <20190601095235.9194-4-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_195340_839550_8CA61163 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com,
 Ajay Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>, Thierry
 Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki
 Dae <inki.dae@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Andy
 Yan <andy.yan@rock-chips.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org,
 Rahul Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Sean
 Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Jitao:

On Sat, 2019-06-01 at 17:52 +0800, Jitao Shi wrote:
> This patch add mt8183 mipi_tx driver.
> And also support other chips that use the same binding and driver.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/Makefile             |   1 +
>  drivers/gpu/drm/mediatek/mtk_mipi_tx.c        |   2 +
>  drivers/gpu/drm/mediatek/mtk_mipi_tx.h        |   1 +
>  drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c | 162 ++++++++++++++++++++++++++
>  4 files changed, 166 insertions(+)
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
> 
> diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
> index 2c8de1f5a5ee..8067a4be8311 100644
> --- a/drivers/gpu/drm/mediatek/Makefile
> +++ b/drivers/gpu/drm/mediatek/Makefile
> @@ -13,6 +13,7 @@ mediatek-drm-y := mtk_disp_color.o \
>  		  mtk_dsi.o \
>  		  mtk_mipi_tx.o \
>  		  mtk_mt8173_mipi_tx.o \
> +		  mtk_mt8183_mipi_tx.o \
>  		  mtk_dpi.o
>  
>  obj-$(CONFIG_DRM_MEDIATEK) += mediatek-drm.o
> diff --git a/drivers/gpu/drm/mediatek/mtk_mipi_tx.c b/drivers/gpu/drm/mediatek/mtk_mipi_tx.c
> index cdc68b88cefd..ab0fbfba5572 100644
> --- a/drivers/gpu/drm/mediatek/mtk_mipi_tx.c
> +++ b/drivers/gpu/drm/mediatek/mtk_mipi_tx.c
> @@ -182,6 +182,8 @@ static const struct of_device_id mtk_mipi_tx_match[] = {
>  	  .data = &mt2701_mipitx_data },
>  	{ .compatible = "mediatek,mt8173-mipi-tx",
>  	  .data = &mt8173_mipitx_data },
> +	{ .compatible = "mediatek,mt8183-mipi-tx",
> +	  .data = &mt8183_mipitx_data },
>  	{ },
>  };
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_mipi_tx.h b/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
> index 660726924992..3fd24563952e 100644
> --- a/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
> +++ b/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
> @@ -45,5 +45,6 @@ unsigned long mtk_mipi_tx_pll_recalc_rate(struct clk_hw *hw,
>  
>  extern const struct mtk_mipitx_data mt2701_mipitx_data;
>  extern const struct mtk_mipitx_data mt8173_mipitx_data;
> +extern const struct mtk_mipitx_data mt8183_mipitx_data;
>  
>  #endif
> diff --git a/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c b/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
> new file mode 100644
> index 000000000000..a9f893d8e409
> --- /dev/null
> +++ b/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
> @@ -0,0 +1,162 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + * Author: jitao.shi <jitao.shi@mediatek.com>
> + */
> +
> +#include "mtk_mipi_tx.h"
> +
> +#define MIPITX_LANE_CON		0x000c
> +#define RG_DSI_CPHY_T1DRV_EN		BIT(0)
> +#define RG_DSI_ANA_CK_SEL		BIT(1)
> +#define RG_DSI_PHY_CK_SEL		BIT(2)
> +#define RG_DSI_CPHY_EN			BIT(3)
> +#define RG_DSI_PHYCK_INV_EN		BIT(4)
> +#define RG_DSI_PWR04_EN			BIT(5)
> +#define RG_DSI_BG_LPF_EN		BIT(6)
> +#define RG_DSI_BG_CORE_EN		BIT(7)
> +#define RG_DSI_PAD_TIEL_SEL		BIT(8)
> +
> +#define MIPITX_PLL_PWR	0x0028
> +#define MIPITX_PLL_CON0	0x002c
> +#define MIPITX_PLL_CON1	0x0030
> +#define MIPITX_PLL_CON2	0x0034
> +#define MIPITX_PLL_CON3	0x0038
> +#define MIPITX_PLL_CON4	0x003c
> +#define RG_DSI_PLL_IBIAS		(3 << 10)
> +
> +#define MIPITX_D2_SW_CTL_EN	0x0144
> +#define MIPITX_D0_SW_CTL_EN	0x0244
> +#define MIPITX_CK_CKMODE_EN	0x0328
> +#define DSI_CK_CKMODE_EN		BIT(0)
> +#define MIPITX_CK_SW_CTL_EN	0x0344
> +#define MIPITX_D1_SW_CTL_EN	0x0444
> +#define MIPITX_D3_SW_CTL_EN	0x0544
> +#define DSI_SW_CTL_EN			BIT(0)
> +#define AD_DSI_PLL_SDM_PWR_ON		BIT(0)
> +#define AD_DSI_PLL_SDM_ISO_EN		BIT(1)
> +
> +#define RG_DSI_PLL_EN			BIT(4)
> +#define RG_DSI_PLL_POSDIV		(0x7 << 8)
> +
> +static int mtk_mipi_tx_pll_prepare(struct clk_hw *hw)
> +{
> +	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
> +	unsigned int txdiv, txdiv0;
> +	u64 pcw;
> +	int ret;
> +
> +	dev_dbg(mipi_tx->dev, "prepare: %u bps\n", mipi_tx->data_rate);
> +
> +	if (mipi_tx->data_rate >= 2000000000) {
> +		txdiv = 1;
> +		txdiv0 = 0;
> +	} else if (mipi_tx->data_rate >= 1000000000) {
> +		txdiv = 2;
> +		txdiv0 = 1;
> +	} else if (mipi_tx->data_rate >= 500000000) {
> +		txdiv = 4;
> +		txdiv0 = 2;
> +	} else if (mipi_tx->data_rate > 250000000) {
> +		txdiv = 8;
> +		txdiv0 = 3;
> +	} else if (mipi_tx->data_rate >= 125000000) {
> +		txdiv = 16;
> +		txdiv0 = 4;
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	ret = clk_prepare_enable(mipi_tx->ref_clk);

My last comment is in [1].

[1]
http://lists.infradead.org/pipermail/linux-mediatek/2019-May/019851.html

Regards,
CK

> +	if (ret < 0) {
> +		dev_err(mipi_tx->dev,
> +			"can't prepare and enable mipi_tx ref_clk %d\n", ret);
> +		return ret;
> +	}
> +
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_CON4, RG_DSI_PLL_IBIAS);
> +
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_PWR_ON);
> +	usleep_range(30, 100);
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_ISO_EN);
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_EN);
> +	pcw = div_u64(((u64)mipi_tx->data_rate * txdiv) << 24, 26000000);
> +	writel(pcw, mipi_tx->regs + MIPITX_PLL_CON0);
> +	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_POSDIV,
> +				txdiv0 << 8);
> +	usleep_range(1000, 2000);
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_EN);
> +
> +	return 0;
> +}
> +
> +static void mtk_mipi_tx_pll_unprepare(struct clk_hw *hw)
> +{
> +	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
> +
> +	dev_dbg(mipi_tx->dev, "unprepare\n");
> +
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_EN);
> +
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_ISO_EN);
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_PWR_ON);
> +	clk_disable_unprepare(mipi_tx->ref_clk);
> +}
> +
> +static long mtk_mipi_tx_pll_round_rate(struct clk_hw *hw, unsigned long rate,
> +				       unsigned long *prate)
> +{
> +	return clamp_val(rate, 50000000, 1600000000);
> +}
> +
> +static const struct clk_ops mtk_mipi_tx_pll_ops = {
> +	.prepare = mtk_mipi_tx_pll_prepare,
> +	.unprepare = mtk_mipi_tx_pll_unprepare,
> +	.round_rate = mtk_mipi_tx_pll_round_rate,
> +	.set_rate = mtk_mipi_tx_pll_set_rate,
> +	.recalc_rate = mtk_mipi_tx_pll_recalc_rate,
> +};
> +
> +static void mtk_mipi_tx_power_on_signal(struct phy *phy)
> +{
> +	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
> +
> +	/* BG_LPF_EN / BG_CORE_EN */
> +	writel(RG_DSI_PAD_TIEL_SEL | RG_DSI_BG_CORE_EN,
> +	       mipi_tx->regs + MIPITX_LANE_CON);
> +	usleep_range(30, 100);
> +	writel(RG_DSI_BG_CORE_EN | RG_DSI_BG_LPF_EN,
> +	       mipi_tx->regs + MIPITX_LANE_CON);
> +
> +	/* Switch OFF each Lane */
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_D0_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_D1_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_D2_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_D3_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_CK_SW_CTL_EN, DSI_SW_CTL_EN);
> +
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_CK_CKMODE_EN, DSI_CK_CKMODE_EN);
> +}
> +
> +static void mtk_mipi_tx_power_off_signal(struct phy *phy)
> +{
> +	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
> +
> +	/* Switch ON each Lane */
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_D0_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_D1_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_D2_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_D3_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_CK_SW_CTL_EN, DSI_SW_CTL_EN);
> +
> +	writel(RG_DSI_PAD_TIEL_SEL | RG_DSI_BG_CORE_EN,
> +	       mipi_tx->regs + MIPITX_LANE_CON);
> +	writel(RG_DSI_PAD_TIEL_SEL, mipi_tx->regs + MIPITX_LANE_CON);
> +}
> +
> +const struct mtk_mipitx_data mt8183_mipitx_data = {
> +	.mipi_tx_clk_ops = &mtk_mipi_tx_pll_ops,
> +	.mipi_tx_enable_signal = mtk_mipi_tx_power_on_signal,
> +	.mipi_tx_disable_signal = mtk_mipi_tx_power_off_signal,
> +};
> +



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
