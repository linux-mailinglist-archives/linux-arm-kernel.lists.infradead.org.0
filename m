Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC563B5DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgDLIZjFsYiHxL38h7qUSfwY3iMrerbAZ32izy14oLE=; b=ZH9PXC9T2BlxkF
	PRNqUIj+jLn73C7rE5Vpe326LDRtBHW6kcPZOZldrtMnpvpe9TnWoKPyWxy+pK2sS3iqZAVTFtsHL
	BVE9WWtUuhyBb33S0wZVHU1nPhiUyV4ffAB1cNI+tsNh8GfGDVs+c/c3x/lWL69FEDc6pYqiHfdHG
	sTsKc78VDXpZlwe8V1tLm4EfKLNrs9Y79SmDzf3qh3WGQDw2D7PJjcdMGQsgpbDuinAet2ey6rcJL
	tjuqbPK5CF2V+u51Iui8qzHa1dFDfxTeeJPfCeptL5q/iMDrMtKprhKNVNw88Pmb7vSzz/S2lQ8yp
	umh1dmeYmWyo96QMkCoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKAf-0008Bz-KB; Mon, 10 Jun 2019 13:17:09 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haKAU-0008Bb-BY
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:17:00 +0000
Received: by mail-io1-xd44.google.com with SMTP id e5so6823999iok.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 06:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VNk3HOCqwDsrkq+M3DdByXFYq0E8aVmGy+Vn0t1wmaY=;
 b=ToX2hnaPH/yjK/yvnjCSobIl6X1PxRHZMTxaYxnc93jtRyxCkM3sfJvZbB3eAFqge5
 z45yC+pgHMwEPckZDsqHcg3+caBoy+JVKU6sBaM7KXnyPck3vnFJCTBeAIu2luYq4rE7
 6jE4cIiKDovZWrh469CXU7kt6U5jlpxxU8KzxA4RSx9XNMVFQTzjfD5PZpFVNN56S/dC
 wfU4+tId3+iEaUkIFgfL12VBZ+n+AqnyyGI/Eri/43BgAjMUircdZ4iNrUmiAACGZ2oD
 UIUXMG9YKUl5xEuoDvNTIlCuEfIufTITNC74w5cX338XdLkR+BuY1t7qATuGZ1QjdeyV
 bZDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VNk3HOCqwDsrkq+M3DdByXFYq0E8aVmGy+Vn0t1wmaY=;
 b=ObRsmqdaYmgNMJS00kpzPzdM8W+gLp/kZAiQxDJUUHMqfNv7+QkBXSVVpj5jqvMEHy
 GMFbO+k+aNSBXoPzRnUBgcrEc/9f6C7bYfailG7pwG2+OZA/WMGzW0aMbUzPirZsq/hy
 vysJo6KdFv5wS7yjQISSToye87hqLEDk0jKgbTDSe0CVwYiB9pbX3TmLKcn5NSdJtTSO
 o5XuDJE4RMnU9agS0Sy3jp4+ymCjyBM4ojnot9mSJ5mv6q5W/u0+UX3BPZ5yqXjrGJ/h
 AgIlQFbaVqgQ/7FfZRp0QT8XK1t7uhOnLZUwCpHugllcLzIadqgMwai0P7epWRFy1G8x
 BEeA==
X-Gm-Message-State: APjAAAWzJDVf6MTXn0pXU8eKGkPwqY/Dau6z3+PXuo5ASQJrqXToEgPE
 0+3S4U8WomNfllwtDsRHTfhvkLZmJ9Q4OFloH+nHfA==
X-Google-Smtp-Source: APXvYqzarBFbSF1naKHDvaWpGg/Ufru9EOjzFBYFWaY07cg7Q42+dj/GPRcQhIHhjw/DdT+Mn5GafMfhlQuQGHRdbPM=
X-Received: by 2002:a5d:9d83:: with SMTP id 3mr37963127ion.65.1560172616087;
 Mon, 10 Jun 2019 06:16:56 -0700 (PDT)
MIME-Version: 1.0
References: <1534907237-2982-1-git-send-email-jia.he@hxt-semitech.com>
 <CAKv+Gu9u8RcrzSHdgXiqHS9HK1aSrjbPxVUSCP0DT4erAhx0pw@mail.gmail.com>
 <20180907144447.GD12788@arm.com>
 <84b8e874-2a52-274c-4806-968470e66a08@huawei.com>
In-Reply-To: <84b8e874-2a52-274c-4806-968470e66a08@huawei.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 10 Jun 2019 15:16:43 +0200
Message-ID: <CAKv+Gu9fd2Y7USDYnQdUuYd9L2OD99kU4A1x1JSF442KN96TTA@mail.gmail.com>
Subject: Re: [PATCH v11 0/3] remain and optimize memblock_next_valid_pfn on
 arm and arm64
To: Hanjun Guo <guohanjun@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_061658_400406_191A93D3 
X-CRM114-Status: GOOD (  40.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Wei Yang <richard.weiyang@gmail.com>, Linux-MM <linux-mm@kvack.org>,
 James Morse <james.morse@arm.com>, Eugeniu Rosca <erosca@de.adit-jv.com>,
 Petr Tesarik <ptesarik@suse.com>, Nikolay Borisov <nborisov@suse.com>,
 Jia He <hejianet@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Mel Gorman <mgorman@suse.de>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Laura Abbott <labbott@redhat.com>,
 Daniel Vacek <neelx@redhat.com>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Kees Cook <keescook@chromium.org>, Philip Derrin <philip@cog.systems>,
 YASUAKI ISHIMATSU <yasu.isimatu@gmail.com>, Jia He <jia.he@hxt-semitech.com>,
 Ard Biesheuvel <ard.biesheuvel@arm.com>, Kemi Wang <kemi.wang@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <steve.capper@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Gioh Kim <gi-oh.kim@profitbricks.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 8 Jun 2019 at 06:22, Hanjun Guo <guohanjun@huawei.com> wrote:
>
> Hi Ard, Will,
>
> This week we were trying to debug an issue of time consuming in mem_init(),
> and leading to this similar solution form Jia He, so I would like to bring this
> thread back, please see my detail test result below.
>
> On 2018/9/7 22:44, Will Deacon wrote:
> > On Thu, Sep 06, 2018 at 01:24:22PM +0200, Ard Biesheuvel wrote:
> >> On 22 August 2018 at 05:07, Jia He <hejianet@gmail.com> wrote:
> >>> Commit b92df1de5d28 ("mm: page_alloc: skip over regions of invalid pfns
> >>> where possible") optimized the loop in memmap_init_zone(). But it causes
> >>> possible panic bug. So Daniel Vacek reverted it later.
> >>>
> >>> But as suggested by Daniel Vacek, it is fine to using memblock to skip
> >>> gaps and finding next valid frame with CONFIG_HAVE_ARCH_PFN_VALID.
> >>>
> >>> More from what Daniel said:
> >>> "On arm and arm64, memblock is used by default. But generic version of
> >>> pfn_valid() is based on mem sections and memblock_next_valid_pfn() does
> >>> not always return the next valid one but skips more resulting in some
> >>> valid frames to be skipped (as if they were invalid). And that's why
> >>> kernel was eventually crashing on some !arm machines."
> >>>
> >>> About the performance consideration:
> >>> As said by James in b92df1de5,
> >>> "I have tested this patch on a virtual model of a Samurai CPU with a
> >>> sparse memory map.  The kernel boot time drops from 109 to 62 seconds."
> >>> Thus it would be better if we remain memblock_next_valid_pfn on arm/arm64.
> >>>
> >>> Besides we can remain memblock_next_valid_pfn, there is still some room
> >>> for improvement. After this set, I can see the time overhead of memmap_init
> >>> is reduced from 27956us to 13537us in my armv8a server(QDF2400 with 96G
> >>> memory, pagesize 64k). I believe arm server will benefit more if memory is
> >>> larger than TBs
> >>>
> >>
> >> OK so we can summarize the benefits of this series as follows:
> >> - boot time on a virtual model of a Samurai CPU drops from 109 to 62 seconds
> >> - boot time on a QDF2400 arm64 server with 96 GB of RAM drops by ~15
> >> *milliseconds*
> >>
> >> Google was not very helpful in figuring out what a Samurai CPU is and
> >> why we should care about the boot time of Linux running on a virtual
> >> model of it, and the 15 ms speedup is not that compelling either.
>
> Testing this patch set on top of Kunpeng 920 based ARM64 server, with
> 384G memory in total, we got the time consuming below
>
>              without this patch set      with this patch set
> mem_init()        13310ms                      1415ms
>
> So we got about 8x speedup on this machine, which is very impressive.
>

Yes, this is impressive. But does it matter in the grand scheme of
things? How much time does this system take to arrive at this point
from power on?

> The time consuming is related the memory DIMM size and where to locate those
> memory DIMMs in the slots. In above case, we are using 16G memory DIMM.
> We also tested 1T memory with 64G size for each memory DIMM on another ARM64
> machine, the time consuming reduced from 20s to 2s (I think it's related to
> firmware implementations).
>

I agree that this optimization looks good in isolation, but the fact
that you spotted a bug justifies my skepticism at the time. On the
other hand, now that we have several independent reports (from you,
but also from the Renesas folks) that the speedup is worthwhile for
real world use cases, I think it does make sense to revisit it.

So what I would like to see is the patch set being proposed again,
with the new data points added for documentation. Also, the commit
logs need to crystal clear about how the meaning of PFN validity
differs between ARM and other architectures, and why the assumptions
that the optimization is based on are guaranteed to hold.



> >>
> >> Apologies to Jia that it took 11 revisions to reach this conclusion,
> >> but in /my/ opinion, tweaking the fragile memblock/pfn handling code
> >> for this reason is totally unjustified, and we're better off
> >> disregarding these patches.
>
> Indeed this patch set has a bug, For exampe, if we have 3 regions which
> is [a, b] [c, d] [e, f] if address of pfn is bigger than the end address of
> last region, we will increase early_region_idx to count of region, which is
> out of bound of the regions. Fixed by patch below,
>
>  mm/memblock.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/mm/memblock.c b/mm/memblock.c
> index 8279295..8283bf0 100644
> --- a/mm/memblock.c
> +++ b/mm/memblock.c
> @@ -1252,13 +1252,17 @@ unsigned long __init_memblock memblock_next_valid_pfn(unsigned long pfn)
>                 if (pfn >= start_pfn && pfn < end_pfn)
>                         return pfn;
>
> -               early_region_idx++;
> +               /* try slow path */
> +               if (++early_region_idx == type->cnt)
> +                       goto slow_path;
> +
>                 next_start_pfn = PFN_DOWN(regions[early_region_idx].base);
>
>                 if (pfn >= end_pfn && pfn <= next_start_pfn)
>                         return next_start_pfn;
>         }
>
> +slow_path:
>         /* slow path, do the binary searching */
>         do {
>                 mid = (right + left) / 2;
>
> As the really impressive speedup on our ARM64 server system, could you reconsider
> this patch set for merge? if you want more data I'm willing to clarify and give
> more test.
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
