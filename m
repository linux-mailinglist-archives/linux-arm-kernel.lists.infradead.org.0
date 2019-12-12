Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8831111D226
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 17:23:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pe17W7pAOB/YNpqxwdNGv65RPneA9Yi6Pxdsk2nRxQk=; b=Mu0OTGCEXFktwG
	EHGgBRRT0Fm8TunqB3uAGV7b3ef//MIZonzyAhhLquDrOtCeKQf5VYHnI9l4MOieXkeexrUqR3/XN
	FMjFEU2AW144igtMR6P1KsSFOSG1DSJg0Vt/HFvjIt59eIjUMsio3gvRgSp6OIT5hSsrKckrtcQc9
	iNOjThOeFNyAvvVrJLNWNAw4CQSxfyhEXURo7jdsJ0f1wjzEwqJcWILDBTb8arj184dMT9WCBKNIV
	oO+n5ud+qqQhX1WxzxRG7ENHNAahY+13KNCasFmoCbE15L+hmOsk/dNrYzP9OFHiniWdPIcuUOxQp
	kdLW/RYNuliCDAYSaykA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifRFE-0002X4-IJ; Thu, 12 Dec 2019 16:23:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifRF6-0002WE-Ir
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 16:23:10 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ifRF0-0005wC-P8; Thu, 12 Dec 2019 17:23:02 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1ifRF0-0007P2-6J; Thu, 12 Dec 2019 17:23:02 +0100
Date: Thu, 12 Dec 2019 17:23:02 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
Subject: Re: [PATCH] ARM: dts: imx6qdl: Enable egalax touch screen
Message-ID: <20191212162302.7i5zev3ksdkjk4ze@pengutronix.de>
References: <20191212160220.2265521-1-sjoerd.simons@collabora.co.uk>
 <20191212160722.wgqjeeknvm257hwi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212160722.wgqjeeknvm257hwi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 17:22:11 up 27 days,  7:40, 37 users,  load average: 0.01, 0.02, 0.06
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_082308_618317_313D1A1E 
X-CRM114-Status: GOOD (  18.18  )
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
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-12-12 17:07, Marco Felsch wrote:
> Hi Sjoerd,
> 
> On 19-12-12 17:02, Sjoerd Simons wrote:
> > Sabrelite boards can have an lvds screen attached with a built-in i2c touch
> > screen. Enable this in the dtsi.
> 
> Can this be any screen available on the market?

At least you should adapt the title to: "ARM: dts: imx6qdl-sabrelite: ..."

Regards,
  Marco


> 
> > Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
> > ---
> > 
> >  arch/arm/boot/dts/imx6qdl-sabrelite.dtsi | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi b/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
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
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
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
