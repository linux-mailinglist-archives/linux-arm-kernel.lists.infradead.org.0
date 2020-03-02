Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A932D1765F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 22:30:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8eLuV9geamLTZF/XEbfdfCT/ZC5FX4Bh5GOxbQU2Is=; b=StUlQHVt9WTOAP
	imLjrP3/VYXlq7vJ/j94pU02XqsXzvbAX4mTYGvWPA/kUuu3uSQHbW6EltlF82qP2cmY7U1RjRa4T
	Tvj5IXMJerZhApRggsb2KZFMvc75kB+jFS96mwKzjpNHoLG/mixl+vj64ZEWOoD4UDGs1T9fRpyJ4
	7gPqEWxxnKuoWUEqFL3A8wMrUYfqSeOZ1EmcievsdsE+xqggPdveqU44LaYjcoSk30mzVrbPpn1fx
	zZ1nXFLXMc4hN9UjftZfV+VSb80OF6odVnz7B11vDA3Hq6LzcN0xtvXuwKsH4+W4Nst4r85HLmqOZ
	k3fha9JAtivEbrtvOk0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8sdy-0005s5-7X; Mon, 02 Mar 2020 21:30:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8sdq-0005rk-UD
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 21:30:24 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j8sdY-0008Bh-Lg; Mon, 02 Mar 2020 22:30:04 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j8sdW-0003qt-TN; Mon, 02 Mar 2020 22:30:02 +0100
Date: Mon, 2 Mar 2020 22:30:02 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: GPIOs not correctly exported via sysfs on ATSAMA5D2
Message-ID: <20200302213002.ajeujnuox6ioi2ua@pengutronix.de>
References: <CAMiSF3BULWkyWTytTBcFfch9YaV_QzuBiawk-ZqEcQnsuGdUiQ@mail.gmail.com>
 <20200302083959.wju5vz3acuka2edq@pengutronix.de>
 <20200302093607.GG25745@shell.armlinux.org.uk>
 <CACRpkdbADQ5+Tp9NDgQx20Y0QTcE_go2qzi7dJL9HLu8PU1Smg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdbADQ5+Tp9NDgQx20Y0QTcE_go2qzi7dJL9HLu8PU1Smg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_133022_974912_51B3DCF6 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux GPIO List <linux-gpio@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Romain Izard <romain.izard.pro@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Mon, Mar 02, 2020 at 05:34:19PM +0100, Linus Walleij wrote:
> On Mon, Mar 2, 2020 at 10:36 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> > On Mon, Mar 02, 2020 at 09:39:59AM +0100, Uwe Kleine-K=F6nig wrote:
> =

> > >  - Sometimes it is useful to make use of a GPIO and a dedicated funct=
ion
> > >    on the same pin in a driver (e.g. an i2c driver might need to swit=
ch
> > >    to gpio to do a bus recovery). The automatic pinmuxing then has
> > >    strange side effect because you have to remux the pins after
> > >    requesting the GPIOs even if you didn't drive the pins as GPIO and
> > >    there is a short time where the pin function isn't the dedicated
> > >    one.
> >
> > It's worse than that for the i2c driver.  The pins are muxed to the i2c
> > function when the driver binds.  When the i2c driver claims the GPIOs
> > corresponding with those pins, they get switched to GPIO mode behind
> > the back of pinctrl.  You then have to _explicitly_ switch pinctrl to
> > GPIO mode and back to I2C mode to get them back to I2C mode.
> =

> That's especially annoying. I would consider adding a specific
> consumer flag for GPIOs used this way, in additon to
> GPIOD_ASIS, something like GPIOD_ASIS_NOMUX
> (thinking of better names).

This is not only relevant for GPIOD_ASIS. GPIOs for recovery are
registered (in the case of i2c-imx) with:

        rinfo->sda_gpiod =3D devm_gpiod_get(&pdev->dev, "sda", GPIOD_IN);
	rinfo->scl_gpiod =3D devm_gpiod_get(&pdev->dev, "scl", GPIOD_OUT_HIGH_OPEN=
_DRAIN);

so we'd need a _NOMUX variant for each gpiod_flags value.

Also if a board makes use of i2c, the corresponding pins shouldn't be
muxed to GPIO if userspace requests the GPIO via gpioctl or sysfs.
(IMHO i2c isn't special here, this should apply to all used pins,
shouldn't it?)

> Since the calling site knows about this usecase we can
> open code the semantics for this specifically.

Since the calling site doesn't know if the pin is used otherwise, it
should default to _NOMUX?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
