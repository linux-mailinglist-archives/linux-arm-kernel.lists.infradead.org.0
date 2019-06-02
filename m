Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3DF323E6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Jun 2019 18:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ASryQxBYTwDPU0i5DHKSgWVUqDsPBMe5FOaU+mFZb/8=; b=hY3sLVll/X227r5W4vwlbIxFDJ
	nICnHcTINx9fgBuKmycy0t65uiNeuQXfUtMXwUgITnd43VctI1FA/3ehbYucL3F9NvxUDuKx3rQR0
	qeBGlI0Uogk2di9ep6l7ZYk9jx3KE8n5VfS1J1CN6QAxzvZVOkDF0J9j8njz+nMBCZap/Q8E40+S8
	g12TGB1Z0ODAatLljfgpeqNV42PGP9oLD5AByth5e0OVHji6h5YQxECvHi20I//vqw1jRxOtPU3RQ
	F5X/91kcGvRXJY+aB/cBTn015GJ25NaYGe8hxhq318d1AT3xEKH3pXZ7PzGe2M5w5Atmyfon7jMup
	qNTRJl8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXTch-0005CB-M7; Sun, 02 Jun 2019 16:46:19 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXTcY-0005Ba-L0; Sun, 02 Jun 2019 16:46:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1559493946;
 bh=WTS2yWUucng0GsNXhbGRsl+DDR3xm8BOywrwJ9ORizM=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=Nn2FCohRwM0J3dvj29lZmxIkbGBG3EU9Lcb5QFVEbsGobtXdLqSGJwMzjRfnucT87
 IfQWP+gO1mSXtQw3QhItAqaul1POIGdf6imETtqyBpJUvJboe8cfM2sh78hjDtWQY8
 OHct0Uom9LHj4fYl7nFlSEGip6FU6wrV2f+fKuEo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.160]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MFsUv-1hMglR1JKZ-00HN5d; Sun, 02
 Jun 2019 18:45:46 +0200
Subject: Re: [PATCH] pwm: bcm2835: increase precision of pwm
To: Sean Young <sean@mess.org>, Thierry Reding <thierry.reding@gmail.com>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-pwm@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Andreas Christ <andreas@christ-faesch.ch>
References: <20190602102350.zzwmfvlky3mnlqln@gofer.mess.org>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <0e6eef35-244a-4d52-2d87-e8ff22355f09@gmx.net>
Date: Sun, 2 Jun 2019 18:45:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190602102350.zzwmfvlky3mnlqln@gofer.mess.org>
Content-Language: en-US
X-Provags-ID: V03:K1:6uQhCwbHl+kfWg0Kp9vvBtlQ+LliQKIXjefL6+Zs+bDHiS7bLK1
 9Y2e9UyS0eXAUIY/gPwDe0hp/8h1IDYAh3vIbP3UZPHEcxrGwai6pFj+MLV9X6BewJG70+G
 oNEyBjGPvcAJB9kj2pAoRFKEiB3c0pCqIWj0JMD8kWgYsdtvrsXvFgtxTBh1o9i/hcIupmT
 SHTWzRGbpVocUWNypHRyg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VFsL/BsTHN8=:+EaE1RNa4U8mxStHx4cSJR
 eGkO7uKtJFZzOPwwXJv8o5eRpXFZRr/VrXY51ugCVKAOK6u0YAu0ebru2wdVxU3yYeDYIInfJ
 Vfpl9jALnJ0QCr2IFpOOMtGSNgxuEM8GXDXy71g9KnaFUD7pWKg4z+WqA7LVM86Tavjv3y1AE
 OfW8lAVIRR6i4KpjQGba3pPk5EjBIw0bpc1G3RYfn9j13sLKfAXOSU0+dnvKItUPfupTT+fd3
 UM5I6QK7fu59CrzmhehgoeFR9m8V0j8RNXdAb7ivP6ZUlfrfuXAnAhUrWTp/hw1HjgSaS7+C+
 BsIqQ9K3p8vV4JdDo/wzYzjRBSbFdutHRnmOk7hw+XPZKQEGrWcZzIJq6pqZAtNRJzjRVqYF7
 6dgNVIlcW/QEYS5eFVKMd6k6s/CM4UmvqAw6h6+K0pfcHrWhIp9Xf8ExX/OBypMLUPYJ+m9Yr
 W0TX2nfREECN4OOkb9Xds0OAXrQz/IeuPwYuPW/dbz3VqnPK1JFcUXH3/GKHSE3FyPKivHHnL
 7cprY6raB9THFvLk0BB6PsV0NB6ZVYjrmLnhQk1kKuZBktuq5Ocb5gLj10HTO5foQSzxY5wv2
 pvwnPo1dy6cBmKOLm923Ru27KUQ3CkTdMYzKjcixEBGRScS21ectW5wu1owVHUtsXNBzlDfFn
 tyaUvW1TzA1/PUwalFl4OKkmqcN356Kjq+j3OWaZjVXlHLHZDKqqzM5QU+piW6cUYMohcbMex
 jTmJw8739OpmsAfzKY4AVeUCmNSDwnXatU9iFP+jo2pc6HPmUZYrhnttTvrZ2+kVTNjsAjeBs
 9vO/rL2DIagH6KZiikG0M/1wl3q0cy/IHCOB6TVXPtRqd8Bi1qKYK0VjQHOtwAbyY+wV1MDEI
 KXIGt24s+s6B0yVqcYPF7bN2wud6CAZ9Fa3WMmJBR/nszJf13Rc2F9MjFHEhF6uKB6gX6Vdos
 RmDfPHDHFCrbN1McQOa0dpTHzkXN70Wodd+N8YnajnVnMW8GnietC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_094611_227385_B46AF032 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sean,

Am 02.06.19 um 12:23 schrieb Sean Young:
> If sending IR with carrier of 455kHz using the pwm-ir-tx driver, the
> carrier ends up being 476kHz.
>
> A carrier of 455kHz has a period of 2198ns, but the arithmetic truncates
> this to 2.1ns rather than 2.2ns. So, use DIV_ROUND_CLOSEST() to reduce
> rounding errors, and we have a much more accurate carrier of 454.5kHz.
>
> Reported-by: Andreas Christ <andreas@christ-faesch.ch>
> Signed-off-by: Sean Young <sean@mess.org>
> ---
>  drivers/pwm/pwm-bcm2835.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/pwm/pwm-bcm2835.c b/drivers/pwm/pwm-bcm2835.c
> index 5652f461d994..edb2387c49a2 100644
> --- a/drivers/pwm/pwm-bcm2835.c
> +++ b/drivers/pwm/pwm-bcm2835.c
> @@ -63,14 +63,14 @@ static int bcm2835_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
>  {
>  	struct bcm2835_pwm *pc = to_bcm2835_pwm(chip);
>  	unsigned long rate = clk_get_rate(pc->clk);
> -	unsigned long scaler;
> +	unsigned int scaler;
according to the commit log i wouldn't expect this change. Maybe it's
worth to mention.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
