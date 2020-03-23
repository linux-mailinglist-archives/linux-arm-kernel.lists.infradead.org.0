Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5ED918F0D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 09:26:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpIsks6/eb4dH3JUERaSjM/PJHE8mDWaMgpEJKKDTw0=; b=ulrEcVyQOuFp12
	P06eSC67dWFgimqzXLVZ3L5i5PmhaEDy5xEaTd8vmGind2SVTcGX/UHFkyPwDhCOO90ClaxrAVvBK
	/L8U8u6HTCWDf42zwKXGj3t3EDJn0RI5fz7Miop0bgOGwegFKXhh6l7UXCowgR0WIL8Jhx1zxnN4c
	XYfA3whJFu4rsQL911XtNi6tRpPieN9eZ5VGSXeQu8JxR3lJahBQNzczxOSnvToYelpmPwAizRZod
	M1bjxcJd4i2QdKeZ30/on6gO8oyjTdP3DpQXNPmICJJ1fwv6IIVKht2nCk7z2pmLNO/l0qOaraqYK
	H1Jq0aAm515mmhBFpJ1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGIQ8-0005Ep-FK; Mon, 23 Mar 2020 08:26:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGIP4-00056X-3o
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 08:25:47 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jGIOz-0004Ux-QJ; Mon, 23 Mar 2020 09:25:41 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jGIOy-0007Z4-UY; Mon, 23 Mar 2020 09:25:40 +0100
Date: Mon, 23 Mar 2020 09:25:40 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: Re: [PATCH v1 1/2] pwm: bcm-iproc: handle clk_get_rate() return
Message-ID: <20200323082540.2gvbbxtwadvzeeos@pengutronix.de>
References: <20200323065318.16533-1-rayagonda.kokatanur@broadcom.com>
 <20200323065318.16533-2-rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323065318.16533-2-rayagonda.kokatanur@broadcom.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_012546_165369_16ACE9D8 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-pwm@vger.kernel.org, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 12:23:17PM +0530, Rayagonda Kokatanur wrote:
> Handle clk_get_rate() returning <=3D 0 condition to avoid
> possible division by zero.

Was this noticed during a review and is more theoretic. Or does this
(depending on pre-boot state) result in a kernel crash?

> Fixes: daa5abc41c80 ("pwm: Add support for Broadcom iProc PWM controller")
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> ---
>  drivers/pwm/pwm-bcm-iproc.c | 32 +++++++++++++++++++-------------
>  1 file changed, 19 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-bcm-iproc.c b/drivers/pwm/pwm-bcm-iproc.c
> index 1f829edd8ee7..8bbd2a04fead 100644
> --- a/drivers/pwm/pwm-bcm-iproc.c
> +++ b/drivers/pwm/pwm-bcm-iproc.c
> @@ -99,19 +99,25 @@ static void iproc_pwmc_get_state(struct pwm_chip *chi=
p, struct pwm_device *pwm,
>  	else
>  		state->polarity =3D PWM_POLARITY_INVERSED;
>  =

> -	value =3D readl(ip->base + IPROC_PWM_PRESCALE_OFFSET);
> -	prescale =3D value >> IPROC_PWM_PRESCALE_SHIFT(pwm->hwpwm);
> -	prescale &=3D IPROC_PWM_PRESCALE_MAX;
> -
> -	multi =3D NSEC_PER_SEC * (prescale + 1);
> -
> -	value =3D readl(ip->base + IPROC_PWM_PERIOD_OFFSET(pwm->hwpwm));
> -	tmp =3D (value & IPROC_PWM_PERIOD_MAX) * multi;
> -	state->period =3D div64_u64(tmp, rate);
> -
> -	value =3D readl(ip->base + IPROC_PWM_DUTY_CYCLE_OFFSET(pwm->hwpwm));
> -	tmp =3D (value & IPROC_PWM_PERIOD_MAX) * multi;
> -	state->duty_cycle =3D div64_u64(tmp, rate);
> +	if (rate =3D=3D 0) {
> +		state->period =3D 0;
> +		state->duty_cycle =3D 0;
> +	} else {
> +		value =3D readl(ip->base + IPROC_PWM_PRESCALE_OFFSET);
> +		prescale =3D value >> IPROC_PWM_PRESCALE_SHIFT(pwm->hwpwm);
> +		prescale &=3D IPROC_PWM_PRESCALE_MAX;
> +
> +		multi =3D NSEC_PER_SEC * (prescale + 1);
> +
> +		value =3D readl(ip->base + IPROC_PWM_PERIOD_OFFSET(pwm->hwpwm));
> +		tmp =3D (value & IPROC_PWM_PERIOD_MAX) * multi;
> +		state->period =3D div64_u64(tmp, rate);
> +
> +		value =3D readl(ip->base +
> +			      IPROC_PWM_DUTY_CYCLE_OFFSET(pwm->hwpwm));
> +		tmp =3D (value & IPROC_PWM_PERIOD_MAX) * multi;
> +		state->duty_cycle =3D div64_u64(tmp, rate);
> +	}

The change looks fine.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
