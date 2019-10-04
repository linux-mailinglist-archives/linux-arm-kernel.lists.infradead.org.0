Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9247ACBCFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFyEB7p2n4tvNsNZSjMgtiN7GJTM7m5dfcqKd9Nm2TM=; b=brUTNGCylk3Oi7
	xwa7ymn0eZhOT8NvijS+2FhfpkpQ7WNihGrusBpv4K4yywhe0LCPLnGaljrFBYT3Uo1A9NKm8xOQj
	+oRau6P9RseWAgsXIH2qGI4mLn/pvVIZsMXnew7PXSn/MyFp1dQs7QIpJz9zw7eBLTeK1reHCQN4Q
	kkysk6ethGcdNrrdZ+0zyyW/jIugMyh1HBsiZiA8tTIAIHElikmA41Lu3iiHh5TJjRECs4zbrJCZu
	YwAqcucOzUSVVhH5ra0CHRNY7NG3DwFTfWAMFwA7sa87h++4ekPAXC11H5z/qOjhBRe1UAG40Ketq
	v+SJ1OKowDa9n4aeD+bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOS8-0002iV-97; Fri, 04 Oct 2019 14:21:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGORl-0002XS-Cl
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:20:43 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iGORh-0008UR-Aw; Fri, 04 Oct 2019 16:20:37 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iGORg-0004n2-VN; Fri, 04 Oct 2019 16:20:36 +0200
Date: Fri, 4 Oct 2019 16:20:36 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH v2 3/6] pwm: mxs: add support for inverse polarity
Message-ID: <20191004142036.apzjf54dlzfah5xl@pengutronix.de>
References: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
 <20191004133207.6663-4-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004133207.6663-4-linux@rasmusvillemoes.dk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072041_464345_18138667 
X-CRM114-Status: GOOD (  18.23  )
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

On Fri, Oct 04, 2019 at 03:32:04PM +0200, Rasmus Villemoes wrote:
> If I'm reading of_pwm_xlate_with_flags() right, existing device trees
> that set #pwm-cells =3D 2 will continue to work.

Yes, that's what I expect, too.

> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> ---
>  drivers/pwm/pwm-mxs.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
> index 5a6835e18fc6..57562221c439 100644
> --- a/drivers/pwm/pwm-mxs.c
> +++ b/drivers/pwm/pwm-mxs.c
> @@ -25,8 +25,11 @@
>  #define  PERIOD_PERIOD(p)	((p) & 0xffff)
>  #define  PERIOD_PERIOD_MAX	0x10000
>  #define  PERIOD_ACTIVE_HIGH	(3 << 16)
> +#define  PERIOD_ACTIVE_LOW	(2 << 16)
> +#define  PERIOD_INACTIVE_HIGH	(3 << 18)
>  #define  PERIOD_INACTIVE_LOW	(2 << 18)
>  #define  PERIOD_POLARITY_NORMAL	(PERIOD_ACTIVE_HIGH | PERIOD_INACTIVE_LO=
W)
> +#define  PERIOD_POLARITY_INVERSE	(PERIOD_ACTIVE_LOW | PERIOD_INACTIVE_HI=
GH)
>  #define  PERIOD_CDIV(div)	(((div) & 0x7) << 20)
>  #define  PERIOD_CDIV_MAX	8
>  =

> @@ -50,9 +53,7 @@ static int mxs_pwm_apply(struct pwm_chip *chip, struct =
pwm_device *pwm,
>  	unsigned int period_cycles, duty_cycles;
>  	unsigned long rate;
>  	unsigned long long c;
> -
> -	if (state->polarity !=3D PWM_POLARITY_NORMAL)
> -		return -ENOTSUPP;
> +	unsigned int pol_bits;
>  =

>  	/*
>  	 * If the PWM channel is disabled, make sure to turn on the
> @@ -91,9 +92,12 @@ static int mxs_pwm_apply(struct pwm_chip *chip, struct=
 pwm_device *pwm,
>  	 * only take effect at the beginning of a new period, avoiding
>  	 * glitches.
>  	 */
> +
> +	pol_bits =3D state->polarity =3D=3D PWM_POLARITY_NORMAL ?
> +		PERIOD_POLARITY_NORMAL : PERIOD_POLARITY_INVERSE;
>  	writel(duty_cycles << 16,
>  	       mxs->base + PWM_ACTIVE0 + pwm->hwpwm * 0x20);
> -	writel(PERIOD_PERIOD(period_cycles) | PERIOD_POLARITY_NORMAL | PERIOD_C=
DIV(div),
> +	writel(PERIOD_PERIOD(period_cycles) | pol_bits | PERIOD_CDIV(div),
>  	       mxs->base + PWM_PERIOD0 + pwm->hwpwm * 0x20);

Is the avoidance of glitches still true when period changes? I assume
that yes, but I wonder if you tested that.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
