Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9697FBAF53
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 10:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6cC8CCdbsoVpTSoinrJ/h49qxLMA500n+4uNMUx/Rts=; b=g2W1pJE9roeXCp
	8s8aTqcNEIhV88F41FcWWLmekqxnMR1+4x8maxWK+iFvrR3MLHtOzSqe9IVX1/A5ZWLYkudIvHorK
	MoHR5jhPtcr6aJeNv9Sie1OrSPqOYMweZkdSqPBvrY/BqibWH/K8L4Ms26yD0oTT2xqKaehfPERsi
	pmG9so0eml5f0syuWrS4MZ47PbwwGWQQSb8FW25GeaGqFEWZH8AnXpZld8QWbDk/sQnnn+4/iKI2u
	j4VzLpzOX0NbWEnvTEusi+4tfJrlt/XQYqIeseLB2SW61ZC9gbjSaTZ5O4BeS72ph4VcxyM3WG+oG
	/spJzU1wbdrRPD6j323Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJet-0003qj-5W; Mon, 23 Sep 2019 08:25:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJef-0003XA-SH
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 08:25:11 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iCJeW-000794-FX; Mon, 23 Sep 2019 10:25:00 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iCJeV-0008W6-GZ; Mon, 23 Sep 2019 10:24:59 +0200
Date: Mon, 23 Sep 2019 10:24:59 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH 1/4] pwm: mxs: implement ->apply
Message-ID: <20190923082459.huqpbz5eseonkscv@pengutronix.de>
References: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
 <20190923081348.6843-2-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923081348.6843-2-linux@rasmusvillemoes.dk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_012509_915373_0F942A6E 
X-CRM114-Status: GOOD (  23.18  )
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
Cc: devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Rasmus,

On Mon, Sep 23, 2019 at 10:13:45AM +0200, Rasmus Villemoes wrote:
> In preparation for supporting setting the polarity, switch the driver
> to support the ->apply method.
> =

> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> ---
>  drivers/pwm/pwm-mxs.c | 62 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
> =

> diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
> index 04c0f6b95c1a..c70c26a9ff68 100644
> --- a/drivers/pwm/pwm-mxs.c
> +++ b/drivers/pwm/pwm-mxs.c
> @@ -26,6 +26,7 @@
>  #define  PERIOD_PERIOD_MAX	0x10000
>  #define  PERIOD_ACTIVE_HIGH	(3 << 16)
>  #define  PERIOD_INACTIVE_LOW	(2 << 18)
> +#define  PERIOD_POLARITY_NORMAL	(PERIOD_ACTIVE_HIGH | PERIOD_INACTIVE_LO=
W)
>  #define  PERIOD_CDIV(div)	(((div) & 0x7) << 20)
>  #define  PERIOD_CDIV_MAX	8
>  =

> @@ -41,6 +42,66 @@ struct mxs_pwm_chip {
>  =

>  #define to_mxs_pwm_chip(_chip) container_of(_chip, struct mxs_pwm_chip, =
chip)
>  =

> +static int mxs_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
> +			 struct pwm_state *state)
> +{
> +	struct mxs_pwm_chip *mxs =3D to_mxs_pwm_chip(chip);
> +	int ret, div =3D 0;
> +	unsigned int period_cycles, duty_cycles;
> +	unsigned long rate;
> +	unsigned long long c;
> +
> +	if (state->polarity !=3D PWM_POLARITY_NORMAL)
> +		return -ENOTSUPP;
> +
> +	rate =3D clk_get_rate(mxs->clk);
> +	while (1) {
> +		c =3D rate / cdiv[div];
> +		c =3D c * state->period;
> +		do_div(c, 1000000000);
> +		if (c < PERIOD_PERIOD_MAX)
> +			break;
> +		div++;
> +		if (div >=3D PERIOD_CDIV_MAX)
> +			return -EINVAL;
> +	}
> +
> +	period_cycles =3D c;
> +	c *=3D state->duty_cycle;
> +	do_div(c, state->period);
> +	duty_cycles =3D c;
> +
> +	/*
> +	 * If the PWM channel is disabled, make sure to turn on the clock
> +	 * before writing the register. Otherwise, keep it enabled.
> +	 */
> +	if (!pwm_is_enabled(pwm)) {
> +		ret =3D clk_prepare_enable(mxs->clk);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	writel(duty_cycles << 16,
> +	       mxs->base + PWM_ACTIVE0 + pwm->hwpwm * 0x20);
> +	writel(PERIOD_PERIOD(period_cycles) | PERIOD_POLARITY_NORMAL | PERIOD_C=
DIV(div),
> +	       mxs->base + PWM_PERIOD0 + pwm->hwpwm * 0x20);
> +
> +	if (state->enabled) {
> +		if (!pwm_is_enabled(pwm)) {
> +			/*
> +			 * The clock was enabled above. Just enable
> +			 * the channel in the control register.
> +			 */
> +			writel(1 << pwm->hwpwm, mxs->base + PWM_CTRL + SET);
> +		}
> +	} else {
> +		if (pwm_is_enabled(pwm))
> +			writel(1 << pwm->hwpwm, mxs->base + PWM_CTRL + CLR);
> +		clk_disable_unprepare(mxs->clk);
> +	}
> +	return 0;
> +}

Maybe it would be easier to review when converting from .config +
.enable + .disable to .apply in a single step. (Note this "maybe" is
honest, I'm not entirely sure.)

There is a bug: If the PWM is running at (say) period=3D100ms, duty=3D0ms
and we call
pwm_apply_state(pwm, { .enabled =3D false, duty=3D100000, period=3D1000000 =
});
the output might get high which it should not.

Also there is a bug already in .config: You are not supposed to call
clk_get_rate if the clk might be off.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
