Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D88A104CB2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 08:37:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgc1jmnt6koXokwatb50ZYYDbm5HPitKYeVOY/ttpa0=; b=S69+7goIH05JKR
	gFu9HKpp3medG44l4PT1MCgeqKT4LYIHfb2wYVGD6mNEINkaiTitvxwHushGbwpuZDx17I6WOublB
	jU8tbdFgHkuvgSh8cl2smmsASjeIfAHd4oic5DGnQbRrQ4E+ZReITd4BOsZTGMHA6TudGynIVwORe
	jKjlab4OccL32mnQI0cRxNyMl7NvYwruj2EXIZ1zciBAApeibZd07+fqe0LufSOg6+DFmXceZ8DpT
	Gz2sX4fcGNg0k2LiPw/CcPoxuxfMwuq/IlAEK48N7smFDfQ4ysX/LJGH6/mYtK35SbFAgOypQELn7
	h/aUGKVJEX8JcuwRueFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXh1W-0005yp-Op; Thu, 21 Nov 2019 07:37:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXh1L-0005xv-0e
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 07:36:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iXh1E-0000NT-Go; Thu, 21 Nov 2019 08:36:48 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iXh1D-0002Ow-69; Thu, 21 Nov 2019 08:36:47 +0100
Date: Thu, 21 Nov 2019 08:36:47 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v7 5/8] pwm: sun4i: Add support to output source clock
 directly
Message-ID: <20191121073647.phutknyb3tzp44ye@pengutronix.de>
References: <20191119175319.16561-1-peron.clem@gmail.com>
 <20191119175319.16561-6-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119175319.16561-6-peron.clem@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_233655_058352_BD2E092F 
X-CRM114-Status: GOOD (  27.11  )
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 kernel@pengutronix.de, Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Cl=E9ment,

On Tue, Nov 19, 2019 at 06:53:16PM +0100, Cl=E9ment P=E9ron wrote:
> From: Jernej Skrabec <jernej.skrabec@siol.net>
> =

> PWM core has an option to bypass whole logic and output unchanged source
> clock as PWM output. This is achieved by enabling bypass bit.
> =

> Note that when bypass is enabled, no other setting has any meaning, not
> even enable bit.
> =

> This mode of operation is needed to achieve high enough frequency to
> serve as clock source for AC200 chip which is integrated into same
> package as H6 SoC.
> =

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  drivers/pwm/pwm-sun4i.c | 92 ++++++++++++++++++++++++++++-------------
>  1 file changed, 64 insertions(+), 28 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index ce83d479ba0e..a1d8851b18f0 100644
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
> + *   and the currently running period is not guaranteed to be completed
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
> +	    sun4i_pwm->data->has_direct_mod_clk_output) {
> +		state->period =3D DIV_ROUND_UP_ULL(NSEC_PER_SEC, clk_rate);
> +		state->duty_cycle =3D DIV_ROUND_UP_ULL(state->period, 2);
> +		state->polarity =3D PWM_POLARITY_NORMAL;
> +		state->enabled =3D true;
> +		return;
> +	}
> +
>  	if ((PWM_REG_PRESCAL(val, pwm->hwpwm) =3D=3D PWM_PRESCAL_MASK) &&
>  	    sun4i_pwm->data->has_prescaler_bypass)
>  		prescaler =3D 1;
> @@ -149,13 +168,23 @@ static void sun4i_pwm_get_state(struct pwm_chip *ch=
ip,
>  =

>  static int sun4i_pwm_calculate(struct sun4i_pwm_chip *sun4i_pwm,
>  			       const struct pwm_state *state,
> -			       u32 *dty, u32 *prd, unsigned int *prsclr)
> +			       u32 *dty, u32 *prd, unsigned int *prsclr,
> +			       bool *bypass)
>  {
>  	u64 clk_rate, div =3D 0;
>  	unsigned int pval, prescaler =3D 0;
>  =

>  	clk_rate =3D clk_get_rate(sun4i_pwm->clk);
>  =

> +	*bypass =3D state->enabled &&
> +		  (state->period * clk_rate >=3D NSEC_PER_SEC) &&
> +		  (state->period * clk_rate < 2 * NSEC_PER_SEC) &&
> +		  (state->duty_cycle * clk_rate * 2 >=3D NSEC_PER_SEC);
> +
> +	/* Skip calculation of other parameters if we bypass them */
> +	if (*bypass && sun4i_pwm->data->has_direct_mod_clk_output)
> +		return 0;
> +

Hmm, so if my PWM doesn't support the bypass bit *bypass might still be
true on return of sun4i_pwm_calculate. It doesn't hurt because the value
is only used after another check of has_direct_mod_clk_output, but still
this is a bit confusing.

>  	if (sun4i_pwm->data->has_prescaler_bypass) {
>  		/* First, test without any prescaler when available */
>  		prescaler =3D PWM_PRESCAL_MASK;
> @@ -202,10 +231,11 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, s=
truct pwm_device *pwm,
>  {
>  	struct sun4i_pwm_chip *sun4i_pwm =3D to_sun4i_pwm_chip(chip);
>  	struct pwm_state cstate;
> -	u32 ctrl;
> +	u32 ctrl, period, duty, val;
>  	int ret;
> -	unsigned int delay_us;
> +	unsigned int delay_us, prescaler;
>  	unsigned long now;
> +	bool bypass;
>  =

>  	pwm_get_state(pwm, &cstate);
>  =

> @@ -220,43 +250,48 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, s=
truct pwm_device *pwm,
>  	spin_lock(&sun4i_pwm->ctrl_lock);
>  	ctrl =3D sun4i_pwm_readl(sun4i_pwm, PWM_CTRL_REG);
>  =

> -	if ((cstate.period !=3D state->period) ||
> -	    (cstate.duty_cycle !=3D state->duty_cycle)) {
> -		u32 period, duty, val;
> -		unsigned int prescaler;
> +	ret =3D sun4i_pwm_calculate(sun4i_pwm, state, &duty, &period, &prescale=
r,
> +				  &bypass);
> +	if (ret) {
> +		dev_err(chip->dev, "period exceeds the maximum value\n");
> +		spin_unlock(&sun4i_pwm->ctrl_lock);
> +		if (!cstate.enabled)
> +			clk_disable_unprepare(sun4i_pwm->clk);
> +		return ret;
> +	}
>  =

> -		ret =3D sun4i_pwm_calculate(sun4i_pwm, state,
> -					  &duty, &period, &prescaler);
> -		if (ret) {
> -			dev_err(chip->dev, "period exceeds the maximum value\n");
> -			spin_unlock(&sun4i_pwm->ctrl_lock);
> -			if (!cstate.enabled)
> -				clk_disable_unprepare(sun4i_pwm->clk);
> -			return ret;

This would be a bit easier to review if this commit was split into two
patches. One that drops the check for cstate.period !=3D state->period etc
(which otherwise is nearly empty when ignoring whitespace changes), and
a second that then adds bypass support.


> +	if (sun4i_pwm->data->has_direct_mod_clk_output) {
> +		if (bypass) {
> +			ctrl |=3D BIT_CH(PWM_BYPASS, pwm->hwpwm);
> +			/* We can skip apply of other parameters */
> +			goto bypass_mode;

I would prefer to use goto only for error handling. Not sure if there is
a nice way to do that.

> +		} else {
> +			ctrl &=3D ~BIT_CH(PWM_BYPASS, pwm->hwpwm);
>  		}
> +	}

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
