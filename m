Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E5D11EFF0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 03:14:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0FwFuHnQj5LMfCBGTLjhsTXTFHJt1rW0nwr6qQ0TlyU=; b=Z2aQsqhA+P2JN8
	Pcz3J+fEAt2utnRel5DaobLOnXzmqQCuL2j3NFy+zla45T/bsqUH4uqq/eUznRqLwii+R3guogf53
	tw3dDpZp/Jg/WThetAZi3Q6hlcN/bLWcWYRR9/WTYENMn8uD1sIZMu4eSqfjnvmqX2sKUACJNcKdh
	mTdxZVvY8MQTnW4BzbKF8f2MT7UDh0JKDIsux5n/V9oPAexFyEIzXUUdG0FapLAM3f/uIYMwcNZBJ
	4jlU6cFBi1m8l1pXlj1KrVcr7LzNkvwggf95Bixwucs6EqOfPxfLobAOK5p7+q5yR/z3l+rhWW4Q+
	XdweXbwSKaIyltw0UULg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifwwr-0006b3-6P; Sat, 14 Dec 2019 02:14:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifwwf-0006aC-LD
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Dec 2019 02:14:15 +0000
Received: from home.goodmis.org (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D05242073D;
 Sat, 14 Dec 2019 02:14:10 +0000 (UTC)
Date: Fri, 13 Dec 2019 21:14:03 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH AUTOSEL 4.19 031/219] arm64: preempt: Fix big-endian when
 checking preempt count in assembly
Message-ID: <20191214021403.GA1357@home.goodmis.org>
References: <20191122054911.1750-1-sashal@kernel.org>
 <20191122054911.1750-24-sashal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122054911.1750-24-sashal@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_181413_746403_13C51B8B 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "kernelci.org bot" <bot@kernelci.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 12:46:03AM -0500, Sasha Levin wrote:
> From: Will Deacon <will.deacon@arm.com>
> 
> [ Upstream commit 7faa313f05cad184e8b17750f0cbe5216ac6debb ]
> 
> Commit 396244692232 ("arm64: preempt: Provide our own implementation of
> asm/preempt.h") extended the preempt count field in struct thread_info
> to 64 bits, so that it consists of a 32-bit count plus a 32-bit flag
> indicating whether or not the current task needs rescheduling.
> 
> Whilst the asm-offsets definition of TSK_TI_PREEMPT was updated to point
> to this new field, the assembly usage was left untouched meaning that a
> 32-bit load from TSK_TI_PREEMPT on a big-endian machine actually returns
> the reschedule flag instead of the count.
> 
> Whilst we could fix this by pointing TSK_TI_PREEMPT at the count field,
> we're actually better off reworking the two assembly users so that they
> operate on the whole 64-bit value in favour of inspecting the thread
> flags separately in order to determine whether a reschedule is needed.
> 
> Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Tested-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  arch/arm64/include/asm/assembler.h | 8 +++-----
>  arch/arm64/kernel/entry.S          | 6 ++----
>  2 files changed, 5 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
> index 5a97ac8531682..0c100506a29aa 100644
> --- a/arch/arm64/include/asm/assembler.h
> +++ b/arch/arm64/include/asm/assembler.h
> @@ -683,11 +683,9 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
>  	.macro		if_will_cond_yield_neon
>  #ifdef CONFIG_PREEMPT
>  	get_thread_info	x0
> -	ldr		w1, [x0, #TSK_TI_PREEMPT]
> -	ldr		x0, [x0, #TSK_TI_FLAGS]
> -	cmp		w1, #PREEMPT_DISABLE_OFFSET
> -	csel		x0, x0, xzr, eq
> -	tbnz		x0, #TIF_NEED_RESCHED, .Lyield_\@	// needs rescheduling?
> +	ldr		x0, [x0, #TSK_TI_PREEMPT]
> +	sub		x0, x0, #PREEMPT_DISABLE_OFFSET
> +	cbz		x0, .Lyield_\@
>  	/* fall through to endif_yield_neon */
>  	.subsection	1
>  .Lyield_\@ :
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 5f800384cb9a8..bb68323530458 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -622,10 +622,8 @@ el1_irq:
>  	irq_handler
>  
>  #ifdef CONFIG_PREEMPT
> -	ldr	w24, [tsk, #TSK_TI_PREEMPT]	// get preempt count
> -	cbnz	w24, 1f				// preempt count != 0
> -	ldr	x0, [tsk, #TSK_TI_FLAGS]	// get flags
> -	tbz	x0, #TIF_NEED_RESCHED, 1f	// needs rescheduling?
> +	ldr	x24, [tsk, #TSK_TI_PREEMPT]	// get preempt count
> +	cbnz	x24, 1f				// preempt count != 0
>  	bl	el1_preempt

While updating 4.19-rt, I stumbled on this change to arm64 backport. And was
confused by it, but looking deeper, this is something that breaks without
having 396244692232f ("arm64: preempt: Provide our own implementation of
asm/preempt.h").

That commit inverts the TIF_NEED_RESCHED meaning where set means we don't need
to resched, and clear means we need to resched. This way we can combine the
preempt count with the need resched flag test as they share the same 64bit
word. A 0 means we need to preempt (as NEED_RESCHED being zero means we need
to resched, and this also means preempt_count is zero). If the
TIF_NEED_RESCHED bit is set, that means we don't need to resched, and if
preempt count is something other than zero, we don't need to resched, and
since those two are together by commit 396244692232f, we can just test
#TSK_TI_PREEMPT. But because that commit does not exist in 4.19, we can't
remove the TIF_NEED_RESCHED check, that this backport does, and then breaks
the kernel!

-- Steve


>  1:
>  #endif
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
