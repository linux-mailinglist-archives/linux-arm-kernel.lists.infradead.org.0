Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C98F9BCCC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 11:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXWiPIfgci2gXIwYx5DKKc+VkF3y5OnRRmn59Ct3xoM=; b=BVV92NgS+B2snq
	6nf590mPNaBzhsYtl1KWw/tjUwamNGteUR58Y9BlhIlxeUkD7tL3ERLK5wgthdviqUknCDop/APSH
	aIGyoXuLlCE0yZNvzcvBZgQYomBYj38+8/UjlOQgOZGzjVGBo4KnbrTuAbau11kRdOtquxwvV+Drc
	BO+KkSCd4MxLAvbxG0TKdBfX4H6eiJsnf7IuKhJiHtBngXRQlnsuQ2d+SCM5AeZOkHlKS6ZotMq65
	aw7wU/QtDhZXZpXB2UHB2sTrESO5O7ddLfAiQmuy3IeUayWl32dIxsnGgc5MxuJ03dCkCd2ZoZukv
	hxSeVrw0znvLbb9WooqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1SNj-0003mE-4p; Sat, 24 Aug 2019 09:30:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1SNX-0003lu-Sy
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 09:30:37 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1SNU-000304-GC; Sat, 24 Aug 2019 11:30:32 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1SNU-0000xV-2n; Sat, 24 Aug 2019 11:30:32 +0200
Date: Sat, 24 Aug 2019 11:30:32 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 3/3] pwm: bcm2835: suppress error message during deferred
 probe
Message-ID: <20190824093032.cunkmukx73vl4hy3@pengutronix.de>
References: <1566630445-4599-1-git-send-email-wahrenst@gmx.net>
 <1566630445-4599-4-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566630445-4599-4-git-send-email-wahrenst@gmx.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_023035_938366_1D7EEFD8 
X-CRM114-Status: GOOD (  18.33  )
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
Cc: linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 24, 2019 at 09:07:25AM +0200, Stefan Wahren wrote:
> This suppresses error messages in case the PWM clock isn't ready yet.
> =

> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---
>  drivers/pwm/pwm-bcm2835.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/pwm/pwm-bcm2835.c b/drivers/pwm/pwm-bcm2835.c
> index 2c82386..ce362be 100644
> --- a/drivers/pwm/pwm-bcm2835.c
> +++ b/drivers/pwm/pwm-bcm2835.c
> @@ -153,7 +153,10 @@ static int bcm2835_pwm_probe(struct platform_device =
*pdev)
> =

>  	pc->clk =3D devm_clk_get(&pdev->dev, NULL);
>  	if (IS_ERR(pc->clk)) {
> -		dev_err(&pdev->dev, "clock not found: %ld\n", PTR_ERR(pc->clk));
> +		if (PTR_ERR(pc->clk) !=3D -EPROBE_DEFER) {
> +			dev_err(&pdev->dev, "clock not found: %ld\n",
> +				PTR_ERR(pc->clk));
> +		}
>  		return PTR_ERR(pc->clk);
>  	}

I would have used:

	if (IS_ERR(pc->clk)) {
		int err =3D PTR_ERR(pc->clk);
		if (err !=3D -EPROBE_DEFER)
			dev_err(&pdev->dev, "clock not found: %d\n", err);

		return err;
	}

This calculates the error code only once and make the dev_err line short
enough to not make it necessary to add a line break.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
