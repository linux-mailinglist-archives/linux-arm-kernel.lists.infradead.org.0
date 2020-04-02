Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D83DF19C3C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 16:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHgjfNwenjyM8YyvckKnTPwr/IPy9J2CULrhh2tete4=; b=NtGzj/SHudwWbj
	YoHt1trBWGHAe7sQm4qf52iucYJXWsiIhTR0BaQT7JCFrUGqSC2auWIOfxElIE97D1uRqjudFt9Xf
	cc447pEmxX3oskAxw1YvJL4tGjqXX74pKosK8BAXnY7oTUu8f7aHh4pPG05MI0l5cX/CxPMv44G+3
	5AC9z7O9M93lrYpX6E7ReWqbT1+/8dQhxluuEu5JlQBCnLBfiAqet64GtyWopPpb1UqrZeqWu6xSv
	F5UpGzKagxHMcrhvSsRVpg3GNEFCWO+MUv1L0xDwIBqk2m+56UBmtx30Ur1p3mvZ/yqiI7TK9sIk0
	YddytQdvHSv41q8ppUVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0dO-0007nu-BQ; Thu, 02 Apr 2020 14:15:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0cl-0004m1-N1
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 14:15:18 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jK0cg-00027p-Oj; Thu, 02 Apr 2020 16:15:10 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jK0cg-0002j6-3Q; Thu, 02 Apr 2020 16:15:10 +0200
Date: Thu, 2 Apr 2020 16:15:10 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] pwm: meson: remove redundant assignment to variable
 fin_freq
Message-ID: <20200402141510.yrjqhmccz6xjaknv@pengutronix.de>
References: <20200402110857.509844-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402110857.509844-1-colin.king@canonical.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_071515_793916_2507F984 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-pwm@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 12:08:57PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> =

> The variable fin_freq is being initialized with a value that is never
> read and it is being updated later with a new value. The initialization
> is redundant and can be removed.
> =

> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

This was introduced in 211ed630753d ("pwm: Add support for Meson PWM
Controller"), adding Neil To Cc:.

I don't think this was added to cope for a compiler not being able to
see the variable is used initialized only.

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks
Uwe

> diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
> index 8cf9129caa39..bd0d7336b898 100644
> --- a/drivers/pwm/pwm-meson.c
> +++ b/drivers/pwm/pwm-meson.c
> @@ -163,7 +163,7 @@ static int meson_pwm_calc(struct meson_pwm *meson, st=
ruct pwm_device *pwm,
>  {
>  	struct meson_pwm_channel *channel =3D pwm_get_chip_data(pwm);
>  	unsigned int duty, period, pre_div, cnt, duty_cnt;
> -	unsigned long fin_freq =3D -1;
> +	unsigned long fin_freq;
>  =

>  	duty =3D state->duty_cycle;
>  	period =3D state->period;

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
