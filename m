Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F22B91CF68E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:11:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAwS6rk3gJn+FBjjHrojqMX+aygwHuMsJBWT9Jx0gwk=; b=A4LAcFfFjxrfjq
	dmLwMhfxuob/mwUiIBjuKIEwOkla3HFKXKCzIRKt3jbeaO+/Hga4Dkyp/0lUteotp/YwO4mwG2uyd
	uWFW8lSRRM+qPOvF1wfzB0fpCgXPVJkdxPu6CXj5xLCLxj3tchw4pd34vmd4gStzV46+qRt2I7ZWi
	n4/MHEi6AQ8szbuSFJuGALeEJ3znYZqLgwab0ZfvGIMra7rYWgBVEYl94rZ/xRIX2Ts8ltT9/fzEN
	wB5tYu3dJ/YHEraYu4CM6vXDbFUmvlbxjKYNTGTaC59AsD0u2/8SG7tTcBkmz+htJE5sXXOqlI2XP
	rfLo7mm7BQTuU8m01EoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYVdA-0006rC-P6; Tue, 12 May 2020 14:11:36 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYVd3-0006qq-GV
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:11:30 +0000
Received: by mail-pf1-x442.google.com with SMTP id x2so6423033pfx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 07:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oNVTKHh3BRkv6kZOADjLrXd170DS/xHoo09T4Nrhheo=;
 b=MWVm3yEZ9mSSxyQajWzj0yf8qSW+nGL9S0s54ewsyJafx/WvQOyxCLQrBhyMSZvQBI
 9+5RU5hwl89M8YOWDSjt6f4/MVsC+3kDOJDBDSARox31Kuxn7jHLGyglVlxsea788sgT
 V4vV/qQUdgXTMbsUQSODcwoGY1kuJHDkqWORfkxfPc4M4FzqtyUq4sIAR8OwJlhf5/uC
 xSY/yQqzxK882W9rEvO4OqiH00Gf0eB5n6mez1V5YaXklkw/Z/WYAd9gRZ+27eHIN+fY
 dVUnnUPWj9ivdPH1C988u0jzs2ft6j2po5LglaDe6xSyIs3Cvx/FTFRKO/efDUDp/D4g
 ySLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oNVTKHh3BRkv6kZOADjLrXd170DS/xHoo09T4Nrhheo=;
 b=LzrlI/fC7aievApU9hMRLXZT8eN2w5yMETKNN9vkrGPUmRmz5Inz5xymPVMwaGhGo6
 JUkB56doy3OAe7WcCd/jguDP4qFnRmf333HgEgjCLsQZX3mOBMwP64QeK5DeAF9+997s
 sg1Z9AQObMqcXNPFw9Y8Ef2RRjrzfly0evTXV4ZMIM+B7lO6xaY7ACPn/wedpm10nQ1j
 7oDOaNofxE6hF3vmwr8DejViVCLD+WqqQt4jzRT2CKRTQe5pOI/nvkLVjwYFJ2BELF3i
 EHpNeB0bCeUaFbBiONjrQK79HbBb4KxOrUO4g01qd1jI0Q54wzwuP0gEv+xIgMlV8Y2c
 cBmg==
X-Gm-Message-State: AGi0Pub3BSmh5WXA1DvUgjN12KLYUecyHsEDIW8ZtB6cB2f6q8scKdXb
 ixlAImhmFf+zbwEg8gfL8XoVlw==
X-Google-Smtp-Source: APiQypLB7DTmaAG8KF0rhekx3BS1ffHO8/I3uQtsFt8SfpFqBrT4+h+i1IuZBPTlHiysq1JCJ20Wtw==
X-Received: by 2002:a63:ef02:: with SMTP id u2mr19767305pgh.21.1589292688279; 
 Tue, 12 May 2020 07:11:28 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([2600:3c01::f03c:91ff:fe8a:bb03])
 by smtp.gmail.com with ESMTPSA id s199sm12383422pfs.124.2020.05.12.07.11.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 12 May 2020 07:11:27 -0700 (PDT)
Date: Tue, 12 May 2020 22:11:26 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 5/5] arm64: perf: Add cap_user_time_short
Message-ID: <20200512141126.GD20352@leoy-ThinkPad-X240s>
References: <20200512124058.833263033@infradead.org>
 <20200512124451.061059334@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512124451.061059334@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_071129_548482_137FD8EB 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2600:3c01:0:0:f03c:91ff:fe8a:bb03 listed in] [zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, alexander.shishkin@linux.intel.com,
 Marc Zyngier <maz@kernel.org>, jolsa@redhat.com, daniel.lezcano@linaro.org,
 sboyd@codeaurora.org, linux-kernel@vger.kernel.org, acme@kernel.org,
 mingo@redhat.com, john.stultz@linaro.org,
 Catalin Marinas <catalin.marinas@arm.com>, tglx@linutronix.de,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 02:41:03PM +0200, Peter Zijlstra wrote:
> This completes the ARM64 cap_user_time support.
> 
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> ---
>  arch/arm64/kernel/perf_event.c |   12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -1173,6 +1173,7 @@ void arch_perf_update_userpage(struct pe
>  
>  	userpg->cap_user_time = 0;
>  	userpg->cap_user_time_zero = 0;
> +	userpg->cap_user_time_short = 0;
>  
>  	do {
>  		rd = sched_clock_read_begin(&seq);
> @@ -1183,13 +1184,13 @@ void arch_perf_update_userpage(struct pe
>  		userpg->time_mult = rd->mult;
>  		userpg->time_shift = rd->shift;
>  		userpg->time_zero = rd->epoch_ns;
> +		userpg->time_cycle = rd->epoch_cyc;

s/time_cycle/time_cycles, maybe consider to change the naming to
'time_cycle'.

This patch set looks good to me after I tested it on Arm64 board.

Thanks,
Leo

> +		userpg->time_mask = rd->sched_clock_mask;
>  
>  		/*
> -		 * This isn't strictly correct, the ARM64 counter can be
> -		 * 'short' and then we get funnies when it wraps. The correct
> -		 * thing would be to extend the perf ABI with a cycle and mask
> -		 * value, but because wrapping on ARM64 is very rare in
> -		 * practise this 'works'.
> +		 * Subtract the cycle base, such that software that
> +		 * doesn't know about cap_user_time_short still 'works'
> +		 * assuming no wraps.
>  		 */
>  		userpg->time_zero -= (rd->epoch_cyc * rd->mult) >> rd->shift;
>  
> @@ -1214,4 +1215,5 @@ void arch_perf_update_userpage(struct pe
>  	 */
>  	userpg->cap_user_time = 1;
>  	userpg->cap_user_time_zero = 1;
> +	userpg->cap_user_time_short = 1;
>  }
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
