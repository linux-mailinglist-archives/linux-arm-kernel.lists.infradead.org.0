Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8331411D223
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 17:22:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4NgzI1tf7B0wFoxk0v4aLsX5xU8JhBOGLhQM63b8ig=; b=ivJrNYPOo9A+h1
	3eD9DGSyb9n3GkaT1jHcmOFNxVE1rSrR0oIOM1TIqiCM/E5YPR0aNtpqp8nndTqfaV8iLAnYnxCMa
	dMkQ/RPOMwGEXJ7R/NRbjoY4qFhaj96wCllxKcgLri8n70hVgDn0YJulMvj71UTcSy8mSKcDaY3GH
	UvZb67myXK9WIfepaNLaxgc7OTXQ6/+eCV7lanSMXVMWxNLnGtij5PTYvfMM28pvZlBrJxwqbBiwN
	w7j6OsaOmTAPXZSQA2xGMEA+b5w/yiFkTA2ABqYrEOy5aFQbVf9eklybaSJObC48W6sxehdlhcBBo
	4pJFlJjz9FlbD2xZ5X0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifREn-0002FF-0O; Thu, 12 Dec 2019 16:22:49 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifREd-0002Eh-Fj
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 16:22:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: sjoerd) with ESMTPSA id A04012901B1
Received: by beast.luon.net (Postfix, from userid 1000)
 id 40B3A3E1F0D; Thu, 12 Dec 2019 17:22:35 +0100 (CET)
Message-ID: <e9c3d1d5f8b57d92e5823f74762a2de2b20f8e88.camel@collabora.co.uk>
Subject: Re: [PATCH] ARM: dts: imx6qdl: Enable egalax touch screen
From: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
To: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 12 Dec 2019 17:22:35 +0100
In-Reply-To: <20191212160722.wgqjeeknvm257hwi@pengutronix.de>
References: <20191212160220.2265521-1-sjoerd.simons@collabora.co.uk>
 <20191212160722.wgqjeeknvm257hwi@pengutronix.de>
Organization: Collabora Ltd.
User-Agent: Evolution 3.34.1-2+b1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_082239_650043_93D5AEFC 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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

On Thu, 2019-12-12 at 17:07 +0100, Marco Felsch wrote:
> Hi Sjoerd,
> 
> On 19-12-12 17:02, Sjoerd Simons wrote:
> > Sabrelite boards can have an lvds screen attached with a built-in
> > i2c touch
> > screen. Enable this in the dtsi.
> 
> Can this be any screen available on the market?

I guess i should have been more clear here; This is the touchscreen in
the hannstar display (already part of the dts) that was sold as an
accessoiry to the sabrelite.

Same as the screen that can be used on the boundary nitrogen6 boards
(which do have the touch part already enabled in the dts)

> 
> > Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
> > ---
> > 
> >  arch/arm/boot/dts/imx6qdl-sabrelite.dtsi | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
> > b/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
> > index 8468216dae9b..382b127b2251 100644
> > --- a/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
> > +++ b/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
> > @@ -416,6 +416,14 @@ &i2c3 {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_i2c3>;
> >  	status = "okay";
> > +
> > +	touchscreen@4 {
> > +		compatible = "eeti,egalax_ts";
> > +		reg = <0x04>;
> > +		interrupt-parent = <&gpio1>;
> > +		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
> > +		wakeup-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
> 
> The wakeup-gpio and the irq-line are sharing the same gpio line?
> 
> Regards,
>   Marco 
> 
> > +	};
> >  };
> >  
> >  &iomuxc {
> > -- 
> > 2.24.0
> > 
> > 
> > 
-- 
Sjoerd Simons
Collabora Ltd.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
