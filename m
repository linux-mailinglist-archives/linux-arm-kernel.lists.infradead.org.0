Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A196F31C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 13:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1yytcwqJj05Ss/SEpDa9pki4MIRGslUJOhbHwlt74s=; b=fTpAZ0JjY/E9Kc
	+jMDYn1q42JB5w/JvL89U7q9WqMkCEuHpwZdVUnMCcp7fUk6aEowfBXDkLzTHnlD4S8wl9HV1eLz4
	LI8lyQC1EMWvDPtnNP7fUwmoEQmkDVvesvJ8n1p0CNtzPgl8e0/3ASO2qZCO1ur4B9AiD2cnA0N6p
	ke7KCWbkq5nMZ8HCc+EVp+LIQNMWFj6dOMSV2odsF47UeNDMLn+5FBsg5qzY7j6n1bWv1KjF4Ks7G
	mLgLxa5yeE6y/AZVvX2bt3K/icRMZasYHRgqLVnMisyDNxxNq0TGH65XxHoQuAbG4gO4daTkGearF
	DRSdiJrndeRni6tYoIvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpAJO-0007RR-G9; Sun, 21 Jul 2019 11:47:30 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpAJ6-0007Qf-9w
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 11:47:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id D8422FB03;
 Sun, 21 Jul 2019 13:47:08 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wb98aE-Qp-3O; Sun, 21 Jul 2019 13:47:07 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 3880941113; Sun, 21 Jul 2019 13:47:07 +0200 (CEST)
Date: Sun, 21 Jul 2019 13:47:07 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: imx8mq: Add MIPI D-PHY
Message-ID: <20190721114707.GA10132@bogon.m.sigxcpu.org>
References: <cover.1563187253.git.agx@sigxcpu.org>
 <30c7622bf590670190b93c9b5b6dd1e8f809bbb2.1563187253.git.agx@sigxcpu.org>
 <20190715111027.a4wlpzex3taxymyr@fsr-ub1664-175>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715111027.a4wlpzex3taxymyr@fsr-ub1664-175>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_044712_507647_EF751532 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Pavel Machek <pavel@ucw.cz>, Anson Huang <anson.huang@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Abel,
On Mon, Jul 15, 2019 at 11:10:27AM +0000, Abel Vesa wrote:
> On 19-07-15 12:43:05, Guido G=FCnther wrote:
> > Add a node for the Mixel MIPI D-PHY, "disabled" by default.
> > =

> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > Acked-by: Angus Ainslie (Purism) <angus@akkea.ca>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > =

> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boo=
t/dts/freescale/imx8mq.dtsi
> > index d09b808eff87..891ee7578c2d 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > @@ -728,6 +728,19 @@
> >  				status =3D "disabled";
> >  			};
> >  =

> > +			dphy: dphy@30a00300 {
> > +				compatible =3D "fsl,imx8mq-mipi-dphy";
> > +				reg =3D <0x30a00300 0x100>;
> > +				clocks =3D <&clk IMX8MQ_CLK_DSI_PHY_REF>;
> > +				clock-names =3D "phy_ref";
> > +				assigned-clocks =3D <&clk IMX8MQ_CLK_DSI_PHY_REF>;
> > +				assigned-clock-parents =3D <&clk IMX8MQ_VIDEO_PLL1_OUT>;
> > +				assigned-clock-rates =3D <24000000>;
> =

> We have the following in the clk-imx8mq in the vendor tree:
> =

> 	clk_set_parent(clks[IMX8MQ_VIDEO_PLL1_BYPASS], clks[IMX8MQ_VIDEO_PLL1]);
> =

> This unbypasses the video pll 1. And then we also have this:
> =

> 	/* config video_pll1 clock */
> 	clk_set_parent(clks[IMX8MQ_VIDEO_PLL1_REF_SEL], clks[IMX8MQ_CLK_27M]);
> 	clk_set_rate(clks[IMX8MQ_VIDEO_PLL1], 593999999);

We don't have anything like this in our tree. This is our current clock
tree in that area which is setup by either the lcdif or dcss DT:

 osc_25m                             10       12        0    25000000      =
    0     0  50000
    video_pll1_ref_sel                1        1        0    25000000      =
    0     0  50000
       video_pll1_ref_div             1        1        0     5000000      =
    0     0  50000
          video_pll1                  1        1        0   593999998      =
    0     0  50000
             video_pll1_bypass        1        1        0   593999998      =
    0     0  50000
                video_pll1_out        2        2        0   593999998      =
    0     0  50000
                   dsi_phy_ref        1        1        0    23760000      =
    0     0  50000

e.g. for lcdif we have:

	lcdif: lcdif@30320000 {
		...
		clock-names =3D "pix";
		assigned-clocks =3D <&clk IMX8MQ_VIDEO_PLL1_REF_SEL>,
				  <&clk IMX8MQ_VIDEO_PLL1_BYPASS>,
				  <&clk IMX8MQ_CLK_LCDIF_PIXEL>,
				  <&clk IMX8MQ_VIDEO_PLL1>;
		assigned-clock-parents =3D <&clk IMX8MQ_CLK_25M>,
				  <&clk IMX8MQ_VIDEO_PLL1>,
				  <&clk IMX8MQ_VIDEO_PLL1_OUT>;
		assigned-clock-rates =3D <0>, <0>, <0>, <594000000>;
		...
	};

Do we want to add this add for dphy and lcdif?
Cheers,
 -- Guido

> But none of that is acceptable upstream since the clock provider should n=
ot
> use clock consumer API.
> =

> So please update the assigned-clock* properties to something like this:
> 				assigned-clocks =3D <&clk IMX8MQ_VIDEO_PLL1_REF_SEL>,
> 						  <&clk IMX8MQ_VIDEO_PLL1_BYPASS>,
> 						  <&clk IMX8MQ_CLK_DSI_PHY_REF>,
> 						  <&clk IMX8MQ_VIDEO_PLL1>;
> 				assigned-clock-parents =3D <&clk IMX8MQ_CLK_27M>,
> 							 <&clk IMX8MQ_VIDEO_PLL1>,
> 							 <&clk IMX8MQ_VIDEO_PLL1_OUT>
> 							 <0>;
> 				assigned-clock-rates =3D <0>,
> 						       <0>,
> 						       <24000000>,             =

> 						       <593999999>;
> =

> I've written this without testing, so please do test it on your setup.

> =

> > +				#phy-cells =3D <0>;
> > +				power-domains =3D <&pgc_mipi>;
> > +				status =3D "disabled";
> > +			};
> > +
> >  			i2c1: i2c@30a20000 {
> >  				compatible =3D "fsl,imx8mq-i2c", "fsl,imx21-i2c";
> >  				reg =3D <0x30a20000 0x10000>;
> > -- =

> > 2.20.1
> > =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
