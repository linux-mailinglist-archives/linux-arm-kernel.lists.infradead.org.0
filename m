Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EACCC22223
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 09:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SobzLYD01M9d91wtNnTUwrxUuvD5M1h3ncs9XVb8Vs8=; b=p6LgH2aRMACC/j
	emAUZaBA3QXk+0jnvIlF7l98V6CtgLkGQhMQv2MQ2RyeVEpYtXjp8BKxgPlVyzkilN7gV9YlZHwUM
	QrQy00ZkrJpREQWEmRFhpV1zJ0h3hfkELFVhcnufIgGNcKz/HLvRqRmpUlBRrdiDcdhSJ5AabolOr
	ogkHO6FBfo1deR7x1erNvcFy5XpUqKZG8XbbrNNu4vzdTcopK1wupGANYUpAfi9VeJ3nFVGajEwBY
	CQ1X0JppPecMVqr6PU+oCjwlNV6KpFSWm/dcy1BQw5kwiNdzm366aOFa9iWNSF1dhIYv9jZzQY9an
	JYfDVIbuENYOpHlfWEuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRu8N-00006V-Pm; Sat, 18 May 2019 07:51:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRu8F-00005h-NW; Sat, 18 May 2019 07:51:53 +0000
X-UUID: 0982a45f2d544508be480936273495db-20190517
X-UUID: 0982a45f2d544508be480936273495db-20190517
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 951579047; Fri, 17 May 2019 23:51:46 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 18 May 2019 00:51:44 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs01n1.mediatek.inc
 (172.21.101.68) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 18 May 2019 15:51:36 +0800
Received: from [10.16.6.141] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 18 May 2019 15:51:33 +0800
Message-ID: <1558165892.7681.8.camel@mszsdaap41>
Subject: Re: [v2 3/3] drm/mediatek: add mipi_tx driver for mt8183
From: Jitao Shi <jitao.shi@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Sat, 18 May 2019 15:51:32 +0800
In-Reply-To: <1557134258.5345.5.camel@mtksdaap41>
References: <20190416054217.75387-1-jitao.shi@mediatek.com>
 <20190416054217.75387-4-jitao.shi@mediatek.com>
 <1557134258.5345.5.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_005151_771414_9D055516 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Mon, 2019-05-06 at 17:17 +0800, CK Hu wrote:
> Hi, Jitao:
> 
> On Tue, 2019-04-16 at 13:42 +0800, Jitao Shi wrote:
> > This patch add mt8183 mipi_tx driver.
> > And also support other chips that use the same binding and driver.
> > 
> > Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> > ---
> >  drivers/gpu/drm/mediatek/Makefile             |   1 +
> >  drivers/gpu/drm/mediatek/mtk_mipi_tx.c        |   2 +
> >  drivers/gpu/drm/mediatek/mtk_mipi_tx.h        |   1 +
> >  drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c | 154 ++++++++++++++++++
> >  4 files changed, 158 insertions(+)
> >  create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
> > 
> 
> [snip]
> 
> > +
> > +static int mtk_mipi_tx_pll_prepare(struct clk_hw *hw)
> > +{
> > +	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
> > +	unsigned int txdiv, txdiv0;
> > +	u64 pcw;
> > +	int ret;
> > +
> > +	dev_dbg(mipi_tx->dev, "prepare: %u bps\n", mipi_tx->data_rate);
> > +
> > +	if (mipi_tx->data_rate >= 2000000000) {
> > +		txdiv = 1;
> > +		txdiv0 = 0;
> > +	} else if (mipi_tx->data_rate >= 1000000000) {
> > +		txdiv = 2;
> > +		txdiv0 = 1;
> > +	} else if (mipi_tx->data_rate >= 500000000) {
> > +		txdiv = 4;
> > +		txdiv0 = 2;
> > +	} else if (mipi_tx->data_rate > 250000000) {
> > +		txdiv = 8;
> > +		txdiv0 = 3;
> > +	} else if (mipi_tx->data_rate >= 125000000) {
> > +		txdiv = 16;
> > +		txdiv0 = 4;
> > +	} else {
> > +		return -EINVAL;
> > +	}
> > +
> > +	ret = clk_prepare_enable(mipi_tx->ref_clk);
> > +	if (ret < 0) {
> > +		dev_err(mipi_tx->dev,
> > +			"can't prepare and enable mipi_tx ref_clk %d\n", ret);
> > +		return ret;
> > +	}
> 
> You enable the parent clock when prepare this clock here, this behavior
> looks strange. I think the flow should be:
> 
> 1. Parent clock prepare
> 2. This clock prepare
> 3. Parent clock enable
> 4. This clock enable
> 
> Maybe you should implement 'enable callback' so that parent clock would
> be already enabled.
> 
> One question is, mipi_tx_pll is used by dsi driver, but I does not see
> dsi prepare_enable() mipi_tx_pll, how does this work?
> 
> Regards,
> CK
> 

The mipi_tx can be accessed after clk_prepare_enable(mipi_tx->ref_clk);

So place the clk_prepare_enable(mipi_tx->ref_clk) before accessing
mipitx.

mipi_tx_pll is enable by mtk_mipi_tx_power_on() in mtk_mip_tx.c.
clk_prepare_enable(mipi_tx->pll) will enable mipi_tx_pll.

Beset Regards
Jitao

> > +
> > +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_CON4, RG_DSI_PLL_IBIAS);
> > +
> > +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_PWR_ON);
> > +	usleep_range(30, 100);
> > +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_ISO_EN);
> > +	pcw = div_u64(((u64)mipi_tx->data_rate * txdiv) << 24, 26000000);
> > +	writel(pcw, mipi_tx->regs + MIPITX_PLL_CON0);
> > +	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_POSDIV,
> > +				txdiv0 << 8);
> > +	usleep_range(1000, 2000);
> > +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_EN);
> > +
> > +	return 0;
> > +}
> > +
> > +static void mtk_mipi_tx_pll_unprepare(struct clk_hw *hw)
> > +{
> > +	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
> > +
> > +	dev_dbg(mipi_tx->dev, "unprepare\n");
> > +
> > +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_EN);
> > +
> > +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_ISO_EN);
> > +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_PWR_ON);
> > +	clk_disable_unprepare(mipi_tx->ref_clk);
> > +}
> > +
> 
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
