Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E376522B25
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 07:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68OrDiRnZY8p60OAAE09NOXj2gmL4T0ITE3on2BbUkA=; b=gTZWoV0xyCDlrY
	2+XMwwoxTaVHNoZR1vLLRpV2sxKpLSzRgQOGFogEXtjfdXbaYwwyK4iBNTazPW7oUtpaIHvDX0jJl
	2r4alFWKpXqryOXUE9mKr8UjkazkeGjO/ChF+cnsYnclleJF2UFY0SoYm2xlmw2XUgeKG7xDT97WU
	E7otGsXfu+NxX942NAEVyBJW2A5O6pW3Al49l7pUNSD1c2Whao8/La5TyBS/UbXi81KJ1ffHBAGh7
	AWbWpsKEvEJKtc0tzyATZ+PrxbLfgd1rducBUIQ82vmEZ8HoTWX0Eo2A2TkLLTHn6U5Dif/FtqaRL
	VHm9Ydvp824M9ZHartzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSasn-000595-8R; Mon, 20 May 2019 05:30:45 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSasf-00058D-2x; Mon, 20 May 2019 05:30:38 +0000
X-UUID: 149f87da9fca48408ff02501bb56e752-20190519
X-UUID: 149f87da9fca48408ff02501bb56e752-20190519
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 805102241; Sun, 19 May 2019 21:30:31 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 22:30:30 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS33DR.mediatek.inc (172.27.6.106) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 13:30:26 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 20 May 2019 13:30:27 +0800
Message-ID: <1558330227.7311.14.camel@mtksdaap41>
Subject: Re: [v2 3/3] drm/mediatek: add mipi_tx driver for mt8183
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Mon, 20 May 2019 13:30:27 +0800
In-Reply-To: <1558165892.7681.8.camel@mszsdaap41>
References: <20190416054217.75387-1-jitao.shi@mediatek.com>
 <20190416054217.75387-4-jitao.shi@mediatek.com>
 <1557134258.5345.5.camel@mtksdaap41> <1558165892.7681.8.camel@mszsdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_223037_266725_5C166242 
X-CRM114-Status: GOOD (  19.09  )
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

On Sat, 2019-05-18 at 15:51 +0800, Jitao Shi wrote:
> On Mon, 2019-05-06 at 17:17 +0800, CK Hu wrote:
> > Hi, Jitao:
> > 
> > On Tue, 2019-04-16 at 13:42 +0800, Jitao Shi wrote:
> > > This patch add mt8183 mipi_tx driver.
> > > And also support other chips that use the same binding and driver.
> > > 
> > > Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> > > ---
> > >  drivers/gpu/drm/mediatek/Makefile             |   1 +
> > >  drivers/gpu/drm/mediatek/mtk_mipi_tx.c        |   2 +
> > >  drivers/gpu/drm/mediatek/mtk_mipi_tx.h        |   1 +
> > >  drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c | 154 ++++++++++++++++++
> > >  4 files changed, 158 insertions(+)
> > >  create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
> > > 
> > 
> > [snip]
> > 
> > > +
> > > +static int mtk_mipi_tx_pll_prepare(struct clk_hw *hw)
> > > +{
> > > +	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
> > > +	unsigned int txdiv, txdiv0;
> > > +	u64 pcw;
> > > +	int ret;
> > > +
> > > +	dev_dbg(mipi_tx->dev, "prepare: %u bps\n", mipi_tx->data_rate);
> > > +
> > > +	if (mipi_tx->data_rate >= 2000000000) {
> > > +		txdiv = 1;
> > > +		txdiv0 = 0;
> > > +	} else if (mipi_tx->data_rate >= 1000000000) {
> > > +		txdiv = 2;
> > > +		txdiv0 = 1;
> > > +	} else if (mipi_tx->data_rate >= 500000000) {
> > > +		txdiv = 4;
> > > +		txdiv0 = 2;
> > > +	} else if (mipi_tx->data_rate > 250000000) {
> > > +		txdiv = 8;
> > > +		txdiv0 = 3;
> > > +	} else if (mipi_tx->data_rate >= 125000000) {
> > > +		txdiv = 16;
> > > +		txdiv0 = 4;
> > > +	} else {
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	ret = clk_prepare_enable(mipi_tx->ref_clk);
> > > +	if (ret < 0) {
> > > +		dev_err(mipi_tx->dev,
> > > +			"can't prepare and enable mipi_tx ref_clk %d\n", ret);
> > > +		return ret;
> > > +	}
> > 
> > You enable the parent clock when prepare this clock here, this behavior
> > looks strange. I think the flow should be:
> > 
> > 1. Parent clock prepare
> > 2. This clock prepare
> > 3. Parent clock enable
> > 4. This clock enable
> > 
> > Maybe you should implement 'enable callback' so that parent clock would
> > be already enabled.
> > 
> > One question is, mipi_tx_pll is used by dsi driver, but I does not see
> > dsi prepare_enable() mipi_tx_pll, how does this work?
> > 
> > Regards,
> > CK
> > 
> 
> The mipi_tx can be accessed after clk_prepare_enable(mipi_tx->ref_clk);
> 
> So place the clk_prepare_enable(mipi_tx->ref_clk) before accessing
> mipitx.
> 
> mipi_tx_pll is enable by mtk_mipi_tx_power_on() in mtk_mip_tx.c.
> clk_prepare_enable(mipi_tx->pll) will enable mipi_tx_pll.

OK, so it start from dsi driver. The callstack is:

phy_power_on(dsi->phy);
-> mtk_mipi_tx_power_on()
--> clk_prepare_enable(mipi_tx->pll);
---> mtk_mipi_tx_pll_prepare();

In clk_prepare_enable(), it separately call clk_prepare() and
clk_enable(). When clk_prepare(), it prepare the parent clock then
prepare this clock. When clk_enable(), it enable the parent clock then
enable this clock. So this would result in the sequence:

1. Prepare mipi_tx->ref_clk
2. Prepare mipi_tx->pll
3. Enable mipi_tx->ref_clk
4. Enable mipi_tx->pll

You say 'So place the clk_prepare_enable(mipi_tx->ref_clk) before
accessing mipitx.', so the step 1 and step 3 is equal to
clk_prepare_enable(mipi_tx->ref_clk), so I require you to access mipitx
in step 4, not in step 2.

Regards,
CK

> 
> Beset Regards
> Jitao
> 
> > > +
> > > +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_CON4, RG_DSI_PLL_IBIAS);
> > > +
> > > +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_PWR_ON);
> > > +	usleep_range(30, 100);
> > > +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_ISO_EN);
> > > +	pcw = div_u64(((u64)mipi_tx->data_rate * txdiv) << 24, 26000000);
> > > +	writel(pcw, mipi_tx->regs + MIPITX_PLL_CON0);
> > > +	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_POSDIV,
> > > +				txdiv0 << 8);
> > > +	usleep_range(1000, 2000);
> > > +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_EN);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static void mtk_mipi_tx_pll_unprepare(struct clk_hw *hw)
> > > +{
> > > +	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
> > > +
> > > +	dev_dbg(mipi_tx->dev, "unprepare\n");
> > > +
> > > +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_EN);
> > > +
> > > +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_ISO_EN);
> > > +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_PWR_ON);
> > > +	clk_disable_unprepare(mipi_tx->ref_clk);
> > > +}
> > > +
> > 
> > 
> 
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
