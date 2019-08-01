Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3C27D6E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:07:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lg8valQcWUxd5fjNgzv9mjSfLEZyDgeCMPiXelsn1bc=; b=bd2x6Dco+HqW4j
	X5xi1cpCHvUb8htvJo9/j6763QPyHmlf9t+wHAJiASpFDBdHEh3Kjlj2coBqHP+K4PhsCqtR9Y1hN
	1BRltWctbrze6GylBij/GDQ8XxYNUgR0BEULwkoTtkvkC2DJPcLU8CAo1NZj/JjSVBhoebwGP/G2U
	dJrOo4ryIwYLPFkj7dZO+MpysfSOx+1ijeeDZxspOXe1P7/Hfl27Je5QrV5a4p0EixQ8wFDQCcFVZ
	cTHQTsE0RjJ0uTNrC78kQTAKMmpoo1+iu0+u7+hg8vDXvCT84MM67IyLCrc9Phm5ky8bJrMuOcRi/
	1rMXr0z6l2720TKaFudQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht67J-0008Nu-FL; Thu, 01 Aug 2019 08:07:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht67B-0008N5-J8
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:07:11 +0000
Received: by mail-wm1-x344.google.com with SMTP id f17so62255434wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g+A39RrdNsk5NIAgz6cbkqFXnqluhsaENg8UQpREXDE=;
 b=u2TOk2aUUxlciAz+S8fOw5ayEP5pxbanqpxoufcriztE503QaytjsfI44gjK93c4QO
 dVvcNshn6LEorrP7xMHWDjDwSJDHwfu9rr//ENrK//P/JGBiyvFKlS9HN9pxi9vAmshI
 JJMflJqGqOeIo1/OuWDprzizazOtEOuDzwoi5Iq+SB7KdbVeO2nIfjCdSEMb0fJveqYx
 zxREg7xesyR6VqxYmn9zuDDBcdduiRHLhpT6pGZct2AQq9M2eIzI2J7qvBQKw73KbGbk
 BmuBTVInsEUIKbHecZ0fv342yaPj3QrS5dmEkSZzo9vW5XurX1pxsLqpMir0kWwN0vpf
 loYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g+A39RrdNsk5NIAgz6cbkqFXnqluhsaENg8UQpREXDE=;
 b=hyCFQFFYIOPChj47BwE19Wc1pixxHCVgOop3adxw1Gwu85ofS6Fe35vcXR1kC9fSeo
 yTUrFSoBWDbph/dHHDPndxiR0ZjrE5TD6bwknmcjpDu0tIYQOpXBBQ2s958NNcMJWObL
 mwCKmq4DQnax6Ry6Bhz9/oJjghyPLnT7+BDmRhdDQ5MSPu+1hbIYYu68cEevve20mM00
 cceI3CtGmO9aTbzS529vQA79vKo3o219sHgx8TL/22WueZqSkN8SDVVHn2drqQWc1s1l
 XcM4kPv6KMzWJLizA7yltIYYqPCt8ZL5D9Y15Xdgb+t2rb4DhlPLsocj/L9mYYRZlF9m
 jHPg==
X-Gm-Message-State: APjAAAUhbWk6Ii+fkIms5jshV1KZq0ZQAkeLVYo/eeqviAkAI3xeBycP
 aTsqkX7ylGACtIKO7ALj8WVxVYl5IuzYVvub5vzRIQ==
X-Google-Smtp-Source: APXvYqzTOK2O5h5i7JW+1tMKyl/PkCpm0VE489+sVZTr8Okvaw+gBGpGHjDiT6ztuZuItrRRz1jLp8E/08KPJe5mXB4=
X-Received: by 2002:a7b:c0d0:: with SMTP id s16mr99294214wmh.136.1564646826613; 
 Thu, 01 Aug 2019 01:07:06 -0700 (PDT)
MIME-Version: 1.0
References: <1563861073-47071-1-git-send-email-guohanjun@huawei.com>
 <1563861073-47071-2-git-send-email-guohanjun@huawei.com>
In-Reply-To: <1563861073-47071-2-git-send-email-guohanjun@huawei.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 1 Aug 2019 11:06:55 +0300
Message-ID: <CAKv+Gu-YVrCbUfPQQhO+SSrqq4iempwQN481op6uf+q2tD-0=A@mail.gmail.com>
Subject: Re: [PATCH v12 1/2] mm: page_alloc: introduce
 memblock_next_valid_pfn() (again) for arm64
To: Hanjun Guo <guohanjun@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_010709_638812_734B11DA 
X-CRM114-Status: GOOD (  28.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Linux-MM <linux-mm@kvack.org>,
 Jia He <hejianet@gmail.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 23 Jul 2019 at 08:53, Hanjun Guo <guohanjun@huawei.com> wrote:
>
> From: Jia He <hejianet@gmail.com>
>
> Commit b92df1de5d28 ("mm: page_alloc: skip over regions of invalid pfns
> where possible") optimized the loop in memmap_init_zone(). But it causes
> possible panic on x86 due to specific memory mapping on x86_64 which will
> skip valid pfns as well, so Daniel Vacek reverted it later.
>
> But as suggested by Daniel Vacek, it is fine to using memblock to skip
> gaps and finding next valid frame with CONFIG_HAVE_ARCH_PFN_VALID.
>
> Daniel said:
> "On arm and arm64, memblock is used by default. But generic version of
> pfn_valid() is based on mem sections and memblock_next_valid_pfn() does
> not always return the next valid one but skips more resulting in some
> valid frames to be skipped (as if they were invalid). And that's why
> kernel was eventually crashing on some !arm machines."
>
> Introduce a new config option CONFIG_HAVE_MEMBLOCK_PFN_VALID and only
> selected for arm64, using the new config option to guard the
> memblock_next_valid_pfn().
>
> This was tested on a HiSilicon Kunpeng920 based ARM64 server, the speedup
> is pretty impressive for bootmem_init() at boot:
>
> with 384G memory,
> before: 13310ms
> after:  1415ms
>
> with 1T memory,
> before: 20s
> after:  2s
>
> Suggested-by: Daniel Vacek <neelx@redhat.com>
> Signed-off-by: Jia He <hejianet@gmail.com>
> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> ---
>  arch/arm64/Kconfig     |  1 +
>  include/linux/mmzone.h |  9 +++++++++
>  mm/Kconfig             |  3 +++
>  mm/memblock.c          | 31 +++++++++++++++++++++++++++++++
>  mm/page_alloc.c        |  4 +++-
>  5 files changed, 47 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 697ea0510729..058eb26579be 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -893,6 +893,7 @@ config ARCH_FLATMEM_ENABLE
>
>  config HAVE_ARCH_PFN_VALID
>         def_bool y
> +       select HAVE_MEMBLOCK_PFN_VALID
>
>  config HW_PERF_EVENTS
>         def_bool y
> diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
> index 70394cabaf4e..24cb6bdb1759 100644
> --- a/include/linux/mmzone.h
> +++ b/include/linux/mmzone.h
> @@ -1325,6 +1325,10 @@ static inline int pfn_present(unsigned long pfn)
>  #endif
>
>  #define early_pfn_valid(pfn)   pfn_valid(pfn)
> +#ifdef CONFIG_HAVE_MEMBLOCK_PFN_VALID
> +extern unsigned long memblock_next_valid_pfn(unsigned long pfn);
> +#define next_valid_pfn(pfn)    memblock_next_valid_pfn(pfn)
> +#endif
>  void sparse_init(void);
>  #else
>  #define sparse_init()  do {} while (0)
> @@ -1347,6 +1351,11 @@ struct mminit_pfnnid_cache {
>  #define early_pfn_valid(pfn)   (1)
>  #endif
>
> +/* fallback to default definitions */
> +#ifndef next_valid_pfn
> +#define next_valid_pfn(pfn)    (pfn + 1)
> +#endif
> +
>  void memory_present(int nid, unsigned long start, unsigned long end);
>
>  /*
> diff --git a/mm/Kconfig b/mm/Kconfig
> index f0c76ba47695..c578374b6413 100644
> --- a/mm/Kconfig
> +++ b/mm/Kconfig
> @@ -132,6 +132,9 @@ config HAVE_MEMBLOCK_NODE_MAP
>  config HAVE_MEMBLOCK_PHYS_MAP
>         bool
>
> +config HAVE_MEMBLOCK_PFN_VALID
> +       bool
> +
>  config HAVE_GENERIC_GUP
>         bool
>
> diff --git a/mm/memblock.c b/mm/memblock.c
> index 7d4f61ae666a..d57ba51bb9cd 100644
> --- a/mm/memblock.c
> +++ b/mm/memblock.c
> @@ -1251,6 +1251,37 @@ int __init_memblock memblock_set_node(phys_addr_t base, phys_addr_t size,
>         return 0;
>  }
>  #endif /* CONFIG_HAVE_MEMBLOCK_NODE_MAP */
> +
> +#ifdef CONFIG_HAVE_MEMBLOCK_PFN_VALID
> +unsigned long __init_memblock memblock_next_valid_pfn(unsigned long pfn)
> +{
> +       struct memblock_type *type = &memblock.memory;
> +       unsigned int right = type->cnt;
> +       unsigned int mid, left = 0;
> +       phys_addr_t addr = PFN_PHYS(++pfn);
> +
> +       do {
> +               mid = (right + left) / 2;
> +
> +               if (addr < type->regions[mid].base)
> +                       right = mid;
> +               else if (addr >= (type->regions[mid].base +
> +                                 type->regions[mid].size))
> +                       left = mid + 1;
> +               else {
> +                       /* addr is within the region, so pfn is valid */
> +                       return pfn;
> +               }
> +       } while (left < right);
> +
> +       if (right == type->cnt)
> +               return -1UL;
> +       else
> +               return PHYS_PFN(type->regions[right].base);
> +}
> +EXPORT_SYMBOL(memblock_next_valid_pfn);
> +#endif /* CONFIG_HAVE_MEMBLOCK_PFN_VALID */
> +
>  #ifdef CONFIG_DEFERRED_STRUCT_PAGE_INIT
>  /**
>   * __next_mem_pfn_range_in_zone - iterator for for_each_*_range_in_zone()
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index d66bc8abe0af..70933c40380a 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -5811,8 +5811,10 @@ void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
>                  * function.  They do not exist on hotplugged memory.
>                  */
>                 if (context == MEMMAP_EARLY) {
> -                       if (!early_pfn_valid(pfn))
> +                       if (!early_pfn_valid(pfn)) {
> +                               pfn = next_valid_pfn(pfn) - 1;

This is the thing I objected to previously: subtracting 1 so the pfn++
in the for() produces the correct value.

Could we instead pull the next() operation into the for() construct as
the third argument?

>                                 continue;
> +                       }
>                         if (!early_pfn_in_nid(pfn, nid))
>                                 continue;
>                         if (overlap_memmap_init(zone, &pfn))
> --
> 2.19.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
