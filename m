Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C3CE0A89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 19:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=17at3eukRJWyzitjglBmRb0tM0nhu+Kn5NJqbpEcJmg=; b=FTeeBuG1Qj5Yfb
	veCZuOSuoqovmd/xdC9baqu6RheT1TJ+uyDbscVsZjvS5fZSG7+EZpqR+JShZmM5KwxtWJ2AWizRC
	+SuqnucMyQY1ZP9FfTMc08y2lyRSyz8aP0aw5c2uqRCxpKz1RKGZzr4hk+rY/BMoBVeGpE6Sz4TKG
	iIdgE4mxkPKFMXAVVQJoIBAgb7h6/G0GcOZhYE0lE0q9zkhrcapEcsTD885NZciGhQyCskmVCPn7A
	eprjDxZ/yiw7m6usQYfVV0AtfQFxHc+Zl3etiF7eg4fak4GDA1DUBwIF0QsNZuwN4V9aSpaMQU3EV
	PeNWPH0w2IU/BG2iFQQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxsH-00019i-JN; Tue, 22 Oct 2019 17:23:13 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxrj-0000wk-Ml
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 17:22:41 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iMxrD-0002o8-Lr; Tue, 22 Oct 2019 19:22:07 +0200
Date: Tue, 22 Oct 2019 18:22:06 +0100
From: Marc Zyngier <maz@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH 03/18] arm64: kvm: stop treating register x18 as caller
 save
Message-ID: <20191022182206.0d8b2301@why>
In-Reply-To: <20191018161033.261971-4-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-4-samitolvanen@google.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: samitolvanen@google.com, will@kernel.org,
 catalin.marinas@arm.com, rostedt@goodmis.org, ard.biesheuvel@linaro.org,
 mark.rutland@arm.com, keescook@chromium.org,
 kernel-hardening@lists.openwall.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 labbott@redhat.com, Dave.Martin@arm.com, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_102239_908804_B481FE4D 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, clang-built-linux@googlegroups.com,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019 09:10:18 -0700
Sami Tolvanen <samitolvanen@google.com> wrote:

> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> In preparation of using x18 as a task struct pointer register when
> running in the kernel, stop treating it as caller save in the KVM
> guest entry/exit code. Currently, the code assumes there is no need
> to preserve it for the host, given that it would have been assumed
> clobbered anyway by the function call to __guest_enter(). Instead,
> preserve its value and restore it upon return.
> 
> Link: https://patchwork.kernel.org/patch/9836891/
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/kvm/hyp/entry.S | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
> index e5cc8d66bf53..20bd9a20ea27 100644
> --- a/arch/arm64/kvm/hyp/entry.S
> +++ b/arch/arm64/kvm/hyp/entry.S
> @@ -23,6 +23,7 @@
>  	.pushsection	.hyp.text, "ax"
>  
>  .macro save_callee_saved_regs ctxt
> +	str	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
>  	stp	x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
>  	stp	x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
>  	stp	x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
> @@ -38,6 +39,7 @@
>  	ldp	x25, x26, [\ctxt, #CPU_XREG_OFFSET(25)]
>  	ldp	x27, x28, [\ctxt, #CPU_XREG_OFFSET(27)]
>  	ldp	x29, lr,  [\ctxt, #CPU_XREG_OFFSET(29)]
> +	ldr	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]

There is now an assumption that ctxt is x18 (otherwise why would it be
out of order?). Please add a comment to that effect.

>  .endm
>  
>  /*
> @@ -87,12 +89,9 @@ alternative_else_nop_endif
>  	ldp	x14, x15, [x18, #CPU_XREG_OFFSET(14)]
>  	ldp	x16, x17, [x18, #CPU_XREG_OFFSET(16)]
>  
> -	// Restore guest regs x19-x29, lr
> +	// Restore guest regs x18-x29, lr
>  	restore_callee_saved_regs x18

Or you could elect another register such as x29 as the base, and keep
the above in a reasonable order.

>  
> -	// Restore guest reg x18
> -	ldr	x18,      [x18, #CPU_XREG_OFFSET(18)]
> -
>  	// Do not touch any register after this!
>  	eret
>  	sb
> @@ -114,7 +113,7 @@ ENTRY(__guest_exit)
>  	// Retrieve the guest regs x0-x1 from the stack
>  	ldp	x2, x3, [sp], #16	// x0, x1
>  
> -	// Store the guest regs x0-x1 and x4-x18
> +	// Store the guest regs x0-x1 and x4-x17
>  	stp	x2, x3,   [x1, #CPU_XREG_OFFSET(0)]
>  	stp	x4, x5,   [x1, #CPU_XREG_OFFSET(4)]
>  	stp	x6, x7,   [x1, #CPU_XREG_OFFSET(6)]
> @@ -123,9 +122,8 @@ ENTRY(__guest_exit)
>  	stp	x12, x13, [x1, #CPU_XREG_OFFSET(12)]
>  	stp	x14, x15, [x1, #CPU_XREG_OFFSET(14)]
>  	stp	x16, x17, [x1, #CPU_XREG_OFFSET(16)]
> -	str	x18,      [x1, #CPU_XREG_OFFSET(18)]
>  
> -	// Store the guest regs x19-x29, lr
> +	// Store the guest regs x18-x29, lr
>  	save_callee_saved_regs x1
>  
>  	get_host_ctxt	x2, x3

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
