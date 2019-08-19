Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 738E392842
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 17:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Zp1dAPzO3XDzxnDXojJ+TbdQbqpu9MZ6e7y7Y3xHZY=; b=gtNyToIVarSKjZ
	GR1o2Kfrn56k1DL8hcdd8YlWeaNOrr6LBZ57MAr0MfAq5vriwEoDGu0LSm6DG+ZIL/pp3uagPP3wE
	4Iwg+p8AlmOfbJmAr4eU4X9UfYcq+N4GepIN7tGzI9RzZoUKqkq1ofQQx85TMkXvk+tBlMUPhGEP5
	Fm34ekrHrjqvWOn4D9FfZx1OA/0GHWfETGH/tu1Qp+cvuP/NpgeCrwX3UMfMrAcZVjrvUE6dqttwn
	Bh39chb4TITsg5d1lKGuNY+i8YKKkM/00AMi3m5BQ6g6fnrduLpmBRLVUq5qbydBjDoPzuFoSR/oS
	2n9PmqN+Cc37+B0oxIIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzjSn-0000XG-9m; Mon, 19 Aug 2019 15:20:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzjSg-0000Od-HX
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 15:20:48 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hzjSX-0006NW-1z; Mon, 19 Aug 2019 17:20:37 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hzjSV-0003tf-To; Mon, 19 Aug 2019 17:20:35 +0200
Date: Mon, 19 Aug 2019 17:20:35 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH 4/3] pwm: atmel: document known weaknesses of both
 hardware and software
Message-ID: <20190819152035.lkemndmypcehb2a2@pengutronix.de>
References: <20190815214133.11134-1-uwe@kleine-koenig.org>
 <20190816093748.11769-1-uwe@kleine-koenig.org>
 <0a389abe-15ef-0e63-109f-2db4cb36f4b9@microchip.com>
 <20190819104617.kujgwthxtjy6cssa@pengutronix.de>
 <3029467b-be14-d78b-5580-8bd3842d86e2@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3029467b-be14-d78b-5580-8bd3842d86e2@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_082046_588751_C5AEFFAE 
X-CRM114-Status: GOOD (  30.39  )
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

Hello Claudiu,

On Mon, Aug 19, 2019 at 12:28:59PM +0000, Claudiu.Beznea@microchip.com wrot=
e:
> On 19.08.2019 13:46, Uwe Kleine-K=F6nig wrote:
> > On Mon, Aug 19, 2019 at 09:26:04AM +0000, Claudiu.Beznea@microchip.com =
wrote:
> >> On 16.08.2019 12:37, Uwe Kleine-K=F6nig wrote:
> >>> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> >>> ---
> >>>  drivers/pwm/pwm-atmel.c | 10 ++++++++++
> >>>  1 file changed, 10 insertions(+)
> >>>
> >>> diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
> >>> index 42fe7bc043a8..1ddb93db9627 100644
> >>> --- a/drivers/pwm/pwm-atmel.c
> >>> +++ b/drivers/pwm/pwm-atmel.c
> >>> @@ -7,6 +7,16 @@
> >>>   *
> >>>   * Reference manual for "atmel,at91sam9rl-pwm":
> >>>   *   http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-11032-32-=
bit-ARM926EJ-S-Microcontroller-SAM9G25_Datasheet.pdf
> >>> + *
> >>> + * Limitations:
> >>> + * - Periods start with the inactive level.
> >>
> >> Are you talking here about the normal polarity (from documentation: By
> >> definition, normal polarity characterizes a signal starts high for the
> >> duration of the duty cycle and goes low for the remainder of the perio=
d.)
> > =

> > When .polarity =3D PWM_POLARITY_NORMAL is passed to atmel_pwm_apply() t=
he
> > drivers sets PWM_CMR_CPOL=3D0 which according to the datasheet (linked
> > above) means: "The output waveform starts at a low level."
> > =

> > So maybe just the logic has to be inverted there,
> =

> Agree.
> =

> > but then maybe the
> > output gets active instead of inactive when the PWM is disabled.
> =

> Yes, this would happen. Playing again with CPOL when disabling may be a
> solution.

Alternatively you could argue that it would be more sensible to drop the
requirement for a certain output level on disable. You would have my
support here.

> > (Which in my book is ok, but it's Thierry's opinion that counts here.)
> > =

> >> If yes, this should be solved by playing with CPOL bit of CMR.
> >>
> >>> + * - Hardware has to be stopped in general to update settings.
> >>
> >> Sama5d2 has duty cycle that could be updated on the fly.
> > =

> > There is some functionality in the 9G25, too. I didn't understand it
> > completely but maybe it only helps updating one of period or duty cycle.
> >  =

> >>> + *
> >>> + * Software bugs/possible improvements:
> >>> + * - When atmel_pwm_apply() is called with state->enabled=3Dfalse a =
change in
> >>> + *   state->polarity isn't honored.
> >>
> >> I know that when configuring a PWM one should get the current state of=
 the
> >> PWM, change it, then pass it to the driver via pwm_apply_state().
> > =

> > That seems to be a common pattern at least. IMHO letting the consumer
> > just configure the state that should be used should be fine, too.>
> >> In case one would call the pwm_apply_state() with state->enabled =3D
> >> false the state would be stored in PWM specific object (of type struct
> >> pwm_device). On the next apply, with enabled =3D true, all the PWM
> >> parameters would be actually applied to hardware. So, until
> >> enable=3Dtrue the PWM state would only be cached by PWM core specific
> >> objects (in pwm_apply_state()).
> > =

> > I fail to follow what you mean here. If a PWM runs with (say) normal
> > polarity and you call pwm_apply_state(mypwm, { .polarity =3D
> > PWM_POLARITY_INVERSED, .enabled =3D false, }); the apply callback of the
> > lowlevel driver is called and supposed to configure the output to yield
> > a constant high.
> =

> Ok, I see it now. I'll put it on my queue.

See above. The atmel driver is just part of my quest to get a general
picture what the common PWM implementation does. Thierry argued that it
is natural that a PWM drives the inactive level on disable.

I'd say that it would be more natural to not demand a certain level
because a) IMHO there are enough implementations that differ here and b)
consumers could just configure for duty_cycle=3D0 if they care.

In the case of the imx driver we could just put aside the discussions
about how we atomically switch the output to a GPIO to provide the
needed level. In case of the atmel driver you'd just invert polarity and
be done.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
