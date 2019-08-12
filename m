Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B36F8A2B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 17:55:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FyEPHXz2wIfcldLcMAlg2Y6yT++tNpwjEwpu57wVIQs=; b=I3Lx7rh1ssFYSF
	tHRHAZRc0mSgUUfRAOjEQeKw+a9Oevw2OjKApaeM2GcVJIqMVchxMS+zIHdxiK8hdofzn1ZcQj1k6
	IZH3NidukGNVbbMTY4RVZrlcI0xPtfWPzgnS3biALXsnR0u7SYHPUa0ShD7B7DKZogTtQiKQHDIo2
	av93U2qM0CZbeK4up0nkyboUVSHGkTznUUHtJN2OYpIMLnBv9EoUpZ2o8HlXRDpT8vWwrv3JZzMGr
	fIF7dWcxzOVl3IE4eI/Ljr+4OBCHAIRCbQp/60B7DUHUrrUjp6bKCZG508fpsnEHqoOLDA2M/fUfv
	Sz3D2TxD6zD0b7uXt2WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxCf5-0007ac-5c; Mon, 12 Aug 2019 15:55:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxCer-0007aG-Oj
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 15:54:55 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02F5B20820;
 Mon, 12 Aug 2019 15:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565625293;
 bh=GqbIVxc3IQ9SeU60mFNZIC6Nb287EK7LtdRjU/Ufx7U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FLw9OfRUlzvUhEmRtEKfgvMkxE0PeWjjuY+1TQMisiwwx+YRhJ5AiokPZ1ZnOmMVS
 /jV7XfO9GrRel6gy1O0jcCgWqAWnIAhhZaR6CsIoLY1b0vpErRfQ6NjeHDOMZrLiij
 5HKbpaw3tryoGqsBC8WqkuO+z+XQEKAdz/gI+ELE=
Date: Mon, 12 Aug 2019 17:54:42 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH v3 02/11] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
Message-ID: <20190812155440.GA12237@X250>
References: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
 <1563289265-10977-3-git-send-email-aisheng.dong@nxp.com>
 <20190803135048.GL8870@X250.getinternet.no>
 <CAA+hA=TVv8m2GZr0W-u+S6XzJUCYrFDF95iyUGyAsbYMwatyZg@mail.gmail.com>
 <20190812130041.GD27041@X250>
 <AM0PR04MB42117575E82B4B762FE2143880D30@AM0PR04MB4211.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB42117575E82B4B762FE2143880D30@AM0PR04MB4211.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_085453_847737_598D34DA 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>, Dong Aisheng <dongas86@gmail.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 02:41:55PM +0000, Aisheng Dong wrote:
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: Monday, August 12, 2019 9:01 PM 
> > On Mon, Aug 05, 2019 at 11:27:20AM +0800, Dong Aisheng wrote:
> > > > > +- compatible:                Should be one of:
> > > > > +                       "fsl,imx8qxp-lpcg"
> > > > > +                       "fsl,imx8qm-lpcg" followed by
> > "fsl,imx8qxp-lpcg".
> > > > > +- reg:                       Address and length of the register set.
> > > > > +- #clock-cells:              Should be 1. One LPCG supports multiple
> > clocks.
> > > > > +- clocks:            Input parent clocks phandle array for each clock.
> > > > > +- bit-offset:                An integer array indicating the bit offset
> > for each clock.
> > > >
> > > > I guess that the driver should be able to figure bit offset from
> > > > 'clock-indices' property.
> > > >
> > >
> > > Yes, it can be done in theory.
> > > Then the binding may look like:
> > > sdhc0_lpcg: clock-controller@5b200000 {
> > >         ...
> > >         #clock-cells = <1>;
> > >         clocks = <&sdhc0_clk IMX_SC_PM_CLK_PER>,
> > >                  <&conn_ipg_clk>, <&conn_axi_clk>;
> > >         clock-indices = <0>, <16>, <20>;
> > >         clock-output-names = "sdhc0_lpcg_per_clk",
> > >                              "sdhc0_lpcg_ipg_clk",
> > >                              "sdhc0_lpcg_ahb_clk";
> > >         power-domains = <&pd IMX_SC_R_SDHC_0>; };
> > >
> > > usdhc1: mmc@5b010000 {
> > >         ...
> > >         clocks = <&sdhc0_lpcg 16>,
> > >                  <&sdhc0_lpcg 0>,
> > >                  <&sdhc0_lpcg 20>;
> > >         clock-names = "ipg", "per", "ahb"; };
> > >
> > > However, after trying, i found  one limitation if using clock-indices
> > > that users have to do a secondary search for the indices value from
> > > clock names which is not very friendly.
> > >
> > > Formerly from the clock output names, user can easily get the clock
> > > index as they're in fixed orders as output names, so very easily to
> > > use.
> > > e.g.
> > > clocks = <&sdhc0_lpcg 1>,
> > >          <&sdhc0_lpcg 0>,
> > >          <&sdhc0_lpcg 2>;
> > >
> > > If using clock-indices, users have no way to know it's clock index
> > > from clock output names order unless they do a secondary search from
> > > the clock-indice array accordingly.
> > > For example, for "sdhc0_lpcg_ahb_clk", user can easily know its
> > > reference is <&sdhc0_lpcg 2>.
> > > But if using clock-indice, we need search clock-indices array to find
> > > its reference becomes <&sdhc0_lpcg 20>. So this seems like a drawback
> > > if using clock-indices.
> > 
> > Shouldn't we have constant macro defined for those numbers, so that both
> > 'clock-indices' and 'clocks' of client device can use?
> > 
> 
> I think we can do it.
> Does below one look ok to you?
> #define IMX_LPCG_ CLK_0	0
> #define IMX_LPCG_ CLK_1	4
> #define IMX_LPCG_ CLK_2	8
> #define IMX_LPCG_ CLK_3	12
> #define IMX_LPCG_ CLK_4	16
> #define IMX_LPCG_ CLK_5	20
> #define IMX_LPCG_ CLK_6	24
> #define IMX_LPCG_ CLK_7	28

Looks fine to me, except the space in the middle of macro name, which
compiler will complain anyway :)

Shawn

> 
> The usage will look like:
> <&sdhc0_lpcg IMX_LPCG_CLK_5>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
