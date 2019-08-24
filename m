Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F4A9BCC0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 11:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwVcioei12GRvjQBFCakKtJNZm1CjtxXfmapwHL8LT8=; b=GSfnbPH1BVMuP9
	266S3owBjwbLLeHFM6/SbVYdFnoo9oLTeN2mYsFe6dKYNVQ2PZMKWs7lrESeYjmKFV8Mt1lkcnyjB
	H2gYw3B84xBf4XOK5smnuV6StN4oD2MxuXk8KvLqfUHabhtXHs6f0YV5R++Lz5mrP/dLcDHG0KYJQ
	pj8uLYziQLngSM1r2fejWRDIKu5v8dhKUxeRBh8eTSaxKsxa1LGGbQBCG1xm+QAZtZzhd3gtDcaC5
	s7di8es9DlTvoxGZNhRiqeClUJ0myn15y5lv38TMV73CvlFaHawhCCrhxLQoCXQY7t9CNVF0KUDOx
	yxVVoPayVMdSLgDDRj/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1SJJ-0001lp-Dc; Sat, 24 Aug 2019 09:26:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1SJ5-0001lS-3C
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 09:26:01 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1SJ0-0002Yt-TG; Sat, 24 Aug 2019 11:25:54 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1SIz-0000pl-Bu; Sat, 24 Aug 2019 11:25:53 +0200
Date: Sat, 24 Aug 2019 11:25:53 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 0/3] pwm: bcm2835: Minor fixes
Message-ID: <20190824092553.j4rjpzaz4m6yaa5t@pengutronix.de>
References: <1566630445-4599-1-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566630445-4599-1-git-send-email-wahrenst@gmx.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_022559_208218_362A1D8B 
X-CRM114-Status: GOOD (  14.44  )
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

Hello Stefan,

On Sat, Aug 24, 2019 at 09:07:22AM +0200, Stefan Wahren wrote:
> This small patch series contains minor fixes for clock handling and the
> period range check.

I'd like to understand the various different usecases of PWMs. The
in-kernel consumers are kind of obvious, but sysfs users are not. It
seems you are one of the latter.

Would you mind sharing what you control using the PWM? Does it bother
you that the sysfs interface doesn't allow atomic configuration?

Assuming you have some interest in this driver: It still uses the legacy
stuff implementing .config, .enable, .disable, .set_polarity. Are you
willing to test (or even implement) a switch to .apply instead?

Just from a quick lock into the driver I wonder a few things, maybe you
can shed some light here. If there is publicly available documenation
for this piece of hardware, feel free to point this out, then I might be
able to work out some of the answers myself.

The overall (and common) design of the PWM is an input clk, a counter, a
duty and a period register.

The slightly simplified logic in .config is:

	scaler =3D DIV_ROUND_CLOSEST(NSEC_PER_SEC, rate);
	writel(DIV_ROUND_CLOSEST(duty_ns, scaler), PWM_DUTY);
	writel(DIV_ROUND_CLOSEST(period_ns, scaler), PWM_PERIOD);

This is loosing precision while the calculation could be cheaper (in CPU
cycles) and more exact when using:

	writel(DIV_ROUND_CLOSEST(duty_ns * rate, NSEC_PER_SEC), PWM_DUTY);
	writel(DIV_ROUND_CLOSEST(period_ns * rate, NSEC_PER_SEC), PWM_PERIOD);

This is only two divisions instead of three. And assuming a rate of 9.2
MHz and a request of duty_ns =3D 499945, period_ns =3D 999891 the original
calculation yields

	DUTY =3D 4587
	PERIOD =3D 9173

	real_duty_ns =3D 498586.95652173914
	real_period_ns =3D 997065.2173913043

	error_duty_ns =3D 1358.0434782608645
	error_period_ns =3D 2825.7826086956775

With my suggestion you'd get

	DUTY =3D 4599
	PERIOD =3D 9199

	real_duty_ns =3D 499891.3043478261
	real_period_ns =3D 999891.304347826

	error_duty_ns =3D 53.69565217389027
	error_period_ns =3D -0.30434782605152577

(But having said this, I'd prefer to use rounding down instead of
rounding closest).

Also I wonder if reprogramming the hardware completes the currently
running period and how the hardware behaves on disable. (In the latter
case I'm interested in "Does it complete the running period?" and "Which
state does the output stop in?")

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
