Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E64136803
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 08:13:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwCsj0kbtddx2/rmMcaLfcB2E5vKnImwaatsr8u36h8=; b=bsueH75KEh1f+r
	L9lyCTvYxJ1vM5eMQmpCK1gMd5JQWyTD58jPBfR8pFpn61RWNza58EOMPBev6yXeN643D4Sj86OYI
	ZgZVd1DQalERIzcnwOY9t9aoyaWlP2HyF2Om5sLQLulCLzVrIXkTJO2RwS4urM1RSJbyvzo/odIA4
	ezcbCyrh71BKY8zpQZ8/Llbf/imR54GNv54YRtLIj/fjLI5PIBWb1aQYTGf2kgaVmK44Y3M1IIuNQ
	a1cePxuZB2sFAxROYxrBe/wWr4kEQX2GLa+QHHWXAows844UyrrNvDMqaXYgn/h+B8iFA43fWkpqv
	yCAQt3kDxqgP7wTrbkvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipoTv-0001CJ-9w; Fri, 10 Jan 2020 07:13:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipoTm-0001BN-Ir
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 07:13:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ipoTj-0001U6-9h; Fri, 10 Jan 2020 08:13:07 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ipoTi-00020H-LB; Fri, 10 Jan 2020 08:13:06 +0100
Date: Fri, 10 Jan 2020 08:13:06 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH] [RFC] pwm: sun4i: Move pwm_calculate out of spin_lock
Message-ID: <20200110071306.uyqcyftb4bt7b2gw@pengutronix.de>
References: <20200109233106.17060-1-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109233106.17060-1-peron.clem@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_231310_624588_63C32892 
X-CRM114-Status: GOOD (  19.88  )
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
Cc: linux-pwm@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Alex Mobigo <alex.mobigo@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Cl=E9ment,

On Fri, Jan 10, 2020 at 12:31:06AM +0100, Cl=E9ment P=E9ron wrote:
> pwm_calculate calls clk_get_rate while holding a spin_lock.
> =

> This create an issue as clk_get_rate() may sleep.

Slightly orthogonal to this issue, it might be a good idea to add a
might_sleep() to clk_get_rate(). (Added clk maintainers to Cc: for this
suggestion.)

> Move pwm_calculate out of this spin_lock.
> =

> Fixes: c32c5c50d4fe ("pwm: sun4i: Switch to atomic PWM")
> Reported-by: Alex Mobigo <alex.mobigo@gmail.com>
> Suggested-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
> =

> Hi,
> =

> this issue has been reported on linux-sunxi Google groups.
> =

> I don't have a board with PWM to confirm it.
> =

> Please wait a tested-by.
> =

> Thanks,
> Cl=E9ment
> =

>  drivers/pwm/pwm-sun4i.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index 1afd41ebd3fd..6b230029dc49 100644
> --- a/drivers/pwm/pwm-sun4i.c
> +++ b/drivers/pwm/pwm-sun4i.c
> @@ -248,19 +248,18 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, s=
truct pwm_device *pwm,
>  		}
>  	}
>  =

> -	spin_lock(&sun4i_pwm->ctrl_lock);
> -	ctrl =3D sun4i_pwm_readl(sun4i_pwm, PWM_CTRL_REG);
> -
>  	ret =3D sun4i_pwm_calculate(sun4i_pwm, state, &duty, &period, &prescale=
r,
>  				  &bypass);
>  	if (ret) {
>  		dev_err(chip->dev, "period exceeds the maximum value\n");
> -		spin_unlock(&sun4i_pwm->ctrl_lock);
>  		if (!cstate.enabled)
>  			clk_disable_unprepare(sun4i_pwm->clk);
>  		return ret;
>  	}
>  =

> +	spin_lock(&sun4i_pwm->ctrl_lock);
> +	ctrl =3D sun4i_pwm_readl(sun4i_pwm, PWM_CTRL_REG);
> +
>  	if (sun4i_pwm->data->has_direct_mod_clk_output) {
>  		if (bypass) {
>  			ctrl |=3D BIT_CH(PWM_BYPASS, pwm->hwpwm);

As sun4i_pwm_calculate does nothing that depends on (or modifies)
hardware state (apart from clk_get_rate(sun4i_pwm->clk) which can be
assumed to be constant) the change looks good.

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
