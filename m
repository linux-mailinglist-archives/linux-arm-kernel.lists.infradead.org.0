Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1709DF27D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 07:51:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDUeWnA8bY9FncJGYfCwAge1VzZTL3EmyuiW3+++lZM=; b=rRdO/X8OrkW5FF
	ATlOsup05n6SpNvDLbGTG4PoCI/pLmqtAQxNqDLSmSvFXOLZiM5iAypcleFYiphC5P7z4fG8Tv6Fs
	+Rk3haPdI6Q8Eiv4oOmfQUIkWbDp8iBEFGlOGMHAZ2TpI52X/l0lDNQ9fWNWGL0iaDzE3iDP9/+KS
	pIzqHtS72lb4usCm4YTSZsQszqVfzbuxltbKzx6VW0mdaDTH3EW9SObjU5g/8jFewU7s2G9xlCUfE
	UdQ+YQ3vdqS7podHJ8orYFh9cEMVccyFcNLSI5Q89NSfzCCD5g+iDAw8rm/5TP7fDWeF5gOKeNA2u
	76wykV7GCpsznySZ3aTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSbdl-0000mq-Ud; Thu, 07 Nov 2019 06:51:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSbdf-0000mA-2q
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 06:51:28 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iSbdX-0001kX-O4; Thu, 07 Nov 2019 07:51:19 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iSbdW-0007qU-3c; Thu, 07 Nov 2019 07:51:18 +0100
Date: Thu, 7 Nov 2019 07:51:18 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 4/7] pwm: sun4i: Add support to output source clock
 directly
Message-ID: <20191107065118.j4s5cghj4ark7sql@pengutronix.de>
References: <20191105131456.32400-1-peron.clem@gmail.com>
 <20191105131456.32400-5-peron.clem@gmail.com>
 <20191105145659.ffezqntodsys4phn@pengutronix.de>
 <CAJiuCcdXr3y0oe19ZNaiQoN7Y39p54p8LjQjXfjHbTH8tbnrpw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCcdXr3y0oe19ZNaiQoN7Y39p54p8LjQjXfjHbTH8tbnrpw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_225127_124203_60FCB8C5 
X-CRM114-Status: GOOD (  13.48  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Cl=E9ment,

On Wed, Nov 06, 2019 at 10:24:39PM +0100, Cl=E9ment P=E9ron wrote:
> On Tue, 5 Nov 2019 at 15:57, Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > On Tue, Nov 05, 2019 at 02:14:53PM +0100, Cl=E9ment P=E9ron wrote:
> > > +     bypass =3D state->enabled &&
> > > +              (state->period * clk_rate >=3D NSEC_PER_SEC) &&
> >
> > This is too coarse. With state->period =3D 1000000 this is fulfilled
> > (unless the multiplication overflows).
> =

> Sorry, misunderstood the previous mail
> =

> What about something like this ?
> ((state->period - 1) * clk_rate <=3D NSEC_PER_SEC) &&
> ((state->period + 1) * clk_rate >=3D NSEC_PER_SEC) &&
>  ((state->duty_cycle - 1) * 2 <=3D state->period) &&
>  ((state->duty_cycle + 1) * 2 >=3D state->period);
> =

> We are sure that the user is looking for a PWM around the OSC with a
> 50% duty cycle ?

This again is too strict. The general policy to fulfill a request is:

 1) provide the longest possible period not bigger than requested
 2) provide the longest possible duty cycle not bigger than requested
 3) if possible complete the currently running period before switching
    and don't return to the user before the new setting is active.
    Document the behaviour prominently because the code (usually)
    doesn't allow to understand the hardware's features here.
 4) A disabled PWM should output the inactive level

And then there is a corner case: If the user requests .duty_cycle =3D 0,
.enabled =3D 1 it is ok to provide .enabled =3D 0 iff otherwise 0% isn't
possible.

So the right check for bypass is:

  state->period * clk_rate >=3D NSEC_PER_SEC &&
  state->period * clk_rate < whatevercanbereachedwithoutbypass &&
  state->duty_cycle * clk_rate * 2 >=3D NSEC_PER_SEC

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
