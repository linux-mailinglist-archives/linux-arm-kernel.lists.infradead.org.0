Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1092ABF5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 21:41:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONpVJf22atEnu9x0+Tq5STN/1kqgDGaXVvcC7/OEHn8=; b=jg814jFssjEUiQ
	G358Klj6QlNol/iIqtBPAIrncI8PmhjDoUKrbElSPD1AW+7z39qXSPFOJxBb6lT6NRfu1Cb72P5XI
	scARs5e0xxw2Uy0oe3h4OroBYN/Rocqc7xmKDEJsS0dGTm8M8w12OoyhcVwII07n+erJDp/61vxeT
	VKcKW03h7gDd8uQS7p8TlMO3k25F/rhvY2fjCLWYn0cTaZrvUOrlGCp85z706mJICxe0KUiK3ximk
	95DwqwOtwfL8mFeMOHkhTFmEia+6dLca7WxJ736D/FSgPR76wCw3OOJIzIIJbv+rzhVRnZVwc8EHZ
	lpfEYMFXlhmXeMlHReKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUz1X-0002If-5Y; Sun, 26 May 2019 19:41:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUz1N-0002HC-AD
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 19:41:31 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hUz1F-0004BC-5J; Sun, 26 May 2019 21:41:21 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hUz1E-00018L-9V; Sun, 26 May 2019 21:41:20 +0200
Date: Sun, 26 May 2019 21:41:20 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 10/14] pwm: meson: simplify the calculation of the
 pre-divider and count
Message-ID: <20190526194120.uzuq6ncz5l2z4hfm@pengutronix.de>
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
 <20190525181133.4875-11-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190525181133.4875-11-martin.blumenstingl@googlemail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_124129_506408_D32D16BB 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kernel@pengutronix.de, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pwm@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 25, 2019 at 08:11:29PM +0200, Martin Blumenstingl wrote:
> Replace the loop to calculate the pre-divider and count with two
> separate div64_u64() calculations. This makes the code easier to read
> and improves the precision.
> =

> Two example cases:
> 1) 32.768kHz LPO clock for the SDIO wifi chip on Khadas VIM
>    clock input: 500MHz (FCLK_DIV4)
>    period: 30518ns
>    duty cycle: 15259ns
> old algorithm: pre_div=3D0, cnt=3D15259
> new algorithm: pre_div=3D0, cnt=3D15259
> (no difference in calculated values)
> =

> 2) PWM LED on Khadas VIM
>    clock input: 24MHz (XTAL)
>    period: 7812500ns
>    duty cycle: 7812500ns
> old algorithm: pre_div=3D2, cnt=3D62004
> new algorithm: pre_div=3D2, cnt=3D62500
> Using a scope (24MHz sampling rate) shows the actual difference:
> - old: 7753000ns, off by -59500ns (0.7616%)
> - new: 7815000ns, off by +2500ns (0.032%)
> =

> Suggested-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/pwm/pwm-meson.c | 25 ++++++++++---------------
>  1 file changed, 10 insertions(+), 15 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
> index 27915d6475e3..9afa1e5aaebf 100644
> --- a/drivers/pwm/pwm-meson.c
> +++ b/drivers/pwm/pwm-meson.c
> @@ -12,6 +12,7 @@
>  #include <linux/err.h>
>  #include <linux/io.h>
>  #include <linux/kernel.h>
> +#include <linux/math64.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> @@ -145,7 +146,6 @@ static int meson_pwm_calc(struct meson_pwm *meson, st=
ruct pwm_device *pwm,
>  	struct meson_pwm_channel *channel =3D pwm_get_chip_data(pwm);
>  	unsigned int duty, period, pre_div, cnt, duty_cnt;
>  	unsigned long fin_freq =3D -1;
> -	u64 fin_ps;
>  =

>  	duty =3D state->duty_cycle;
>  	period =3D state->period;
> @@ -164,24 +164,19 @@ static int meson_pwm_calc(struct meson_pwm *meson, =
struct pwm_device *pwm,
>  	}
>  =

>  	dev_dbg(meson->chip.dev, "fin_freq: %lu Hz\n", fin_freq);
> -	fin_ps =3D (u64)NSEC_PER_SEC * 1000;
> -	do_div(fin_ps, fin_freq);
> -
> -	/* Calc pre_div with the period */
> -	for (pre_div =3D 0; pre_div <=3D MISC_CLK_DIV_MASK; pre_div++) {
> -		cnt =3D DIV_ROUND_CLOSEST_ULL((u64)period * 1000,
> -					    fin_ps * (pre_div + 1));
> -		dev_dbg(meson->chip.dev, "fin_ps=3D%llu pre_div=3D%u cnt=3D%u\n",
> -			fin_ps, pre_div, cnt);
> -		if (cnt <=3D 0xffff)
> -			break;
> -	}
>  =

> +	pre_div =3D div64_u64(fin_freq * (u64)period, NSEC_PER_SEC * 0xffffLL);
>  	if (pre_div > MISC_CLK_DIV_MASK) {
>  		dev_err(meson->chip.dev, "unable to get period pre_div\n");
>  		return -EINVAL;
>  	}
>  =

> +	cnt =3D div64_u64(fin_freq * (u64)period, NSEC_PER_SEC * (pre_div + 1));
> +	if (cnt > 0xffff) {
> +		dev_err(meson->chip.dev, "unable to get period cnt\n");
> +		return -EINVAL;
> +	}
> +

There is a slight modification in the calculation of pre_div that isn't
catched by the examples above.

Before this patch we had:

	pick smallest pre_div such that
		round_closest(period * 1000 / (round_down(1e12 / fin_freq) * (pre_div + 1=
)) <=3D 0xffff

New approach is:

	pre_div =3D round_down(fin_freq * period / (1e9 * 0xffff))

An advantage of the new approach is better as it rounds only once and is
easier.

Consider fin_freq =3D 99990001 and period =3D 655355, then the old algorithm
picks pre_div =3D 1 while the new picks pre_div =3D 0.

I didn't continue here to check which are the resulting waveforms, I
assume they are different though.

As there is currently no definition what is a "better" approximation for
a given requested pair (duty_cycle, period) I cannot say if these
changes are good or not.

And that's a pity, so I still think there should be a documented
definition that lays down how a lowlevel driver should round. Without
that a consumer that cares about fine differences can not rely an the
abstraction provided by the PWM framework because each low-level driver
might behave differently.

@Thierry: So can you please continue the discussion about this topic.
The longer this is delayed the more patches are created and submitted
that eventually might be wrong which is a waste of developer and
reviewer time.

Assuming the people who care about meson don't object after reading this
I wouldn't want to stop this patch going in though. So:

	Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
