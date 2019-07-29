Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B442C785E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 09:10:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X55+cS45swdviMkrh705AoWyt5gfsxuUFWaSpJ2ppd8=; b=TQ8mPOsYhLLy1r
	nbfRY3oUcPK7GdNYtBj/pMZy0pnd+JSE/ARuDuWyiaTQQs81+VC2OF+Xd8z/PPbswM+PKoYuHAcQm
	d1e4zstSKDpOhCIU8g4v467gF/p/BH8govAu4egA3ogDx6cGuICy6qmxbISSSCk/dpWAfybBp6iSv
	2gyWtlnVfbYkdieohfKnoiLpjv1cMP56P9JpCMaOkZvN6yWc6fYYkuFsS+pP43yZuGOtnpJFyQgoK
	P+4W8ekNoOLo/izgSNFVmWfAvGGfJyxHO4iKruc2dAlKIeXVcPqqAIsxmpl0tAMK50iOpAek9ji/H
	rMplfDNctVj2bVW84u4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrznc-0001wV-8z; Mon, 29 Jul 2019 07:10:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrzjZ-0000BX-5L
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 07:06:15 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hrzjT-0001ht-6J; Mon, 29 Jul 2019 09:06:07 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hrzjR-0004RR-Ql; Mon, 29 Jul 2019 09:06:05 +0200
Date: Mon, 29 Jul 2019 09:06:05 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 5/6] pwm: sun4i: Add support to output source clock
 directly
Message-ID: <20190729070605.vlu7kgzn362ph2q3@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-6-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726184045.14669-6-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_000613_358660_5B9B5286 
X-CRM114-Status: GOOD (  24.87  )
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 08:40:44PM +0200, Jernej Skrabec wrote:
> PWM core has an option to bypass whole logic and output unchanged source
> clock as PWM output. This is achieved by enabling bypass bit.
> =

> Note that when bypass is enabled, no other setting has any meaning, not
> even enable bit.
> =

> This mode of operation is needed to achieve high enough frequency to
> serve as clock source for AC200 chip, which is integrated into same
> package as H6 SoC.
> =

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/pwm/pwm-sun4i.c | 31 ++++++++++++++++++++++++++++++-
>  1 file changed, 30 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index 9e0eca79ff88..848cff26f385 100644
> --- a/drivers/pwm/pwm-sun4i.c
> +++ b/drivers/pwm/pwm-sun4i.c
> @@ -120,6 +120,19 @@ static void sun4i_pwm_get_state(struct pwm_chip *chi=
p,
>  =

>  	val =3D sun4i_pwm_readl(sun4i_pwm, PWM_CTRL_REG);
>  =

> +	/*
> +	 * PWM chapter in H6 manual has a diagram which explains that if bypass
> +	 * bit is set, no other setting has any meaning. Even more, experiment
> +	 * proved that also enable bit is ignored in this case.
> +	 */
> +	if (val & BIT_CH(PWM_BYPASS, pwm->hwpwm)) {
> +		state->period =3D DIV_ROUND_CLOSEST_ULL(NSEC_PER_SEC, clk_rate);
> +		state->duty_cycle =3D state->period / 2;
> +		state->polarity =3D PWM_POLARITY_NORMAL;
> +		state->enabled =3D true;
> +		return;
> +	}
> +
>  	if ((PWM_REG_PRESCAL(val, pwm->hwpwm) =3D=3D PWM_PRESCAL_MASK) &&
>  	    sun4i_pwm->data->has_prescaler_bypass)
>  		prescaler =3D 1;
> @@ -211,7 +224,8 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, str=
uct pwm_device *pwm,
>  {
>  	struct sun4i_pwm_chip *sun4i_pwm =3D to_sun4i_pwm_chip(chip);
>  	struct pwm_state cstate;
> -	u32 ctrl;
> +	u32 ctrl, clk_rate;
> +	bool bypass;
>  	int ret;
>  	unsigned int delay_us;
>  	unsigned long now;
> @@ -226,6 +240,16 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, st=
ruct pwm_device *pwm,
>  		}
>  	}
>  =

> +	/*
> +	 * Although it would make much more sense to check for bypass in
> +	 * sun4i_pwm_calculate(), value of bypass bit also depends on "enabled".
> +	 * Period is allowed to be rounded up or down.
> +	 */

Every driver seems to implement rounding the way its driver considers it
sensible. @Thierry: This is another patch where it would be good to have
a global directive about how rounding is supposed to work to provide the
users an reliable and uniform way to work with PWMs.

> +	clk_rate =3D clk_get_rate(sun4i_pwm->clk);
> +	bypass =3D (state->period =3D=3D NSEC_PER_SEC / clk_rate ||
> +		 state->period =3D=3D DIV_ROUND_UP(NSEC_PER_SEC, clk_rate)) &&
> +		 state->enabled;

Not sure if the compiler is clever enough to notice the obvious
optimisation with this code construct, but you can write this test in a
more clever way which has zero instead of up to two divisions. Something
like:

bypass =3D ((state->period * clk_rate >=3D NSEC_PER_SEC &&
	   state->period * clk_rate < NSEC_PER_SEC + clk_rate) &&
	  state->enabled);

In the commit log you write the motivation for using bypass is that it
allows to implement higher frequency then with the "normal" operation.
As you don't skip calculating the normal parameters requesting such a
high-frequency setting either errors out or doesn't catch the impossible
request. In both cases there is something to fix.

> +
>  	spin_lock(&sun4i_pwm->ctrl_lock);
>  	ctrl =3D sun4i_pwm_readl(sun4i_pwm, PWM_CTRL_REG);
>  =

> @@ -273,6 +297,11 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, st=
ruct pwm_device *pwm,
>  		ctrl &=3D ~BIT_CH(PWM_CLK_GATING, pwm->hwpwm);
>  	}
>  =

> +	if (bypass)
> +		ctrl |=3D BIT_CH(PWM_BYPASS, pwm->hwpwm);
> +	else
> +		ctrl &=3D ~BIT_CH(PWM_BYPASS, pwm->hwpwm);
> +

Does switching on (or off) the bypass bit complete the currently running
period?

>  	sun4i_pwm_writel(sun4i_pwm, ctrl, PWM_CTRL_REG);
>  =

>  	spin_unlock(&sun4i_pwm->ctrl_lock);

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
