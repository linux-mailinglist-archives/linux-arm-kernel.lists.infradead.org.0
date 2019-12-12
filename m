Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F8711CB20
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:40:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEbmj7R3QNsg0uqHbEZaKnwS9B6LZZX/gBweGj44xXs=; b=JruPnhOwW2jx/r
	dPNaY7FjsQgOTvZublckQtbFKACfhtO3Q8v3zb/8lrbe30x/HW2+MtJUOb29dR5vwRBi1q+3QHTJQ
	n+KJgc2E3SHp1dXOcy8yYwW3KYR4XUki/LNDLfD2Xf1MANoueaDUQ+Qdk3pLsZnXPOBVJMciGu04f
	BvXCgSKPduo+1KzirbgqTtFcO5eBjKohuTDfp4lam7vWDd1sgS8/Pr+ildbiRUghNfWBoGrf1h+zR
	uYGP152Us3VJAWsGIslvYAz3mpWEoIDP3SuLURp4prPFfnhS161rZRlHRP60cKKGrlPT2UzpuhC3Z
	ogZzwdVNl6ItUBR9vpkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLsv-0002u1-OG; Thu, 12 Dec 2019 10:39:53 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLsm-0002sN-8I
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 10:39:46 +0000
Received: from [IPv6:2001:983:e9a7:1:1c4a:480a:7ba1:9c65]
 ([IPv6:2001:983:e9a7:1:1c4a:480a:7ba1:9c65])
 by smtp-cloud9.xs4all.net with ESMTPA
 id fLsgiYsLcGyJwfLshixjqv; Thu, 12 Dec 2019 11:39:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1576147180; bh=KZ03RxcJQ7IpU9N7i9dUPkS6LtZ5asybaeAyewvmUuA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=Q8Q0AP1/GpoSinBV4NfVIGCUhmhBF8NTjn37VVEeO2ZDq0Yb7yf8nIOiynqk058KR
 lrk9NuMgN4sVd0Rf27AhSxOeZG/Q6D/Iuw2tmG21MkZkjNH6OBhSx7eMzxwl48XrhX
 tBC4P3T8QK6bGOicO+cMvX47TjnVrOOD9CdOTmA62h3o8O1V+K4zP3w0Z/ACDum6zI
 /R2SgQztYTBbliovBfv6LSBgesh8uL9AfOvsBL65ydaHNZohbdWDGG4cIVa9fkNCUm
 uOQ97T0PoFyD+LWJNRsTOpFlkssAQZcnJr19k1lbArYzY/JMZPlCjKRv0uW/3T6nZD
 QdEWFHXfqnqjg==
Subject: Re: [PATCH] media: exynos4-is: add missed clk_disable_unprepare in
 remove
To: Chuhong Yuan <hslester96@gmail.com>
References: <20191104154942.8935-1-hslester96@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <29590e4f-cb9e-c9ac-608c-b7b72c308d25@xs4all.nl>
Date: Thu, 12 Dec 2019 11:39:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191104154942.8935-1-hslester96@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfNUG4uRitZeKdWfgazy03OKDZeNHpu/zYbU7lFqsLQVzvhPtSN/qHYwNYnsfJOOlWXm50QkhfippMYJWkrYp4MOJscB6J4SK8Cs0NwvTcuc/v8pjHghH
 3rp4xs6O2eaA8cPfpx6Akjfe2nqHEYxuVvOZYoHHzusAKe6HKk6FLOQ2v3v2IKr6P1o1nqCVncofmrbkzihr1RYriUzaNGLqR2w+jFvSIdgN7UOInfbaj/vp
 yFmuwi6OF3RwfM5wCha9XBquMsMj107D7fiFnum8jYOgLXl73cf9ELUjB6ZNEH/4jPBocuiQEc4A0+EWBt3eDm030U5EuE3eb6OT87QgQkOZfbhml9elZaN2
 j8875GcFSGC94GWExwwN43VejsTR2agiFtL04hx4wFfCDiBkIgyOhLA+gQgr7KsLlWEcVE/k5JwVlOhYxqAS4O6c42bWd4joATbXyh3ksSqSIGJwXkfaG5HR
 qtetCaA4v9RC5q/R9DJIYEkuzDO3rCETzSvDCSfEl3F/iwZvs+29WFPx8v9JrD1f9Df6QYvQgDMq96RbdpmZlFEf84To9rsJiByRLYsEdKCGebLRmvbl6+Fv
 Zfbif4gABZow32cfBxb6Ek1/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_023944_462739_6F26C853 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/4/19 4:49 PM, Chuhong Yuan wrote:
> This driver forgets to disable and unprepare clock when remove.
> Add a call to clk_disable_unprepare to fix it.

I'd like an Ack from Samsung before I apply this. I see this in the probe() in fimc-lite.c:

       if (!pm_runtime_enabled(dev)) {
                ret = clk_prepare_enable(fimc->clock);
                if (ret < 0)
                        goto err_sd;
        }

So is it right to always call clk_disable_unprepare in the remove()?

I suspect it is correct, but I would like someone else to take a look as well.

Regards,

	Hans

> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
>  drivers/media/platform/exynos4-is/fimc-lite.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/media/platform/exynos4-is/fimc-lite.c b/drivers/media/platform/exynos4-is/fimc-lite.c
> index e87c6a09205b..6748bd96aada 100644
> --- a/drivers/media/platform/exynos4-is/fimc-lite.c
> +++ b/drivers/media/platform/exynos4-is/fimc-lite.c
> @@ -1614,6 +1614,7 @@ static int fimc_lite_remove(struct platform_device *pdev)
>  	struct fimc_lite *fimc = platform_get_drvdata(pdev);
>  	struct device *dev = &pdev->dev;
>  
> +	clk_disable_unprepare(fimc->clock);
>  	pm_runtime_disable(dev);
>  	pm_runtime_set_suspended(dev);
>  	fimc_lite_unregister_capture_subdev(fimc);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
