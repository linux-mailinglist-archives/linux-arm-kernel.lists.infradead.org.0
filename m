Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD97AFE198
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 16:37:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfS4zZkTOVxazyWSfy9BL+sFe8dMEegoio/T/fNFuJ8=; b=SQ+spxXFCkZGZZ
	MWyl0hpQYL5rLM0MW6R3iI29CHWuMLHUPAjTVhe9XDgBo3ZMlYN4KudFw5TSDdllfPZo45ZwZnukW
	UvdKnAfzICRarVWy7Q2tTVzpXMHxX3wclDx2qsPBD9TkjY+Rxs0ZLjooyWj96ZpMyUhVRZGOVsACU
	AOCs/nmci4PHsHnRz97jZ6R5uqf5KD5kc23vknAegZS/dtcCCM19md65Pe0htmEPDDTsW9b4VObTs
	A6VuxvMnOdEVrJHlJknwKvZKHjW9r68SGE24mExk4GvoJgmNgwyMNyBJOwsLRrXVkqdAt2Iv1vGH2
	sbqeoraC59Hf/+xZT7SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVdf1-0003f3-A4; Fri, 15 Nov 2019 15:37:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVdeq-0003dt-Jd
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 15:37:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A421530E;
 Fri, 15 Nov 2019 07:37:10 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B1103F534;
 Fri, 15 Nov 2019 07:37:08 -0800 (PST)
Date: Fri, 15 Nov 2019 15:37:06 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v5 05/14] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20191115153705.GJ41572@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <20191105235608.107702-6-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105235608.107702-6-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_073712_733728_8CEB154C 
X-CRM114-Status: GOOD (  21.53  )
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 03:55:59PM -0800, Sami Tolvanen wrote:
> This change adds generic support for Clang's Shadow Call Stack,
> which uses a shadow stack to protect return addresses from being
> overwritten by an attacker. Details are available here:
> 
>   https://clang.llvm.org/docs/ShadowCallStack.html
> 
> Note that security guarantees in the kernel differ from the
> ones documented for user space. The kernel must store addresses
> of shadow stacks used by other tasks and interrupt handlers in
> memory, which means an attacker capable reading and writing
> arbitrary memory may be able to locate them and hijack control
> flow by modifying shadow stacks that are not currently in use.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
> ---
>  Makefile                       |   6 ++
>  arch/Kconfig                   |  33 ++++++
>  include/linux/compiler-clang.h |   6 ++
>  include/linux/compiler_types.h |   4 +
>  include/linux/scs.h            |  57 ++++++++++
>  init/init_task.c               |   8 ++
>  kernel/Makefile                |   1 +
>  kernel/fork.c                  |   9 ++
>  kernel/sched/core.c            |   2 +
>  kernel/scs.c                   | 187 +++++++++++++++++++++++++++++++++
>  10 files changed, 313 insertions(+)
>  create mode 100644 include/linux/scs.h
>  create mode 100644 kernel/scs.c
> 
> diff --git a/Makefile b/Makefile
> index b37d0e8fc61d..7f3a4c5c7dcc 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -846,6 +846,12 @@ ifdef CONFIG_LIVEPATCH
>  KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
>  endif
>  
> +ifdef CONFIG_SHADOW_CALL_STACK
> +CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
> +KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
> +export CC_FLAGS_SCS
> +endif
> +
>  # arch Makefile may override CC so keep this after arch Makefile is included
>  NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
>  
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 5f8a5d84dbbe..5e34cbcd8d6a 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -521,6 +521,39 @@ config STACKPROTECTOR_STRONG
>  	  about 20% of all kernel functions, which increases the kernel code
>  	  size by about 2%.
>  
> +config ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	bool
> +	help
> +	  An architecture should select this if it supports Clang's Shadow
> +	  Call Stack, has asm/scs.h, and implements runtime support for shadow
> +	  stack switching.
> +
> +config SHADOW_CALL_STACK_VMAP
> +	bool
> +	depends on SHADOW_CALL_STACK
> +	help
> +	  Use virtually mapped shadow call stacks. Selecting this option
> +	  provides better stack exhaustion protection, but increases per-thread
> +	  memory consumption as a full page is allocated for each shadow stack.

The bool needs some display text to make it selectable.

This should probably be below SHADOW_CALL_STACK so that when it shows up
in menuconfig it's where you'd expect it to be.

I locally hacked that in, but when building defconfig +
SHADOW_CALL_STACK + SHADOW_CALL_STACK_VMAP, the build explodes as below:

| [mark@lakrids:~/src/linux]% usellvm 9.0.0 usekorg 8.1.0 make ARCH=arm64 CROSS_COMPILE=aarch64-linux- CC=clang -j56 -s
| arch/arm64/kernel/scs.c:28:7: error: use of undeclared identifier 'VMALLOC_START'
|                                          VMALLOC_START, VMALLOC_END,
|                                          ^
| arch/arm64/kernel/scs.c:28:22: error: use of undeclared identifier 'VMALLOC_END'
|                                          VMALLOC_START, VMALLOC_END,
|                                                         ^
| arch/arm64/kernel/scs.c:29:7: error: use of undeclared identifier 'SCS_GFP'
|                                          SCS_GFP, PAGE_KERNEL,
|                                          ^
| arch/arm64/kernel/scs.c:29:16: error: use of undeclared identifier 'PAGE_KERNEL'
|                                          SCS_GFP, PAGE_KERNEL,
|                                                   ^
| 4 errors generated.
| scripts/Makefile.build:265: recipe for target 'arch/arm64/kernel/scs.o' failed
| make[2]: *** [arch/arm64/kernel/scs.o] Error 1
| scripts/Makefile.build:509: recipe for target 'arch/arm64/kernel' failed
| make[1]: *** [arch/arm64/kernel] Error 2
| Makefile:1655: recipe for target 'arch/arm64' failed
| make: *** [arch/arm64] Error 2
| make: *** Waiting for unfinished jobs....

Other than that, this largely looks good to me!

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
