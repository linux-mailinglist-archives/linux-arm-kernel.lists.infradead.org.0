Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEAF7D8BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 11:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gpYhOwBig8dbTNF4MyLpi9HF3Hx+/Wl7Km+rj7akEW0=; b=Qo4MI83KdTuFSe
	hG7LwihSC9GuuI9gRxWJDs+WwVPSi7DLhsprWkAD/pFkemfv5zC0v2eNqXaR3uaX1QMAz29Xrer+/
	WqXVbaTafH/8HARWwoX2UJlnXFoYvKm0bmzdrnqnJbF1ICzE4Keme2QdTKrP05A46hLGcEhyN6gz9
	qR8+flEzCJdiOXTTen5Oqzlou1tv3cJ88+Wb0+xodWVxBIP05OwTp8NJxdXaNeq73OfAgQmY32duL
	f0yDmnzRx8LyUo69ujEAi2koG+Tj4u2oy6csKQ59T3LnjUqdQ3MVax/8mC9Gr0x2VegxmYjxOSmB8
	O8N3GPoHPrguT6ywvIUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht7b7-0007Ky-7L; Thu, 01 Aug 2019 09:42:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht7b0-0007HA-1G
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 09:42:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0329820657;
 Thu,  1 Aug 2019 09:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564652521;
 bh=t+Op6Uwe8BUlsr4ygy/wQstMeF0WRvr0lbdCK/Qyxh0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ihyJHqhkPmG1jWyccZwKTtJDE5oYxoj2l5LfhNWBm/zPuBmBcWVPCSjxRN9OLp3gx
 j1CF+4I6m8CzwtomdrSgbNWx1MtruO/eqC9+lhgMB4Vd/ecverUIZJHfYuiXEsf4nz
 GllHXMLvb1CAFgv5pR6pGhilBLzI56rCXcKEHmOw=
Date: Thu, 1 Aug 2019 10:41:57 +0100
From: Will Deacon <will@kernel.org>
To: Jiping Ma <jiping.ma2@windriver.com>
Subject: Re: [PATCH v2] tracing: Function stack size and its name mismatch in
 arm64
Message-ID: <20190801094156.emo36ekvrm74nndl@willie-the-truck>
References: <20190801083340.57075-1-jiping.ma2@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801083340.57075-1-jiping.ma2@windriver.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_024202_120390_D84DF049 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 rostedt@goodmis.org, mingo@redhat.com, joel@joelfernandes.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 04:33:40PM +0800, Jiping Ma wrote:
> In arm64, the PC of the frame is matched to the last frame function, 
> rather than the function of his frame. For the following example, the 
> stack size of occupy_stack_init function should be 3376, rather than 176.
> 
> Wrong info:
> Depth Size Location (16 entries)
> ----- ---- --------
> 0) 5400 16 __update_load_avg_se.isra.2+0x28/0x220
> 1) 5384 96 put_prev_entity+0x250/0x338
> 2) 5288 80 pick_next_task_fair+0x4c4/0x508
> 3) 5208 72 __schedule+0x100/0x600
> 4) 5136 184 preempt_schedule_common+0x28/0x48
> 5) 4952 32 preempt_schedule+0x28/0x30
> 6) 4920 16 vprintk_emit+0x170/0x1f8
> 7) 4904 128 vprintk_default+0x48/0x58
> 8) 4776 64 vprintk_func+0xf8/0x1c8
> 9) 4712 112 printk+0x70/0x90
> 10) 4600 176 occupy_stack_init+0x64/0xc0 [kernel_stack]
> 11) 4424 3376 do_one_initcall+0x68/0x248
> 12) 1048 144 do_init_module+0x60/0x1f0
> 13) 904 48 load_module+0x1d50/0x2340
> 14) 856 352 sys_finit_module+0xd0/0xe8
> 15) 504 504 el0_svc_naked+0x30/0x34
> 
> Correct info:
> Depth Size Location (18 entries)
> ----- ---- --------
> 0) 5464 48 cgroup_rstat_updated+0x20/0x100
> 1) 5416 32 cgroup_base_stat_cputime_account_end.isra.0+0x30/0x60
> 2) 5384 32 __cgroup_account_cputime+0x3c/0x48
> 3) 5352 64 update_curr+0xc4/0x1d0
> 4) 5288 72 pick_next_task_fair+0x444/0x508
> 5) 5216 184 __schedule+0x100/0x600
> 6) 5032 32 preempt_schedule_common+0x28/0x48
> 7) 5000 16 preempt_schedule+0x28/0x30
> 8) 4984 128 vprintk_emit+0x170/0x1f8
> 9) 4856 64 vprintk_default+0x48/0x58
> 10) 4792 112 vprintk_func+0xf8/0x1c8
> 11) 4680 176 printk+0x70/0x90
> 12) 4504 80 func_test+0x7c/0xb8 [kernel_stack]
> 13) 4424 3376 occupy_stack_init+0x7c/0xc0 [kernel_stack]
> 14) 1048 144 do_one_initcall+0x68/0x248
> 15) 904 48 do_init_module+0x60/0x1f0
> 16) 856 352 load_module+0x1d50/0x2340
> 17) 504 504 sys_finit_module+0xd0/0xe8
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

Sorry, but I have no idea what the problem is here. All I know is that the
solution looks highly dubious and I find it very hard to believe that the
arm64 backtracing code is uniquely special as to deserve being called out
like this. I suspect there's a bug lurking somewhere, but you really need
to do a better job of explaining the issue rather than simply providing a
couple of backtraces with no context.

*Why* does the frame appear to be off-by-one?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
