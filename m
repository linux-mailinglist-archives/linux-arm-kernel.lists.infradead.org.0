Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE835FAC72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 09:59:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+eDvKyrR6axuBKzGgt7dgd142TwMuEMPLe3F8twQBE=; b=VnslkWiWra6R/U
	LKtRIRY5kleIDdpyd5Q+8JguhYy2UKv1o8jL/UkBJxwxnskFu8FZFfAR1wMOnyiH5zSJ/aPDilTwJ
	m2Okk+YLsGfumBGxpNI8aBsf1wQ2Z01mcufa7AxE7EIs2UnhW3t7lvM1WqCNORZrBR3uH1gl4W78d
	z1nnJl/W36EHEtvr2ar2l5j31c5dwO9W8TGxKoeIHsbNEnW0wS2Wh3KBmQGY+aHJztMeQR+B+iUyW
	X/C5WqmkWrD0V17UDLnjV3qKl03uUO56tMtpY2jkS7/GIsBo7qCkyCet2QP8QbOg2OKuMAGHFH4QX
	+LNqsdKjFMjQNHrDPipQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUoUd-0004jG-Dk; Wed, 13 Nov 2019 08:59:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUoUT-0004iV-36
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 08:59:06 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iUoUN-0007cV-DA; Wed, 13 Nov 2019 09:58:59 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iUoUM-00024y-9q; Wed, 13 Nov 2019 09:58:58 +0100
Date: Wed, 13 Nov 2019 09:58:58 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v4 4/7] pwm: sun4i: Add support to output source clock
 directly
Message-ID: <20191113085858.76rad3vpszknu4cp@pengutronix.de>
References: <20191108084517.21617-1-peron.clem@gmail.com>
 <20191108084517.21617-5-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108084517.21617-5-peron.clem@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_005905_137313_0876C89F 
X-CRM114-Status: GOOD (  22.31  )
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
 Philipp Zabel <pza@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 09:45:14AM +0100, Cl=E9ment P=E9ron wrote:
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
>  drivers/pwm/pwm-sun4i.c | 44 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
> =

> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index a10022d6c0fd..9cc928ab47bc 100644
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

I first thought you're losing precision here by reusing state->period
here, but with a divisor of 2 everything is fine.

> +		state->polarity =3D PWM_POLARITY_NORMAL;
> +		state->enabled =3D true;
> +		return;
> +	}
> +
>  	if ((PWM_REG_PRESCAL(val, pwm->hwpwm) =3D=3D PWM_PRESCAL_MASK) &&
>  	    sun4i_pwm->data->has_prescaler_bypass)
>  		prescaler =3D 1;
> @@ -204,6 +223,7 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, str=
uct pwm_device *pwm,
>  	struct sun4i_pwm_chip *sun4i_pwm =3D to_sun4i_pwm_chip(chip);
>  	struct pwm_state cstate;
>  	u32 ctrl;
> +	bool bypass =3D false;
>  	int ret;
>  	unsigned int delay_us;
>  	unsigned long now;
> @@ -218,9 +238,24 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, st=
ruct pwm_device *pwm,
>  		}
>  	}
>  =

> +	/*
> +	 * Although it would make much more sense to check for bypass in
> +	 * sun4i_pwm_calculate(), value of bypass bit also depends on "enabled".

I don't understand this reasoning. sun4i_pwm_calculate knows about
.enabled and also sun4i_pwm->data->has_direct_mod_clk_output. Maybe just
add a bool *bypass as parameter and move the logic there?

> +	 */
> +	if (state->enabled) {
> +		u32 clk_rate =3D clk_get_rate(sun4i_pwm->clk);
> +		bypass =3D (state->period * clk_rate >=3D NSEC_PER_SEC) &&
> +			 (state->period * clk_rate < 2 * NSEC_PER_SEC) &&
> +			 (state->duty_cycle * clk_rate * 2 >=3D NSEC_PER_SEC);
> +	}
> +

This looks right now.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
