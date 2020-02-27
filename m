Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE871711EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 09:05:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FUhu+4Ii4MlMGtUiH3/K+rB+hmLcPKrfSDqXgoD2RE=; b=Fib1OeAGIXVaPL
	iZXMD4Zv+vq2yMZH9pKXt6oxU1orz2WM8HCfDzNpp1ZsToQOwuz84ZZ+mGwsNPdHlSj/GNI+P1hqr
	CIbx1jjhygedwES7AzSEtrWps7brxL1QtmrtkyjnhyPWK4DAChrAFyS8RQx6rVxB27Wz8tL+oyFnj
	GOGBB/DV2JEm8Z4PQnBiDU+s0acSADrX7qsF768CtT07+giTHcg9C5uvC5OZK6bRAcFKcL5hW5kGR
	z1jzJhmraooWZnqXVCBMCO26estb1j8/ZA1b6avKE40SyQuMbeQ7i9tD2TNfiUxNjBoNPc3mA2IZu
	rSNSTJ2J9lKke8poOHdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7EAU-0005Yw-QY; Thu, 27 Feb 2020 08:05:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7EAF-0005XW-9R
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 08:05:00 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j7EA7-0003ca-9X; Thu, 27 Feb 2020 09:04:51 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j7EA6-0004yp-Ki; Thu, 27 Feb 2020 09:04:50 +0100
Date: Thu, 27 Feb 2020 09:04:50 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH 1/1] pwm: mediatek: add longer period support
Message-ID: <20200227080450.rkvwfjx6vikn5ls3@pengutronix.de>
References: <1582789610-23133-1-git-send-email-sam.shih@mediatek.com>
 <1582789610-23133-2-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582789610-23133-2-git-send-email-sam.shih@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_000459_328511_8F9A0039 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 03:46:50PM +0800, Sam Shih wrote:
> The pwm clock source could be divided by 1625 with PWM_CON
> BIT(3) setting in mediatek hardware.
> =

> This patch add support for longer pwm period configuration,
> which allowing blinking LEDs via pwm interface.
> =

> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> ---
>  drivers/pwm/pwm-mediatek.c | 21 +++++++++++++++++----
>  1 file changed, 17 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
> index b94e0d09c300..9af309bea01a 100644
> --- a/drivers/pwm/pwm-mediatek.c
> +++ b/drivers/pwm/pwm-mediatek.c
> @@ -121,8 +121,8 @@ static int pwm_mediatek_config(struct pwm_chip *chip,=
 struct pwm_device *pwm,
>  			       int duty_ns, int period_ns)
>  {
>  	struct pwm_mediatek_chip *pc =3D to_pwm_mediatek_chip(chip);
> -	u32 clkdiv =3D 0, cnt_period, cnt_duty, reg_width =3D PWMDWIDTH,
> -	    reg_thres =3D PWMTHRES;
> +	u32 clkdiv =3D 0, clksel =3D 0, cnt_period, cnt_duty,
> +	    reg_width =3D PWMDWIDTH, reg_thres =3D PWMTHRES;
>  	u64 resolution;
>  	int ret;
>  =

Adding some more context:

> @@ -139,11 +139,20 @@ static int pwm_mediatek_config(struct pwm_chip *chi=
p, struct pwm_device *pwm,
> 	while (cnt_period > 8191) {
>  		resolution *=3D 2;
>  		clkdiv++;
>  		cnt_period =3D DIV_ROUND_CLOSEST_ULL((u64)period_ns * 1000,
>  						   resolution);
> +		if (clkdiv > PWM_CLK_DIV_MAX && !clksel) {
> +			clksel =3D 1;
> +			clkdiv =3D 0;
> +			resolution =3D (u64)NSEC_PER_SEC * 1000 * 1625;
> +			do_div(resolution,
> +				clk_get_rate(pc->clk_pwms[pwm->hwpwm]));
> +			cnt_period =3D DIV_ROUND_CLOSEST_ULL(
> +					(u64)period_ns * 1000, resolution);

The assignment is a repetition from just above the if. Maybe just put it
once after this if block?

> +		}
>  	}
>  =

> -	if (clkdiv > PWM_CLK_DIV_MAX) {
> +	if (clkdiv > PWM_CLK_DIV_MAX && clksel) {

Is this change actually relevant? If the while loop that starts at line
139 is never run (because cnt_period is <=3D 8191) clkdiv is zero and so
the condition is false with and without "&& clksel". If however the
while loop is entered and clkdiv becomes bigger than PWM_CLK_DIV_MAX
clksel is 1 and the "&& clksel" doesn't make a difference, too.

The code is hard to follow, I wonder if this could be cleaned up with
some comments added that explain the hardware details enough to be able
to actually understand the code without having the hardware reference
manual handy.

>  		pwm_mediatek_clk_disable(chip, pwm);
>  		dev_err(chip->dev, "period %d not supported\n", period_ns);
>  		return -EINVAL;
> @@ -159,7 +168,11 @@ static int pwm_mediatek_config(struct pwm_chip *chip=
, struct pwm_device *pwm,
>  	}
>  =

>  	cnt_duty =3D DIV_ROUND_CLOSEST_ULL((u64)duty_ns * 1000, resolution);
> -	pwm_mediatek_writel(pc, pwm->hwpwm, PWMCON, BIT(15) | clkdiv);
> +	if (clksel)
> +		pwm_mediatek_writel(pc, pwm->hwpwm, PWMCON, BIT(15) | BIT(3) |
> +				    clkdiv);
> +	else
> +		pwm_mediatek_writel(pc, pwm->hwpwm, PWMCON, BIT(15) | clkdiv);
>  	pwm_mediatek_writel(pc, pwm->hwpwm, reg_width, cnt_period);
>  	pwm_mediatek_writel(pc, pwm->hwpwm, reg_thres, cnt_duty);
>  =

> -- =

> 2.17.1

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
