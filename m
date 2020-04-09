Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E54EB1A3C61
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 00:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OyxSfWPQ0CMOM/Wu30jK+YkCSSMYxvxevXJx8X+/eEE=; b=a/ZOaLqGTxCcg1
	cpe4WbgBeml1hFOpzuapw8LBpjVTd9IzZBtlVAqiRpnoRH1iZbM8hyW4hZGVXb530oNSIeK4LfyW3
	I2yrTKzNaAwyPHbgcInnHxtZ1NbKsOGXUh19AZxqlfJuNVGU1N1Fyu6MabehVH7jXXtRqR2aD5All
	7DuNOLGR8pq7Hx30XOD0lkACCINBvlmsjHDNLJ+WLftEqp6eCorgOFL7fHPT+WsbtXVGPvXuazJvt
	KmkKfB+6aAWx77SWAPt8/AxaotZYzt90lmWLYZ0Opja66bqgE3yny04CKhTSikoUWqRbkFl1yVl/5
	KuWET/z+tco/TzdsQ9CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMfbw-00027U-R1; Thu, 09 Apr 2020 22:25:24 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMfbp-00026r-P3
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 22:25:19 +0000
Received: by mail-qk1-x741.google.com with SMTP id l25so472194qkk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 15:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9zZmDvv9VsaMcSR+uAlcqBBO7fDfxOBX/cPeyIGlPXM=;
 b=W4onPV0FDtRSS9y6l1W+W/FVY7uMwYmp/vLxbV+vsTO2W55vIfLst1ikMIBLMv47KZ
 64ToStA7a/6zppDU+wTlTfU6Un6EOx32pfCLeSVtqFEU4ptlSPugU0N+X034gxeIEd+F
 sZ22vzsQqnM3Miz22Gk0POiNvD6ME0G4DRZUu2V8o+JOPEqF23MicCWNGTbmmYIhLe6V
 3W5oV53czY23X0IJIdp9cV+2Oc5V3oKlN3PwYT1QLJTo9I26Y6rC6ay6XFYA6QD+wQeh
 /I0xueubtqoupnFXkcYtIoaN9TVAPRTkCMdnq3avNZap0J3hFNk8iJ7/qgVG1ZOC7J6L
 Bwaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9zZmDvv9VsaMcSR+uAlcqBBO7fDfxOBX/cPeyIGlPXM=;
 b=brEztKGO0nwMZ7jLQgjN3Z0ZxRe2FsyC+k8exM45iZHNTXjNqvO4vxVicupVtce2mJ
 u8JMNefwf+VwdrIeegexGuWMlEhVOogFOYOhwQqp0FvSl/2QzByt61RYDzn5zn8+ojqT
 y2azH+dJfYl+4TH5PhPJy+tOmeF79/tjV6AUo5DhW96aKNzRG991eqt3NGfWSzHNrgsY
 mXal91Btpi37aP1eMBLxZ4C9Z3Mr/VPmmN+ukiU/FVVqVdJZIEb/9FZdpGUgGcw/p0Sc
 Bl8Cn5lnm/Wc4aVOyUyz2LHr5i8xC1e1I3kzjbiWf1jLojSChZsvnkSa9I3514zEQcro
 lDOw==
X-Gm-Message-State: AGi0PubxTTjWx2udN9lNWHl8/jvYnVmY572muWJGxdMumSdf+YvaaTc6
 DpG5d0L3dIFPwU2Dus0cn5FUNSpfR09KujTSP0s=
X-Google-Smtp-Source: APiQypIwNq7wZY1PnpGu/Qv59bzelpOE6CP1WGeABev8jhWjEtJ5m8SKmmGAGV+0ntLTtupM9GwEs2trz+3rj7Qjirg=
X-Received: by 2002:a37:6587:: with SMTP id z129mr1198478qkb.437.1586471114653; 
 Thu, 09 Apr 2020 15:25:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-26-hch@lst.de>
In-Reply-To: <20200408115926.1467567-26-hch@lst.de>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 9 Apr 2020 15:25:03 -0700
Message-ID: <CAEf4BzZOC2tLrqt_Km=WQb=9xiya2e31i6K3oJuzgYQt6wp1LQ@mail.gmail.com>
Subject: Re: [PATCH 25/28] mm: remove vmalloc_user_node_flags
To: Christoph Hellwig <hch@lst.de>, Johannes Weiner <hannes@cmpxchg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_152517_840365_A47825D4 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrii.nakryiko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 x86@kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Laura Abbott <labbott@redhat.com>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf <bpf@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, open list <linux-kernel@vger.kernel.org>,
 Minchan Kim <minchan@kernel.org>, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cc Johannes who suggested this API call originally

On Wed, Apr 8, 2020 at 5:03 AM Christoph Hellwig <hch@lst.de> wrote:
>
> Open code it in __bpf_map_area_alloc, which is the only caller.  Also
> clean up __bpf_map_area_alloc to have a single vmalloc call with
> slightly different flags instead of the current two different calls.
>
> For this to compile for the nommu case add a __vmalloc_node_range stub
> to nommu.c.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  include/linux/vmalloc.h |  1 -
>  kernel/bpf/syscall.c    | 23 +++++++++++++----------
>  mm/nommu.c              | 14 ++++++++------
>  mm/vmalloc.c            | 20 --------------------
>  4 files changed, 21 insertions(+), 37 deletions(-)
>
> diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
> index 108f49b47756..f90f2946aac2 100644
> --- a/include/linux/vmalloc.h
> +++ b/include/linux/vmalloc.h
> @@ -106,7 +106,6 @@ extern void *vzalloc(unsigned long size);
>  extern void *vmalloc_user(unsigned long size);
>  extern void *vmalloc_node(unsigned long size, int node);
>  extern void *vzalloc_node(unsigned long size, int node);
> -extern void *vmalloc_user_node_flags(unsigned long size, int node, gfp_t flags);
>  extern void *vmalloc_exec(unsigned long size);
>  extern void *vmalloc_32(unsigned long size);
>  extern void *vmalloc_32_user(unsigned long size);
> diff --git a/kernel/bpf/syscall.c b/kernel/bpf/syscall.c
> index 48d98ea8fad6..249d9bd43321 100644
> --- a/kernel/bpf/syscall.c
> +++ b/kernel/bpf/syscall.c
> @@ -281,26 +281,29 @@ static void *__bpf_map_area_alloc(u64 size, int numa_node, bool mmapable)
>          * __GFP_RETRY_MAYFAIL to avoid such situations.
>          */
>
> -       const gfp_t flags = __GFP_NOWARN | __GFP_ZERO;
> +       const gfp_t gfp = __GFP_NOWARN | __GFP_ZERO;
> +       unsigned int flags = 0;
> +       unsigned long align = 1;
>         void *area;
>
>         if (size >= SIZE_MAX)
>                 return NULL;
>
>         /* kmalloc()'ed memory can't be mmap()'ed */
> -       if (!mmapable && size <= (PAGE_SIZE << PAGE_ALLOC_COSTLY_ORDER)) {
> -               area = kmalloc_node(size, GFP_USER | __GFP_NORETRY | flags,
> +       if (mmapable) {
> +               BUG_ON(!PAGE_ALIGNED(size));
> +               align = SHMLBA;
> +               flags = VM_USERMAP;
> +       } else if (size <= (PAGE_SIZE << PAGE_ALLOC_COSTLY_ORDER)) {
> +               area = kmalloc_node(size, gfp | GFP_USER | __GFP_NORETRY,
>                                     numa_node);
>                 if (area != NULL)
>                         return area;
>         }
> -       if (mmapable) {
> -               BUG_ON(!PAGE_ALIGNED(size));
> -               return vmalloc_user_node_flags(size, numa_node, GFP_KERNEL |
> -                                              __GFP_RETRY_MAYFAIL | flags);
> -       }
> -       return __vmalloc_node(size, 1, GFP_KERNEL | __GFP_RETRY_MAYFAIL | flags,
> -                             numa_node, __builtin_return_address(0));
> +
> +       return __vmalloc_node_range(size, align, VMALLOC_START, VMALLOC_END,
> +                       gfp | GFP_KERNEL | __GFP_RETRY_MAYFAIL, PAGE_KERNEL,
> +                       flags, numa_node, __builtin_return_address(0));
>  }
>
>  void *bpf_map_area_alloc(u64 size, int numa_node)
> diff --git a/mm/nommu.c b/mm/nommu.c
> index 81a86cd85893..b42cd6003d7d 100644
> --- a/mm/nommu.c
> +++ b/mm/nommu.c
> @@ -150,6 +150,14 @@ void *__vmalloc(unsigned long size, gfp_t gfp_mask)
>  }
>  EXPORT_SYMBOL(__vmalloc);
>
> +void *__vmalloc_node_range(unsigned long size, unsigned long align,
> +               unsigned long start, unsigned long end, gfp_t gfp_mask,
> +               pgprot_t prot, unsigned long vm_flags, int node,
> +               const void *caller)
> +{
> +       return __vmalloc(size, flags);
> +}
> +
>  void *__vmalloc_node(unsigned long size, unsigned long align, gfp_t gfp_mask,
>                 int node, const void *caller)
>  {
> @@ -180,12 +188,6 @@ void *vmalloc_user(unsigned long size)
>  }
>  EXPORT_SYMBOL(vmalloc_user);
>
> -void *vmalloc_user_node_flags(unsigned long size, int node, gfp_t flags)
> -{
> -       return __vmalloc_user_flags(size, flags | __GFP_ZERO);
> -}
> -EXPORT_SYMBOL(vmalloc_user_node_flags);
> -
>  struct page *vmalloc_to_page(const void *addr)
>  {
>         return virt_to_page(addr);
> diff --git a/mm/vmalloc.c b/mm/vmalloc.c
> index 333fbe77255a..f6f2acdaf70c 100644
> --- a/mm/vmalloc.c
> +++ b/mm/vmalloc.c
> @@ -2658,26 +2658,6 @@ void *vzalloc_node(unsigned long size, int node)
>  }
>  EXPORT_SYMBOL(vzalloc_node);
>
> -/**
> - * vmalloc_user_node_flags - allocate memory for userspace on a specific node
> - * @size: allocation size
> - * @node: numa node
> - * @flags: flags for the page level allocator
> - *
> - * The resulting memory area is zeroed so it can be mapped to userspace
> - * without leaking data.
> - *
> - * Return: pointer to the allocated memory or %NULL on error
> - */
> -void *vmalloc_user_node_flags(unsigned long size, int node, gfp_t flags)
> -{
> -       return __vmalloc_node_range(size, SHMLBA,  VMALLOC_START, VMALLOC_END,
> -                                   flags | __GFP_ZERO, PAGE_KERNEL,
> -                                   VM_USERMAP, node,
> -                                   __builtin_return_address(0));
> -}
> -EXPORT_SYMBOL(vmalloc_user_node_flags);
> -
>  /**
>   * vmalloc_exec - allocate virtually contiguous, executable memory
>   * @size:        allocation size
> --
> 2.25.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
