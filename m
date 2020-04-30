Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E671E1BF4C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypJPCsEsC15OyAebToKoNQUH1NOwmb9cRWCZNwsVZvg=; b=gk5XkUaKlklEL0
	y3xhnVY7k1C4bCq6ISIhVwKNHnQuY2Baa6dxYIJPNjyffK0nENMXkG+5Olc8Fzx2lWqDweL18Dv6z
	RPuEbQSZGMf4Y6PxcLeH9tSdaGdWK0KEM8lI8ff1sbis9+QRLFKgdt1+JB4MAEPz1rkQhfaoFbs+M
	Y7DMEXMVHE56u8Sg9XOveSOOoWK0hFOf+DdMyytM6B1hFM2g/+FDPWX1I/00X4FgQdm/AF8+DGIta
	1SenOhD0+hvroDcpkyp2bgvARbEYm8s48L8cSxu2OqNT7Kc+Ah4u1FfErrTJTzhC7BdBoLFInaCRx
	lWdGF8WUTB7ofubEkoqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU60Y-0005WG-UB; Thu, 30 Apr 2020 10:01:30 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU604-0005Hw-6d
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:01:03 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5272D2007C9;
 Thu, 30 Apr 2020 12:00:56 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 44A092007C4;
 Thu, 30 Apr 2020 12:00:56 +0200 (CEST)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 2C9D320397;
 Thu, 30 Apr 2020 12:00:56 +0200 (CEST)
Date: Thu, 30 Apr 2020 13:00:55 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite clk
Message-ID: <20200430100055.6rhec5rwtz2yyqbl@fsr-ub1664-175>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <1584008384-11578-8-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB4966D0EF272CAB282BF72EB580AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276047141A63BE756B9C06D988AF0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB6PR0402MB276047141A63BE756B9C06D988AF0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_030100_535117_AC03565F 
X-CRM114-Status: GOOD (  31.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jacky Bai <ping.bai@nxp.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "angus@akkea.ca" <angus@akkea.ca>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>, Anson Huang <anson.huang@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "aford173@gmail.com" <aford173@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, Jun Li <jun.li@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-04-27 09:11:56, Peng Fan wrote:
> > Subject: RE: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite
> > clk
> > 
> > > From: Peng Fan <peng.fan@nxp.com>
> > > Sent: Thursday, March 12, 2020 6:20 PM
> > >
> > > The CORE/BUS root slice has following design, simplied graph:
> > > The difference is core not have pre_div block.
> > > A composite core/bus clk has 8 inputs for mux to select, saying clk[0-7].
> > >
> > >             SEL_A  GA
> > >             +--+  +-+
> > >             |  +->+ +------+
> > > CLK[0-7]--->+  |  +-+      |
> > >        |    |  |      +----v---+    +----+
> > >        |    +--+      |pre_diva+---->    |  +---------+
> > >        |              +--------+    |mux +--+post_div |
> > >        |    +--+      |pre_divb+--->+    |  +---------+
> > >        |    |  |      +----^---+    +----+
> > >        +--->+  |  +-+      |
> > >             |  +->+ +------+
> > >             +--+  +-+
> > >             SEL_B  GB
> > >
> > > There will be system hang, when doing the following steps:
> > > 1. switch mux from clk0 to clk1
> > > 2. gate off clk0
> > > 3. swtich from clk1 to clk2, or gate off clk1
> > >
> > > Step 3 triggers system hang.
> > 
> > Why Step 3 triggers system hang? Is this a HW limitation?
> 
> It is what hardware designed.
> 
> There is a counter inside the clk root module to choose
> SEL_A or SEL_B. If choose SEL_B, the parent of SEL_B must
> be active, otherwise the change from SEL_A to SEL_B
> will cause hang.
> 
> SEL_A and SEL_B is inside the clock root module,
> It is not clk's software parentA/B. misunderstand
> this will misunderstand the whole fix.
> 
> > 
> > >
> > > If we skip step2, keep clk0 on, step 3 will not trigger system hang.
> > > However we have CLK_OPS_PARENT_ENABLE flag, which will unprepare
> > > disable the clk0 which will not be used.
> > >
> > > To address this issue, we could use following simplied software flow:
> > > After the first target register set
> > > wait the target register set finished
> > > set the target register set again
> > > wait the target register set finished
> > >
> > > The upper flow will make sure SEL_A and SEL_B both set the new mux,
> > > but with only one path gate on.
> > >
> > > And there will be no system hang anymore with step3.
> > 
> > Is this IC proposed solution?
> 
> This is what I proposed and IC team confirmed.
> 
> > 
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >
> > > V2:
> > >  Drop wait after write, add one line comment for write twice.
> > >
> > >  drivers/clk/imx/clk-composite-8m.c | 62
> > > +++++++++++++++++++++++++++++++++++++-
> > >  1 file changed, 61 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/clk/imx/clk-composite-8m.c
> > > b/drivers/clk/imx/clk-composite-8m.c
> > > index 99773519b5a5..eae02c151ced 100644
> > > --- a/drivers/clk/imx/clk-composite-8m.c
> > > +++ b/drivers/clk/imx/clk-composite-8m.c
> > > @@ -24,6 +24,12 @@
> > >
> > >  #define PCG_CGC_SHIFT		28
> > >
> > > +#define PRE_REG_OFF		0x30
> > > +#define PRE_MUXA_SHIFT		24
> > > +#define PRE_MUXA_MASK		0x7
> > > +#define PRE_MUXB_SHIFT		8
> > > +#define PRE_MUXB_MASK		0x7
> > 
> > Are those macros used somewhere?
> 
> Remove in v3.
> 
> > 
> > > +
> > >  static unsigned long imx8m_clk_composite_divider_recalc_rate(struct
> > > clk_hw *hw,
> > >  						unsigned long parent_rate)
> > >  {
> > > @@ -124,6 +130,57 @@ static const struct clk_ops
> > > imx8m_clk_composite_divider_ops = {
> > >  	.set_rate = imx8m_clk_composite_divider_set_rate,
> > >  };
> > >
> > > +static u8 imx8m_clk_composite_mux_get_parent(struct clk_hw *hw) {
> > > +	struct clk_mux *mux = to_clk_mux(hw);
> > > +	u32 val;
> > > +
> > > +	val = readl(mux->reg) >> mux->shift;
> > > +	val &= mux->mask;
> > > +
> > > +	return clk_mux_val_to_index(hw, mux->table, mux->flags, val); }
> > 
> > You don't have to redefinition them if they're the same as clk_mux_ops.
> > You have the access to clk_mux_ops.
> 
> This will require export_symbol of clk_mux_ops callbacks.
> 

Maybe you can do here:

return clk_mux_ops.get_parent(hw);

> > 
> > > +
> > > +static int imx8m_clk_composite_mux_set_parent(struct clk_hw *hw, u8
> > > +index) {
> > > +	struct clk_mux *mux = to_clk_mux(hw);
> > > +	u32 val = clk_mux_index_to_val(mux->table, mux->flags, index);
> > > +	unsigned long flags = 0;
> > > +	u32 reg;
> > > +
> > > +	if (mux->lock)
> > > +		spin_lock_irqsave(mux->lock, flags);
> > > +
> > > +	reg = readl(mux->reg);
> > > +	reg &= ~(mux->mask << mux->shift);
> > > +	val = val << mux->shift;
> > > +	reg |= val;
> > > +	/* write twice to make sure SEL_A/B point the same mux */
> > > +	writel(reg, mux->reg);
> > > +	writel(reg, mux->reg);
> > 
> > Why this affects both SEL_A/B?
> 
> The internal counter will make sure both SEL_A/B point
> to the same mux.
> 
> > Very tricky and may worth more comments.
> 
> Ah, I think RM should be clear about the target interface
> and non-target interface.
> 
> When you write once, saying use SEL_A, when
> you write the 2nd, the hardware will use SEL_B,
> when you write 3rd, the hardware will use SEL_A.
> and ...
> 

This is a very interesting behavior from HW point of view.
So every write changes the mux ? 

Unless there is an ERRATA for this, we'll get a lot of pushback from upstream.

> > 
> > Besides that, I'd like to see Abel's comments on this patch.
> 
> 
> Abel,
> 
>  Any comments?
> 
> Thanks,
> Peng.
> 
> > 
> > Regards
> > Aisheng
> > 
> > > +
> > > +	if (mux->lock)
> > > +		spin_unlock_irqrestore(mux->lock, flags);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int
> > > +imx8m_clk_composite_mux_determine_rate(struct clk_hw *hw,
> > > +				       struct clk_rate_request *req) {
> > > +	struct clk_mux *mux = to_clk_mux(hw);
> > > +
> > > +	return clk_mux_determine_rate_flags(hw, req, mux->flags); }
> > 
> > Same as bove.
> > 
> > > +
> > > +
> > > +const struct clk_ops imx8m_clk_composite_mux_ops = {
> > > +	.get_parent = imx8m_clk_composite_mux_get_parent,
> > > +	.set_parent = imx8m_clk_composite_mux_set_parent,
> > > +	.determine_rate = imx8m_clk_composite_mux_determine_rate,
> > > +};
> > > +
> > >  struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
> > >  					const char * const *parent_names,
> > >  					int num_parents, void __iomem *reg, @@ -136,6
> > > +193,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char
> > > +*name,
> > >  	struct clk_gate *gate = NULL;
> > >  	struct clk_mux *mux = NULL;
> > >  	const struct clk_ops *divider_ops;
> > > +	const struct clk_ops *mux_ops;
> > >
> > >  	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
> > >  	if (!mux)
> > > @@ -157,10 +215,12 @@ struct clk_hw
> > > *imx8m_clk_hw_composite_flags(const char *name,
> > >  		div->shift = PCG_DIV_SHIFT;
> > >  		div->width = PCG_CORE_DIV_WIDTH;
> > >  		divider_ops = &clk_divider_ops;
> > > +		mux_ops = &imx8m_clk_composite_mux_ops;
> > >  	} else {
> > >  		div->shift = PCG_PREDIV_SHIFT;
> > >  		div->width = PCG_PREDIV_WIDTH;
> > >  		divider_ops = &imx8m_clk_composite_divider_ops;
> > > +		mux_ops = &clk_mux_ops;
> > >  	}
> > >
> > >  	div->lock = &imx_ccm_lock;
> > > @@ -176,7 +236,7 @@ struct clk_hw
> > *imx8m_clk_hw_composite_flags(const
> > > char *name,
> > >  	gate->lock = &imx_ccm_lock;
> > >
> > >  	hw = clk_hw_register_composite(NULL, name, parent_names,
> > > num_parents,
> > > -			mux_hw, &clk_mux_ops, div_hw,
> > > +			mux_hw, mux_ops, div_hw,
> > >  			divider_ops, gate_hw, &clk_gate_ops, flags);
> > >  	if (IS_ERR(hw))
> > >  		goto fail;
> > > --
> > > 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
