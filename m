Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DA518F0DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 09:28:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+j6KsdQB/ZepFOJ7FJTUjyhULkyOG83db0s14ookPNg=; b=Ibsm/M6wLbV5cl
	KtpoXNA/lTJuEXquwE2VKKMXQRSEIOKOcFc+jtp1nddlUqBNatMM2Ieh4BvJYpBFapyaZrk8igLa8
	yAZtTmfY1gUMufmDiG0S2wLc/aFeFFQsTitqbWJwNNEnH08yznJVfexIq+qhAHjdWpS76/WOv2HbD
	dGWZUcbW0Z217pcrVDnT2+X4goya1/osNbUyxMDfDbLDPSkuCRKjIXwCIh2R+eq7wt6NfZKtGJMKG
	wIdnlwCqnbYu9EPQ0CPc4WNxBUM85dkcFcenADuT279Fvy+PLky28i3M6nTPX+91cZFx9mjP0M7hN
	7ImzTBb1eqswktTWR+Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGIRq-0005iP-P1; Mon, 23 Mar 2020 08:28:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGIRe-0005h2-LE
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 08:28:28 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jGIRc-0004iF-7Y; Mon, 23 Mar 2020 09:28:24 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jGIRb-0007aD-TB; Mon, 23 Mar 2020 09:28:23 +0100
Date: Mon, 23 Mar 2020 09:28:23 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: Re: [PATCH v1 2/2] pwm: bcm-iproc: remove unnecessary check of 'duty'
Message-ID: <20200323082823.twvpagq7tvrt76ws@pengutronix.de>
References: <20200323065318.16533-1-rayagonda.kokatanur@broadcom.com>
 <20200323065318.16533-3-rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323065318.16533-3-rayagonda.kokatanur@broadcom.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_012826_698594_3CDE7EB0 
X-CRM114-Status: GOOD (  16.04  )
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

On Mon, Mar 23, 2020 at 12:23:18PM +0530, Rayagonda Kokatanur wrote:
> Variable 'duty' is u32. Hence the less-than zero
> comparison is never true, remove the check.

How did you find that one? I assume it was a compiler warning you fixed
here? In this case quoting the warning improves the commit log.

Also the commit log suggests that IPROC_PWM_DUTY_CYCLE_MIN is zero.
Maybe mentioning that explicitly is a nice addition, too.

> Fixes: daa5abc41c80 ("pwm: Add support for Broadcom iProc PWM controller")
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> ---
>  drivers/pwm/pwm-bcm-iproc.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-bcm-iproc.c b/drivers/pwm/pwm-bcm-iproc.c
> index 8bbd2a04fead..1bb66721f985 100644
> --- a/drivers/pwm/pwm-bcm-iproc.c
> +++ b/drivers/pwm/pwm-bcm-iproc.c
> @@ -149,8 +149,7 @@ static int iproc_pwmc_apply(struct pwm_chip *chip, st=
ruct pwm_device *pwm,
>  		value =3D rate * state->duty_cycle;
>  		duty =3D div64_u64(value, div);
>  =

> -		if (period < IPROC_PWM_PERIOD_MIN ||
> -		    duty < IPROC_PWM_DUTY_CYCLE_MIN)
> +		if (period < IPROC_PWM_PERIOD_MIN)
>  			return -EINVAL;

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
