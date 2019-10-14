Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D33A0D6738
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 18:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMUF/78/mxBIVQoKO0RYb3dZNE5mRQ2IaJduOSuPEoc=; b=QF6EEQytSNlBIR
	NbxcVKbgVvDW6lJtpOOz1RUOmO7TD9eTiWwQ8AUzj/QGZ/IhEwsk53p8nNDqa62HB2nIwplLngjrD
	vHeULfqGbwYmco+46HAVn1FLSzUT0LQR9Cpot+hY344ci/qlMHlLZHctsL0NxZyi6gcNyi3vfCNu1
	mdr4jWbZDAdhieMur+pNiD1bbznG06cKcB+ZWptkYmoivZZiaFG6xyWd3JCl8F759tFDUxM4xVPKv
	XNKKl7I4QPVd6MGgyoiozzm01vd3OpQf6LHy5TTkZ1oOxrsmS2JeOWKOV3DeP2p4GM5/YloOJWRgU
	/EJn8aFsk0Fa8w6wm8pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK38d-0005aj-0q; Mon, 14 Oct 2019 16:24:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK38K-0005Na-Cp
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 16:23:46 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iK38D-0000Uw-2f; Mon, 14 Oct 2019 18:23:37 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iK38B-0005mj-6S; Mon, 14 Oct 2019 18:23:35 +0200
Date: Mon, 14 Oct 2019 18:23:35 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: megous@megous.com
Subject: Re: [PATCH] pwm: sun4i: Fix incorrect calculation of duty_cycle/period
Message-ID: <20191014162335.xgjy6kij2ippjc7h@pengutronix.de>
References: <20191014135303.2944058-1-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014135303.2944058-1-megous@megous.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_092344_479452_B67033B5 
X-CRM114-Status: GOOD (  19.50  )
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
Cc: "open list:PWM SUBSYSTEM" <linux-pwm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 kernel@pengutronix.de, "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 03:53:03PM +0200, megous@megous.com wrote:
> From: Ondrej Jirman <megous@megous.com>
> =

> Since 5.4-rc1, pwm_apply_state calls ->get_state after ->apply
> if available, and this revealed an issue with integer precision
> when calculating duty_cycle and period for the currently set
> state in ->get_state callback.
> =

> This issue manifested in broken backlight on several Allwinner
> based devices.
> =

> Previously this worked, because ->apply updated the passed state
> directly.
> =

> Fixes: deb9c462f4e53 ("pwm: sun4i: Don't update the state for the caller =
of pwm_apply_state")
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  drivers/pwm/pwm-sun4i.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index 6f5840a1a82d..05273725a9ff 100644
> --- a/drivers/pwm/pwm-sun4i.c
> +++ b/drivers/pwm/pwm-sun4i.c
> @@ -137,10 +137,10 @@ static void sun4i_pwm_get_state(struct pwm_chip *ch=
ip,
>  =

>  	val =3D sun4i_pwm_readl(sun4i_pwm, PWM_CH_PRD(pwm->hwpwm));
>  =

> -	tmp =3D prescaler * NSEC_PER_SEC * PWM_REG_DTY(val);
> +	tmp =3D (u64)prescaler * NSEC_PER_SEC * PWM_REG_DTY(val);
>  	state->duty_cycle =3D DIV_ROUND_CLOSEST_ULL(tmp, clk_rate);
>  =

> -	tmp =3D prescaler * NSEC_PER_SEC * PWM_REG_PRD(val);
> +	tmp =3D (u64)prescaler * NSEC_PER_SEC * PWM_REG_PRD(val);
>  	state->period =3D DIV_ROUND_CLOSEST_ULL(tmp, clk_rate);

The issue is real and the fix looks right. So take my

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

There are a few more issues though:

- The dty value is calculated as (simplified):

    dty =3D prd * state->duty_cycle / state->period

  which gives suboptimal values in some cases.

- The algorithm does 2 divisions (and one too early) instead of a single
  one at the end, which is both ineffective and gives away precision.

- the test in sun4i_pwm_apply about cstate.period !=3D state->period and
  the same for duty is probably less useful now because it compares
  requested values with actually implemented ones.

- it's unclear what the "surprising values" are that sun4i_pwm_calculate
  talks about in a comment. (And IMHO you should always round down.)

- Having a comment describing the implemented duty_cycle and period
  depending on how the registers are set would be helpful to understand
  the implemented algorithm.

- If there is a publically available datasheet adding a link to it in
  the header of the driver would be great.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
