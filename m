Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8957C546
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:46:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JuC2myR74dn5Dv650Gesl2sI9/wPJ75CqHszqdVgEU4=; b=TO880H3RAx4K1E
	uaFxlNvpz/YQFbfQSm4viH/c2W5ByXQGRusHcyQbB0jntvJ2f3FPeOYH+69TVlA2WVDGkU9ioWfrU
	j+VzrwTTajVaiJEeMhaIpu/tKIc9GMQFcbBCZ5Q05xMfKIeLU3CAbVD0i4drT3Ki6c/Vha5OG0Lvn
	suN0LNZmaPeZ96LBFWAkLkwDoYVOns9TfPaDYDKwrJK4ZmC6icthARxMgX6lEamVXfLfmvXkU431c
	0kSAqHQEHTvw31TsQyjk+hTW3V2nMpNEjS8Xuj/jEy4Qd5fKWFQssurDuc2M8bImy9db/egg8JuRj
	CAIjQGhT7qr6PGiZHJrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hspsH-00014g-2S; Wed, 31 Jul 2019 14:46:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hspsA-00013N-4V
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:46:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42F3C344;
 Wed, 31 Jul 2019 07:46:32 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3F5A23F694;
 Wed, 31 Jul 2019 07:46:31 -0700 (PDT)
Date: Wed, 31 Jul 2019 15:46:29 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Jiping Ma <jiping.ma2@windriver.com>
Subject: Re: [PATCH] Function stack size and its name mismatch in arm64
Message-ID: <20190731144628.GD39768@lakrids.cambridge.arm.com>
References: <20190731090437.19867-1-jiping.ma2@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731090437.19867-1-jiping.ma2@windriver.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_074634_261484_29F555C6 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, mingo@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

If you have a patch affecting arm64, please Cc LAKML and the arm64
maintainers. I've added them to this sub-thread.

On Wed, Jul 31, 2019 at 05:04:37PM +0800, Jiping Ma wrote:
> The PC of one the frame is matched to the next frame function, rather
> than the function of his frame.

As Steve said in another reply, please could you explain the problem
more thoroughly? An example would be very helpful.

It sounds like arm64 behaves differently to other architectures here,
which could be an arm64-specific bug, or it could be that the behaviour
is inconsistent across archtiectures and needs more general cleanup.

Thanks,
Mark.

> 
> Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>
> ---
>  kernel/trace/trace_stack.c | 28 ++++++++++++++++++++++++++--
>  1 file changed, 26 insertions(+), 2 deletions(-)
> 
> diff --git a/kernel/trace/trace_stack.c b/kernel/trace/trace_stack.c
> index 5d16f73898db..ed80b95abf06 100644
> --- a/kernel/trace/trace_stack.c
> +++ b/kernel/trace/trace_stack.c
> @@ -40,16 +40,28 @@ static void print_max_stack(void)
>  
>  	pr_emerg("        Depth    Size   Location    (%d entries)\n"
>  			   "        -----    ----   --------\n",
> +#ifdef CONFIG_ARM64
> +			   stack_trace_nr_entries - 1);
> +#else
>  			   stack_trace_nr_entries);
> -
> +#endif
> +#ifdef CONFIG_ARM64
> +	for (i = 1; i < stack_trace_nr_entries; i++) {
> +#else
>  	for (i = 0; i < stack_trace_nr_entries; i++) {
> +#endif
>  		if (i + 1 == stack_trace_nr_entries)
>  			size = stack_trace_index[i];
>  		else
>  			size = stack_trace_index[i] - stack_trace_index[i+1];
>  
> +#ifdef CONFIG_ARM64
> +		pr_emerg("%3ld) %8d   %5d   %pS\n", i-1, stack_trace_index[i],
> +				size, (void *)stack_dump_trace[i-1]);
> +#else
>  		pr_emerg("%3ld) %8d   %5d   %pS\n", i, stack_trace_index[i],
>  				size, (void *)stack_dump_trace[i]);
> +#endif
>  	}
>  }
>  
> @@ -324,8 +336,11 @@ static int t_show(struct seq_file *m, void *v)
>  		seq_printf(m, "        Depth    Size   Location"
>  			   "    (%d entries)\n"
>  			   "        -----    ----   --------\n",
> +#ifdef CONFIG_ARM64
> +			   stack_trace_nr_entries - 1);
> +#else
>  			   stack_trace_nr_entries);
> -
> +#endif
>  		if (!stack_tracer_enabled && !stack_trace_max_size)
>  			print_disabled(m);
>  
> @@ -334,6 +349,10 @@ static int t_show(struct seq_file *m, void *v)
>  
>  	i = *(long *)v;
>  
> +#ifdef CONFIG_ARM64
> +	if (i == 0)
> +		return 0;
> +#endif
>  	if (i >= stack_trace_nr_entries)
>  		return 0;
>  
> @@ -342,9 +361,14 @@ static int t_show(struct seq_file *m, void *v)
>  	else
>  		size = stack_trace_index[i] - stack_trace_index[i+1];
>  
> +#ifdef CONFIG_ARM64
> +	seq_printf(m, "%3ld) %8d   %5d   ", i-1, stack_trace_index[i], size);
> +	trace_lookup_stack(m, i-1);
> +#else
>  	seq_printf(m, "%3ld) %8d   %5d   ", i, stack_trace_index[i], size);
>  
>  	trace_lookup_stack(m, i);
> +#endif
>  
>  	return 0;
>  }
> -- 
> 2.18.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
