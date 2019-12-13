Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9375411E025
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 10:04:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jdl+e9dpTeGoCwpuq8RjzVNto8Gp9LK8/7Yfi5SsISc=; b=NH6FMC1APaDtCl
	v/RLqw9CgYvM+Cis5cj60rhvInTL+1urT4Wsz7sOBnyJ82HLYD7Hj8aBpg5vOMX4EDM/SYbr0ktHK
	cygj5sdbq9/y6QSCch6WKal/QmNpdq2sYEfpenEH4xpoG9eBnJ5BcJFJR6RJI4SZEFCMiCMtjfHPX
	VjzOVBJgFGBY5MR9EanXWNPiKXuwUX6/k+ngLeetQgNE1uug0SLnemarvdCcqE9GWp8JvyVJdHw/3
	jDM4PLn/f7EaykQQGF/SPfQM39qCYA0ePDm7yXN6Fi1xN7rh7a6jjZD7KHNvLe3MiqvFn4hNnpr4n
	E1820U0kHruXTkmvxN8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifgrs-00056V-3Y; Fri, 13 Dec 2019 09:04:12 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifgrj-00054u-Mc
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 09:04:05 +0000
Received: from beast.luon.net (unknown
 [IPv6:2001:470:78b1:0:40e2:7ff:fef4:3122])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: sjoerd)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A12F528ECCE;
 Fri, 13 Dec 2019 09:04:00 +0000 (GMT)
Received: by beast.luon.net (Postfix, from userid 1000)
 id 63AE63E1F0D; Fri, 13 Dec 2019 10:03:57 +0100 (CET)
Message-ID: <a16cabd53ec24dfab7d8a53cab761f019a6d988f.camel@collabora.co.uk>
Subject: Re: [PATCH] ARM: dts: imx6qdl: Enable egalax touch screen
From: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
To: Marco Felsch <m.felsch@pengutronix.de>
Date: Fri, 13 Dec 2019 10:03:57 +0100
In-Reply-To: <20191212162522.irg6pg4fhgxwkp53@pengutronix.de>
References: <20191212160220.2265521-1-sjoerd.simons@collabora.co.uk>
 <20191212160722.wgqjeeknvm257hwi@pengutronix.de>
 <e9c3d1d5f8b57d92e5823f74762a2de2b20f8e88.camel@collabora.co.uk>
 <20191212162522.irg6pg4fhgxwkp53@pengutronix.de>
Organization: Collabora Ltd.
User-Agent: Evolution 3.34.1-2+b1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_010403_869245_C2616CEE 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-12-12 at 17:25 +0100, Marco Felsch wrote:
> On 19-12-12 17:22, Sjoerd Simons wrote:
> > On Thu, 2019-12-12 at 17:07 +0100, Marco Felsch wrote:
> > > Hi Sjoerd,
> > > 
> > > On 19-12-12 17:02, Sjoerd Simons wrote:
> > > > Sabrelite boards can have an lvds screen attached with a built-
> > > > in
> > > > i2c touch
> > > > screen. Enable this in the dtsi.
> > > 
> > > Can this be any screen available on the market?
> > 
> > I guess i should have been more clear here; This is the touchscreen
> > in
> > the hannstar display (already part of the dts) that was sold as an
> > accessoiry to the sabrelite.
> 
> That is more clear =) Pls can you add this to the commit message?

Ofcourse will do; You also made me dig up the model number etc so i'll
include that information.

> > Same as the screen that can be used on the boundary nitrogen6
> > boards
> > (which do have the touch part already enabled in the dts)
> > 
> > > > Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
> > > > ---
> > > > 
> > > >  arch/arm/boot/dts/imx6qdl-sabrelite.dtsi | 8 ++++++++
> > > >  1 file changed, 8 insertions(+)
> > > > 
> > > > diff --git a/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
> > > > b/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
> > > > index 8468216dae9b..382b127b2251 100644
> > > > --- a/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
> > > > +++ b/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
> > > > @@ -416,6 +416,14 @@ &i2c3 {
> > > >  	pinctrl-names = "default";
> > > >  	pinctrl-0 = <&pinctrl_i2c3>;
> > > >  	status = "okay";
> > > > +
> > > > +	touchscreen@4 {
> > > > +		compatible = "eeti,egalax_ts";
> > > > +		reg = <0x04>;
> > > > +		interrupt-parent = <&gpio1>;
> > > > +		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
> > > > +		wakeup-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
> > > 
> > > The wakeup-gpio and the irq-line are sharing the same gpio line?
> 
> Lastly should we add a own pinctrl entry for the touchscreen?

Would probably make sense to do that indeed; Will have a look

Thanks for the review!

-- 
Sjoerd Simons
Collabora Ltd.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
