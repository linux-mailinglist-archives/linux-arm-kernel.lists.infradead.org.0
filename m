Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A4919A344
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 03:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfMzMGUodanR58j1Xw6YRHO/R6KxlSZdcDlTJEKZf2o=; b=N4UkDeSceFNFFn
	ZGd/GuEHQyfjup0NZRdofvNUnQb8H3krmL7kxNyM+jbzgXblOzhhwnoUQEHb9WysqV61r0L+J/BWo
	HiQRuA/X3dO/q86Z/tg6LJYgpu8ZyWpRZ/qTFfUkI06NbtN3PcvUaW3KXGZ38dw1KhBVHbDTH+bkB
	1W1k0hzOu+1pLx3jSMNGsV76mLSx7yO+4s73ZEXvkQ/TXpetU2vDLoBFuAwaLACpLMlb0u5eHzW1H
	rrCKNTnFFLac94XHnI/SVcntFC3Uk8jY4YGUPWQvrYhmjxg6Mxv26trHmsqj496s/faPIJMP/d7n1
	NfUC3DPGzDVs5cgXdaQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJS7X-0004NR-RJ; Wed, 01 Apr 2020 01:24:43 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJS7M-0004Mm-MM
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 01:24:35 +0000
Received: by mail-pf1-x441.google.com with SMTP id c20so8705705pfi.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 18:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Aw32lMi9SSDdJS5PfKnpiYWuSlV1WvfCQUy80vI+qqk=;
 b=HaLcJN72XZVuHbNNMetMUznMmDpsKnTpYIJ9YHL/1gep0jJFppLHcKhmxVhroiS7ey
 IRgCd+xMQpwRt+jKzOlB6ycHB/8oF6QtmttD0+KEEId8fo/h4vW8OPRbh8WF4VgU9DAb
 ymETk39riy8JVKNSpp7zUMf8lAYTshHf+lC3gF7Y7LKS8ALP+9uiLCPlX5/2WNTISwqM
 2WZXtCTkWbFgsKZeHXWp0AenuxHRI6ai3WmKZHnh4GtLCIdj4d5pJCm2e/oW63Pki1Sh
 HI7IXhcz7aVonrE8Dp72e2UtZ7bjBzlK7sBxf3a3VAJ47R+4hbwaGtJp17pl8ZMWdIN3
 NHkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Aw32lMi9SSDdJS5PfKnpiYWuSlV1WvfCQUy80vI+qqk=;
 b=LU8EpaX/gKUkU2TMutifmSDEq7kCvraDbUT/nN5vCRT+rbjgB992M9Z26bZ3qd3Fso
 0gQC7dX1/pVHs0g4tVPsiY4xdhTIcgtFmp5wLaR7ItqxVoSic85KRgzEm7LNHcie4nMx
 afCyb8VjBmhDQ+So8fXJmuC46rlL5nQj+C+EAonQEYF3075N5pumUQyjfNPZxwUGenIA
 avXsPe7BmjgzCvY7ZdLj3WTKsIQIkH9dj2pcGIkhXLWnk+QdhKOu+ZW+o/0L50bG0ARr
 RjtgoRM6XWCAnD3DaxMVl7kzDmRTFrfrnw1HxwJ80cAsA6BZ86VnuOaX0ZmLra6oONGG
 xH2A==
X-Gm-Message-State: ANhLgQ2MgXPcdjFzceWQoKOrhogScAmTco2itk+DvbD4oEVjSqpw7vVL
 jNsVAbKZK0ZDsk3x++GZjW+E/r+Zk9IQyZwS
X-Google-Smtp-Source: ADFU+vuQYD73cKPi5MMZYK2oJY21kLohB/7K+vWuJRBeR3x3mkSkcST9YRUWoKenBnXiX4Mxu/XGTA==
X-Received: by 2002:a63:c451:: with SMTP id m17mr20319106pgg.223.1585704271012; 
 Tue, 31 Mar 2020 18:24:31 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([2400:8902::f03c:91ff:fe3f:32da])
 by smtp.gmail.com with ESMTPSA id q27sm297876pfn.173.2020.03.31.18.24.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 31 Mar 2020 18:24:30 -0700 (PDT)
Date: Wed, 1 Apr 2020 09:24:17 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, Al Grant <Al.Grant@arm.com>,
 James Clark <James.Clark@arm.com>
Subject: Re: [PATCH] arm64: perf_event: Fix time_offset for arch timer
Message-ID: <20200401012417.GA9892@leoy-ThinkPad-X240s>
References: <20200320093545.28227-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320093545.28227-1-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_182433_246398_545910E6 
X-CRM114-Status: GOOD (  22.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 05:35:45PM +0800, Leo Yan wrote:
> Between the system powering on and kernel's sched clock registration,
> the arch timer usually has been enabled at the early time and its
> counter is incremented during the period of the booting up.  Thus the
> arch timer's counter is not completely accounted into the sched clock,
> and has a delta between the arch timer's counter and sched clock.  This
> delta value should be stored into userpg->time_offset, which later can
> be retrieved by Perf tool in the user space for sample timestamp
> calculation.
> 
> Now userpg->time_offset is assigned to the negative sched clock with
> '-now', this value cannot reflect the delta between arch timer's counter
> and sched clock, so Perf cannot use it to calculate the sample time.
> 
> To fix this issue, this patch calculate the delta between the arch
> timer's and sched clock and assign the delta to userpg->time_offset.
> The detailed steps are firstly to convert counter to nanoseconds 'ns',
> then the offset is calculated as 'now' minus 'ns'.
> 
>         |<------------------- 'ns' ---------------------->|
>                                 |<-------- 'now' -------->|
>         |<---- time_offset ---->|
>         |-----------------------|-------------------------|
>         ^                       ^                         ^
>   Power on system     sched clock registration      Perf starts
> 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  arch/arm64/kernel/perf_event.c | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)

Gentle ping ...

Hi Mike R., Peter,

If possible, could you give a look for this patch?

Thank you,
Leo

> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index e40b65645c86..226d25d77072 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -1143,6 +1143,7 @@ void arch_perf_update_userpage(struct perf_event *event,
>  {
>  	u32 freq;
>  	u32 shift;
> +	u64 count, ns, quot, rem;
>  
>  	/*
>  	 * Internal timekeeping for enabled/running/stopped times
> @@ -1164,5 +1165,21 @@ void arch_perf_update_userpage(struct perf_event *event,
>  		userpg->time_mult >>= 1;
>  	}
>  	userpg->time_shift = (u16)shift;
> -	userpg->time_offset = -now;
> +
> +	/*
> +	 * Since arch timer is enabled ealier than sched clock registration,
> +	 * compuate the delta (in nanosecond unit) between the arch timer
> +	 * counter and sched clock, assign the delta to time_offset and
> +	 * perf tool can use it for timestamp calculation.
> +	 *
> +	 * The formula for conversion arch timer cycle to ns is:
> +	 *   quot = (cyc >> time_shift);
> +	 *   rem  = cyc & ((1 << time_shift) - 1);
> +	 *   ns   = quot * time_mult + ((rem * time_mult) >> time_shift);
> +	 */
> +	count = arch_timer_read_counter();
> +	quot = count >> shift;
> +	rem = count & ((1 << shift) - 1);
> +	ns = quot * userpg->time_mult + ((rem * userpg->time_mult) >> shift);
> +	userpg->time_offset = now - ns;
>  }
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
