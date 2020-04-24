Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AF41B8271
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 01:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WyAQ8dj03v1E/3AvHBmbGpewIPnPg/tx79A/PKnutFA=; b=shlHYdwIH00dmj
	ReShYf7RTjvMSSm+8PwiaYjowZKMwQ1xwvW8pnWJ9CzgEhOCsTaYnJkg2FkQg0L8YrLVYVBD7cFYM
	rLmDlKr5MDTNwi8H8DLUhGWZJfkhyo1b9NgL1KJcSOaEhH2olHakQUiZtwG0/1JjyCOFvRVmhxWbC
	SCVpFr/EcnhrCrEZmnM84EjVtivkATKKJazSDQy7kZXHjqcihdgH4yoB8wN1g1UOhb5jXl7JOtCFi
	r2jF5aodpldpq/kfzbFm3nWnG92TA591AMIYY8y2ZBFWorN9BbSNx53KGbYrmhgUiFGB1n+IZgiwQ
	OqX1ONqamr0pRbCRXn6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS7kk-0004gd-2N; Fri, 24 Apr 2020 23:29:02 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS7kU-0004fi-AG
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 23:28:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id k1so13321117wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 16:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wWYLMuL+LfNAwBofxBo5LLMkvULLO+jleVnWuj+bCis=;
 b=nUwiP1dfrE7KQq3WKOK7JhAdZot8paL30qDEyqWMt9RdvXoP8obZIrzAWDH4mbHAd/
 AOycrQEG0uVSYqh/dsLvlM3xHqrA9i6vu41W6XsuLa73qmYPAltEYwVP31IDK2YA4LZK
 8fX4/W6KuPSlGCSNvpKN/K3pyNMJi95Lx2DSqAuJ8VY4EnThuKGcsRmA8YLoESmBz//j
 lsYI0MrOroiDcAZTWMR2t3WtvZTga6gxAgXzXSqhTgsir5ruRjv5mb3DZ+fyiwD+YiyX
 LJJXKmcDvawaN/fDoh5Forki71SGb7O6lrmil4AR+lvAomi5Pr6z/QJ3w/xkzLDrx5h2
 mf1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wWYLMuL+LfNAwBofxBo5LLMkvULLO+jleVnWuj+bCis=;
 b=ASAF1qN/wA47qScNFjmKRfOwNxCMK8vZLUYFWqbBndtQXCtd/cojLu6OOMW/4KXGEW
 yvAgJHakx+f1EIh2HQmL3Od4iuoNFhiP0NaV+DId8XGfRBEJcyYUd5eW5Zl6tUjUR+7T
 PR/oUcH3MT3mfw/ZlMBPrRuY2+KjukxfpwpCDMqngOesXHRo/fhj9uJicYQE2yV2pP+g
 Dc4GkuY5onlHukIRgxde07xA2JDdYZraJlgqBe8rmPGhQ01FyfyOhoOfZz8GsuEhLwVL
 J9H0YRr+NHj1tH7U8LuLQTiJGxXKQ+aad04dWx7UVGoHk5aopOcKIzSX/JzWyhZf92AZ
 60zg==
X-Gm-Message-State: AGi0Pua6pLTjcL9bC8UWs8j309UQ423bKGdtEqBS8F9z6hhSk/4P0WM0
 C0a350R/SBTQ68B8RvrAiU4HMAeYj4OcjgK7XfU8pBLUvhQNng==
X-Google-Smtp-Source: APiQypJ/LOVVfvGjYrJE8q27Tj8IPh9Z4Udi+wuP58p1Ww2bXsR6QmkU6zo8cfgW5eDkyudzvfzL8UaKLPt3ccBEMY4=
X-Received: by 2002:a5d:6acc:: with SMTP id u12mr15001573wrw.198.1587770920228; 
 Fri, 24 Apr 2020 16:28:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-20-catalin.marinas@arm.com>
In-Reply-To: <20200421142603.3894-20-catalin.marinas@arm.com>
From: Peter Collingbourne <pcc@google.com>
Date: Fri, 24 Apr 2020 16:28:27 -0700
Message-ID: <CAMn1gO5+tuR1=o7L3WE9bg0XMBeMGdybZMQCO0U0NOcRvFhqyQ@mail.gmail.com>
Subject: Re: [PATCH v3 19/23] arm64: mte: Add PTRACE_{PEEK,
 POKE}MTETAGS support
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_162850_513627_21D6710D 
X-CRM114-Status: GOOD (  28.77  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Luis Machado <luis.machado@linaro.org>, Omair Javaid <omair.javaid@linaro.org>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Alan Hayward <Alan.Hayward@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 7:26 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> Add support for bulk setting/getting of the MTE tags in a tracee's
> address space at 'addr' in the ptrace() syscall prototype. 'data' points
> to a struct iovec in the tracer's address space with iov_base
> representing the address of a tracer's buffer of length iov_len. The
> tags to be copied to/from the tracer's buffer are stored as one tag per
> byte.
>
> On successfully copying at least one tag, ptrace() returns 0 and updates
> the tracer's iov_len with the number of tags copied. In case of error,
> either -EIO or -EFAULT is returned, trying to follow the ptrace() man
> page.
>
> Note that the tag copying functions are not performance critical,
> therefore they lack optimisations found in typical memory copy routines.
>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Alan Hayward <Alan.Hayward@arm.com>
> Cc: Luis Machado <luis.machado@linaro.org>
> Cc: Omair Javaid <omair.javaid@linaro.org>
> ---
>
> Notes:
>     New in v3.
>
>  arch/arm64/include/asm/mte.h         |  17 ++++
>  arch/arm64/include/uapi/asm/ptrace.h |   3 +
>  arch/arm64/kernel/mte.c              | 127 +++++++++++++++++++++++++++
>  arch/arm64/kernel/ptrace.c           |  15 +++-
>  arch/arm64/lib/mte.S                 |  50 +++++++++++
>  5 files changed, 211 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/include/asm/mte.h b/arch/arm64/include/asm/mte.h
> index 22eb3e06f311..0ca2aaff07a1 100644
> --- a/arch/arm64/include/asm/mte.h
> +++ b/arch/arm64/include/asm/mte.h
> @@ -2,12 +2,21 @@
>  #ifndef __ASM_MTE_H
>  #define __ASM_MTE_H
>
> +#define MTE_ALLOC_SIZE UL(16)
> +#define MTE_ALLOC_MASK (~(MTE_ALLOC_SIZE - 1))
> +#define MTE_TAG_SHIFT  (56)
> +#define MTE_TAG_SIZE   (4)
> +
>  #ifndef __ASSEMBLY__
>
>  #include <linux/sched.h>
>
>  /* Memory Tagging API */
>  int mte_memcmp_pages(const void *page1_addr, const void *page2_addr);
> +unsigned long mte_copy_tags_from_user(void *to, const void __user *from,
> +                                     unsigned long n);
> +unsigned long mte_copy_tags_to_user(void __user *to, void *from,
> +                                   unsigned long n);
>
>  #ifdef CONFIG_ARM64_MTE
>  void flush_mte_state(void);
> @@ -15,6 +24,8 @@ void mte_thread_switch(struct task_struct *next);
>  void mte_suspend_exit(void);
>  long set_mte_ctrl(unsigned long arg);
>  long get_mte_ctrl(void);
> +int mte_ptrace_copy_tags(struct task_struct *child, long request,
> +                        unsigned long addr, unsigned long data);
>  #else
>  static inline void flush_mte_state(void)
>  {
> @@ -33,6 +44,12 @@ static inline long get_mte_ctrl(void)
>  {
>         return 0;
>  }
> +static inline int mte_ptrace_copy_tags(struct task_struct *child,
> +                                      long request, unsigned long addr,
> +                                      unsigned long data)
> +{
> +       return -EIO;
> +}
>  #endif
>
>  #endif /* __ASSEMBLY__ */
> diff --git a/arch/arm64/include/uapi/asm/ptrace.h b/arch/arm64/include/uapi/asm/ptrace.h
> index 1daf6dda8af0..cd2a4a164de3 100644
> --- a/arch/arm64/include/uapi/asm/ptrace.h
> +++ b/arch/arm64/include/uapi/asm/ptrace.h
> @@ -67,6 +67,9 @@
>  /* syscall emulation path in ptrace */
>  #define PTRACE_SYSEMU            31
>  #define PTRACE_SYSEMU_SINGLESTEP  32
> +/* MTE allocation tag access */
> +#define PTRACE_PEEKMTETAGS       33
> +#define PTRACE_POKEMTETAGS       34
>
>  #ifndef __ASSEMBLY__
>
> diff --git a/arch/arm64/kernel/mte.c b/arch/arm64/kernel/mte.c
> index fa4a4196b248..0cb496ed9bf9 100644
> --- a/arch/arm64/kernel/mte.c
> +++ b/arch/arm64/kernel/mte.c
> @@ -3,12 +3,17 @@
>   * Copyright (C) 2020 ARM Ltd.
>   */
>
> +#include <linux/kernel.h>
> +#include <linux/mm.h>
>  #include <linux/prctl.h>
>  #include <linux/sched.h>
> +#include <linux/sched/mm.h>
>  #include <linux/thread_info.h>
> +#include <linux/uio.h>
>
>  #include <asm/cpufeature.h>
>  #include <asm/mte.h>
> +#include <asm/ptrace.h>
>  #include <asm/sysreg.h>
>
>  static void update_sctlr_el1_tcf0(u64 tcf0)
> @@ -133,3 +138,125 @@ long get_mte_ctrl(void)
>
>         return ret;
>  }
> +
> +/*
> + * Access MTE tags in another process' address space as given in mm. Update
> + * the number of tags copied. Return 0 if any tags copied, error otherwise.
> + * Inspired by __access_remote_vm().
> + */
> +static int __access_remote_tags(struct task_struct *tsk, struct mm_struct *mm,
> +                               unsigned long addr, struct iovec *kiov,
> +                               unsigned int gup_flags)
> +{
> +       struct vm_area_struct *vma;
> +       void __user *buf = kiov->iov_base;
> +       size_t len = kiov->iov_len;
> +       int ret;
> +       int write = gup_flags & FOLL_WRITE;
> +
> +       if (down_read_killable(&mm->mmap_sem))
> +               return -EIO;
> +
> +       if (!access_ok(buf, len))
> +               return -EFAULT;
> +
> +       while (len) {
> +               unsigned long tags, offset;
> +               void *maddr;
> +               struct page *page = NULL;
> +
> +               ret = get_user_pages_remote(tsk, mm, addr, 1, gup_flags,
> +                                           &page, &vma, NULL);
> +               if (ret <= 0)
> +                       break;
> +
> +               /* limit access to the end of the page */
> +               offset = offset_in_page(addr);
> +               tags = min(len, (PAGE_SIZE - offset) / MTE_ALLOC_SIZE);
> +
> +               maddr = page_address(page);
> +               if (write) {
> +                       tags = mte_copy_tags_from_user(maddr + offset, buf, tags);
> +                       set_page_dirty_lock(page);
> +               } else {
> +                       tags = mte_copy_tags_to_user(buf, maddr + offset, tags);
> +               }
> +               put_page(page);
> +
> +               /* error accessing the tracer's buffer */
> +               if (!tags)
> +                       break;
> +
> +               len -= tags;
> +               buf += tags;
> +               addr += tags * MTE_ALLOC_SIZE;
> +       }
> +       up_read(&mm->mmap_sem);
> +
> +       /* return an error if no tags copied */
> +       kiov->iov_len = buf - kiov->iov_base;
> +       if (!kiov->iov_len) {
> +               /* check for error accessing the tracee's address space */
> +               if (ret <= 0)
> +                       return -EIO;
> +               else
> +                       return -EFAULT;
> +       }
> +
> +       return 0;
> +}
> +
> +/*
> + * Copy MTE tags in another process' address space at 'addr' to/from tracer's
> + * iovec buffer. Return 0 on success. Inspired by ptrace_access_vm().
> + */
> +static int access_remote_tags(struct task_struct *tsk, unsigned long addr,
> +                             struct iovec *kiov, unsigned int gup_flags)
> +{
> +       struct mm_struct *mm;
> +       int ret;
> +
> +       mm = get_task_mm(tsk);
> +       if (!mm)
> +               return -EPERM;
> +
> +       if (!tsk->ptrace || (current != tsk->parent) ||
> +           ((get_dumpable(mm) != SUID_DUMP_USER) &&
> +            !ptracer_capable(tsk, mm->user_ns))) {
> +               mmput(mm);
> +               return -EPERM;
> +       }
> +
> +       ret = __access_remote_tags(tsk, mm, addr, kiov, gup_flags);
> +       mmput(mm);
> +
> +       return ret;
> +}
> +
> +int mte_ptrace_copy_tags(struct task_struct *child, long request,
> +                        unsigned long addr, unsigned long data)
> +{
> +       int ret;
> +       struct iovec kiov;
> +       struct iovec __user *uiov = (void __user *)data;
> +       unsigned int gup_flags = FOLL_FORCE;
> +
> +       if (!system_supports_mte())
> +               return -EIO;
> +
> +       if (get_user(kiov.iov_base, &uiov->iov_base) ||
> +           get_user(kiov.iov_len, &uiov->iov_len))
> +               return -EFAULT;
> +
> +       if (request == PTRACE_POKEMTETAGS)
> +               gup_flags |= FOLL_WRITE;
> +
> +       /* align addr to the MTE tag granule */
> +       addr &= MTE_ALLOC_MASK;
> +
> +       ret = access_remote_tags(child, addr, &kiov, gup_flags);
> +       if (!ret)
> +               ret = __put_user(kiov.iov_len, &uiov->iov_len);
> +
> +       return ret;
> +}
> diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> index 077e352495eb..1fdb841ad536 100644
> --- a/arch/arm64/kernel/ptrace.c
> +++ b/arch/arm64/kernel/ptrace.c
> @@ -34,6 +34,7 @@
>  #include <asm/cpufeature.h>
>  #include <asm/debug-monitors.h>
>  #include <asm/fpsimd.h>
> +#include <asm/mte.h>
>  #include <asm/pgtable.h>
>  #include <asm/pointer_auth.h>
>  #include <asm/stacktrace.h>
> @@ -1797,7 +1798,19 @@ const struct user_regset_view *task_user_regset_view(struct task_struct *task)
>  long arch_ptrace(struct task_struct *child, long request,
>                  unsigned long addr, unsigned long data)
>  {
> -       return ptrace_request(child, request, addr, data);
> +       int ret;
> +
> +       switch (request) {
> +       case PTRACE_PEEKMTETAGS:
> +       case PTRACE_POKEMTETAGS:
> +               ret = mte_ptrace_copy_tags(child, request, addr, data);
> +               break;
> +       default:
> +               ret = ptrace_request(child, request, addr, data);
> +               break;
> +       }
> +
> +       return ret;
>  }
>
>  enum ptrace_syscall_dir {
> diff --git a/arch/arm64/lib/mte.S b/arch/arm64/lib/mte.S
> index bd51ea7e2fcb..45be04a8c73c 100644
> --- a/arch/arm64/lib/mte.S
> +++ b/arch/arm64/lib/mte.S
> @@ -5,6 +5,7 @@
>  #include <linux/linkage.h>
>
>  #include <asm/assembler.h>
> +#include <asm/mte.h>
>
>  /*
>   * Compare tags of two pages
> @@ -44,3 +45,52 @@ SYM_FUNC_START(mte_memcmp_pages)
>
>         ret
>  SYM_FUNC_END(mte_memcmp_pages)
> +
> +/*
> + * Read tags from a user buffer (one tag per byte) and set the corresponding
> + * tags at the given kernel address. Used by PTRACE_POKEMTETAGS.
> + *   x0 - kernel address (to)
> + *   x1 - user buffer (from)
> + *   x2 - number of tags/bytes (n)
> + * Returns:
> + *   x0 - number of tags read/set
> + */
> +SYM_FUNC_START(mte_copy_tags_from_user)
> +       mov     x3, x1
> +1:
> +USER(2f, ldtrb w4, [x1])
> +       lsl     x4, x4, #MTE_TAG_SHIFT
> +       stg     x4, [x0], #MTE_ALLOC_SIZE
> +       add     x1, x1, #1
> +       subs    x2, x2, #1
> +       b.ne    1b
> +
> +       // exception handling and function return
> +2:     sub     x0, x1, x3              // update the number of tags set
> +       ret
> +SYM_FUNC_END(mte_copy_tags_from_user)
> +
> +/*
> + * Get the tags from a kernel address range and write the tag values to the
> + * given user buffer (one tag per byte). Used by PTRACE_PEEKMTETAGS.
> + *   x0 - user buffer (to)
> + *   x1 - kernel address (from)
> + *   x2 - number of tags/bytes (n)
> + * Returns:
> + *   x0 - number of tags read/set
> + */
> +SYM_FUNC_START(mte_copy_tags_to_user)
> +       mov     x3, x0
> +1:
> +       ldg     x4, [x1]
> +       ubfx    x4, x4, #MTE_TAG_SHIFT, #MTE_TAG_SIZE
> +USER(2f, sttrb w4, [x0])
> +       add     x0, x0, #1
> +       add     x1, x1, #MTE_ALLOC_SIZE
> +       subs    x2, x2, #1
> +       b.ne    1b
> +
> +       // exception handling and function return
> +2:     sub     x0, x0, x3              // update the number of tags copied
> +       ret
> +SYM_FUNC_END(mte_copy_tags_from_user)

Nit: should be SYM_FUNC_END(mte_copy_tags_to_user).

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
