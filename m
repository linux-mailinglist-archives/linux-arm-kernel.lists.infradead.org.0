Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F140089F12
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 15:01:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQqbN23dP/TPuiAUkwC3RPL+sxhkkLZUV3PlSF5rEIk=; b=DDsyhEeTh2l2un
	vrNZtB7P/Q2pOeqC7n9d7qr23H31nVFUeqcaDXsEvqoTix8GR6za5InzYDgx9n/JPFynUYLdRX/Qf
	hr1XXbjyZDH8uFxele7XrG94sk17zlGpz9Y1onUJzaML9/xN09WR4nufXWutSfK4gIpRTtKCK/Mjx
	WVzORjA/l+hdA8nN16921Sim/mWjmIlfsRFNwoDE9ctCdS3LdCzIUlCmxAufAXu3+5Ax10HPbh+Sp
	gRB4Jsdrasy7NYSnsp41yM8JY8wv5XywRnGftXnVD/cbjw3RXz7ftByLGbZ/lUaTJdwAstjYytKPT
	W+/Hs+TVw/Vq/nnDR1Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9wp-0006JU-KU; Mon, 12 Aug 2019 13:01:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9wT-0006Iq-QA
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 13:00:55 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1FD820679;
 Mon, 12 Aug 2019 13:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565614853;
 bh=l/NqOpnPspQILd59aflIt0y7cwwaNcRzRIKE008vYdE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KqmyQ80VsIog146wi5cUzn2HG5COlNTsugile1trKaBUTE2JqEsWoT8fhHtTd8rD/
 wSgba7byZOeiNK/R1FW/vZhMx3UpTUNaALg6UPMTQEhk0V4X8rQZ8DBs33LAdFCzTK
 YJahHd8dX/xdrh0KKFcGJgG20kN5ixX6YkBdLVas=
Date: Mon, 12 Aug 2019 15:00:43 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Dong Aisheng <dongas86@gmail.com>
Subject: Re: [PATCH v3 02/11] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
Message-ID: <20190812130041.GD27041@X250>
References: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
 <1563289265-10977-3-git-send-email-aisheng.dong@nxp.com>
 <20190803135048.GL8870@X250.getinternet.no>
 <CAA+hA=TVv8m2GZr0W-u+S6XzJUCYrFDF95iyUGyAsbYMwatyZg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA+hA=TVv8m2GZr0W-u+S6XzJUCYrFDF95iyUGyAsbYMwatyZg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_060053_896201_1BF1360C 
X-CRM114-Status: GOOD (  23.82  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 devicetree <devicetree@vger.kernel.org>, sboyd@kernel.org,
 Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 11:27:20AM +0800, Dong Aisheng wrote:
> > > +- compatible:                Should be one of:
> > > +                       "fsl,imx8qxp-lpcg"
> > > +                       "fsl,imx8qm-lpcg" followed by "fsl,imx8qxp-lpcg".
> > > +- reg:                       Address and length of the register set.
> > > +- #clock-cells:              Should be 1. One LPCG supports multiple clocks.
> > > +- clocks:            Input parent clocks phandle array for each clock.
> > > +- bit-offset:                An integer array indicating the bit offset for each clock.
> >
> > I guess that the driver should be able to figure bit offset from
> > 'clock-indices' property.
> >
> 
> Yes, it can be done in theory.
> Then the binding may look like:
> sdhc0_lpcg: clock-controller@5b200000 {
>         ...
>         #clock-cells = <1>;
>         clocks = <&sdhc0_clk IMX_SC_PM_CLK_PER>,
>                  <&conn_ipg_clk>, <&conn_axi_clk>;
>         clock-indices = <0>, <16>, <20>;
>         clock-output-names = "sdhc0_lpcg_per_clk",
>                              "sdhc0_lpcg_ipg_clk",
>                              "sdhc0_lpcg_ahb_clk";
>         power-domains = <&pd IMX_SC_R_SDHC_0>;
> };
> 
> usdhc1: mmc@5b010000 {
>         ...
>         clocks = <&sdhc0_lpcg 16>,
>                  <&sdhc0_lpcg 0>,
>                  <&sdhc0_lpcg 20>;
>         clock-names = "ipg", "per", "ahb";
> };
> 
> However, after trying, i found  one limitation if using clock-indices
> that users have to do a secondary search for the indices value from clock names
> which is not very friendly.
> 
> Formerly from the clock output names, user can easily get the clock
> index as they're
> in fixed orders as output names, so very easily to use.
> e.g.
> clocks = <&sdhc0_lpcg 1>,
>          <&sdhc0_lpcg 0>,
>          <&sdhc0_lpcg 2>;
> 
> If using clock-indices, users have no way to know it's clock index
> from clock output names order
> unless they do a secondary search from the clock-indice array accordingly.
> For example, for "sdhc0_lpcg_ahb_clk", user can easily know its
> reference is <&sdhc0_lpcg 2>.
> But if using clock-indice, we need search clock-indices array to find
> its reference
> becomes <&sdhc0_lpcg 20>. So this seems like a drawback if using clock-indices.

Shouldn't we have constant macro defined for those numbers, so that both
'clock-indices' and 'clocks' of client device can use?

> 
> Therefore, personally i'm still a bit intend to the original way which
> is more simple and
> straightforward from user point of view, unless there's a strong
> objections on define another
> vendor private property.
> 
> Shawn,
> How do you think?
> Should we enforce the complexity to users?
> 
> > > +- hw-autogate:               Boolean array indicating whether supports HW autogate for
> > > +                     each clock.
> >
> > Not sure why it needs to be a property in DT.  Or asking it different
> > way, when it should be true and when false?
> >
> 
> It is one LPCG feature.
> For some specific device LPCGs, it may support clock auto gating. (depends on
> IP's capability. e.g. uSDHC).
> So we define this feature in DT as well in case if user may want to
> use it in the future.
> 
> But AFAIK, there's still no one using it. Most drivers reply on runtime PM to do
> clock management. Did not use LPCG auto gate off feature.
> But the current LPCG driver API does support this parameter.
> 
> If you think it's unnecessary to define it in DT as there're still no
> users, i can remove it
> and disabling autogate in driver by default.

I would suggest to drop it then.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
