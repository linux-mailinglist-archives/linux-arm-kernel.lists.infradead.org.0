Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED534121325
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 18:59:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yk2nqKyYbtX94ZLABqLqwhJQLw8mWLEqqEyztBx81ns=; b=KUvAXKzoD/ptS8xW+nyMLyPsB
	oqzqXv8z2ZIOLn2tfX0tcbvtzh+3Vzv8Zs1eX5NeoaQ/SE3m+Ei5tFOFfg2UI9WAYzwPvf2w4xmp+
	dIFE/VyOovmWpftEv4iCWCG4a+RjiCG9/fdzw405bHDVeEw0RKgy3oXX9EnYVVxBuCMR4L/Ub8/3Z
	hA4iTmaThR7XUihw6G6lj5JpmowxveTATPVdLflN5YJRqelDaivk9sJD3cQ1B4lyOJs9rwxczXj2n
	cC+dov5vZP/L2TFAFA60B3SYuVhPyIjsGJO9qV5pPsKL6+HL6MFvUxH9HRiqKaSzZs/ReIso3QiSg
	9PVfovs2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igueU-0001tj-2W; Mon, 16 Dec 2019 17:59:26 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igueL-0001mF-1H
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 17:59:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w47QjhKrBXMUdp+l8T2SAsW2mwp1Jabl/ePLzslA7oA=; b=p7BYUMz76ycJJFM3PClg9odYJf
 SgvrkJ5BfYZW7V3Lzd8rK6fgMjQYElnaiWcwSmo16INTSxJC6nWrzOGgqJHi46jBRRJN3ivOrjaP2
 gsTwxdgz8r1UrDc7Wm56HXRBdiK0avDd0TyiG+RP8/ZInhDv1z9poSReXBXqzhyp38F8W7rpCAqug
 8ZdDVftdTAtEMNTb3jx8cEfpLZEY9VNlaOYogRszpur4JlSgtH0dJms0iKDzwL/6cfuGmbSzdJ2kB
 Eu6JW5VO5OPNQtnZUROQMd5/FmUV3BRWHJPgmyY4241Iap9jj9gcxKRSkvXChFOpW9NVSB1uVmWXJ
 2eyHfc8g==;
Received: from [2600:1700:4830:165f::fb2] (port=50142)
 by vern.gendns.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <david@lechnology.com>)
 id 1igudd-00082q-GU; Mon, 16 Dec 2019 12:58:33 -0500
Subject: Re: [PATCH 1/3] clocksource: davinci: work around a clocksource
 problem on dm365 SoC
To: Bartosz Golaszewski <brgl@bgdev.pl>, Sekhar Nori <nsekhar@ti.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Kevin Hilman <khilman@kernel.org>
References: <20191213162453.15691-1-brgl@bgdev.pl>
 <20191213162453.15691-2-brgl@bgdev.pl>
From: David Lechner <david@lechnology.com>
Message-ID: <b9a28314-4fce-ebbd-be20-b0ffa2f1f15f@lechnology.com>
Date: Mon, 16 Dec 2019 11:58:31 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191213162453.15691-2-brgl@bgdev.pl>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id:
 davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_095917_238367_39BBAE36 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/13/19 10:24 AM, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> The DM365 platform has a strange quirk (only present when using ancient
> u-boot - mainline u-boot v2013.01 and later works fine) where if we
> enable the second half of the timer in periodic mode before we do its
> initialization - the time won't start flowing and we can't boot.
> 
> When using more recent u-boot, we can enable the timer, then reinitialize
> it and all works fine.
> 
> I've been unable to figure out why that is, but a workaround for this
> is straightforward - just cache the enable bits for tim34.


I had a hard time groking this code. See suggested changes below for
something that would make the intention more clear (to me at least).


> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> ---
>   drivers/clocksource/timer-davinci.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clocksource/timer-davinci.c b/drivers/clocksource/timer-davinci.c
> index 62745c962049..1c22443acaeb 100644
> --- a/drivers/clocksource/timer-davinci.c
> +++ b/drivers/clocksource/timer-davinci.c
> @@ -64,6 +64,8 @@ static struct {
>   	unsigned int tim_off;
>   } davinci_clocksource;
>   
> +static unsigned int davinci_clocksource_tim32_mode;

static unsigned bool davinci_clocksource_initialized;

> +
>   static struct davinci_clockevent *
>   to_davinci_clockevent(struct clock_event_device *clockevent)
>   {
> @@ -94,7 +96,7 @@ static void davinci_tim12_shutdown(void __iomem *base)
>   	 * halves. In this case TIM34 runs in periodic mode and we must
>   	 * not modify it.
>   	 */
> -	tcr |= DAVINCI_TIMER_ENAMODE_PERIODIC <<
> +	tcr |= davinci_clocksource_tim32_mode <<
>   		DAVINCI_TIMER_ENAMODE_SHIFT_TIM34;

	if (davinci_clocksource_initialized)
		tcr |= DAVINCI_TIMER_ENAMODE_PERIODIC <<
			DAVINCI_TIMER_ENAMODE_SHIFT_TIM34;

>   
>   	writel_relaxed(tcr, base + DAVINCI_TIMER_REG_TCR);
> @@ -107,7 +109,7 @@ static void davinci_tim12_set_oneshot(void __iomem *base)
>   	tcr = DAVINCI_TIMER_ENAMODE_ONESHOT <<
>   		DAVINCI_TIMER_ENAMODE_SHIFT_TIM12;
>   	/* Same as above. */
> -	tcr |= DAVINCI_TIMER_ENAMODE_PERIODIC <<
> +	tcr |= davinci_clocksource_tim32_mode <<
>   		DAVINCI_TIMER_ENAMODE_SHIFT_TIM34;

	if (davinci_clocksource_initialized)
		tcr |= DAVINCI_TIMER_ENAMODE_PERIODIC <<
			DAVINCI_TIMER_ENAMODE_SHIFT_TIM34;

>   
>   	writel_relaxed(tcr, base + DAVINCI_TIMER_REG_TCR);
> @@ -206,6 +208,8 @@ static void davinci_clocksource_init_tim34(void __iomem *base)
>   	writel_relaxed(0x0, base + DAVINCI_TIMER_REG_TIM34);
>   	writel_relaxed(UINT_MAX, base + DAVINCI_TIMER_REG_PRD34);
>   	writel_relaxed(tcr, base + DAVINCI_TIMER_REG_TCR);
> +
> +	davinci_clocksource_tim32_mode = DAVINCI_TIMER_ENAMODE_PERIODIC;


	davinci_clocksource_initialized  = true;

>   }
>   
>   /*
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
