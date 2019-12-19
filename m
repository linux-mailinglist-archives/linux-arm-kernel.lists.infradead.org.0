Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC73B126EED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 21:33:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RxNxPlR4CMpPwGhHrWrHCffjKZ/tP+kc3axubPzCX5s=; b=Ufs+60J2rlA6lA
	bVPuoxq6kqEW0R1Sd+tgzDYL5uHb4MH/yMwcfPg0vCTlyNhMgKeW4uXnUlyGDOWjq/3z0ZfWKn/p8
	YhT7X3rysstLv6PkB9cJsbFFL02va97opox5MaHE6mw45NGB7ZpVLmf10tg3iAfQZ0zJsvokt3PAV
	fceySrRpPNUVmCtF9pQ1CiVJ/T5KPhj4W7qa25vSzyyxGG+Q074gyzf6vWmr2pZY77PDUpmCxahqq
	3wqB2RsT4cD4VtjMgx6v39oCPnPWUBwa/dWVd+GO6q3w4+F4AVe5Y9fXfOvTfVDTRPMKMGaRCmzmG
	2ZiNaUtQi9qu9N9hh7cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2Tk-0005mr-TB; Thu, 19 Dec 2019 20:33:00 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2TZ-0005lO-VV
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 20:32:51 +0000
Received: by mail-wr1-x442.google.com with SMTP id y11so7310402wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 12:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ARb5mDSQveEIfXvs9vVwdJYuSobp7c8+9dPylHX7vY8=;
 b=VS7uNRIZZ8MLEOreXFGfNUO2CHd1si9RvqWaCYvzOM3+aojexZmOiyUhh9rhJeVIax
 5j9ugKW6vKVMc2o8Y2ZG9Up08CWE+VVptpfy8u5fQZCI89CWarhM+WBaRkJ874MQK7+y
 0uJKlq2uKGBNEL+6cYBo4uUkOq1RoUnGDuN5jpaMiaha7mNnt4YYXCHItlTSddHnrIid
 6WiA2rGnhFg1K/ZBAIn/aR2MT6nF/92S82f6dJ6HqAhD3ZOZTRn8HH5ZFKpZW5HTgaSx
 sy8Lt3wtUgeyKoCcFD+rBTmQzNR1h3KE1GKhqW0JQxQTtrDNwB1NLCOOUKpXUTebO6Ag
 9Oww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ARb5mDSQveEIfXvs9vVwdJYuSobp7c8+9dPylHX7vY8=;
 b=KExao2vavZMCNdZetZr6ygc87Xwg1k2+sE3nUSpeQeAwV6LkWrqmErAnv7OVXV1n6j
 9FbPUxNKIqWKs7iSCQ+dOx1eRrSufFY4QIyXAaAz8ixZUESJa3ZYcOWMnddrb9X29Bv8
 5e+I/wOp0WbsK6wJeytevH8ufFq6IPh4Ln2izIaQO6S8aW8jNlxGgJAxiaUPgQsJFqmx
 ZDC2pgvAJzqQkdnxhvBAs47KYEgNpR6nlz4xBJDTIzu6S5ZiwJppjO3TfrhShPdcGDZL
 7YenZaTESDuwWXqJBpWmsLPLcKou/f3uyXCKFuSBrOnLnuxdXF33R6LSQ2eI8AzrQ+vS
 JyYA==
X-Gm-Message-State: APjAAAWEgLVzrH7FacZTPU2iUB6TfDKTltYxNnuilFtpo1vfBuy7iodK
 YoCrmxkhsFuZBjpIgw9EVQwAr2mgSEkwypvA/yt0Zw==
X-Google-Smtp-Source: APXvYqyVQDM1TNKi2CDKuckeKwTsTs7+kz0LrmiO++KrHbrxaBx0jZpjzln/geYaoSRD8UwsRcYuADmjIj+d2QEQve8=
X-Received: by 2002:a5d:4984:: with SMTP id r4mr10905135wrq.137.1576787563681; 
 Thu, 19 Dec 2019 12:32:43 -0800 (PST)
MIME-Version: 1.0
References: <20191211184027.20130-1-catalin.marinas@arm.com>
 <20191211184027.20130-20-catalin.marinas@arm.com>
In-Reply-To: <20191211184027.20130-20-catalin.marinas@arm.com>
From: Peter Collingbourne <pcc@google.com>
Date: Thu, 19 Dec 2019 12:32:31 -0800
Message-ID: <CAMn1gO4iv1FsxV+aR3CgU=jgmVjHL0YQF-xJJG0UMv3nJZnOBw@mail.gmail.com>
Subject: Re: [PATCH 19/22] arm64: mte: Allow user control of the tag check
 mode via prctl()
To: Catalin Marinas <catalin.marinas@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, Kostya Serebryany <kcc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_123250_041496_DA951693 
X-CRM114-Status: GOOD (  29.83  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 10:45 AM Catalin Marinas
<catalin.marinas@arm.com> wrote:
>
> By default, even if PROT_MTE is set on a memory range, there is no tag
> check fault reporting (SIGSEGV). Introduce a set of option to the
> exiting prctl(PR_SET_TAGGED_ADDR_CTRL) to allow user control of the tag
> check fault mode:
>
>   PR_MTE_TCF_NONE  - no reporting (default)
>   PR_MTE_TCF_SYNC  - synchronous tag check fault reporting
>   PR_MTE_TCF_ASYNC - asynchronous tag check fault reporting
>
> These options translate into the corresponding SCTLR_EL1.TCF0 bitfield,
> context-switched by the kernel. Note that uaccess done by the kernel is
> not checked and cannot be configured by the user.
>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/include/asm/processor.h |   3 +
>  arch/arm64/kernel/process.c        | 119 +++++++++++++++++++++++++++--
>  include/uapi/linux/prctl.h         |   6 ++
>  3 files changed, 123 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> index 5ba63204d078..91aa270afc7d 100644
> --- a/arch/arm64/include/asm/processor.h
> +++ b/arch/arm64/include/asm/processor.h
> @@ -148,6 +148,9 @@ struct thread_struct {
>  #ifdef CONFIG_ARM64_PTR_AUTH
>         struct ptrauth_keys     keys_user;
>  #endif
> +#ifdef CONFIG_ARM64_MTE
> +       u64                     sctlr_tcf0;
> +#endif
>  };
>
>  static inline void arch_thread_struct_whitelist(unsigned long *offset,
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index dd98d539894e..47ce98f47253 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -317,11 +317,22 @@ static void flush_tagged_addr_state(void)
>                 clear_thread_flag(TIF_TAGGED_ADDR);
>  }
>
> +#ifdef CONFIG_ARM64_MTE
> +static void flush_mte_state(void)
> +{
> +       if (!system_supports_mte())
> +               return;
> +
> +       /* clear any pending asynchronous tag fault */
> +       clear_thread_flag(TIF_MTE_ASYNC_FAULT);
> +       /* disable tag checking */
> +       current->thread.sctlr_tcf0 = 0;
> +}
> +#else
>  static void flush_mte_state(void)
>  {
> -       if (system_supports_mte())
> -               clear_thread_flag(TIF_MTE_ASYNC_FAULT);
>  }
> +#endif
>
>  void flush_thread(void)
>  {
> @@ -484,6 +495,29 @@ static void ssbs_thread_switch(struct task_struct *next)
>                 set_ssbs_bit(regs);
>  }
>
> +#ifdef CONFIG_ARM64_MTE
> +static void update_sctlr_el1_tcf0(u64 tcf0)
> +{
> +       /* no need for ISB since this only affects EL0, implicit with ERET */
> +       sysreg_clear_set(sctlr_el1, SCTLR_EL1_TCF0_MASK, tcf0);
> +}
> +
> +/* Handle MTE thread switch */
> +static void mte_thread_switch(struct task_struct *next)
> +{
> +       if (!system_supports_mte())
> +               return;
> +
> +       /* avoid expensive SCTLR_EL1 accesses if no change */
> +       if (current->thread.sctlr_tcf0 != next->thread.sctlr_tcf0)
> +               update_sctlr_el1_tcf0(next->thread.sctlr_tcf0);

I don't entirely understand why yet, but I've found that this check is
insufficient for ensuring consistency between SCTLR_EL1.TCF0 and
sctlr_tcf0. In my Android test environment with some processes having
sctlr_tcf0=SCTLR_EL1_TCF0_SYNC and others having sctlr_tcf0=0, I am
seeing intermittent tag failures coming from the sctlr_tcf0=0
processes. With this patch:

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index ef3bfa2bf2b1..4e5d02520a51 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -663,6 +663,8 @@ static int do_sea(unsigned long addr, unsigned int
esr, struct pt_regs *regs)
 static int do_tag_check_fault(unsigned long addr, unsigned int esr,
                              struct pt_regs *regs)
 {
+       printk(KERN_ERR "do_tag_check_fault %lx %lx\n",
+              current->thread.sctlr_tcf0, read_sysreg(sctlr_el1));
        do_bad_area(addr, esr, regs);
        return 0;
 }

I see dmesg output like this:

[   15.249216] do_tag_check_fault 0 c60fc64791d

showing that SCTLR_EL1.TCF0 became inconsistent with sctlr_tcf0. This
patch fixes the problem for me:

diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index fba89c9f070b..fb012f0baa12 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -518,9 +518,7 @@ static void mte_thread_switch(struct task_struct *next)
        if (!system_supports_mte())
                return;

-       /* avoid expensive SCTLR_EL1 accesses if no change */
-       if (current->thread.sctlr_tcf0 != next->thread.sctlr_tcf0)
-               update_sctlr_el1_tcf0(next->thread.sctlr_tcf0);
+       update_sctlr_el1_tcf0(next->thread.sctlr_tcf0);
        update_gcr_el1_excl(next->thread.gcr_excl);
 }
 #else
@@ -643,15 +641,8 @@ static long set_mte_ctrl(unsigned long arg)
                return -EINVAL;
        }

-       /*
-        * mte_thread_switch() checks current->thread.sctlr_tcf0 as an
-        * optimisation. Disable preemption so that it does not see
-        * the variable update before the SCTLR_EL1.TCF0 one.
-        */
-       preempt_disable();
        current->thread.sctlr_tcf0 = tcf0;
        update_sctlr_el1_tcf0(tcf0);
-       preempt_enable();

        current->thread.gcr_excl = (arg & PR_MTE_EXCL_MASK) >>
PR_MTE_EXCL_SHIFT;
        update_gcr_el1_excl(current->thread.gcr_excl);

Since sysreg_clear_set only sets the sysreg if it ended up changing, I
wouldn't expect this to cause a significant performance hit unless
just reading SCTLR_EL1 is expensive. That being said, if the
inconsistency is indicative of a deeper problem, we should probably
address that.


Peter

> +}
> +#else
> +static void mte_thread_switch(struct task_struct *next)
> +{
> +}
> +#endif
> +
>  /*
>   * We store our current task in sp_el0, which is clobbered by userspace. Keep a
>   * shadow copy so that we can restore this upon entry from userspace.
> @@ -514,6 +548,7 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
>         uao_thread_switch(next);
>         ptrauth_thread_switch(next);
>         ssbs_thread_switch(next);
> +       mte_thread_switch(next);
>
>         /*
>          * Complete any pending TLB or cache maintenance on this CPU in case
> @@ -574,6 +609,67 @@ void arch_setup_new_exec(void)
>         ptrauth_thread_init_user(current);
>  }
>
> +#ifdef CONFIG_ARM64_MTE
> +static long set_mte_ctrl(unsigned long arg)
> +{
> +       u64 tcf0;
> +
> +       if (!system_supports_mte())
> +               return 0;
> +
> +       switch (arg & PR_MTE_TCF_MASK) {
> +       case PR_MTE_TCF_NONE:
> +               tcf0 = 0;
> +               break;
> +       case PR_MTE_TCF_SYNC:
> +               tcf0 = SCTLR_EL1_TCF0_SYNC;
> +               break;
> +       case PR_MTE_TCF_ASYNC:
> +               tcf0 = SCTLR_EL1_TCF0_ASYNC;
> +               break;
> +       default:
> +               return -EINVAL;
> +       }
> +
> +       /*
> +        * mte_thread_switch() checks current->thread.sctlr_tcf0 as an
> +        * optimisation. Disable preemption so that it does not see
> +        * the variable update before the SCTLR_EL1.TCF0 one.
> +        */
> +       preempt_disable();
> +       current->thread.sctlr_tcf0 = tcf0;
> +       update_sctlr_el1_tcf0(tcf0);
> +       preempt_enable();
> +
> +       return 0;
> +}
> +
> +static long get_mte_ctrl(void)
> +{
> +       if (!system_supports_mte())
> +               return 0;
> +
> +       switch (current->thread.sctlr_tcf0) {
> +       case SCTLR_EL1_TCF0_SYNC:
> +               return PR_MTE_TCF_SYNC;
> +       case SCTLR_EL1_TCF0_ASYNC:
> +               return PR_MTE_TCF_ASYNC;
> +       }
> +
> +       return 0;
> +}
> +#else
> +static long set_mte_ctrl(unsigned long arg)
> +{
> +       return 0;
> +}
> +
> +static long get_mte_ctrl(void)
> +{
> +       return 0;
> +}
> +#endif
> +
>  #ifdef CONFIG_ARM64_TAGGED_ADDR_ABI
>  /*
>   * Control the relaxed ABI allowing tagged user addresses into the kernel.
> @@ -582,9 +678,15 @@ static unsigned int tagged_addr_disabled;
>
>  long set_tagged_addr_ctrl(unsigned long arg)
>  {
> +       unsigned long valid_mask = PR_TAGGED_ADDR_ENABLE;
> +
>         if (is_compat_task())
>                 return -EINVAL;
> -       if (arg & ~PR_TAGGED_ADDR_ENABLE)
> +
> +       if (system_supports_mte())
> +               valid_mask |= PR_MTE_TCF_MASK;
> +
> +       if (arg & ~valid_mask)
>                 return -EINVAL;
>
>         /*
> @@ -594,6 +696,9 @@ long set_tagged_addr_ctrl(unsigned long arg)
>         if (arg & PR_TAGGED_ADDR_ENABLE && tagged_addr_disabled)
>                 return -EINVAL;
>
> +       if (set_mte_ctrl(arg) != 0)
> +               return -EINVAL;
> +
>         update_thread_flag(TIF_TAGGED_ADDR, arg & PR_TAGGED_ADDR_ENABLE);
>
>         return 0;
> @@ -601,13 +706,17 @@ long set_tagged_addr_ctrl(unsigned long arg)
>
>  long get_tagged_addr_ctrl(void)
>  {
> +       long ret = 0;
> +
>         if (is_compat_task())
>                 return -EINVAL;
>
>         if (test_thread_flag(TIF_TAGGED_ADDR))
> -               return PR_TAGGED_ADDR_ENABLE;
> +               ret = PR_TAGGED_ADDR_ENABLE;
>
> -       return 0;
> +       ret |= get_mte_ctrl();
> +
> +       return ret;
>  }
>
>  /*
> diff --git a/include/uapi/linux/prctl.h b/include/uapi/linux/prctl.h
> index 7da1b37b27aa..5e9323e66a38 100644
> --- a/include/uapi/linux/prctl.h
> +++ b/include/uapi/linux/prctl.h
> @@ -233,5 +233,11 @@ struct prctl_mm_map {
>  #define PR_SET_TAGGED_ADDR_CTRL                55
>  #define PR_GET_TAGGED_ADDR_CTRL                56
>  # define PR_TAGGED_ADDR_ENABLE         (1UL << 0)
> +/* MTE tag check fault modes */
> +# define PR_MTE_TCF_SHIFT              1
> +# define PR_MTE_TCF_NONE               (0UL << PR_MTE_TCF_SHIFT)
> +# define PR_MTE_TCF_SYNC               (1UL << PR_MTE_TCF_SHIFT)
> +# define PR_MTE_TCF_ASYNC              (2UL << PR_MTE_TCF_SHIFT)
> +# define PR_MTE_TCF_MASK               (3UL << PR_MTE_TCF_SHIFT)
>
>  #endif /* _LINUX_PRCTL_H */
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
