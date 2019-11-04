Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FCDEDAAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:38:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNFSFNzRQEDxDvg4YwNLvc6toAJvfg6h0g5UzXqLrR4=; b=KJT2iMnQyXW7+5
	2QUf1xlwiASdMW79GLZ6QAYV3S/vHqGtNyjU5uHKEWnwe6cX2lNXHUeoIDWWuUnkZcj1oLmVhcQfJ
	SSbYGMiNBzbREJ2nIhS3oDX9G7q9RLmjxPOdHKuS4s5Z/GUMPXtrrNKxScCnHU6ibzQii0NcCsZEj
	krToZ8Bvuaj+GtRSdLreKEjG+DKG1CIwyMsCfGgmIjGeBJajrPqte5G9CX7vK0lrTS8qHOR0XzqIt
	OwCp4KY+hHLD92wKuQ2slc5uxMOUhf0Axcs6x7pPHLsZHsvkTopGrrl7g1j/Zj6EWoCMcZE4f5n2u
	ITbrUruwWKnbrHjh/ciA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXsw-0007Hr-TX; Mon, 04 Nov 2019 08:38:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXsm-0007Gv-Lt
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:38:42 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iRXsi-0002GD-OC; Mon, 04 Nov 2019 09:38:36 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iRXsh-0008RT-V9; Mon, 04 Nov 2019 09:38:35 +0100
Date: Mon, 4 Nov 2019 09:38:35 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 4/7] pwm: sun4i: Add support to output source clock
 directly
Message-ID: <20191104083835.m2pd4fvhn2ze6bjt@pengutronix.de>
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <20191103203334.10539-5-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191103203334.10539-5-peron.clem@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_003840_715406_8D04CC8A 
X-CRM114-Status: GOOD (  27.17  )
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
 Jernej Skrabec <jernej.skrabec@siol.net>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 03, 2019 at 09:33:31PM +0100, Cl=E9ment P=E9ron wrote:
> From: Jernej Skrabec <jernej.skrabec@siol.net>
> =

> PWM core has an option to bypass whole logic and output unchanged source
> clock as PWM output. This is achieved by enabling bypass bit.
> =

> Note that when bypass is enabled, no other setting has any meaning, not
> even enable bit.
> =

> This mode of operation is needed to achieve high enough frequency to
> serve as clock source for AC200 chip, which is integrated into same
> package as H6 SoC.

I think the , should be dropped.

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  drivers/pwm/pwm-sun4i.c | 39 ++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 38 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index b5e7ac364f59..2441574674d9 100644
> --- a/drivers/pwm/pwm-sun4i.c
> +++ b/drivers/pwm/pwm-sun4i.c
> @@ -3,6 +3,10 @@
>   * Driver for Allwinner sun4i Pulse Width Modulation Controller
>   *
>   * Copyright (C) 2014 Alexandre Belloni <alexandre.belloni@free-electron=
s.com>
> + *
> + * Limitations:
> + * - When outputing the source clock directly, the PWM logic will be byp=
assed
> + *   and the currently running period is not guaranted to be completed

Typo: guaranted  -> guaranteed

>   */
>  =

>  #include <linux/bitops.h>
> @@ -73,6 +77,7 @@ static const u32 prescaler_table[] =3D {
>  =

>  struct sun4i_pwm_data {
>  	bool has_prescaler_bypass;
> +	bool has_direct_mod_clk_output;
>  	unsigned int npwm;
>  };
>  =

> @@ -118,6 +123,20 @@ static void sun4i_pwm_get_state(struct pwm_chip *chi=
p,
>  =

>  	val =3D sun4i_pwm_readl(sun4i_pwm, PWM_CTRL_REG);
>  =

> +	/*
> +	 * PWM chapter in H6 manual has a diagram which explains that if bypass
> +	 * bit is set, no other setting has any meaning. Even more, experiment
> +	 * proved that also enable bit is ignored in this case.
> +	 */
> +	if ((val & BIT_CH(PWM_BYPASS, pwm->hwpwm)) &&
> +	    data->has_direct_mod_clk_output) {
> +		state->period =3D DIV_ROUND_CLOSEST_ULL(NSEC_PER_SEC, clk_rate);
> +		state->duty_cycle =3D state->period / 2;
> +		state->polarity =3D PWM_POLARITY_NORMAL;
> +		state->enabled =3D true;
> +		return;
> +	}

Not sure how the rest of sun4i_pwm_get_state behaves, but I would prefer
to let .get_state() round up which together with .apply_state() rounding
down yields sound behaviour.

> +
>  	if ((PWM_REG_PRESCAL(val, pwm->hwpwm) =3D=3D PWM_PRESCAL_MASK) &&
>  	    sun4i_pwm->data->has_prescaler_bypass)
>  		prescaler =3D 1;
> @@ -203,7 +222,8 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, str=
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
> @@ -218,6 +238,16 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, st=
ruct pwm_device *pwm,
>  		}
>  	}
>  =

> +	/*
> +	 * Although it would make much more sense to check for bypass in
> +	 * sun4i_pwm_calculate(), value of bypass bit also depends on "enabled".
> +	 * Period is allowed to be rounded up or down.
> +	 */
> +	clk_rate =3D clk_get_rate(sun4i_pwm->clk);
> +	bypass =3D ((state->period * clk_rate >=3D NSEC_PER_SEC &&
> +		   state->period * clk_rate < NSEC_PER_SEC + clk_rate) &&
> +		  state->enabled);

I guess the compiler is smart enough here, but checking for
state->enabled is cheaper than the other checks, so putting this at the
start of the expression seems sensible.

The comment doesn't match the code. You don't round up state->period.
(This is good, please fix the comment.) I think dropping the check

	state->period * clk_rate < NSEC_PER_SEC + clk_rate

would be fine, too.

I'd like to have a check for

	state->duty_cycle * clk_rate >=3D NSEC_PER_SEC / 2 &&
	state->duty_cycle * clk_rate < NSEC_PER_SEC

here. If this isn't true rather disable the PWM or output a 100% duty
cycle with a larger period.

> +
>  	spin_lock(&sun4i_pwm->ctrl_lock);
>  	ctrl =3D sun4i_pwm_readl(sun4i_pwm, PWM_CTRL_REG);
>  =


Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
