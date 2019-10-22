Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8855AE08D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2VMfyf1/VdZQFFOo3Ez3ZalEV2G6bOcQ6WJNkNcsuzk=; b=qw395Fc8QCALHr
	YW/YRFdERy5Oy1aBIhOAN7IrQhQxaGxYrEnS6VR4f1OH9ht2NG55g3XTHRK4mvgYIF0v9tXhUtw0r
	6SmvgN9DewgtIel+R+6B6eUwp5n7ZbZSr+D5CtFAFgxV4NkDvhsEGBch3+fsWaC4Mxq90gK+z3i4V
	GXDTNGv6+zAUrk28LJP91siZOdxMdbc5a/ottUuUARIgy6G//v7srrVsLHdkfQ2pAvyHN9pEDo0uW
	zIQd6E0fn2u0ALQfTJkC1E9VwYVtfEGIGihFIarwAbWZOPogV0Uc/rcd2H+fjuJTXhlalrnDFo0ye
	cmxeswCC8An+09hXvgwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMx1l-0001BC-5k; Tue, 22 Oct 2019 16:28:57 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMx1W-00018n-32
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:28:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F40F34AE;
 Tue, 22 Oct 2019 09:28:30 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4DC9A3F71A;
 Tue, 22 Oct 2019 09:28:29 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:28:27 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20191022162826.GC699@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018161033.261971-7-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_092842_220591_F18F4BEE 
X-CRM114-Status: GOOD (  20.58  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Kees Cook <keescook@chromium.org>,
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

On Fri, Oct 18, 2019 at 09:10:21AM -0700, Sami Tolvanen wrote:
> This change adds generic support for Clang's Shadow Call Stack, which
> uses a shadow stack to protect return addresses from being overwritten
> by an attacker. Details are available here:
> 
>   https://clang.llvm.org/docs/ShadowCallStack.html
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  Makefile                       |   6 ++
>  arch/Kconfig                   |  39 ++++++++
>  include/linux/compiler-clang.h |   2 +
>  include/linux/compiler_types.h |   4 +
>  include/linux/scs.h            |  88 ++++++++++++++++++
>  init/init_task.c               |   6 ++
>  init/main.c                    |   3 +
>  kernel/Makefile                |   1 +
>  kernel/fork.c                  |   9 ++
>  kernel/sched/core.c            |   2 +
>  kernel/sched/sched.h           |   1 +
>  kernel/scs.c                   | 162 +++++++++++++++++++++++++++++++++
>  12 files changed, 323 insertions(+)
>  create mode 100644 include/linux/scs.h
>  create mode 100644 kernel/scs.c
> 
> diff --git a/Makefile b/Makefile
> index ffd7a912fc46..e401fa500f62 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -846,6 +846,12 @@ ifdef CONFIG_LIVEPATCH
>  KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
>  endif
>  
> +ifdef CONFIG_SHADOW_CALL_STACK
> +KBUILD_CFLAGS	+= -fsanitize=shadow-call-stack
> +DISABLE_SCS	:= -fno-sanitize=shadow-call-stack
> +export DISABLE_SCS
> +endif

I think it would be preferable to follow the example of CC_FLAGS_FTRACE
so that this can be filtered out, e.g.

ifdef CONFIG_SHADOW_CALL_STACK
CFLAGS_SCS := -fsanitize=shadow-call-stack
KBUILD_CFLAGS += $(CFLAGS_SCS)
export CC_FLAGS_SCS
endif

... with removal being:

CFLAGS_REMOVE := $(CC_FLAGS_SCS)

... or:

CFLAGS_REMOVE_obj.o := $(CC_FLAGS_SCS)

That way you only need to define the flags once, so the enable and
disable falgs remain in sync by construction.

[...]

> +config ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	bool
> +	help
> +	  An architecture should select this if it supports Clang's Shadow
> +	  Call Stack, has asm/scs.h, and implements runtime support for shadow
> +	  stack switching.
> +
> +config SHADOW_CALL_STACK_VMAP
> +	def_bool n

A bool is default n, so you can just say bool here.

> +	depends on SHADOW_CALL_STACK
> +	help
> +	  Use virtually mapped shadow call stacks. Selecting this option
> +	  provides better stack exhaustion protection, but increases per-thread
> +	  memory consumption as a full page is allocated for each shadow stack.
> +
> +choice
> +	prompt "Return-oriented programming (ROP) protection"
> +	default ROP_PROTECTION_NONE
> +	help
> +	  This option controls kernel protections against return-oriented
> +	  programming (ROP) attacks.

Are we expecting more options here in future?

> +config ROP_PROTECTION_NONE
> +	bool "None"

IIUC this is for the benefit of the kretprobes Kconfig.

I think it would be better to make that depend on !SHADOW_CALL_STACK, as
it's plausible that we can add a different ROP protection mechanism that
is compatible with kretprobes.

> +config SHADOW_CALL_STACK
> +	bool "Clang Shadow Call Stack"
> +	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	depends on CC_IS_CLANG && CLANG_VERSION >= 70000

Is there a reason for an explicit version check rather than a
CC_HAS_<feature> check? e.g. was this available but broken in prior
versions of clang?

[...]

> +#define SCS_GFP			(GFP_KERNEL | __GFP_ZERO)

Normally GFP_ is a prefix. For consistency, GFP_SCS would be preferable.

> +extern unsigned long init_shadow_call_stack[];

Do we need this exposed here? IIUC this is only assigned by assembly in
arch code.

[...]

> +void scs_set_init_magic(struct task_struct *tsk)
> +{
> +	scs_save(tsk);
> +	scs_set_magic(tsk);
> +	scs_load(tsk);
> +}

Can we initialize this at compile time instead?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
