Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA671752D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 05:49:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmoVMFZvP+z0kqe4KEjIeH0x+ABZeikByOSiOsBSc2s=; b=p6rDrU3pqP1C/5
	Qk2fekVyDA4+t3E1Woawq77iBmJsQj3b2bLPscclwGQE1okcDQDX6p17W0I/UrsZoI/851tHiIlEo
	v5IfRd6vV2S4WMw3ATkcfB4XiVu6gedYAKj/2JHQQdGo5wEK8pPmOh4RN5deJ9e8KWzjDtJKXk7le
	49/2yhdtioHCiMQVsjga7stVqx4YYsZLk5ciiIBuNzCtMREVNtDWXvG3YwzaQho7SQNA56N2rMOsK
	w2YMk1gHdUfha9fhZBTVXfOSTgbF0/Khkh2+GwFi/2D3PC6QhLMQDLCQzwv6/72Y0zULRrOrj5OKl
	MNx5UHdW1x1Sz/jF7smQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8d12-0003yS-L8; Mon, 02 Mar 2020 04:49:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8d0u-0003y0-KK; Mon, 02 Mar 2020 04:49:11 +0000
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D359246B9;
 Mon,  2 Mar 2020 04:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583124547;
 bh=iM2duhcyiC8Kz7dTZ77GIEFytSSIfuOB/kqMlYp3xgw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=g3b9LXIotLzqi6gBf/U80H4QSQI+WUnYTCyNE5Icg8E6E1AYmCpXyuYyZJGXeEl8W
 qDM1Qs1yIz+69fJkMciOWl7qqgTSd+XN3dCkgrMCnW3XZJwoQmKuD5jH6hMfdFmH82
 W5D3K70TCavQttExIs85csOnhMD3SKTI/AWlatSw=
Received: by mail-lf1-f47.google.com with SMTP id v6so6814412lfo.13;
 Sun, 01 Mar 2020 20:49:07 -0800 (PST)
X-Gm-Message-State: ANhLgQ2dLB7G9aYB9Lc4bAaRvXhrVNOThBslu9w26hG2HPcbUOyWMryx
 dy+sIDEAjjnQebrde0OTV23eRfVetfPb+2ub1hk=
X-Google-Smtp-Source: ADFU+vtoorLTZHTb/NnDJCFnEsj05XtsRsdixUXH0NE9KoevEc9ac97135ll8X5UxOGXf6JJjsLSUhZOp7dLpbAgKX8=
X-Received: by 2002:a19:c20b:: with SMTP id l11mr9421914lfc.135.1583124543644; 
 Sun, 01 Mar 2020 20:49:03 -0800 (PST)
MIME-Version: 1.0
References: <1583114190-7678-1-git-send-email-anshuman.khandual@arm.com>
In-Reply-To: <1583114190-7678-1-git-send-email-anshuman.khandual@arm.com>
From: Guo Ren <guoren@kernel.org>
Date: Mon, 2 Mar 2020 12:48:52 +0800
X-Gmail-Original-Message-ID: <CAJF2gTTSQgbNh7_-t5e2QCfS_e1Uz2xnYXtJwXawNQ6-ec7zww@mail.gmail.com>
Message-ID: <CAJF2gTTSQgbNh7_-t5e2QCfS_e1Uz2xnYXtJwXawNQ6-ec7zww@mail.gmail.com>
Subject: Re: [PATCH] mm/special: Create generic fallbacks for pte_special()
 and pte_mkspecial()
To: Anshuman Khandual <anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_204908_718391_B6CBDAEA 
X-CRM114-Status: GOOD (  25.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-ia64@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 linux-mm@kvack.org, linux-csky@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-hexagon@vger.kernel.org, Vincent Chen <deanbo422@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jonas Bonn <jonas@southpole.se>, Paul Burton <paulburton@kernel.org>,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-parisc@vger.kernel.org,
 linux-arch <linux-arch@vger.kernel.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Fenghua Yu <fenghua.yu@intel.com>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Greentime Hu <green.hu@gmail.com>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Richard Henderson <rth@twiddle.net>,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
 Tony Luck <tony.luck@intel.com>, Brian Cain <bcain@codeaurora.org>,
 Nick Hu <nickhu@andestech.com>, Max Filippov <jcmvbkbc@gmail.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Acked with csky part.

On Mon, Mar 2, 2020 at 9:56 AM Anshuman Khandual
<anshuman.khandual@arm.com> wrote:
>
> Currently there are many platforms that dont enable HAVE_ARCH_PTE_SPECIAL
> but required to define quite similar fallback stubs for special page table
> entry helpers such as pte_special() and pte_mkspecial(), as they get build
> in generic MM without a config check. This creates two generic fallback
> stub definitions for these helpers, eliminating much code duplication.
>
> mips platform has a special case where pte_special() and pte_mkspecial()
> visibility is wider than what HAVE_ARCH_PTE_SPECIAL enablement requires.
> This restricts those symbol visibility in order to avoid redefinitions
> which is now exposed through this new generic stubs and subsequent build
> failure. arm platform set_pte_at() definition needs to be moved into a C
> file just to prevent a build failure.
>
> Cc: Richard Henderson <rth@twiddle.net>
> Cc: Ivan Kokshaysky <ink@jurassic.park.msu.ru>
> Cc: Matt Turner <mattst88@gmail.com>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Guo Ren <guoren@kernel.org>
> Cc: Brian Cain <bcain@codeaurora.org>
> Cc: Tony Luck <tony.luck@intel.com>
> Cc: Fenghua Yu <fenghua.yu@intel.com>
> Cc: Geert Uytterhoeven <geert@linux-m68k.org>
> Cc: Sam Creasey <sammy@sammy.net>
> Cc: Michal Simek <monstr@monstr.eu>
> Cc: Ralf Baechle <ralf@linux-mips.org>
> Cc: Paul Burton <paulburton@kernel.org>
> Cc: Nick Hu <nickhu@andestech.com>
> Cc: Greentime Hu <green.hu@gmail.com>
> Cc: Vincent Chen <deanbo422@gmail.com>
> Cc: Ley Foon Tan <ley.foon.tan@intel.com>
> Cc: Jonas Bonn <jonas@southpole.se>
> Cc: Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
> Cc: Stafford Horne <shorne@gmail.com>
> Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
> Cc: Helge Deller <deller@gmx.de>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jeff Dike <jdike@addtoit.com>
> Cc: Richard Weinberger <richard@nod.at>
> Cc: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> Cc: Guan Xuetao <gxt@pku.edu.cn>
> Cc: Chris Zankel <chris@zankel.net>
> Cc: Max Filippov <jcmvbkbc@gmail.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: linux-alpha@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-csky@vger.kernel.org
> Cc: linux-hexagon@vger.kernel.org
> Cc: linux-ia64@vger.kernel.org
> Cc: linux-m68k@lists.linux-m68k.org
> Cc: linux-mips@vger.kernel.org
> Cc: nios2-dev@lists.rocketboards.org
> Cc: openrisc@lists.librecores.org
> Cc: linux-parisc@vger.kernel.org
> Cc: sparclinux@vger.kernel.org
> Cc: linux-um@lists.infradead.org
> Cc: linux-xtensa@linux-xtensa.org
> Cc: linux-arch@vger.kernel.org
> Cc: linux-mm@kvack.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
> Build tested on multiple platforms but boot tested only for arm64.
>
>  arch/alpha/include/asm/pgtable.h         |  2 --
>  arch/arm/include/asm/pgtable-2level.h    |  2 --
>  arch/arm/include/asm/pgtable.h           | 15 ++------
>  arch/arm/mm/mmu.c                        | 14 ++++++++
>  arch/csky/include/asm/pgtable.h          |  3 --
>  arch/hexagon/include/asm/pgtable.h       |  2 --
>  arch/ia64/include/asm/pgtable.h          |  2 --
>  arch/m68k/include/asm/mcf_pgtable.h      | 10 ------
>  arch/m68k/include/asm/motorola_pgtable.h |  2 --
>  arch/m68k/include/asm/sun3_pgtable.h     |  2 --
>  arch/microblaze/include/asm/pgtable.h    |  4 ---
>  arch/mips/include/asm/pgtable.h          | 44 ++++++++++++++++--------
>  arch/nds32/include/asm/pgtable.h         |  9 -----
>  arch/nios2/include/asm/pgtable.h         |  3 --
>  arch/openrisc/include/asm/pgtable.h      |  2 --
>  arch/parisc/include/asm/pgtable.h        |  2 --
>  arch/sparc/include/asm/pgtable_32.h      |  7 ----
>  arch/um/include/asm/pgtable.h            | 10 ------
>  arch/unicore32/include/asm/pgtable.h     |  3 --
>  arch/xtensa/include/asm/pgtable.h        |  3 --
>  include/linux/mm.h                       | 12 +++++++
>  21 files changed, 58 insertions(+), 95 deletions(-)
>
> diff --git a/arch/alpha/include/asm/pgtable.h b/arch/alpha/include/asm/pgtable.h
> index 299791ce14b6..0267aa8a4f86 100644
> --- a/arch/alpha/include/asm/pgtable.h
> +++ b/arch/alpha/include/asm/pgtable.h
> @@ -268,7 +268,6 @@ extern inline void pud_clear(pud_t * pudp)  { pud_val(*pudp) = 0; }
>  extern inline int pte_write(pte_t pte)         { return !(pte_val(pte) & _PAGE_FOW); }
>  extern inline int pte_dirty(pte_t pte)         { return pte_val(pte) & _PAGE_DIRTY; }
>  extern inline int pte_young(pte_t pte)         { return pte_val(pte) & _PAGE_ACCESSED; }
> -extern inline int pte_special(pte_t pte)       { return 0; }
>
>  extern inline pte_t pte_wrprotect(pte_t pte)   { pte_val(pte) |= _PAGE_FOW; return pte; }
>  extern inline pte_t pte_mkclean(pte_t pte)     { pte_val(pte) &= ~(__DIRTY_BITS); return pte; }
> @@ -276,7 +275,6 @@ extern inline pte_t pte_mkold(pte_t pte)    { pte_val(pte) &= ~(__ACCESS_BITS); ret
>  extern inline pte_t pte_mkwrite(pte_t pte)     { pte_val(pte) &= ~_PAGE_FOW; return pte; }
>  extern inline pte_t pte_mkdirty(pte_t pte)     { pte_val(pte) |= __DIRTY_BITS; return pte; }
>  extern inline pte_t pte_mkyoung(pte_t pte)     { pte_val(pte) |= __ACCESS_BITS; return pte; }
> -extern inline pte_t pte_mkspecial(pte_t pte)   { return pte; }
>
>  #define PAGE_DIR_OFFSET(tsk,address) pgd_offset((tsk),(address))
>
> diff --git a/arch/arm/include/asm/pgtable-2level.h b/arch/arm/include/asm/pgtable-2level.h
> index 0d3ea35c97fe..9e084a464a97 100644
> --- a/arch/arm/include/asm/pgtable-2level.h
> +++ b/arch/arm/include/asm/pgtable-2level.h
> @@ -211,8 +211,6 @@ static inline pmd_t *pmd_offset(pud_t *pud, unsigned long addr)
>  #define pmd_addr_end(addr,end) (end)
>
>  #define set_pte_ext(ptep,pte,ext) cpu_set_pte_ext(ptep,pte,ext)
> -#define pte_special(pte)       (0)
> -static inline pte_t pte_mkspecial(pte_t pte) { return pte; }
>
>  /*
>   * We don't have huge page support for short descriptors, for the moment
> diff --git a/arch/arm/include/asm/pgtable.h b/arch/arm/include/asm/pgtable.h
> index eabcb48a7840..556468240ba5 100644
> --- a/arch/arm/include/asm/pgtable.h
> +++ b/arch/arm/include/asm/pgtable.h
> @@ -252,19 +252,8 @@ static inline void __sync_icache_dcache(pte_t pteval)
>  extern void __sync_icache_dcache(pte_t pteval);
>  #endif
>
> -static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
> -                             pte_t *ptep, pte_t pteval)
> -{
> -       unsigned long ext = 0;
> -
> -       if (addr < TASK_SIZE && pte_valid_user(pteval)) {
> -               if (!pte_special(pteval))
> -                       __sync_icache_dcache(pteval);
> -               ext |= PTE_EXT_NG;
> -       }
> -
> -       set_pte_ext(ptep, pteval, ext);
> -}
> +void set_pte_at(struct mm_struct *mm, unsigned long addr,
> +                     pte_t *ptep, pte_t pteval);
>
>  static inline pte_t clear_pte_bit(pte_t pte, pgprot_t prot)
>  {
> diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> index 5d0d0f86e790..16e9b041d7cf 100644
> --- a/arch/arm/mm/mmu.c
> +++ b/arch/arm/mm/mmu.c
> @@ -1672,3 +1672,17 @@ void __init early_mm_init(const struct machine_desc *mdesc)
>         build_mem_type_table();
>         early_paging_init(mdesc);
>  }
> +
> +void set_pte_at(struct mm_struct *mm, unsigned long addr,
> +                             pte_t *ptep, pte_t pteval)
> +{
> +       unsigned long ext = 0;
> +
> +       if (addr < TASK_SIZE && pte_valid_user(pteval)) {
> +               if (!pte_special(pteval))
> +                       __sync_icache_dcache(pteval);
> +               ext |= PTE_EXT_NG;
> +       }
> +
> +       set_pte_ext(ptep, pteval, ext);
> +}
> diff --git a/arch/csky/include/asm/pgtable.h b/arch/csky/include/asm/pgtable.h
> index 9b7764cb7645..9ab4a445ad99 100644
> --- a/arch/csky/include/asm/pgtable.h
> +++ b/arch/csky/include/asm/pgtable.h
> @@ -110,9 +110,6 @@ extern unsigned long empty_zero_page[PAGE_SIZE / sizeof(unsigned long)];
>  extern void load_pgd(unsigned long pg_dir);
>  extern pte_t invalid_pte_table[PTRS_PER_PTE];
>
> -static inline int pte_special(pte_t pte) { return 0; }
> -static inline pte_t pte_mkspecial(pte_t pte) { return pte; }
> -
>  static inline void set_pte(pte_t *p, pte_t pte)
>  {
>         *p = pte;
> diff --git a/arch/hexagon/include/asm/pgtable.h b/arch/hexagon/include/asm/pgtable.h
> index 2fec20ad939e..d383e8bea5b2 100644
> --- a/arch/hexagon/include/asm/pgtable.h
> +++ b/arch/hexagon/include/asm/pgtable.h
> @@ -158,8 +158,6 @@ extern pgd_t swapper_pg_dir[PTRS_PER_PGD];  /* located in head.S */
>
>  /* Seems to be zero even in architectures where the zero page is firewalled? */
>  #define FIRST_USER_ADDRESS 0UL
> -#define pte_special(pte)       0
> -#define pte_mkspecial(pte)     (pte)
>
>  /*  HUGETLB not working currently  */
>  #ifdef CONFIG_HUGETLB_PAGE
> diff --git a/arch/ia64/include/asm/pgtable.h b/arch/ia64/include/asm/pgtable.h
> index d602e7c622db..0e7b645b76c6 100644
> --- a/arch/ia64/include/asm/pgtable.h
> +++ b/arch/ia64/include/asm/pgtable.h
> @@ -298,7 +298,6 @@ extern unsigned long VMALLOC_END;
>  #define pte_exec(pte)          ((pte_val(pte) & _PAGE_AR_RX) != 0)
>  #define pte_dirty(pte)         ((pte_val(pte) & _PAGE_D) != 0)
>  #define pte_young(pte)         ((pte_val(pte) & _PAGE_A) != 0)
> -#define pte_special(pte)       0
>
>  /*
>   * Note: we convert AR_RWX to AR_RX and AR_RW to AR_R by clearing the 2nd bit in the
> @@ -311,7 +310,6 @@ extern unsigned long VMALLOC_END;
>  #define pte_mkclean(pte)       (__pte(pte_val(pte) & ~_PAGE_D))
>  #define pte_mkdirty(pte)       (__pte(pte_val(pte) | _PAGE_D))
>  #define pte_mkhuge(pte)                (__pte(pte_val(pte)))
> -#define pte_mkspecial(pte)     (pte)
>
>  /*
>   * Because ia64's Icache and Dcache is not coherent (on a cpu), we need to
> diff --git a/arch/m68k/include/asm/mcf_pgtable.h b/arch/m68k/include/asm/mcf_pgtable.h
> index b9f45aeded25..0031cd387b75 100644
> --- a/arch/m68k/include/asm/mcf_pgtable.h
> +++ b/arch/m68k/include/asm/mcf_pgtable.h
> @@ -235,11 +235,6 @@ static inline int pte_young(pte_t pte)
>         return pte_val(pte) & CF_PAGE_ACCESSED;
>  }
>
> -static inline int pte_special(pte_t pte)
> -{
> -       return 0;
> -}
> -
>  static inline pte_t pte_wrprotect(pte_t pte)
>  {
>         pte_val(pte) &= ~CF_PAGE_WRITABLE;
> @@ -312,11 +307,6 @@ static inline pte_t pte_mkcache(pte_t pte)
>         return pte;
>  }
>
> -static inline pte_t pte_mkspecial(pte_t pte)
> -{
> -       return pte;
> -}
> -
>  #define swapper_pg_dir kernel_pg_dir
>  extern pgd_t kernel_pg_dir[PTRS_PER_PGD];
>
> diff --git a/arch/m68k/include/asm/motorola_pgtable.h b/arch/m68k/include/asm/motorola_pgtable.h
> index 62bedc61f110..a6f4b96d674e 100644
> --- a/arch/m68k/include/asm/motorola_pgtable.h
> +++ b/arch/m68k/include/asm/motorola_pgtable.h
> @@ -168,7 +168,6 @@ static inline void pud_set(pud_t *pudp, pmd_t *pmdp)
>  static inline int pte_write(pte_t pte)         { return !(pte_val(pte) & _PAGE_RONLY); }
>  static inline int pte_dirty(pte_t pte)         { return pte_val(pte) & _PAGE_DIRTY; }
>  static inline int pte_young(pte_t pte)         { return pte_val(pte) & _PAGE_ACCESSED; }
> -static inline int pte_special(pte_t pte)       { return 0; }
>
>  static inline pte_t pte_wrprotect(pte_t pte)   { pte_val(pte) |= _PAGE_RONLY; return pte; }
>  static inline pte_t pte_mkclean(pte_t pte)     { pte_val(pte) &= ~_PAGE_DIRTY; return pte; }
> @@ -186,7 +185,6 @@ static inline pte_t pte_mkcache(pte_t pte)
>         pte_val(pte) = (pte_val(pte) & _CACHEMASK040) | m68k_supervisor_cachemode;
>         return pte;
>  }
> -static inline pte_t pte_mkspecial(pte_t pte)   { return pte; }
>
>  #define PAGE_DIR_OFFSET(tsk,address) pgd_offset((tsk),(address))
>
> diff --git a/arch/m68k/include/asm/sun3_pgtable.h b/arch/m68k/include/asm/sun3_pgtable.h
> index bc4155264810..0caa18a08437 100644
> --- a/arch/m68k/include/asm/sun3_pgtable.h
> +++ b/arch/m68k/include/asm/sun3_pgtable.h
> @@ -155,7 +155,6 @@ static inline void pmd_clear (pmd_t *pmdp) { pmd_val (*pmdp) = 0; }
>  static inline int pte_write(pte_t pte)         { return pte_val(pte) & SUN3_PAGE_WRITEABLE; }
>  static inline int pte_dirty(pte_t pte)         { return pte_val(pte) & SUN3_PAGE_MODIFIED; }
>  static inline int pte_young(pte_t pte)         { return pte_val(pte) & SUN3_PAGE_ACCESSED; }
> -static inline int pte_special(pte_t pte)       { return 0; }
>
>  static inline pte_t pte_wrprotect(pte_t pte)   { pte_val(pte) &= ~SUN3_PAGE_WRITEABLE; return pte; }
>  static inline pte_t pte_mkclean(pte_t pte)     { pte_val(pte) &= ~SUN3_PAGE_MODIFIED; return pte; }
> @@ -168,7 +167,6 @@ static inline pte_t pte_mknocache(pte_t pte)        { pte_val(pte) |= SUN3_PAGE_NOCACHE
>  //static inline pte_t pte_mkcache(pte_t pte)   { pte_val(pte) &= SUN3_PAGE_NOCACHE; return pte; }
>  // until then, use:
>  static inline pte_t pte_mkcache(pte_t pte)     { return pte; }
> -static inline pte_t pte_mkspecial(pte_t pte)   { return pte; }
>
>  extern pgd_t swapper_pg_dir[PTRS_PER_PGD];
>  extern pgd_t kernel_pg_dir[PTRS_PER_PGD];
> diff --git a/arch/microblaze/include/asm/pgtable.h b/arch/microblaze/include/asm/pgtable.h
> index 2def331f9e2c..db9bdfcf46b7 100644
> --- a/arch/microblaze/include/asm/pgtable.h
> +++ b/arch/microblaze/include/asm/pgtable.h
> @@ -80,10 +80,6 @@ extern pte_t *va_to_pte(unsigned long address);
>   * Undefined behaviour if not..
>   */
>
> -static inline int pte_special(pte_t pte)       { return 0; }
> -
> -static inline pte_t pte_mkspecial(pte_t pte)   { return pte; }
> -
>  /* Start and end of the vmalloc area. */
>  /* Make sure to map the vmalloc area above the pinned kernel memory area
>     of 32Mb.  */
> diff --git a/arch/mips/include/asm/pgtable.h b/arch/mips/include/asm/pgtable.h
> index aef5378f909c..8e4e4be1ca00 100644
> --- a/arch/mips/include/asm/pgtable.h
> +++ b/arch/mips/include/asm/pgtable.h
> @@ -269,6 +269,36 @@ static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
>   */
>  extern pgd_t swapper_pg_dir[];
>
> +/*
> + * Platform specific pte_special() and pte_mkspecial() definitions
> + * are required only when ARCH_HAS_PTE_SPECIAL is enabled.
> + */
> +#if !defined(CONFIG_32BIT) && !defined(CONFIG_CPU_HAS_RIXI)
> +#if defined(CONFIG_PHYS_ADDR_T_64BIT) && defined(CONFIG_CPU_MIPS32)
> +static inline int pte_special(pte_t pte)
> +{
> +       return pte.pte_low & _PAGE_SPECIAL;
> +}
> +
> +static inline pte_t pte_mkspecial(pte_t pte)
> +{
> +       pte.pte_low |= _PAGE_SPECIAL;
> +       return pte;
> +}
> +#else
> +static inline int pte_special(pte_t pte)
> +{
> +       return pte_val(pte) & _PAGE_SPECIAL;
> +}
> +
> +static inline pte_t pte_mkspecial(pte_t pte)
> +{
> +       pte_val(pte) |= _PAGE_SPECIAL;
> +       return pte;
> +}
> +#endif
> +#endif
> +
>  /*
>   * The following only work if pte_present() is true.
>   * Undefined behaviour if not..
> @@ -277,7 +307,6 @@ extern pgd_t swapper_pg_dir[];
>  static inline int pte_write(pte_t pte) { return pte.pte_low & _PAGE_WRITE; }
>  static inline int pte_dirty(pte_t pte) { return pte.pte_low & _PAGE_MODIFIED; }
>  static inline int pte_young(pte_t pte) { return pte.pte_low & _PAGE_ACCESSED; }
> -static inline int pte_special(pte_t pte) { return pte.pte_low & _PAGE_SPECIAL; }
>
>  static inline pte_t pte_wrprotect(pte_t pte)
>  {
> @@ -338,17 +367,10 @@ static inline pte_t pte_mkyoung(pte_t pte)
>         }
>         return pte;
>  }
> -
> -static inline pte_t pte_mkspecial(pte_t pte)
> -{
> -       pte.pte_low |= _PAGE_SPECIAL;
> -       return pte;
> -}
>  #else
>  static inline int pte_write(pte_t pte) { return pte_val(pte) & _PAGE_WRITE; }
>  static inline int pte_dirty(pte_t pte) { return pte_val(pte) & _PAGE_MODIFIED; }
>  static inline int pte_young(pte_t pte) { return pte_val(pte) & _PAGE_ACCESSED; }
> -static inline int pte_special(pte_t pte) { return pte_val(pte) & _PAGE_SPECIAL; }
>
>  static inline pte_t pte_wrprotect(pte_t pte)
>  {
> @@ -392,12 +414,6 @@ static inline pte_t pte_mkyoung(pte_t pte)
>         return pte;
>  }
>
> -static inline pte_t pte_mkspecial(pte_t pte)
> -{
> -       pte_val(pte) |= _PAGE_SPECIAL;
> -       return pte;
> -}
> -
>  #ifdef CONFIG_MIPS_HUGE_TLB_SUPPORT
>  static inline int pte_huge(pte_t pte)  { return pte_val(pte) & _PAGE_HUGE; }
>
> diff --git a/arch/nds32/include/asm/pgtable.h b/arch/nds32/include/asm/pgtable.h
> index 6abc58ac406d..476cc4dd1709 100644
> --- a/arch/nds32/include/asm/pgtable.h
> +++ b/arch/nds32/include/asm/pgtable.h
> @@ -286,15 +286,6 @@ PTE_BIT_FUNC(mkclean, &=~_PAGE_D);
>  PTE_BIT_FUNC(mkdirty, |=_PAGE_D);
>  PTE_BIT_FUNC(mkold, &=~_PAGE_YOUNG);
>  PTE_BIT_FUNC(mkyoung, |=_PAGE_YOUNG);
> -static inline int pte_special(pte_t pte)
> -{
> -       return 0;
> -}
> -
> -static inline pte_t pte_mkspecial(pte_t pte)
> -{
> -       return pte;
> -}
>
>  /*
>   * Mark the prot value as uncacheable and unbufferable.
> diff --git a/arch/nios2/include/asm/pgtable.h b/arch/nios2/include/asm/pgtable.h
> index 99985d8b7166..f98b7f4519ba 100644
> --- a/arch/nios2/include/asm/pgtable.h
> +++ b/arch/nios2/include/asm/pgtable.h
> @@ -113,7 +113,6 @@ static inline int pte_dirty(pte_t pte)              \
>         { return pte_val(pte) & _PAGE_DIRTY; }
>  static inline int pte_young(pte_t pte)         \
>         { return pte_val(pte) & _PAGE_ACCESSED; }
> -static inline int pte_special(pte_t pte)       { return 0; }
>
>  #define pgprot_noncached pgprot_noncached
>
> @@ -168,8 +167,6 @@ static inline pte_t pte_mkdirty(pte_t pte)
>         return pte;
>  }
>
> -static inline pte_t pte_mkspecial(pte_t pte)   { return pte; }
> -
>  static inline pte_t pte_mkyoung(pte_t pte)
>  {
>         pte_val(pte) |= _PAGE_ACCESSED;
> diff --git a/arch/openrisc/include/asm/pgtable.h b/arch/openrisc/include/asm/pgtable.h
> index 248d22d8faa7..7f3fb9ceb083 100644
> --- a/arch/openrisc/include/asm/pgtable.h
> +++ b/arch/openrisc/include/asm/pgtable.h
> @@ -236,8 +236,6 @@ static inline int pte_write(pte_t pte) { return pte_val(pte) & _PAGE_WRITE; }
>  static inline int pte_exec(pte_t pte)  { return pte_val(pte) & _PAGE_EXEC; }
>  static inline int pte_dirty(pte_t pte) { return pte_val(pte) & _PAGE_DIRTY; }
>  static inline int pte_young(pte_t pte) { return pte_val(pte) & _PAGE_ACCESSED; }
> -static inline int pte_special(pte_t pte) { return 0; }
> -static inline pte_t pte_mkspecial(pte_t pte) { return pte; }
>
>  static inline pte_t pte_wrprotect(pte_t pte)
>  {
> diff --git a/arch/parisc/include/asm/pgtable.h b/arch/parisc/include/asm/pgtable.h
> index f0a365950536..9832c73a7021 100644
> --- a/arch/parisc/include/asm/pgtable.h
> +++ b/arch/parisc/include/asm/pgtable.h
> @@ -377,7 +377,6 @@ static inline void pud_clear(pud_t *pud) {
>  static inline int pte_dirty(pte_t pte)         { return pte_val(pte) & _PAGE_DIRTY; }
>  static inline int pte_young(pte_t pte)         { return pte_val(pte) & _PAGE_ACCESSED; }
>  static inline int pte_write(pte_t pte)         { return pte_val(pte) & _PAGE_WRITE; }
> -static inline int pte_special(pte_t pte)       { return 0; }
>
>  static inline pte_t pte_mkclean(pte_t pte)     { pte_val(pte) &= ~_PAGE_DIRTY; return pte; }
>  static inline pte_t pte_mkold(pte_t pte)       { pte_val(pte) &= ~_PAGE_ACCESSED; return pte; }
> @@ -385,7 +384,6 @@ static inline pte_t pte_wrprotect(pte_t pte)        { pte_val(pte) &= ~_PAGE_WRITE; ret
>  static inline pte_t pte_mkdirty(pte_t pte)     { pte_val(pte) |= _PAGE_DIRTY; return pte; }
>  static inline pte_t pte_mkyoung(pte_t pte)     { pte_val(pte) |= _PAGE_ACCESSED; return pte; }
>  static inline pte_t pte_mkwrite(pte_t pte)     { pte_val(pte) |= _PAGE_WRITE; return pte; }
> -static inline pte_t pte_mkspecial(pte_t pte)   { return pte; }
>
>  /*
>   * Huge pte definitions.
> diff --git a/arch/sparc/include/asm/pgtable_32.h b/arch/sparc/include/asm/pgtable_32.h
> index 6d6f44c0cad9..0de659ae0ba4 100644
> --- a/arch/sparc/include/asm/pgtable_32.h
> +++ b/arch/sparc/include/asm/pgtable_32.h
> @@ -223,11 +223,6 @@ static inline int pte_young(pte_t pte)
>         return pte_val(pte) & SRMMU_REF;
>  }
>
> -static inline int pte_special(pte_t pte)
> -{
> -       return 0;
> -}
> -
>  static inline pte_t pte_wrprotect(pte_t pte)
>  {
>         return __pte(pte_val(pte) & ~SRMMU_WRITE);
> @@ -258,8 +253,6 @@ static inline pte_t pte_mkyoung(pte_t pte)
>         return __pte(pte_val(pte) | SRMMU_REF);
>  }
>
> -#define pte_mkspecial(pte)    (pte)
> -
>  #define pfn_pte(pfn, prot)             mk_pte(pfn_to_page(pfn), prot)
>
>  static inline unsigned long pte_pfn(pte_t pte)
> diff --git a/arch/um/include/asm/pgtable.h b/arch/um/include/asm/pgtable.h
> index 2daa58df2190..b5ddf5d98bd5 100644
> --- a/arch/um/include/asm/pgtable.h
> +++ b/arch/um/include/asm/pgtable.h
> @@ -167,11 +167,6 @@ static inline int pte_newprot(pte_t pte)
>         return(pte_present(pte) && (pte_get_bits(pte, _PAGE_NEWPROT)));
>  }
>
> -static inline int pte_special(pte_t pte)
> -{
> -       return 0;
> -}
> -
>  /*
>   * =================================
>   * Flags setting section.
> @@ -247,11 +242,6 @@ static inline pte_t pte_mknewpage(pte_t pte)
>         return(pte);
>  }
>
> -static inline pte_t pte_mkspecial(pte_t pte)
> -{
> -       return(pte);
> -}
> -
>  static inline void set_pte(pte_t *pteptr, pte_t pteval)
>  {
>         pte_copy(*pteptr, pteval);
> diff --git a/arch/unicore32/include/asm/pgtable.h b/arch/unicore32/include/asm/pgtable.h
> index c8f7ba12f309..3b8731b3a937 100644
> --- a/arch/unicore32/include/asm/pgtable.h
> +++ b/arch/unicore32/include/asm/pgtable.h
> @@ -177,7 +177,6 @@ extern struct page *empty_zero_page;
>  #define pte_dirty(pte)         (pte_val(pte) & PTE_DIRTY)
>  #define pte_young(pte)         (pte_val(pte) & PTE_YOUNG)
>  #define pte_exec(pte)          (pte_val(pte) & PTE_EXEC)
> -#define pte_special(pte)       (0)
>
>  #define PTE_BIT_FUNC(fn, op) \
>  static inline pte_t pte_##fn(pte_t pte) { pte_val(pte) op; return pte; }
> @@ -189,8 +188,6 @@ PTE_BIT_FUNC(mkdirty,   |= PTE_DIRTY);
>  PTE_BIT_FUNC(mkold,     &= ~PTE_YOUNG);
>  PTE_BIT_FUNC(mkyoung,   |= PTE_YOUNG);
>
> -static inline pte_t pte_mkspecial(pte_t pte) { return pte; }
> -
>  /*
>   * Mark the prot value as uncacheable.
>   */
> diff --git a/arch/xtensa/include/asm/pgtable.h b/arch/xtensa/include/asm/pgtable.h
> index 27ac17c9da09..8be0c0568c50 100644
> --- a/arch/xtensa/include/asm/pgtable.h
> +++ b/arch/xtensa/include/asm/pgtable.h
> @@ -266,7 +266,6 @@ static inline void paging_init(void) { }
>  static inline int pte_write(pte_t pte) { return pte_val(pte) & _PAGE_WRITABLE; }
>  static inline int pte_dirty(pte_t pte) { return pte_val(pte) & _PAGE_DIRTY; }
>  static inline int pte_young(pte_t pte) { return pte_val(pte) & _PAGE_ACCESSED; }
> -static inline int pte_special(pte_t pte) { return 0; }
>
>  static inline pte_t pte_wrprotect(pte_t pte)
>         { pte_val(pte) &= ~(_PAGE_WRITABLE | _PAGE_HW_WRITE); return pte; }
> @@ -280,8 +279,6 @@ static inline pte_t pte_mkyoung(pte_t pte)
>         { pte_val(pte) |= _PAGE_ACCESSED; return pte; }
>  static inline pte_t pte_mkwrite(pte_t pte)
>         { pte_val(pte) |= _PAGE_WRITABLE; return pte; }
> -static inline pte_t pte_mkspecial(pte_t pte)
> -       { return pte; }
>
>  #define pgprot_noncached(prot) (__pgprot(pgprot_val(prot) & ~_PAGE_CA_MASK))
>
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index 52269e56c514..79ed4ad2a954 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -1720,6 +1720,18 @@ static inline void sync_mm_rss(struct mm_struct *mm)
>  }
>  #endif
>
> +#ifndef CONFIG_ARCH_HAS_PTE_SPECIAL
> +static inline int pte_special(pte_t pte)
> +{
> +       return 0;
> +}
> +
> +static inline pte_t pte_mkspecial(pte_t pte)
> +{
> +       return pte;
> +}
> +#endif
> +
>  #ifndef CONFIG_ARCH_HAS_PTE_DEVMAP
>  static inline int pte_devmap(pte_t pte)
>  {
> --
> 2.20.1
>


-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
