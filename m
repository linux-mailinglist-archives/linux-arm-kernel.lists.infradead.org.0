Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C084819854D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 22:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvpmS59iiF5sQuoJwT3e0ekbPV3ftQGHPJ+yD7pt3aM=; b=BnuIRLzF0BfZ9+
	HjCqjvXd7xO22PxnfmqQ/DwLRaN2AEb258Zq9hiNLxV8sfd4J1gzAObIqYXUzrbtjERoQMF+A5ZLI
	6jKIfakn5YjDW+WLT0vMJa1+o53lJlohr/OwuOiLhN0IDPj+55EV7FmQs2jA/RDSILZm/doVzQdCn
	SZtIAWVx9HBdtIluyh08Suh9WgUgRRI9HDZg7QayZUNmU+d1JKpUjhWd1DA3q4YRIcjLrN35yNwGS
	3lxhgzOoevlTkHW722rSXKPBopBzPKcUwNqzpNQ6QVENlZ6ZJV/LQC+7vB+nqRjaTZ7dUAzU+/zzA
	xE7nhgs1KHPg3uAM5xsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ0sV-0008Jm-TX; Mon, 30 Mar 2020 20:19:23 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ0sM-0008Ik-DN
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 20:19:16 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id AA2F8240004;
 Mon, 30 Mar 2020 20:19:10 +0000 (UTC)
Date: Mon, 30 Mar 2020 22:19:10 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 1/2] rtc: sun6i: let the core handle rtc range
Message-ID: <20200330201910.GA752154@piout.net>
References: <20200330201510.861217-1-alexandre.belloni@bootlin.com>
 <20200330201510.861217-2-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330201510.861217-2-alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_131914_587856_CF58F14F 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This was en unattended resend.

On 30/03/2020 22:15:09+0200, Alexandre Belloni wrote:
> Let the rtc core check the date/time against the RTC range.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
>  drivers/rtc/rtc-sun6i.c | 25 ++++++++++---------------
>  1 file changed, 10 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/rtc/rtc-sun6i.c b/drivers/rtc/rtc-sun6i.c
> index 415a20a936e4..446ce38c1592 100644
> --- a/drivers/rtc/rtc-sun6i.c
> +++ b/drivers/rtc/rtc-sun6i.c
> @@ -108,7 +108,6 @@
>   * driver, even though it is somewhat limited.
>   */
>  #define SUN6I_YEAR_MIN				1970
> -#define SUN6I_YEAR_MAX				2033
>  #define SUN6I_YEAR_OFF				(SUN6I_YEAR_MIN - 1900)
>  
>  /*
> @@ -569,14 +568,6 @@ static int sun6i_rtc_settime(struct device *dev, struct rtc_time *rtc_tm)
>  	struct sun6i_rtc_dev *chip = dev_get_drvdata(dev);
>  	u32 date = 0;
>  	u32 time = 0;
> -	int year;
> -
> -	year = rtc_tm->tm_year + 1900;
> -	if (year < SUN6I_YEAR_MIN || year > SUN6I_YEAR_MAX) {
> -		dev_err(dev, "rtc only supports year in range %d - %d\n",
> -			SUN6I_YEAR_MIN, SUN6I_YEAR_MAX);
> -		return -EINVAL;
> -	}
>  
>  	rtc_tm->tm_year -= SUN6I_YEAR_OFF;
>  	rtc_tm->tm_mon += 1;
> @@ -585,7 +576,7 @@ static int sun6i_rtc_settime(struct device *dev, struct rtc_time *rtc_tm)
>  		SUN6I_DATE_SET_MON_VALUE(rtc_tm->tm_mon)  |
>  		SUN6I_DATE_SET_YEAR_VALUE(rtc_tm->tm_year);
>  
> -	if (is_leap_year(year))
> +	if (is_leap_year(rtc_tm->tm_year + SUN6I_YEAR_MIN))
>  		date |= SUN6I_LEAP_SET_VALUE(1);
>  
>  	time = SUN6I_TIME_SET_SEC_VALUE(rtc_tm->tm_sec)  |
> @@ -726,12 +717,16 @@ static int sun6i_rtc_probe(struct platform_device *pdev)
>  
>  	device_init_wakeup(&pdev->dev, 1);
>  
> -	chip->rtc = devm_rtc_device_register(&pdev->dev, "rtc-sun6i",
> -					     &sun6i_rtc_ops, THIS_MODULE);
> -	if (IS_ERR(chip->rtc)) {
> -		dev_err(&pdev->dev, "unable to register device\n");
> +	chip->rtc = devm_rtc_allocate_device(&pdev->dev);
> +	if (IS_ERR(chip->rtc))
>  		return PTR_ERR(chip->rtc);
> -	}
> +
> +	chip->rtc->ops = &sun6i_rtc_ops;
> +	chip->rtc->range_max = 2019686399LL; /* 2033-12-31 23:59:59 */
> +
> +	ret = rtc_register_device(chip->rtc);
> +	if (ret)
> +		return ret;
>  
>  	dev_info(&pdev->dev, "RTC enabled\n");
>  
> -- 
> 2.25.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
