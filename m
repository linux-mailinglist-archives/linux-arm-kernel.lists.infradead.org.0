Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FD722F07
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nU8ZfIQH7ikwTjfkURzk/BCXudlWn7v/p22BwVR0siI=; b=O+TvGiky8CWOts
	J6Lf4kjunKppZsoz3l/U5BHKoHJnB2ExvgBhhuOvQev6k62r+F3pcKStL7ync/gueUf93P+yb0A2h
	EapoPe7x4YAn2bqskVOwSH3foT723qRYaJHyaB0bqS8/yE+aQNc1hC9owAR4DUgPu829vfclsnb0b
	Ax22Mez4wxxKfGGWjBRehjwSRDBUwCbAfqkJYr+6zoZTCOGk2/2q4PoCUudTPor1bxXz/qezLuII0
	dbP76UNuhTFnUFcsWsaEtu7RKDfZjm5oC+IzP0RNdd1sNSf6We/dEA+yOYjN8gMs1qtssn8vfSVE2
	VC3sUc9IayzhCuOFaYYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdkk-0004N4-SA; Mon, 20 May 2019 08:34:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdka-0004KI-Qa; Mon, 20 May 2019 08:34:30 +0000
X-UUID: 791829153b9649ceb651b934ffb1b5b7-20190520
X-UUID: 791829153b9649ceb651b934ffb1b5b7-20190520
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1689499802; Mon, 20 May 2019 00:34:20 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 01:34:19 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS33N1.mediatek.inc (172.27.4.75) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 16:34:16 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 20 May 2019 16:34:09 +0800
Message-ID: <1558341248.7311.42.camel@mtksdaap41>
Subject: Re: [v2 2/5] drm/mediatek: CMDQ reg address of mt8173 is different
 with mt2701
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Mon, 20 May 2019 16:34:08 +0800
In-Reply-To: <1558258406.367.2.camel@mszsdaap41>
References: <20190416060501.76276-1-jitao.shi@mediatek.com>
 <20190416060501.76276-3-jitao.shi@mediatek.com>
 <1557283144.31731.4.camel@mtksdaap41> <1558258406.367.2.camel@mszsdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_013428_860114_39D455E3 
X-CRM114-Status: GOOD (  21.35  )
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

Hi, Jitao:

On Sun, 2019-05-19 at 17:33 +0800, Jitao Shi wrote:
> On Wed, 2019-05-08 at 10:39 +0800, CK Hu wrote:
> > On Tue, 2019-04-16 at 14:04 +0800, Jitao Shi wrote:
> > > Config the different CMDQ reg address in driver data.
> > > 
> > For MT8173, you change reg_cmd_off from 0x180 to 0x200, so this patch is
> > a bug fix. You should add a 'Fixes' tag.
> > 
> > > Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> > > ---
> > >  drivers/gpu/drm/mediatek/mtk_dsi.c | 39 +++++++++++++++++++++++-------
> > >  1 file changed, 30 insertions(+), 9 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> > > index 6c4ac37f983d..573e6bec6d36 100644
> > > --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> > > +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> > > @@ -131,7 +131,6 @@
> > >  #define VM_CMD_EN			BIT(0)
> > >  #define TS_VFP_EN			BIT(5)
> > >  
> > > -#define DSI_CMDQ0		0x180
> > >  #define CONFIG				(0xff << 0)
> > >  #define SHORT_PACKET			0
> > >  #define LONG_PACKET			2
> > > @@ -156,6 +155,10 @@
> > >  
> > >  struct phy;
> > >  
> > > +struct mtk_dsi_driver_data {
> > > +	const u32 reg_cmdq_off;
> > > +};
> > > +
> > >  struct mtk_dsi {
> > >  	struct mtk_ddp_comp ddp_comp;
> > >  	struct device *dev;
> > > @@ -182,6 +185,7 @@ struct mtk_dsi {
> > >  	bool enabled;
> > >  	u32 irq_data;
> > >  	wait_queue_head_t irq_wait_queue;
> > > +	struct mtk_dsi_driver_data *driver_data;
> > >  };
> > >  
> > >  static inline struct mtk_dsi *encoder_to_dsi(struct drm_encoder *e)
> > > @@ -934,6 +938,7 @@ static void mtk_dsi_cmdq(struct mtk_dsi *dsi, const struct mipi_dsi_msg *msg)
> > >  	const char *tx_buf = msg->tx_buf;
> > >  	u8 config, cmdq_size, cmdq_off, type = msg->type;
> > >  	u32 reg_val, cmdq_mask, i;
> > > +	u32 reg_cmdq_off = dsi->driver_data->reg_cmdq_off;
> > >  
> > >  	if (MTK_DSI_HOST_IS_READ(type))
> > >  		config = BTA;
> > > @@ -953,9 +958,11 @@ static void mtk_dsi_cmdq(struct mtk_dsi *dsi, const struct mipi_dsi_msg *msg)
> > >  	}
> > >  
> > >  	for (i = 0; i < msg->tx_len; i++)
> > > -		writeb(tx_buf[i], dsi->regs + DSI_CMDQ0 + cmdq_off + i);
> > > +		mtk_dsi_mask(dsi, (reg_cmdq_off + cmdq_off + i) & (~0x3U),
> > > +			     (0xffUL << (((i + cmdq_off) & 3U) * 8U)),
> > > +			     tx_buf[i] << (((i + cmdq_off) & 3U) * 8U));
> > 
> > You say you would follow Nicolas' suggestion here.
> > 
> 
> If i replace mtk_dsi_mask with writeb, i can't get right value from
> registers. I don't know why this.

I remember that Shaoming has also meet some error about writeb(), but he
finally fix this bug. You may get some hint from him. If we can not use
writeb(), this modification should be two patches: one is changing
DSI_CMDQ0 to reg_cmdq_off, another one is changing writeb() to
mtk_dsi_mask().

Regards,
CK

> 
> > >  
> > > -	mtk_dsi_mask(dsi, DSI_CMDQ0, cmdq_mask, reg_val);
> > > +	mtk_dsi_mask(dsi, reg_cmdq_off, cmdq_mask, reg_val);
> > >  	mtk_dsi_mask(dsi, DSI_CMDQ_SIZE, CMDQ_SIZE, cmdq_size);
> > >  }
> > >  
> > > @@ -1074,10 +1081,27 @@ static const struct component_ops mtk_dsi_component_ops = {
> > >  	.unbind = mtk_dsi_unbind,
> > >  };
> > >  
> > > +static const struct mtk_dsi_driver_data mt8173_dsi_driver_data = {
> > > +	.reg_cmdq_off = 0x200,
> > > +};
> > > +
> > > +static const struct mtk_dsi_driver_data mt2701_dsi_driver_data = {
> > > +	.reg_cmdq_off = 0x180,
> > > +};
> > > +
> > > +static const struct of_device_id mtk_dsi_of_match[] = {
> > > +	{ .compatible = "mediatek,mt2701-dsi",
> > > +	  .data = &mt2701_dsi_driver_data },
> > > +	{ .compatible = "mediatek,mt8173-dsi",
> > > +	  .data = &mt8173_dsi_driver_data },
> > > +	{ },
> > > +};
> > > +
> > >  static int mtk_dsi_probe(struct platform_device *pdev)
> > >  {
> > >  	struct mtk_dsi *dsi;
> > >  	struct device *dev = &pdev->dev;
> > > +	const struct of_device_id *of_id;
> > >  	struct resource *regs;
> > >  	int irq_num;
> > >  	int comp_id;
> > > @@ -1101,6 +1125,9 @@ static int mtk_dsi_probe(struct platform_device *pdev)
> > >  	if (ret)
> > >  		goto err_unregister_host;
> > >  
> > > +	of_id = of_match_device(mtk_dsi_of_match, &pdev->dev);
> > > +	dsi->driver_data = of_id->data;
> > 
> > Maybe use of_device_get_match_data() is a more simple way. You could
> > refer to [1].
> > 
> > [1]
> > https://elixir.bootlin.com/linux/v5.1/source/drivers/gpu/drm/mediatek/mtk_disp_ovl.c#L300
> > 
> > Regards,
> > CK
> > 
> 
> I'll fix it next version.
> 
> > > +
> > >  	dsi->engine_clk = devm_clk_get(dev, "engine");
> > >  	if (IS_ERR(dsi->engine_clk)) {
> > >  		ret = PTR_ERR(dsi->engine_clk);
> > > @@ -1193,12 +1220,6 @@ static int mtk_dsi_remove(struct platform_device *pdev)
> > >  	return 0;
> > >  }
> > >  
> > > -static const struct of_device_id mtk_dsi_of_match[] = {
> > > -	{ .compatible = "mediatek,mt2701-dsi" },
> > > -	{ .compatible = "mediatek,mt8173-dsi" },
> > > -	{ },
> > > -};
> > > -
> > >  struct platform_driver mtk_dsi_driver = {
> > >  	.probe = mtk_dsi_probe,
> > >  	.remove = mtk_dsi_remove,
> > 
> > 
> 
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
