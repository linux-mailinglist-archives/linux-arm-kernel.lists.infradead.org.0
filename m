Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB6FCBCE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WzaSqsXUqw/GDeW0AzsuJkn5BmDV1NQY631eyk+jMGY=; b=V1qYaXs3aqt/xI
	LCnCX+qBCX8j6F/G2wbqs99zID6blQDCoA3DpYshpCzqtYvpRygEQgr1ol0xDPhRZYJvX5iaaqVwN
	zwhF9D2YEnoRxxjAbbRRzfuTtOA+t01InC2iGggK8YEabZsVEoHKi5dkfZVN4TLDapNF4ksaTmB9X
	JJ7l6+oeK+ZIegwTeYK3i/tV9jyz3/b36aoLQ1w+LtbCxFdkoKxyFT0Ls/3G+YPZxe+M/VWu/yhC5
	t7iccBcSb2Th4BipMZXiAzSzjiPHSFrbogX9EtV9ilBqzxg4ewd7OFOONYAH2TkP6OxBCx+AG9pfb
	s43zl0Vi1dVyz3RkP23w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOPv-0000Ob-C7; Fri, 04 Oct 2019 14:18:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOPo-0000NW-3c
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:18:41 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iGOPj-000863-Ht; Fri, 04 Oct 2019 16:18:35 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iGOPi-0004fb-Cb; Fri, 04 Oct 2019 16:18:34 +0200
Date: Fri, 4 Oct 2019 16:18:34 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH v2 1/6] pwm: mxs: implement ->apply
Message-ID: <20191004141834.4blhpjzvkh3hvlqf@pengutronix.de>
References: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
 <20191004133207.6663-2-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004133207.6663-2-linux@rasmusvillemoes.dk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_071840_149311_0E9F2FD2 
X-CRM114-Status: GOOD (  19.57  )
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

Hello,

On Fri, Oct 04, 2019 at 03:32:02PM +0200, Rasmus Villemoes wrote:
> In preparation for supporting setting the polarity, switch the driver
> to support the ->apply method.
> =

> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> ---
>  drivers/pwm/pwm-mxs.c | 70 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 70 insertions(+)
> =

> diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
> index b14376b47ac8..10efd3de0bb3 100644
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

> @@ -41,6 +42,74 @@ struct mxs_pwm_chip {
>  =

>  #define to_mxs_pwm_chip(_chip) container_of(_chip, struct mxs_pwm_chip, =
chip)
>  =

> +static int mxs_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
> +			 const struct pwm_state *state)
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
> +	/*
> +	 * If the PWM channel is disabled, make sure to turn on the
> +	 * clock before calling clk_get_rate() and writing to the
> +	 * registers. Otherwise, just keep it enabled.
> +	 */
> +	if (!pwm_is_enabled(pwm)) {
> +		ret =3D clk_prepare_enable(mxs->clk);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	if (!state->enabled && pwm_is_enabled(pwm))
> +		writel(1 << pwm->hwpwm, mxs->base + PWM_CTRL + CLR);

@Thierry: I wonder if it would be beneficial to stop the calculation of
register contents if !state->enabled here. The only drawback (I'm aware)
is that pwm_get_state won't return the previously set .period and
.duty_cycle. (I also wonder if we should return (e.g.) .duty =3D 0,
.period =3D 1 in pwm_get_state() if the PWM is off.)

For the patch (which is orthogonal regarding the above question):

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
