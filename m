Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A65FB1691C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 19:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sPKVIfEb7XaStnazcvCBcOZ3Ge42X9IV5idGu2Jy2DA=; b=C5TGfStmgulUoW
	bOJQps3/UXRwgVGJ7sNGR7fbWi7ciGXcJXDvAfglo4R5J321EqLfNc1ajz7EAu8fMVrvDlsWiY/Zo
	BjsjXwz9UvBeoauVypcJx8lvL4SP5FVx+F4yJ9TeMpZypKb2zJbR4Vyn5/ygHNoRrzyfKy+iPFLe+
	O9Y8cWS8E17wb06spil+syQsMH4RfG+fXI7+HGG4466qsMl7KIiWTndtQIvLNPZ/BDuoCvmVkNhXR
	ypfxXYIjAjONno3+6umAz7V9QaHkL29VCauqgAqp3m+zXOHhZkFr8Sk3s9Thron2c5KlZuNQJw0IQ
	cA/51ZU05hxS/j4TgMDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3qN-0004eN-W3; Tue, 07 May 2019 17:25:32 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3qF-0004QS-2B
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 17:25:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CF4F4A78;
 Tue,  7 May 2019 10:25:20 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 778373F5AF;
 Tue,  7 May 2019 10:25:19 -0700 (PDT)
Date: Tue, 7 May 2019 18:25:12 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v2 3/3] arm64: use the correct function type for
 __arm64_sys_ni_syscall
Message-ID: <20190507172512.GA35803@lakrids.cambridge.arm.com>
References: <20190503191225.6684-1-samitolvanen@google.com>
 <20190503191225.6684-4-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503191225.6684-4-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_102523_120346_43A8A2AA 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 12:12:25PM -0700, Sami Tolvanen wrote:
> Calling sys_ni_syscall through a syscall_fn_t pointer trips indirect
> call Control-Flow Integrity checking due to a function type
> mismatch. Use SYSCALL_DEFINE0 for __arm64_sys_ni_syscall instead and
> remove the now unnecessary casts.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/kernel/sys.c   | 14 +++++++++-----
>  arch/arm64/kernel/sys32.c | 12 ++++++++----
>  2 files changed, 17 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/kernel/sys.c b/arch/arm64/kernel/sys.c
> index b44065fb16160..4f8e8a7237a85 100644
> --- a/arch/arm64/kernel/sys.c
> +++ b/arch/arm64/kernel/sys.c
> @@ -47,22 +47,26 @@ SYSCALL_DEFINE1(arm64_personality, unsigned int, personality)
>  	return ksys_personality(personality);
>  }
>  
> +asmlinkage long sys_ni_syscall(void);
> +
> +SYSCALL_DEFINE0(ni_syscall)
> +{
> +	return sys_ni_syscall();
> +}

I strongly think that we cant to fix up the common definition in
kernel/sys_ni.c rather than having a point-hack in arm64. Other
architectures (e.g. x86, s390) will want the same for CFI, and I'd like
to ensure that our approached don't diverge.

I took a quick look, and it looks like it's messy but possible to fix
up the core.

I also suspect that using SYSCALL_DEFINE0() as it currently stands isn't
a great idea, since it'll allow fault injection for unimplemented
syscalls, which sounds dubious to me.

Thanks,
Mark.

> +
>  /*
>   * Wrappers to pass the pt_regs argument.
>   */
>  #define sys_personality		sys_arm64_personality
>  
> -asmlinkage long sys_ni_syscall(const struct pt_regs *);
> -#define __arm64_sys_ni_syscall	sys_ni_syscall
> -
>  #undef __SYSCALL
>  #define __SYSCALL(nr, sym)	asmlinkage long __arm64_##sym(const struct pt_regs *);
>  #include <asm/unistd.h>
>  
>  #undef __SYSCALL
> -#define __SYSCALL(nr, sym)	[nr] = (syscall_fn_t)__arm64_##sym,
> +#define __SYSCALL(nr, sym)	[nr] = __arm64_##sym,
>  
>  const syscall_fn_t sys_call_table[__NR_syscalls] = {
> -	[0 ... __NR_syscalls - 1] = (syscall_fn_t)sys_ni_syscall,
> +	[0 ... __NR_syscalls - 1] = __arm64_sys_ni_syscall,
>  #include <asm/unistd.h>
>  };
> diff --git a/arch/arm64/kernel/sys32.c b/arch/arm64/kernel/sys32.c
> index 0f8bcb7de7008..f8f6c26cfd326 100644
> --- a/arch/arm64/kernel/sys32.c
> +++ b/arch/arm64/kernel/sys32.c
> @@ -133,17 +133,21 @@ COMPAT_SYSCALL_DEFINE6(aarch32_fallocate, int, fd, int, mode,
>  	return ksys_fallocate(fd, mode, arg_u64(offset), arg_u64(len));
>  }
>  
> -asmlinkage long sys_ni_syscall(const struct pt_regs *);
> -#define __arm64_sys_ni_syscall	sys_ni_syscall
> +asmlinkage long sys_ni_syscall(void);
> +
> +COMPAT_SYSCALL_DEFINE0(ni_syscall)
> +{
> +	return sys_ni_syscall();
> +}
>  
>  #undef __SYSCALL
>  #define __SYSCALL(nr, sym)	asmlinkage long __arm64_##sym(const struct pt_regs *);
>  #include <asm/unistd32.h>
>  
>  #undef __SYSCALL
> -#define __SYSCALL(nr, sym)	[nr] = (syscall_fn_t)__arm64_##sym,
> +#define __SYSCALL(nr, sym)	[nr] = __arm64_##sym,
>  
>  const syscall_fn_t compat_sys_call_table[__NR_compat_syscalls] = {
> -	[0 ... __NR_compat_syscalls - 1] = (syscall_fn_t)sys_ni_syscall,
> +	[0 ... __NR_compat_syscalls - 1] = __arm64_sys_ni_syscall,
>  #include <asm/unistd32.h>
>  };
> -- 
> 2.21.0.1020.gf2820cf01a-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
