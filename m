Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6979129911
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ejjb8rpTHImZ66cyEpJEGrGkMvh2533t99gzJN8nnUI=; b=OUWxuEE0uziaPS
	YNVFyxuLfK6+7h5W+ZVlcWB2mrEEiDY6sXGjHv2/BpP0VdnRKqkJ1WMg6+Cw2VKrQrgpKl1Xdyyqi
	VT0mkB0lXdBZvGPYYIm582CcfECvw7/X3mKixcFzGhN88tKqZzqJjy8f6e3mFe1b3B4yVhjGcNTpH
	ailO+lkhwyCyYvgIuw8E1qmiz7VgHdSnSI9Mo2fJFKct0RzZwXV5Xxw5S12Rkc0pTfxEROEWFlK5F
	wDWH183PA+yCR5gt4ZOsrtTwvj2LAwuUG4cChlIUfAET8ZVc77+eFWz5/O5P/zDUxXzD62k1Gq+4O
	+zhF9xOeStVNyiT6OQKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUAMk-0004TI-O6; Fri, 24 May 2019 13:36:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUAMc-0004Sp-Tv
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:36:05 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 874F1217F9;
 Fri, 24 May 2019 13:36:01 +0000 (UTC)
Date: Fri, 24 May 2019 09:36:00 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH] clocksource/arm_arch_timer: Don't trace count reader
 functions
Message-ID: <20190524093600.11ca3cb2@gandalf.local.home>
In-Reply-To: <1558689025-50679-1-git-send-email-julien.thierry@arm.com>
References: <1558689025-50679-1-git-send-email-julien.thierry@arm.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_063602_984999_E92DF7F8 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 24 May 2019 10:10:25 +0100
Julien Thierry <julien.thierry@arm.com> wrote:

> With v5.2-rc1, The ftrace functions_graph tracer locks up whenever it is
> enabled on arm64.
> 
> Since commit 0ea415390cd3 ("clocksource/arm_arch_timer: Use
> arch_timer_read_counter to access stable counters") a function pointer
> is consistently used to read the counter instead of potentially
> referencing an inlinable function.
> 
> The graph tacers relies on accessing the timer counters to compute the
> time spent in functions which causes the lockup when attempting to trace
> these code paths.
> 
> Annontate the arm arch timer counter accessors as notrace.
> 
> Fixes: 0ea415390cd3 ("clocksource/arm_arch_timer: Use
>        arch_timer_read_counter to access stable counters")
> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
> Cc: Marc Zyngier <marc.zyngier@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Steven Rostedt <rostedt@goodmis.org>
> ---
>  drivers/clocksource/arm_arch_timer.c | 8 ++++----

Is there any reason to function trace any of the functions in this
file? If not, then I would suggest removing all the "notrace"
annotations from this file, and add in the Makefile for this directory:

CFLAGS_REMOVE_arm_arch_timer.o = $(CC_FLAGS_FTRACE)

Hmm, I need to go through all the Makefiles in the kernel and remove
the "-pg" and replace it with "$(CC_FLAGS_FTRACE)" as that's the safer
way of doing it now.

-- Steve


>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
> index b2a951a..5c69c9a 100644
> --- a/drivers/clocksource/arm_arch_timer.c
> +++ b/drivers/clocksource/arm_arch_timer.c
> @@ -149,22 +149,22 @@ u32 arch_timer_reg_read(int access, enum arch_timer_reg reg,
>  	return val;
>  }
>  
> -static u64 arch_counter_get_cntpct_stable(void)
> +static notrace u64 arch_counter_get_cntpct_stable(void)
>  {
>  	return __arch_counter_get_cntpct_stable();
>  }
>  
> -static u64 arch_counter_get_cntpct(void)
> +static notrace u64 arch_counter_get_cntpct(void)
>  {
>  	return __arch_counter_get_cntpct();
>  }
>  
> -static u64 arch_counter_get_cntvct_stable(void)
> +static notrace u64 arch_counter_get_cntvct_stable(void)
>  {
>  	return __arch_counter_get_cntvct_stable();
>  }
>  
> -static u64 arch_counter_get_cntvct(void)
> +static notrace u64 arch_counter_get_cntvct(void)
>  {
>  	return __arch_counter_get_cntvct();
>  }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
