Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E8B1476D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 11:17:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8hFOu97eWxnI3wBkKALKJae04d7WX4LD6aV4OfTLze0=; b=hf1njPHDahR4PR
	G0ohlrOWDLsYYYpQNXe/NBUCz5+GZ8BmYk4FKSRmL+9BAxR+D5VSOT8/lZqRja7ytFQ5IIU5jRuui
	YWUL3iaRXBrrw+usYgBoFPKI7sxHLZvPX8A4KZvkb9eJZ0cFtu2mimiZYVat2Tun80ZUrSaL/Z8VN
	3+GsGMPMefsdG3PJbclstkqx5RKO75sR8+Mua9OzO1nTU7W6E1cHXBdWDLW8xBwX+5SiH8LzhcYvE
	/11BWG3y6pq1cadAqXNxCGD2gSuH0EYeX1fUNOwhRob06mzUzaETfBxXDQjyyOjeVmh3eGJBQCDze
	0t/6IQfemicYC0puQkMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZkz-0003RW-Fi; Mon, 06 May 2019 09:17:57 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZkq-0003R3-8G; Mon, 06 May 2019 09:17:49 +0000
X-UUID: e7b45fd0cf254f9a93c5ec075562404f-20190506
X-UUID: e7b45fd0cf254f9a93c5ec075562404f-20190506
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 524438980; Mon, 06 May 2019 01:17:44 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 6 May 2019 02:17:42 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS33N2.mediatek.inc (172.27.4.76) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 6 May 2019 17:17:39 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 6 May 2019 17:17:38 +0800
Message-ID: <1557134258.5345.5.camel@mtksdaap41>
Subject: Re: [v2 3/3] drm/mediatek: add mipi_tx driver for mt8183
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Mon, 6 May 2019 17:17:38 +0800
In-Reply-To: <20190416054217.75387-4-jitao.shi@mediatek.com>
References: <20190416054217.75387-1-jitao.shi@mediatek.com>
 <20190416054217.75387-4-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_021748_294567_CDAE7E60 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com, Ajay
 Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki Dae <inki.dae@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul
 Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Kumar Gala <galak@codeaurora.org>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Jitao:

On Tue, 2019-04-16 at 13:42 +0800, Jitao Shi wrote:
> This patch add mt8183 mipi_tx driver.
> And also support other chips that use the same binding and driver.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/Makefile             |   1 +
>  drivers/gpu/drm/mediatek/mtk_mipi_tx.c        |   2 +
>  drivers/gpu/drm/mediatek/mtk_mipi_tx.h        |   1 +
>  drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c | 154 ++++++++++++++++++
>  4 files changed, 158 insertions(+)
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
> 

[snip]

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
> +	if (ret < 0) {
> +		dev_err(mipi_tx->dev,
> +			"can't prepare and enable mipi_tx ref_clk %d\n", ret);
> +		return ret;
> +	}

You enable the parent clock when prepare this clock here, this behavior
looks strange. I think the flow should be:

1. Parent clock prepare
2. This clock prepare
3. Parent clock enable
4. This clock enable

Maybe you should implement 'enable callback' so that parent clock would
be already enabled.

One question is, mipi_tx_pll is used by dsi driver, but I does not see
dsi prepare_enable() mipi_tx_pll, how does this work?

Regards,
CK

> +
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_CON4, RG_DSI_PLL_IBIAS);
> +
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_PWR_ON);
> +	usleep_range(30, 100);
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_ISO_EN);
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



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
