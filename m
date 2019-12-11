Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBB911AC5C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 14:45:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZPEG3WYHVOsqi45XkHbNuE7cP8Pe0dXcESgHlVWpug=; b=R24apNk9in4EGG
	0kG6JxxZ/lZKM04Bimn9iPCSuEv7cwZ31XighJ5sF9h/qKKUAnCCtLgajE2jB3H1++Yg2rv/kHxQV
	no7zQNmhK7duSYcCmYx8ojB0+KSJbzVxxr4KfWQfDSoWP2GKsrgJlmvHKDfdLzMq9PficMifQTwgQ
	+ed8TnNNGYBzMt4lvV9Wu3GCft5kW4oOO68dE+dSKzd4ZFibA576t2z2hhID/JFm+spHC1NHjvSlP
	mCTgDFh4C9Yfrm4ZcY9uYSRMcQL6AExBBPmNytjiMtsbdtpltca8BNB6SoDEfTu1PDFvkvO9j8TCx
	UgRV1soLZ4voeri0V6HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2JG-0007mN-LU; Wed, 11 Dec 2019 13:45:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2J8-0007lM-9v
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 13:45:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1if2J2-0002j6-Sx; Wed, 11 Dec 2019 14:45:32 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1if2J1-0004pK-A8; Wed, 11 Dec 2019 14:45:31 +0100
Date: Wed, 11 Dec 2019 14:45:31 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: Trying to understand basic concepts about GPIO reset pin
Message-ID: <20191211134531.4olcqep5ork5h4fn@pengutronix.de>
References: <e8b645da-9921-0436-ccfa-9abf4ae5b9d6@free.fr>
 <20191211132203.GD25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211132203.GD25745@shell.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_054538_353966_0C6391F4 
X-CRM114-Status: GOOD (  25.13  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: GPIO <linux-gpio@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 01:22:03PM +0000, Russell King - ARM Linux admin wr=
ote:
> On Wed, Dec 11, 2019 at 02:05:45PM +0100, Marc Gonzalez wrote:
> > Hello,
> > =

> > I've asked linusw a few times on IRC, and every time, I /think/ I under=
stand,
> > then I get confused again later. So I'm trying to understand once and f=
or all.
> > =

> > Please do not hesitate to correct any mistake/misconception below.
> > =

> > I want to discuss a "simple" GPIO reset pin.
> > =

> > 1) When a reset pin is ACTIVE, the corresponding circuit is "held" in r=
eset.
> > In other words, when a reset pin is ACTIVE, the circuit is DISABLED / d=
oes not
> > receive power, clocks don't tick, nothing changes state.
> =

> Not necessarily.  Whether a circuit is powered or clocked has nothing
> really to do with whether it is in reset or not.  Many devices specify
> that power and clocks must be applied prior to reset being released,
> which is sensible because it allows the reset to set the initial state
> of the circuitry.
> =

> > 2a) If a signal is ACTIVE HIGH, that means the signal is ACTIVE when th=
e voltage
> > on the line is HIGH (e.g. 3.3V or 5V)
> =

> Correct.
> =

> > 2b) If a signal is ACTIVE LOW, that means the signal is ACTIVE when the=
 voltage
> > on the line is LOW (e.g. 0V, connected to ground)
> =

> Correct.
> =

> > 3) Usually(?) a reset signal is ACTIVE LOW. That way, when the SoC is c=
oming up,
> > and current has not propagated everywhere, LOW voltage on the reset pin=
 means
> > the circuit is "held" in reset, until we are ready to set voltage HIGH =
on the
> > reset pin to disable the reset, and enable the circuit.
> =

> I don't think there's a "usually" about it.  Some devices take an
> active high reset, others take an active low reset.
> =

> > Suppose a circuit's HW description states:
> > =

> > RESET_N:
> > External Reset.
> > Active LOW reset signal to the device.
> > See Figure 4.6 on page 21 for reset timing requirements.
> > Figure 4.6 shows the minimum timing interval for RESET_N.
> > RESET_N must be driven LOW for at least the period of 200 =B5s before a=
ccessing registers.
> > =

> > =

> > 4) The DT node for this device should describe the reset pin as GPIO_AC=
TIVE_LOW:
> > =

> > 	reset-gpios =3D <&tlmm 12 GPIO_ACTIVE_LOW>;
> =

> I would say so - the reset is active low, so specifying it as active low
> in DT seems entirely sensible.
> =

> > OK, now we're getting into the parts of the GPIO API I don't understand=
 well.
> > =

> > If I just call
> > =

> > 	devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
> > =

> > then I am able to interact with the device. How can that be?
> =

> This is where things get complicated.  GPIOD_OUT_LOW is
> GPIOD_FLAGS_BIT_DIR_SET | GPIOD_FLAGS_BIT_DIR_OUT without
> GPIOD_FLAGS_BIT_DIR_VAL.  The above will therefore call:
> =

> 	gpiod_direction_output(gpiod, !!(dflags & GPIOD_FLAGS_BIT_DIR_VAL));
> =

> which will be zero.  gpiod_direction_output() respects the inversion
> that GPIO_ACTIVE_LOW specified in DT.  So, GPIOD_OUT_LOW will set
> the reset signal _high_.
> =

> I don't blame you for thinking this is confusing - the terminology
> adopted in the kernel certainly is.
> =

> Thnk of whatever you give to the non-raw functions as "low means
> inactive, high means active".

I think it would be good to not pass GPIOD_OUT_LOW to
devm_gpiod_get_optional (et al). Something like

	devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_ACTIVE);

would be much less confusing. Not sure this exists, but it would make a
good alias for GPIOD_OUT_HIGH.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
