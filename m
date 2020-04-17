Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1F71ADAA0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oB9Pd2Z67rWgDcRoTwRySxSb1uoYJMUqEI97a9JsXng=; b=azegVPA/KyKrzi
	XyeB0tJZZ/1feJqsPLDZ7N9AyUNfg8Pgdgm1xAEt3BL81SbSnEHyeYiQw/HM3uj8oMbbQK8Xy5+wW
	Tcm8LTE8UFSPf9UQbeeRn2zEhn5tev6l+RQ1kBqugYb40D1V14pxPc7vhRtmWkwe81UpRDvmB68nT
	Kuj+OYoIy/ZRGLjuTf7PDaTJPYcVZ6juwk3ATQoYm1LEF0tG3DeK47mBgjVOFznim7uFyqVPmisNE
	pYiBX4ivrnB0n0NakPIKlVPHGiiedKabAiWTK32UYZLVGNyMYjif/QdoRg+fSfMLMkDUSvjv0Kwwx
	iuLfNb8JVStIdq2C/pDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPNnn-00051G-Dq; Fri, 17 Apr 2020 10:00:51 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPNne-000501-Rg; Fri, 17 Apr 2020 10:00:43 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 816003010BC;
 Fri, 17 Apr 2020 12:00:39 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 6AB682B120750; Fri, 17 Apr 2020 12:00:39 +0200 (CEST)
Date: Fri, 17 Apr 2020 12:00:39 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v11 04/12] scs: disable when function graph tracing is
 enabled
Message-ID: <20200417100039.GS20730@hirez.programming.kicks-ass.net>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-5-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416161245.148813-5-samitolvanen@google.com>
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 09:12:37AM -0700, Sami Tolvanen wrote:
> The graph tracer hooks returns by modifying frame records on the
> (regular) stack, but with SCS the return address is taken from the
> shadow stack, and the value in the frame record has no effect. As we
> don't currently have a mechanism to determine the corresponding slot
> on the shadow stack (and to pass this through the ftrace
> infrastructure), for now let's disable SCS when the graph tracer is
> enabled.
> 
> With SCS the return address is taken from the shadow stack and the
> value in the frame record has no effect. The mcount based graph tracer
> hooks returns by modifying frame records on the (regular) stack, and
> thus is not compatible. The patchable-function-entry graph tracer
> used for DYNAMIC_FTRACE_WITH_REGS modifies the LR before it is saved
> to the shadow stack, and is compatible.
> 
> Modifying the mcount based graph tracer to work with SCS would require
> a mechanism to determine the corresponding slot on the shadow stack
> (and to pass this through the ftrace infrastructure), and we expect
> that everyone will eventually move to the patchable-function-entry
> based graph tracer anyway, so for now let's disable SCS when the
> mcount-based graph tracer is enabled.
> 
> SCS and patchable-function-entry are both supported from LLVM 10.x.

SCS would actually provide another way to do return hooking. An arguably
much saner model at that.

The 'normal' way is to (temporary) replace the on-stack return value,
and then replace it back in the return handler. This is because we can't
simply push a fake return on the stack, because that would wreck the
expected stack layout of the regular function.

But there is nothing that would stop us from pushing an extra entry on
the SCS. It would in fact be a much cleaner solution. The entry hook
sticks an extra entry on the SCS, the function ignores what's on the
normal stack and pops from the SCS, we return to the exit handler, which
in turn pops from the SCS stack at which point we're back to regular.

The only 'funny' is that the exit handler itself should not push to the
SCS, or we should frob the return-to-exit-handler such that it lands
after the push.

> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> ---
>  arch/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 691a552c2cc3..c53cb9025ad2 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -542,6 +542,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
>  
>  config SHADOW_CALL_STACK
>  	bool "Clang Shadow Call Stack"
> +	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
>  	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
>  	help
>  	  This option enables Clang's Shadow Call Stack, which uses a

AFAICT you also need to kill KRETPROBES, which plays similar games. And
doesn't BPF also do stuff like this?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
