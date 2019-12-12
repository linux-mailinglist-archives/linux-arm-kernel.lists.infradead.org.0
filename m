Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD72711D235
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 17:25:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=peIu92spqr8N2B+kBcun8ZBA/h3DwKE7qxrMLkyl3+k=; b=VzQsZ0XxaYT8oB
	5sJOl+JBp4/w15hu3nPUkn3OsB+lrSEYmYdEHpO8hMwOFXbNnyrKgCxIG1G6Otev660ZQC3Dyro+y
	66vOmwo8ET8HRtdRj7kBjWPQf2UAH1iZdwZtCbFXg/UMKA0mwWHyiHZDKnAPBw4JPZbhYytBufq0L
	A67HAy1Gy3njozXr0+Q8gOBaxaztseNeQQxLLQl/8irEcRt8YW2dPDIApTntc5j/HDV19in+ai22g
	tAhWNM54Kp6wfHh6T7YXn4J+mICpAc/Ou/MsOpUu/oCjeos+Ot4aFgm4qZT/VuzMbW2KIVYDo1WP+
	69wNiExF6IxA2jtFkRpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifRHR-00047Z-EH; Thu, 12 Dec 2019 16:25:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifRHI-00046m-DU
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 16:25:26 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ifRHH-0006AE-6g; Thu, 12 Dec 2019 17:25:23 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1ifRHG-0007WR-Md; Thu, 12 Dec 2019 17:25:22 +0100
Date: Thu, 12 Dec 2019 17:25:22 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
Subject: Re: [PATCH] ARM: dts: imx6qdl: Enable egalax touch screen
Message-ID: <20191212162522.irg6pg4fhgxwkp53@pengutronix.de>
References: <20191212160220.2265521-1-sjoerd.simons@collabora.co.uk>
 <20191212160722.wgqjeeknvm257hwi@pengutronix.de>
 <e9c3d1d5f8b57d92e5823f74762a2de2b20f8e88.camel@collabora.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e9c3d1d5f8b57d92e5823f74762a2de2b20f8e88.camel@collabora.co.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 17:24:04 up 27 days,  7:42, 37 users,  load average: 0.03, 0.03, 0.05
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_082524_456603_E35C6E68 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 19-12-12 17:22, Sjoerd Simons wrote:
> On Thu, 2019-12-12 at 17:07 +0100, Marco Felsch wrote:
> > Hi Sjoerd,
> > 
> > On 19-12-12 17:02, Sjoerd Simons wrote:
> > > Sabrelite boards can have an lvds screen attached with a built-in
> > > i2c touch
> > > screen. Enable this in the dtsi.
> > 
> > Can this be any screen available on the market?
> 
> I guess i should have been more clear here; This is the touchscreen in
> the hannstar display (already part of the dts) that was sold as an
> accessoiry to the sabrelite.

That is more clear =) Pls can you add this to the commit message?

> 
> Same as the screen that can be used on the boundary nitrogen6 boards
> (which do have the touch part already enabled in the dts)
> 
> > 
> > > Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
> > > ---
> > > 
> > >  arch/arm/boot/dts/imx6qdl-sabrelite.dtsi | 8 ++++++++
> > >  1 file changed, 8 insertions(+)
> > > 
> > > diff --git a/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
> > > b/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
> > > index 8468216dae9b..382b127b2251 100644
> > > --- a/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
> > > +++ b/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
> > > @@ -416,6 +416,14 @@ &i2c3 {
> > >  	pinctrl-names = "default";
> > >  	pinctrl-0 = <&pinctrl_i2c3>;
> > >  	status = "okay";
> > > +
> > > +	touchscreen@4 {
> > > +		compatible = "eeti,egalax_ts";
> > > +		reg = <0x04>;
> > > +		interrupt-parent = <&gpio1>;
> > > +		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
> > > +		wakeup-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
> > 
> > The wakeup-gpio and the irq-line are sharing the same gpio line?

Lastly should we add a own pinctrl entry for the touchscreen?

Regards,
  Marco

> > 
> > Regards,
> >   Marco 
> > 
> > > +	};
> > >  };
> > >  
> > >  &iomuxc {
> > > -- 
> > > 2.24.0
> > > 
> > > 
> > > 
> -- 
> Sjoerd Simons
> Collabora Ltd.
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
