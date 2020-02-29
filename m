Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 193D11749D2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 23:44:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4NhPf4UnaywAqps7iifb1K1h1I211k341ZdDZOgzhk=; b=VHJ0bTGwajkr6M
	lISeS3hZyhOsAGt7eYmdxQS5c60A3u+80InT0jTt21f9t44/7SvWVFN6V1sWyf7EGA7N8nS0hKKhz
	916zBinIWrSX8/z86mdpQ5B6f+pVbYum1D1uy11f2g22bn9hiyed1N+Gg4ufcz8Hp6l6DZtlPrOcq
	9HNe+UlMsbzIYDymD2uPd/KsWH71ri57/ClC4VKP6JXtx+ViaeFTn14OgqYYBQEo8r5zOt6yNBQi9
	3cL39i1JZqcOYf/fgngYkopJmaaT+zDxp5DAVwGOzqR91ZtQ1l4G/pzvwbpGiimvcXW/JQKFD2um9
	0X4B5NDOYfcdMG0OPpKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Aqg-0000mM-Rq; Sat, 29 Feb 2020 22:44:42 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8AqX-0000lm-9h
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 22:44:34 +0000
Received: by mail-oi1-x241.google.com with SMTP id r16so6634810oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Feb 2020 14:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7fImmI76PTkUm0FnhIT75xAfAmVx1VzhBKKsN9mVGyw=;
 b=CqI85+c/yRtEkfdvKZhyimiv+7VpsWo116oMWIFfgpozuKdLs8C42nteZDsX5BGC18
 YFA3FIVS39K+jrHV363NgaZbyyIgxeUDc50ebfZEV6Dg195VTUcmJ5ks4GK7LLMTfdRG
 eyz/jrExrPaaWO449Bs08Z5ZvCBAF8pQBclZvBaZdySo4pDGyePu6OJWj4OeXrvOl5KY
 ro66cJo/Qcj1ASkeP0uL8RRPE1gEVH5S6C3g2weZyNNFDalPOuYmVgtTK4js076KGUP1
 sjl87SdTRjtqnsitz4qtdRmuFsvpmQAbp/SMu5PjS/fDvEIs6oFk7/24LGUbW+6A+6f/
 UVDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7fImmI76PTkUm0FnhIT75xAfAmVx1VzhBKKsN9mVGyw=;
 b=hSqjVTZ9X/j5U0H9bfp/UJ3F6KVAAmWhPfKtrSu4pqrtFb/GYwmToZbqZZetbkwkYK
 V0qumEQNkcPImJbVuta91sd5ZpyN4cYLN7tl/KSqt0cI/A5/bcYrLxRAbde71QfkdjVE
 28/J6cQA6nUcNs6h1Lv3Ce9Y8vGC7JY2lf2BT8HuicynK1QK5C3sLZ2j8sboQO28WZ/d
 hU7/Lq9Va/BRNSgwZ74MRCmsWX2ukO86cNi/Cll7bSJnVW6gXQx2wK2yIJxYlya5Lou/
 paiTdFo3kmCuQyraVJ3oZUAkjI6OqVcBtbXsp4/vQfZCLiK0+79C7H6TKOLwHbLYS1Vq
 oGLw==
X-Gm-Message-State: APjAAAUw5Jmx3wjLzNybu+jktQs+Td0cA0PBgvG0F8aymffSyL5FhLWV
 Mz9HWe9Z1AZKqDO88xnJsQZIG7Yx+ZuVZ9eXOyLDag==
X-Google-Smtp-Source: APXvYqyGByPH6pnWrwmTwQrskzg89P8NSyX2Okxw9rUGjppQ4dvnm0/DLDGVxjpQFnKlb3H7KIX7HBwNZb3emn/5hZY=
X-Received: by 2002:aca:ec02:: with SMTP id k2mr7594496oih.105.1583016270294; 
 Sat, 29 Feb 2020 14:44:30 -0800 (PST)
MIME-Version: 1.0
References: <20200221182503.28317-1-logang@deltatee.com>
 <20200221182503.28317-7-logang@deltatee.com>
In-Reply-To: <20200221182503.28317-7-logang@deltatee.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Sat, 29 Feb 2020 14:44:19 -0800
Message-ID: <CAPcyv4gR1+NaWzteqNKip=cYk89oEVW18HNao7Xv=JipzzDagw@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] mm/memory_hotplug: Add pgprot_t to mhp_params
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_144433_345115_F1725E8E 
X-CRM114-Status: GOOD (  25.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michal Hocko <mhocko@suse.com>, linux-ia64@vger.kernel.org,
 Linux-sh <linux-sh@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-s390 <linux-s390@vger.kernel.org>,
 David Hildenbrand <david@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Michal Hocko <mhocko@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Eric Badger <ebadger@gigaio.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 10:25 AM Logan Gunthorpe <logang@deltatee.com> wrote:
>
> devm_memremap_pages() is currently used by the PCI P2PDMA code to create
> struct page mappings for IO memory. At present, these mappings are created
> with PAGE_KERNEL which implies setting the PAT bits to be WB. However, on
> x86, an mtrr register will typically override this and force the cache
> type to be UC-. In the case firmware doesn't set this register it is
> effectively WB and will typically result in a machine check exception
> when it's accessed.
>
> Other arches are not currently likely to function correctly seeing they
> don't have any MTRR registers to fall back on.
>
> To solve this, provide a way to specify the pgprot value explicitly to
> arch_add_memory().
>
> Of the arches that support MEMORY_HOTPLUG: x86_64, and arm64 need a simple
> change to pass the pgprot_t down to their respective functions which set
> up the page tables. For x86_32, set the page tables explicitly using
> _set_memory_prot() (seeing they are already mapped). For ia64, s390 and
> sh, reject anything but PAGE_KERNEL settings -- this should be fine,
> for now, seeing these architectures don't support ZONE_DEVICE.
>
> A check in __add_pages() is also added to ensure the pgprot parameter was
> set for all arches.
>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> Acked-by: David Hildenbrand <david@redhat.com>
> Acked-by: Michal Hocko <mhocko@suse.com>
> ---
>  arch/arm64/mm/mmu.c            | 3 ++-
>  arch/ia64/mm/init.c            | 3 +++
>  arch/powerpc/mm/mem.c          | 3 ++-
>  arch/s390/mm/init.c            | 3 +++
>  arch/sh/mm/init.c              | 3 +++
>  arch/x86/mm/init_32.c          | 5 +++++
>  arch/x86/mm/init_64.c          | 2 +-
>  include/linux/memory_hotplug.h | 2 ++
>  mm/memory_hotplug.c            | 5 ++++-
>  mm/memremap.c                  | 6 +++---
>  10 files changed, 28 insertions(+), 7 deletions(-)
>
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index ee37bca8aba8..ea3fa844a8a2 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -1058,7 +1058,8 @@ int arch_add_memory(int nid, u64 start, u64 size,
>                 flags = NO_BLOCK_MAPPINGS | NO_CONT_MAPPINGS;
>
>         __create_pgd_mapping(swapper_pg_dir, start, __phys_to_virt(start),
> -                            size, PAGE_KERNEL, __pgd_pgtable_alloc, flags);
> +                            size, params->pgprot, __pgd_pgtable_alloc,
> +                            flags);
>
>         memblock_clear_nomap(start, size);
>
> diff --git a/arch/ia64/mm/init.c b/arch/ia64/mm/init.c
> index 97bbc23ea1e3..d637b4ea3147 100644
> --- a/arch/ia64/mm/init.c
> +++ b/arch/ia64/mm/init.c
> @@ -676,6 +676,9 @@ int arch_add_memory(int nid, u64 start, u64 size,
>         unsigned long nr_pages = size >> PAGE_SHIFT;
>         int ret;
>
> +       if (WARN_ON_ONCE(params->pgprot.pgprot != PAGE_KERNEL.pgprot))
> +               return -EINVAL;
> +
>         ret = __add_pages(nid, start_pfn, nr_pages, params);
>         if (ret)
>                 printk("%s: Problem encountered in __add_pages() as ret=%d\n",
> diff --git a/arch/powerpc/mm/mem.c b/arch/powerpc/mm/mem.c
> index 19b1da5d7eca..832412bc7fad 100644
> --- a/arch/powerpc/mm/mem.c
> +++ b/arch/powerpc/mm/mem.c
> @@ -138,7 +138,8 @@ int __ref arch_add_memory(int nid, u64 start, u64 size,
>         resize_hpt_for_hotplug(memblock_phys_mem_size());
>
>         start = (unsigned long)__va(start);
> -       rc = create_section_mapping(start, start + size, nid, PAGE_KERNEL);
> +       rc = create_section_mapping(start, start + size, nid,
> +                                   params->pgprot);
>         if (rc) {
>                 pr_warn("Unable to create mapping for hot added memory 0x%llx..0x%llx: %d\n",
>                         start, start + size, rc);
> diff --git a/arch/s390/mm/init.c b/arch/s390/mm/init.c
> index e9e4a7abd0cc..87b2d024e75a 100644
> --- a/arch/s390/mm/init.c
> +++ b/arch/s390/mm/init.c
> @@ -277,6 +277,9 @@ int arch_add_memory(int nid, u64 start, u64 size,
>         if (WARN_ON_ONCE(params->altmap))
>                 return -EINVAL;
>
> +       if (WARN_ON_ONCE(params->pgprot.pgprot != PAGE_KERNEL.pgprot))
> +               return -EINVAL;
> +
>         rc = vmem_add_mapping(start, size);
>         if (rc)
>                 return rc;
> diff --git a/arch/sh/mm/init.c b/arch/sh/mm/init.c
> index e5114c053364..b9de2d4fa57e 100644
> --- a/arch/sh/mm/init.c
> +++ b/arch/sh/mm/init.c
> @@ -412,6 +412,9 @@ int arch_add_memory(int nid, u64 start, u64 size,
>         unsigned long nr_pages = size >> PAGE_SHIFT;
>         int ret;
>
> +       if (WARN_ON_ONCE(params->pgprot.pgprot != PAGE_KERNEL.pgprot)
> +               return -EINVAL;
> +
>         /* We only have ZONE_NORMAL, so this is easy.. */
>         ret = __add_pages(nid, start_pfn, nr_pages, params);
>         if (unlikely(ret))
> diff --git a/arch/x86/mm/init_32.c b/arch/x86/mm/init_32.c
> index e25a4218e6ff..96d8e4fb1cc8 100644
> --- a/arch/x86/mm/init_32.c
> +++ b/arch/x86/mm/init_32.c
> @@ -858,6 +858,11 @@ int arch_add_memory(int nid, u64 start, u64 size,
>  {
>         unsigned long start_pfn = start >> PAGE_SHIFT;
>         unsigned long nr_pages = size >> PAGE_SHIFT;
> +       int ret;
> +
> +       ret = _set_memory_prot(start, nr_pages, params->pgprot);

Perhaps a comment since it's not immediately obvious where the
PAGE_KERNEL prot was established, and perhaps add a conditional to
skip this call in the param->pgprot == PAGE_KERNEL case?

Other than that looks good to me, but only an ack since I'm only
testing the x86 changes.

Acked-by: Dan Williams <dan.j.williams@intel.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
