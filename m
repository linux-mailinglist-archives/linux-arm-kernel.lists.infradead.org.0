Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 934291969CD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 23:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlCHOk9eYGyPx6oi77rpaJhOl66Ye52gIanZWw0aN+0=; b=R1smtoIZyj4bGo
	N+/qdYgTLxqGSQHRbEhnPJS4ALkDpdXDWWfqzwrAbbXfJvfRaeGVJTSyp4W8qZoNDLAwWvR2MnSAb
	sCC/XLkiBbLMdtka9M/TFuyfsWskuT478Aw0nf5XIhk5PnsWn3ICehZw032UgWbxnG9zN+JzGIDbD
	km45fC0xJ+Zx3UFdus5wvivm0eP99cMcsSscJglz+9m4gyEucUrHA1sRNGaMdXWZporzBFVGOMUjE
	Q4tDSWYO+FrV1ZznHgVUAozyxLSS3ABk/kgzBe70aqbECpl1WQ4/TFT/Glb0u6OLhispTWUB121Ra
	Ds7CU5S9MsvXTGOKG8kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIJuq-0004bh-Gj; Sat, 28 Mar 2020 22:26:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIJug-0004ax-I2
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 22:26:48 +0000
Received: by mail-pf1-x443.google.com with SMTP id k15so1404218pfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 15:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=I449BRJgedsSivIUojFSGlUr7SW0PD6XbCp1RY7ckCM=;
 b=R6dijiNnIGvlrdz/LQlTPtBAm1fuVdrIyT1rEN6d57HB22MPKyolrj2fViPcfIP+zy
 4O+MU80uB8/DRKyPw/z9pKEG01b2k8uwV9fqfkgdZdfNg+pUP51naSDHX1bXEnkzR+io
 yMlJpSHEuuISEw4k/+SDzjTgDqEmje8AQuNos=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=I449BRJgedsSivIUojFSGlUr7SW0PD6XbCp1RY7ckCM=;
 b=F3vgolehsjI9gv9CnzjVFrblJVGrYnmevbbl40Ns+6WRaYjuCcPPpLFcAqYEjwFR0P
 u3uka91Aue0MH5uOlpOioCHSjZ5D04HWcr0wA1qOOwa9ZJ+5IzlnjP8zelzN5MXbt83T
 JgdL4gsEowyDkyvq7xuUdhrfyr7vcMoHQhxSBwMUBmMs4Cio9VpjuIUEmiAKN5gL3zKx
 9C/1gbw1o+d3P9E88UH3rv40BfZTNhHNc14+OPfsug2rAvWB1WUQ/dKx+6z+I4XGw4rS
 vI27o4lXAqWUiWM/Ywas+b9V7rLSrIEgrKxCC611hfmHDtPDuVvvpKaxJCfu95cY+u9/
 oAGQ==
X-Gm-Message-State: AGi0PuZWv3GFlQmR3ZpUMXT9Avx5PyuYzzahOYMFLZ7yzQ2TcJt+218x
 k+eksvw0Xdsm2uYvMasn4OuZUw==
X-Google-Smtp-Source: APiQypKzsQBsasJUhTY1iSTW4oocv7YTHqUrrfDWiF0W34WrwDjKao4vSCoTbxgj3zPXUf3E+WdlUQ==
X-Received: by 2002:a63:5744:: with SMTP id h4mr2535885pgm.235.1585434404738; 
 Sat, 28 Mar 2020 15:26:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o15sm1812220pgj.60.2020.03.28.15.26.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 15:26:43 -0700 (PDT)
Date: Sat, 28 Mar 2020 15:26:42 -0700
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v2 4/5] x86/entry: Enable random_kstack_offset support
Message-ID: <202003281520.A9BFF461@keescook>
References: <20200324203231.64324-1-keescook@chromium.org>
 <20200324203231.64324-5-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324203231.64324-5-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_152646_627300_FC0FFCE4 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com, "Perla,
 Enrico" <enrico.perla@intel.com>, Will Deacon <will@kernel.org>,
 Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 01:32:30PM -0700, Kees Cook wrote:
> Allow for a randomized stack offset on a per-syscall basis, with roughly
> 5 bits of entropy.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/x86/Kconfig        |  1 +
>  arch/x86/entry/common.c | 12 +++++++++++-
>  2 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> index beea77046f9b..b9d449581eb6 100644
> --- a/arch/x86/Kconfig
> +++ b/arch/x86/Kconfig
> @@ -150,6 +150,7 @@ config X86
>  	select HAVE_ARCH_TRANSPARENT_HUGEPAGE
>  	select HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD if X86_64
>  	select HAVE_ARCH_VMAP_STACK		if X86_64
> +	select HAVE_ARCH_RANDOMIZE_KSTACK_OFFSET
>  	select HAVE_ARCH_WITHIN_STACK_FRAMES
>  	select HAVE_ASM_MODVERSIONS
>  	select HAVE_CMPXCHG_DOUBLE
> diff --git a/arch/x86/entry/common.c b/arch/x86/entry/common.c
> index 9747876980b5..086d7af570af 100644
> --- a/arch/x86/entry/common.c
> +++ b/arch/x86/entry/common.c
> @@ -26,6 +26,7 @@
>  #include <linux/livepatch.h>
>  #include <linux/syscalls.h>
>  #include <linux/uaccess.h>
> +#include <linux/randomize_kstack.h>
>  
>  #include <asm/desc.h>
>  #include <asm/traps.h>
> @@ -189,6 +190,13 @@ __visible inline void prepare_exit_to_usermode(struct pt_regs *regs)
>  	lockdep_assert_irqs_disabled();
>  	lockdep_sys_exit();
>  
> +	/*
> +	 * x86_64 stack alignment means 3 bits are ignored, so keep
> +	 * the top 5 bits. x86_32 needs only 2 bits of alignment, so
> +	 * the top 6 bits will be used.
> +	 */
> +	choose_random_kstack_offset(rdtsc() & 0xFF);
> +
>  	cached_flags = READ_ONCE(ti->flags);
>  
>  	if (unlikely(cached_flags & EXIT_TO_USERMODE_LOOP_FLAGS))
> @@ -283,6 +291,7 @@ __visible void do_syscall_64(unsigned long nr, struct pt_regs *regs)
>  {
>  	struct thread_info *ti;
>  
> +	add_random_kstack_offset();
>  	enter_from_user_mode();
>  	local_irq_enable();
>  	ti = current_thread_info();

So, I got an email from 0day that this caused a performance regression[1]
with things _turned off_. On closer examination:

Before (objdump -dS vmlinux):

__visible void do_syscall_64(unsigned long nr, struct pt_regs *regs)
{
ffffffff81003920:       41 54                   push   %r12
ffffffff81003922:       55                      push   %rbp
ffffffff81003923:       48 89 f5                mov    %rsi,%rbp
ffffffff81003926:       53                      push   %rbx
ffffffff81003927:       48 89 fb                mov    %rdi,%rbx
        struct thread_info *ti;

        enter_from_user_mode();
        local_irq_enable();
...


After:

__visible void do_syscall_64(unsigned long nr, struct pt_regs *regs)
{ 
ffffffff81003960:       55                      push   %rbp
ffffffff81003961:       48 89 e5                mov    %rsp,%rbp
ffffffff81003964:       41 55                   push   %r13
ffffffff81003966:       41 54                   push   %r12
ffffffff81003968:       49 89 f4                mov    %rsi,%r12
ffffffff8100396b:       53                      push   %rbx
ffffffff8100396c:       48 89 fb                mov    %rdi,%rbx
ffffffff8100396f:       48 83 ec 08             sub    $0x8,%rsp
ffffffff81003973:       65 48 8b 04 25 28 00    mov    %gs:0x28,%rax
ffffffff8100397a:       00 00 
ffffffff8100397c:       48 89 45 e0             mov    %rax,-0x20(%rbp)
ffffffff81003980:       31 c0                   xor    %eax,%eax
        asm_volatile_goto("1:"
ffffffff81003982:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
        struct thread_info *ti;

        add_random_kstack_offset();
        enter_from_user_mode();
        local_irq_enable();

The "nopl" there is the static_branch code that I'd expect. However, the
preample is quite different. *drum roll* Anyone else recognize %gs:0x28?

That's the stack canary. :P It seems that GCC views this as an array:

                char *ptr = __builtin_alloca(offset & 0x3FF);
                asm volatile("" : "=m"(*ptr));

because it's locally allocated on the stack. *face palm*

I'll go figure out a way to fix this...

-Kees

[1] https://lore.kernel.org/lkml/202003281505.0F481D3@keescook/

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
