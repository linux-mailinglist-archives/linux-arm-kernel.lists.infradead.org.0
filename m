Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 610CF1E41D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imrqqgX1+aLORl2ejQT2pfxpRGVvU9lnsVSFHfgdQQ4=; b=rJZ/7xBZPlm8ud
	LMtUeDljw+86ikuJSdHDNI8AEtTF2CznDQmFx0TdamW2vRCJtj951fMJFEtRv7AmmvBDFZ8/XAjPi
	ElEZ2woWSjzgw4BYk6e0XfO+/Mcrnne+v6laRJBmZZAOZR/yb3LVnYnoRsvkIp6ZKKOatH0jEbQHt
	n6yfoV37ThQdT9SL7VsTNPpITdqwK7XSaQOb1+z3bS9cNEIigz2kmbdW4InLRUDggipiWIthxAA3D
	F/sJ039xrRXku13rzpgqPy2/ASBLu/dGwCqDj1pEJLfdSoluTCFHl9Kc7GZntBDSxs7SJmReBpnnJ
	CEYSZFbcnJQlg2Op24OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduzQ-0003NN-8Z; Wed, 27 May 2020 12:16:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdupt-000712-Cg
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 12:07:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D17D20657;
 Wed, 27 May 2020 12:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590581224;
 bh=RgGyDDKi+fu1bR4P7/Fy0rAi8l/nj+5VQFHBDoSVtcE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZF2owS806SpqYaXKfAjq4KlQVTMhd3lE42KLHUkrkI0jk2s9E+iagY48+Hm3Oo+XT
 nvHs6GpcbizIFvPC4o+ZkCNj53a1eZRaXG4EY+2IjXtnUvSW2sd0fJtOcUKJr+xUh/
 EgFThQ6CjGzY8Kx0Us2CTc7S5XtDXf4gsvvXIWqw=
Date: Wed, 27 May 2020 13:06:59 +0100
From: Will Deacon <will@kernel.org>
To: Keno Fischer <keno@juliacomputing.com>
Subject: Re: [PATCH] arm64: ptrace: Fix PTRACE_SINGLESTEP into signal handler
Message-ID: <20200527120659.GC13795@willie-the-truck>
References: <20200524043827.GA33001@juliacomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200524043827.GA33001@juliacomputing.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_050705_483061_F185DEA1 
X-CRM114-Status: GOOD (  22.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: catalin.marinas@arm.com, oleg@redhat.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 24, 2020 at 12:38:27AM -0400, Keno Fischer wrote:
> Executing PTRACE_SINGLESTEP at a signal stop is special. It
> is supposed to step merely the signal setup work that the
> kernel does, but not any instructions in user space. Since
> not all architectures have the ability to generate a
> single-step exception directly upon return from user-space,
> there is a generic pseudo-single-step-stop that may be used
> for this purpose (tracehook_signal_handler). Now, arm64 does
> have the ability to generate single-step exceptions directly
> upon return to userspace and was using this capability (rather
> than the generic pseudo-trap) to obtain a similar effect. However,
> there is actually a subtle difference that becomes noticeable
> when the signal handler in question attempts to block SIGTRAP
> (either because it is set in sa_mask, or because it is a handler
> for SIGTRAP itself and SA_NODEFER is not set). In such a
> situation, a real single step exception will cause the SIGTRAP
> signal to be forcibly unblocked and the signal disposition
> to be reset to SIG_DFL. The generic pseudo-single-step does
> not suffer from this problem, because the SIGTRAP it delivers
> is not real. The arm64 behavior is problematic, because a forced
> reset of the signal disposition can be quite disruptive to the
> userspace program. This patch brings the arm64 behavior in line
> with the other major architectures by using the generic
> pseudo-single-step-stop, avoiding the problematic interaction
> with SIGTRAP masks.
> 
> Fixes: 2c020ed8 ("arm64: Signal handling support")

nit: please use a 12-character ID here.

> Signed-off-by: Keno Fischer <keno@juliacomputing.com>
> ---
>  arch/arm64/kernel/signal.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> index 339882db5a91..cf237ee9443b 100644
> --- a/arch/arm64/kernel/signal.c
> +++ b/arch/arm64/kernel/signal.c
> @@ -808,14 +808,7 @@ static void handle_signal(struct ksignal *ksig, struct pt_regs *regs)
>  	 */
>  	ret |= !valid_user_regs(&regs->user_regs, current);
>  
> -	/*
> -	 * Fast forward the stepping logic so we step into the signal
> -	 * handler.
> -	 */
> -	if (!ret)
> -		user_fastforward_single_step(tsk);
> -
> -	signal_setup_done(ret, ksig, 0);
> +	signal_setup_done(ret, ksig, test_thread_flag(TIF_SINGLESTEP));

another nit: tsk is now unused, so this generates a compiler warning:


arch/arm64/kernel/signal.c:787:22: warning: unused variable 'tsk' [-Wunused-variable]
        struct task_struct *tsk = current;
                            ^
1 warning generated.


Also, the si_code used by signal_setup_done seems to be SIGTRAP, whereas
we usually set TRAP_TRACE. What's the correct behaviour here? Looks like x86
uses TRAP_BRKPT... :/

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
