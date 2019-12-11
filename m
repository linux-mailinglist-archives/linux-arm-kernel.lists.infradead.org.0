Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8B711ABFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 14:22:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoK1umw3vQUZ5eB7cWR8CGpfN+SZ2ZyFuo3d7fhy5JI=; b=tPs/L8s52ahHOs
	nGccDXr/BrHEDSCs4dQhBZLNGNIlJz7FFCRKK0pPYAquvpPU5lpBXbLGPoZUj2Gq248+TlkDpK6EA
	OV118utoRiCgT97FEYiW5weqG+G1yZIGpcqgCU3H6RwDsCqDcJ9jYZXMRbznWgE9f/S3uSMoKEL0F
	YOBPBA/Xbgoh8jmeDOr+fmZJ1JShyS2vvpwC7EyKFSgeyHOWXvW9mGjPFURrGnUrev5Z/lEK0ht2x
	Zp82T1ezh8oOO1k9zbDu4j7WoxkzREoC+51Q0vRj8+e7pnTeWOpZn2CbQCDhkY/cnntSaRqGal+vQ
	VubBuE2V1OE6CAudYZEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if1wc-00051y-RH; Wed, 11 Dec 2019 13:22:22 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if1wU-00050e-JD
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 13:22:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IH1s0cjqyMsMpDY0+X+5G2W/GuMaf647MqSabKEwRKo=; b=bQRr4DxFM0gt0AuX9H05e77AW
 xgPpIGWbqfMS4ylNcIEq+CMuRYAaDbAgSuxEOTzGDjBNtvFqDmSZHKr9TW3aBVZh6kjrjOQR3dYKE
 VDe6mTh10Gs0IO7KCuGTjqKnYC2g5hgKQhl0RqC2mI0dal0xeLLSEPXPDf8M2yfDcMVWQ3uPjCGar
 c0dh28JYhvwJ44PfqRMoMq6jrEPItwvjZ3SLGfiJUmyjDAt5zEqswbRBW/aW7mcYQL7JZIE2yPF7x
 QDWYcJh6BBorRBrlz1/b62nCMJ56zU9naKqHhGr/3FwQkMXIxbPfBM+uUGOO7M5pkxHW6NYQxhP5p
 Tp3bxfHnQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:47408)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1if1wM-00009W-6l; Wed, 11 Dec 2019 13:22:06 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1if1wJ-0005sr-ND; Wed, 11 Dec 2019 13:22:03 +0000
Date: Wed, 11 Dec 2019 13:22:03 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: Trying to understand basic concepts about GPIO reset pin
Message-ID: <20191211132203.GD25745@shell.armlinux.org.uk>
References: <e8b645da-9921-0436-ccfa-9abf4ae5b9d6@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e8b645da-9921-0436-ccfa-9abf4ae5b9d6@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_052214_770683_380A9140 
X-CRM114-Status: GOOD (  22.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 02:05:45PM +0100, Marc Gonzalez wrote:
> Hello,
> =

> I've asked linusw a few times on IRC, and every time, I /think/ I underst=
and,
> then I get confused again later. So I'm trying to understand once and for=
 all.
> =

> Please do not hesitate to correct any mistake/misconception below.
> =

> I want to discuss a "simple" GPIO reset pin.
> =

> 1) When a reset pin is ACTIVE, the corresponding circuit is "held" in res=
et.
> In other words, when a reset pin is ACTIVE, the circuit is DISABLED / doe=
s not
> receive power, clocks don't tick, nothing changes state.

Not necessarily.  Whether a circuit is powered or clocked has nothing
really to do with whether it is in reset or not.  Many devices specify
that power and clocks must be applied prior to reset being released,
which is sensible because it allows the reset to set the initial state
of the circuitry.

> 2a) If a signal is ACTIVE HIGH, that means the signal is ACTIVE when the =
voltage
> on the line is HIGH (e.g. 3.3V or 5V)

Correct.

> 2b) If a signal is ACTIVE LOW, that means the signal is ACTIVE when the v=
oltage
> on the line is LOW (e.g. 0V, connected to ground)

Correct.

> 3) Usually(?) a reset signal is ACTIVE LOW. That way, when the SoC is com=
ing up,
> and current has not propagated everywhere, LOW voltage on the reset pin m=
eans
> the circuit is "held" in reset, until we are ready to set voltage HIGH on=
 the
> reset pin to disable the reset, and enable the circuit.

I don't think there's a "usually" about it.  Some devices take an
active high reset, others take an active low reset.

> Suppose a circuit's HW description states:
> =

> RESET_N:
> External Reset.
> Active LOW reset signal to the device.
> See Figure 4.6 on page 21 for reset timing requirements.
> Figure 4.6 shows the minimum timing interval for RESET_N.
> RESET_N must be driven LOW for at least the period of 200 =B5s before acc=
essing registers.
> =

> =

> 4) The DT node for this device should describe the reset pin as GPIO_ACTI=
VE_LOW:
> =

> 	reset-gpios =3D <&tlmm 12 GPIO_ACTIVE_LOW>;

I would say so - the reset is active low, so specifying it as active low
in DT seems entirely sensible.

> OK, now we're getting into the parts of the GPIO API I don't understand w=
ell.
> =

> If I just call
> =

> 	devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
> =

> then I am able to interact with the device. How can that be?

This is where things get complicated.  GPIOD_OUT_LOW is
GPIOD_FLAGS_BIT_DIR_SET | GPIOD_FLAGS_BIT_DIR_OUT without
GPIOD_FLAGS_BIT_DIR_VAL.  The above will therefore call:

	gpiod_direction_output(gpiod, !!(dflags & GPIOD_FLAGS_BIT_DIR_VAL));

which will be zero.  gpiod_direction_output() respects the inversion
that GPIO_ACTIVE_LOW specified in DT.  So, GPIOD_OUT_LOW will set
the reset signal _high_.

I don't blame you for thinking this is confusing - the terminology
adopted in the kernel certainly is.

Thnk of whatever you give to the non-raw functions as "low means
inactive, high means active".

> =

> Is GPIOD_OUT_LOW a /logical/ low?
> In other words, does the call above really set the line HIGH
> =3D> RESET INACTIVE =3D> CIRCUIT ENABLED ?

Correct.

> The problem is that it does not guarantee that the line was LOW for 200 =
=B5s
> before being set HIGH, right?

Correct.

> It would appear that the correct sequence of calls for my circuit should =
be:
> =

> a)	reset =3D devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
> b)	usleep_range(200, 300);
> c)	gpiod_set_value_cansleep(reset, 0);

Correct.

> If I understand correctly:
> a) configures the pin as an output, and sets it to LOGICAL HIGH, i.e. PHY=
SICAL LOW
> b) keeps the RESET_N signal at PHYSICAL LOW for 200-300 =B5s
> c) sets the pin to LOGICAL 0/LOW =3D PHYSICAL HIGH

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
