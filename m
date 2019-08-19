Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052EB92196
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 12:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8c5UT2y6pLdQ8yIgGPkh4XXCD1ffWiitul7lZo+osvw=; b=NyMjUYJZOsX/V/
	C6zZS9nfcFKEDMwUomzUrksYvyTy3sVWp8L9mZIX0yjPeZQ85FoQbWi/0YbpMmbg+Zp4CZ3WubijE
	52GcmYJVYmFrh5d7zuutFqBBdUSlJ8MfuZ6efbSyHXgcM1Kwz0W3lx6sSu12WMqkhtESj2RdVdbss
	nMcj2JZnY3vzx2CZMNC4W9N/autR8z1X0ES75UYE1n9vQWyaWpQryFAwnsmyc7wBCKaPa7vT6VwQ3
	5ZjsuspsNBWv98wDDkWaiEzHLMrwj2wqehLX2L/bLQNh15i8JVKLkRDIUAqKLHUyfM5tfXEKyY06y
	38vOTvbwKEHBFhghJPAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfBU-0005gk-7V; Mon, 19 Aug 2019 10:46:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfBC-0005f9-NU
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 10:46:28 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hzfB4-0008TA-3G; Mon, 19 Aug 2019 12:46:18 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hzfB3-00050a-30; Mon, 19 Aug 2019 12:46:17 +0200
Date: Mon, 19 Aug 2019 12:46:17 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH 4/3] pwm: atmel: document known weaknesses of both
 hardware and software
Message-ID: <20190819104617.kujgwthxtjy6cssa@pengutronix.de>
References: <20190815214133.11134-1-uwe@kleine-koenig.org>
 <20190816093748.11769-1-uwe@kleine-koenig.org>
 <0a389abe-15ef-0e63-109f-2db4cb36f4b9@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0a389abe-15ef-0e63-109f-2db4cb36f4b9@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_034626_768000_F8AA75FE 
X-CRM114-Status: GOOD (  25.06  )
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
Cc: linux-pwm@vger.kernel.org, alexandre.belloni@bootlin.com,
 Ludovic.Desroches@microchip.com, thierry.reding@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 09:26:04AM +0000, Claudiu.Beznea@microchip.com wrot=
e:
> =

> =

> On 16.08.2019 12:37, Uwe Kleine-K=F6nig wrote:
> > External E-Mail
> > =

> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> > ---
> >  drivers/pwm/pwm-atmel.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > =

> > diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
> > index 42fe7bc043a8..1ddb93db9627 100644
> > --- a/drivers/pwm/pwm-atmel.c
> > +++ b/drivers/pwm/pwm-atmel.c
> > @@ -7,6 +7,16 @@
> >   *
> >   * Reference manual for "atmel,at91sam9rl-pwm":
> >   *   http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-11032-32-bi=
t-ARM926EJ-S-Microcontroller-SAM9G25_Datasheet.pdf
> > + *
> > + * Limitations:
> > + * - Periods start with the inactive level.
> =

> Are you talking here about the normal polarity (from documentation: By
> definition, normal polarity characterizes a signal starts high for the
> duration of the duty cycle and goes low for the remainder of the period.)

When .polarity =3D PWM_POLARITY_NORMAL is passed to atmel_pwm_apply() the
drivers sets PWM_CMR_CPOL=3D0 which according to the datasheet (linked
above) means: "The output waveform starts at a low level."

So maybe just the logic has to be inverted there, but then maybe the
output gets active instead of inactive when the PWM is disabled.
(Which in my book is ok, but it's Thierry's opinion that counts here.)

> If yes, this should be solved by playing with CPOL bit of CMR.
> =

> > + * - Hardware has to be stopped in general to update settings.
> =

> Sama5d2 has duty cycle that could be updated on the fly.

There is some functionality in the 9G25, too. I didn't understand it
completely but maybe it only helps updating one of period or duty cycle.
 =

> > + *
> > + * Software bugs/possible improvements:
> > + * - When atmel_pwm_apply() is called with state->enabled=3Dfalse a ch=
ange in
> > + *   state->polarity isn't honored.
> =

> I know that when configuring a PWM one should get the current state of the
> PWM, change it, then pass it to the driver via pwm_apply_state().

That seems to be a common pattern at least. IMHO letting the consumer
just configure the state that should be used should be fine, too.

> In case one would call the pwm_apply_state() with state->enabled =3D
> false the state would be stored in PWM specific object (of type struct
> pwm_device). On the next apply, with enabled =3D true, all the PWM
> parameters would be actually applied to hardware. So, until
> enable=3Dtrue the PWM state would only be cached by PWM core specific
> objects (in pwm_apply_state()).

I fail to follow what you mean here. If a PWM runs with (say) normal
polarity and you call pwm_apply_state(mypwm, { .polarity =3D
PWM_POLARITY_INVERSED, .enabled =3D false, }); the apply callback of the
lowlevel driver is called and supposed to configure the output to yield
a constant high.

> > + * - Instead of sleeping to wait for a completed period, the interrupt
> > + *   functionality could be used.
> >   */
> >  =

> >  #include <linux/clk.h>
> > =


Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
