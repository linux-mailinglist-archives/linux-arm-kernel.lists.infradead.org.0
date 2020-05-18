Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F611D777C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ByDyWceUyYvgnIV4yRjJDVcW4Pq4L+8S/hYO1F2/zjk=; b=ZblyyF+P9L/39W
	JNeernY/eUuDpEjtM521yIOQgdXSmURiK+HBK2IiXiV+noJyDUgvOmqKQO1hrcEjSU4ZJR3uys5ML
	tFuqLZ8Mv6+eJzzRDjSoMlqFGubo+TM0PpiS/WIjOHdkcN1lbtG7o8pU7jmw3A3uVdxMmvBDCRFC9
	XtadVnOylcE+jbFAe5au76pRMXqh8gCfzWffAZxUnWTZaPSlyNYXuwpAo6VxU1udmW0B4hyGlGkyT
	3poyK2V86waSF8Ky+hxrnnpTmIAHzPWtIM5Atnzwcf2u2GrYkfu0bWZFXfweH0T5jfzf2+0i9NujW
	msS1ly3xT+vU/fRwK43A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jae9F-0000f8-9k; Mon, 18 May 2020 11:41:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jae97-0000e9-6t
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:41:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D20A20709;
 Mon, 18 May 2020 11:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589802084;
 bh=7a20FWa41bfTcGNOMC+p9djim0aj+9TMfpuA4C90gYI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1dvTkpWpMnj9k0xFpeTjw3FrbmSbeaUKZekRRh/LaYPqmZmvZcfr7EadxkhlKCgZZ
 R5gtlL89QEUfPhvYeaxCD7/NVHiotnzKr55YnG2FSSl813D+9od1Uudpo3LvyPQ4kK
 BpN1aBlNJekML7vqUmwy7B3Kxjepf8Px+hi9y6cs=
Date: Mon, 18 May 2020 12:41:20 +0100
From: Will Deacon <will@kernel.org>
To: Keno Fischer <keno@juliacomputing.com>
Subject: Re: [PATCH] arm64: Fix PTRACE_SYSEMU semantics
Message-ID: <20200518114119.GB32394@willie-the-truck>
References: <20200515222253.GA38408@juliacomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515222253.GA38408@juliacomputing.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_044125_311687_2CFC73D8 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 oleg@redhat.com, sudeep.holla@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 06:22:53PM -0400, Keno Fischer wrote:
> Quoth the man page:
> ```
>        If the tracee was restarted by PTRACE_SYSCALL or PTRACE_SYSEMU, the
>        tracee enters syscall-enter-stop just prior to entering any system
>        call (which will not be executed if the restart was using
>        PTRACE_SYSEMU, regardless of any change made to registers at this
>        point or how the tracee is restarted after this stop).
> ```
> 
> The parenthetical comment is currently true on x86 and powerpc,
> but not currently true on arm64. arm64 re-checks the _TIF_SYSCALL_EMU
> flag after the syscall entry ptrace stop. However, at this point,
> it reflects which method was used to re-start the syscall
> at the entry stop, rather than the method that was used to reach it.
> Fix that by recording the original flag before performing the ptrace
> stop, bringing the behavior in line with documentation and x86/powerpc.
> 
> Signed-off-by: Keno Fischer <keno@juliacomputing.com>
> ---
>  arch/arm64/kernel/ptrace.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> index b3d3005d9515..b67b4d14aa17 100644
> --- a/arch/arm64/kernel/ptrace.c
> +++ b/arch/arm64/kernel/ptrace.c
> @@ -1829,10 +1829,12 @@ static void tracehook_report_syscall(struct pt_regs *regs,
>  
>  int syscall_trace_enter(struct pt_regs *regs)
>  {
> -	if (test_thread_flag(TIF_SYSCALL_TRACE) ||
> -		test_thread_flag(TIF_SYSCALL_EMU)) {
> +	u32 flags = READ_ONCE(current_thread_info()->flags) &
> +		(_TIF_SYSCALL_EMU | _TIF_SYSCALL_TRACE);
> +
> +	if (flags) {

nit: but I'd rather the '&' operation was in the conditional so that the
'flags' variable holds all of the flags.

With that:

Acked-by: Will Deacon <will@kernel.org>

Also needs:

Cc: <stable@vger.kernel.org>
Fixes: f086f67485c5 ("arm64: ptrace: add support for syscall emulation")

Catalin -- can you pick this up for 5.7 please, with my 'nit' addressed?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
