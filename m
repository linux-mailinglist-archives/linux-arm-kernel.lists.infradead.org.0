Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B6FFD702
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 08:36:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWiUz0M3qrsFaaWo2qbFCUHqGoOzwXSXcRfOMq2SyF4=; b=PhXPWFztIA0pa1
	mNdgyM+KZkRagX5ALbKm7PmB98w9G+6E2Pnct6nbtlLsRnP5c+88b5I5sP7omv6x8rruwvpOK7483
	UpPhT7gYzQZXHq14xpS/t8r9ajtlJlz8wwrn512z2FnlbdmTGK4ZO/97ab3anDAQPqvgYNsOqX0q8
	uzd4rn/+cXDrgyQiV/MNXfnOWj0LEn+aCJxRWklxu9xeK3cuDp7Gxq+M0VL8xrTDVN6IMm4sqZjye
	2qlrY0sEDwvmu/Zvfyb3oShWTOZhI4VGwvUO3blIMfMJ93jlxaRxelizaZv91grsHsZNGEHnMi418
	8quwZgjPMasqPJS5yMhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVW9B-0006Vy-OA; Fri, 15 Nov 2019 07:36:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVW93-0006VT-6o
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 07:35:54 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iVW8y-0006Dh-PE; Fri, 15 Nov 2019 08:35:48 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iVW8x-0000cb-Kd; Fri, 15 Nov 2019 08:35:47 +0100
Date: Fri, 15 Nov 2019 08:35:47 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v4 4/7] pwm: sun4i: Add support to output source clock
 directly
Message-ID: <20191115073547.iflhs6vqdsmyjla3@pengutronix.de>
References: <20191108084517.21617-1-peron.clem@gmail.com>
 <20191108084517.21617-5-peron.clem@gmail.com>
 <20191113085858.76rad3vpszknu4cp@pengutronix.de>
 <CAJiuCceYg7WC=peHYeC=eE-HOsKH_SdsKyWwkWY5VpeY+uzaKA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCceYg7WC=peHYeC=eE-HOsKH_SdsKyWwkWY5VpeY+uzaKA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_233553_251005_7A0E4455 
X-CRM114-Status: GOOD (  15.72  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 kernel@pengutronix.de, Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Cl=E9ment,

On Thu, Nov 14, 2019 at 11:47:00PM +0100, Cl=E9ment P=E9ron wrote:
> On Wed, 13 Nov 2019 at 09:58, Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > On Fri, Nov 08, 2019 at 09:45:14AM +0100, Cl=E9ment P=E9ron wrote:
> > > From: Jernej Skrabec <jernej.skrabec@siol.net>
> > > +     /*
> > > +      * Although it would make much more sense to check for bypass in
> > > +      * sun4i_pwm_calculate(), value of bypass bit also depends on "=
enabled".
> >
> > I don't understand this reasoning. sun4i_pwm_calculate knows about
> > .enabled and also sun4i_pwm->data->has_direct_mod_clk_output. Maybe just
> > add a bool *bypass as parameter and move the logic there?
> =

> I asked myself the same question, however the sun4i_pwm_calculate is
> only called when period or duty_cycle is updated not when state is
> toggled between disabled / enabled.
> =

> Should we also call it when the state is switched to enabled ?

Given that the check

	if ((cstate.period !=3D state->period) ||
	    (cstate.duty_cycle !=3D state->duty_cycle)) {

is not perfect anyhow (because if I toggle between

	pwm_apply_state(pwm, { .period =3D 50000001, .duty_cycle =3D 25000000, .en=
abled =3D true });

and

	pwm_apply_state(pwm, { .period =3D 50000000, .duty_cycle =3D 25000000, .en=
abled =3D true });

the code recalculates every parameter while it (probably) doesn't make a
difference.) And also given that cstate is filled by pwm_get_state which
might change its semantic slightly in the future I would say calculating
the needed parameter always is also cleaner. (But I'm aware this isn't
objective enough to overrule different opinions.) While I'm a fan of
avoid unneeded calculations, I think having a simple driver is more
important.

(And apart from that I don't like lowlevel drivers calling the pwm API
that is designed for consumers.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
