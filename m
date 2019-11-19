Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE75102260
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 11:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HB2s2avr6RHq1lN5mZqovM5kpro8S3QQFtHr3OfYEIM=; b=kTov0jaoPY4rFW
	sEk/ux40tr9YTbCxVINA/kdEOLgEY0CmMAJ2pb0jnf0b/cAd8F56Rc//TGpR6kLoZm5eFDZ5GYxDy
	rNjK8Uq801wPbL9fjy6tAZ3w8zl57oio/9B3+zlxPBWWTkWUFY5frOMgLd3t1jXwjV+DR8PPOCbRF
	uQzWAYnc4hFSDEmqi0yj+ke9RT5jPsC3bwuZW2zl1l/WHGuOsXX6VQVLBC4SEmcl3QtaisSBPtmA/
	cova46kbZ4ahUCZ3MyY2ua019IaLrZdTCiiQPjxP9vA5W4WP4RaedDXnTnlgVqRcArk0Q2KmMhv/l
	+BJTlEhhnBbWnwjWJehg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX1BT-00017w-8o; Tue, 19 Nov 2019 10:56:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX1BL-00017P-IJ
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 10:56:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iX1BF-0003lq-Jv; Tue, 19 Nov 2019 11:56:21 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iX1BD-0005UN-W8; Tue, 19 Nov 2019 11:56:19 +0100
Date: Tue, 19 Nov 2019 11:56:19 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: Using a GPIO as an interrupt line
Message-ID: <20191119105619.4osmin7m5ryqfwih@pengutronix.de>
References: <f0d383f3-8efa-ae68-62af-68f69cd4143f@free.fr>
 <20191119095748.GX25745@shell.armlinux.org.uk>
 <07db59e7-ff16-0457-87f2-fba10dc182d6@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <07db59e7-ff16-0457-87f2-fba10dc182d6@free.fr>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_025627_604521_6CA2434C 
X-CRM114-Status: GOOD (  22.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, MSM <linux-arm-msm@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 GPIO <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Marc,

On Tue, Nov 19, 2019 at 11:46:21AM +0100, Marc Gonzalez wrote:
> On 19/11/2019 10:57, Russell King - ARM Linux admin wrote:
> =

> > On Tue, Nov 19, 2019 at 10:28:15AM +0100, Marc Gonzalez wrote:
> > =

> >> The board I'm working on provides a TCA9539 I/O expander.
> >> Or, as the datasheet(*) calls it, a "Low Voltage 16-Bit I2C and
> >> SMBus Low-Power I/O Expander with Interrupt Output, Reset Pin,
> >> and Configuration Registers"
> >>
> >> (*) http://www.ti.com/lit/ds/symlink/tca9539.pdf
> >>
> >> The binding is documented in Documentation/devicetree/bindings/gpio/gp=
io-pca953x.txt
> >>
> >> I have some doubts about the interrupt output, described as:
> >>
> >> Optional properties:
> >>  - interrupts: interrupt specifier for the device's interrupt output.
> >>
> >> In my board's DT, the I/O expander is described as:
> >>
> >> 	exp1: gpio@74 {
> >> 		compatible =3D "ti,tca9539";
> >> 		reg =3D <0x74>;
> >> 		gpio-controller;
> >> 		#gpio-cells =3D <2>;
> >> 		reset-gpios =3D <&tlmm 96 GPIO_ACTIVE_LOW>;
> >> 		pinctrl-names =3D "default";
> >> 		pinctrl-0 =3D <&top_exp_rst>;
> >> 		interrupt-parent =3D <&tlmm>;
> >> 		interrupts =3D <42 IRQ_TYPE_LEVEL_HIGH>;
> =

> As pointed out by ukleinek on IRC, I might have (??) specified the wrong
> trigger type. The data-sheet states:
> "The TCA9539 open-drain interrupt (INTn) output is activated when any inp=
ut state
> differs from its corresponding Input Port register state, and is used to =
indicate
> to the system master that an input state has changed."
> (The data sheet speaks of "INT with a line on top"; what is the typical w=
ay to
> write that in ASCII? I was told that adding a trailing 'n' or 'b' was com=
mon.)

Or a # as pre- or suffix ... (Didn't know about 'b')

> According to that description, it looks like IRQ_TYPE_LEVEL_LOW?
> (Weird, because it worked well with IRQ_TYPE_LEVEL_HIGH.)
> =

> > This specifies an interrupt signal, number 42, on the tlmm interrupt
> > controller. It isn't a GPIO specification. Not every interrupt is a
> > GPIO, and some SoCs can have dedicated interrupt pins that are
> > exactly that.
> > =

> > Hence, needlessly limiting an external device to requiring a GPIO for
> > its interrupt is detrimental.
> =

> That makes complete sense.
> =

> IIUC, what is missing in my DT spec is defining pin 42 as a GPIO pin.
> Looking more closely at top_exp_rst:
> =

> 	top_exp_rst: top_exp_rst {
> 		mux {
> 			pins =3D "gpio96";
> 			function =3D "gpio";
> 		};
> =

> 		config {
> 			pins =3D "gpio96";
> 			drive-strength =3D <2>;
> 			bias-pull-down;
> 		};
> 	};
> =

> IIUC, this defines pin 96 as a GPIO pin (as well as defining some low-lev=
el
> properties of the pin). Likely I need something similar for pin 42?

Having a pin configured as GPIO is the boot default setting for many
SoCs/pins. So you might get away with not specifying a setting for pin
42, but that's not as robust as configuring that explicitly.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
