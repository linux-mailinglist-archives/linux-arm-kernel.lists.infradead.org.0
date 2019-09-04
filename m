Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F22A83E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 15:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xd2fKtrlTvyRyQGelt0S+wUzVdNrxFUQGA9bKHyXC4c=; b=iXFfCJMkc8tDZx
	kV6BXuoEr4Y7izsxmt4qBMYLoSS8zQRD7hgwQ2u7n1lrEoXyrSBVwMqZptWhd7Sd6WRRQygxW6nMg
	TjCfF1/QwfmmFhXJQt9xAhQSQ3JxBM+yuZ80WZww9GfH9NmrPT9jgychtPu7xDl6DGYQ+mRQMMZKg
	fSXzoT1bL2HiDR+w3DvCHs2Lv43ieH8hUaWFQJt4xGJuzXqfr+KLQ/YrNrOL3vGVLdXBUqARslcLg
	Oiz7Sp/BX5LBTGx+Lyc2a3lFSSo7/1E092wcq52OTg9avZ+qNKCw9dVhRs5QVMrbCeIhlhMM++QMk
	h18lodUx8hnEVcGuS6ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Vas-0005Ds-H2; Wed, 04 Sep 2019 13:45:06 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Vae-0005C8-Tl
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 13:44:54 +0000
Received: by mail-pg1-x543.google.com with SMTP id 4so7733092pgm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 06:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W721XQEkMG8bC4j2PepgMeY0jTQOErIpXztyfiJXOs8=;
 b=luGclcN1dcSuuNyjEd4iVSQhaZ7/plNnDTMPxi9rQNhfhWvSUm52SKtinf2rFBYvXv
 WkUY7zrmOKflAgtEFgIlDdwxNSqASf+eYZIMIOZno6R0+F2WyGjFJAgjSZ4QIsynr/s2
 ODnVlH9pQ8nvqktBpgfoOyAIHBEzgNZe6LLo0mlO0LIalIP8unm77acWwKiMIholXtcx
 rd0SUmY8p+MkPEaF4kb8sFqd7nNFprQXHr3npmQIDeaSJ+orCGo3gH4fjy6lV6eRrABT
 5nNtXJDgdAgHI4Yz0CI2RrNJFbyLrMht5vS5C2Qv1NthNoz3ozyI4WZorI/8tpI2Ehs9
 flxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W721XQEkMG8bC4j2PepgMeY0jTQOErIpXztyfiJXOs8=;
 b=Uemhhkj5/mbMyPGL786X9028dF7AbQTu5JzF7q0ZtqqVELqyDLNNzyuBpoll/D8MS8
 5mpTqMbTDs+9tWyUxJbQ2HvzRNlu2gLOIklnKLkNGTibuo/HPvWvVg522r5AnpNjp1SS
 eA/dWrE9ewHnUuXxBKkBRlVH3doDUXe++5jrUZopqv7pbTkTwtko+bxgMV3SXbC8vVp/
 bH+CiO/LOFcNVrCfXjjYnA29pFg/1Xs6BTKNLyFLfDiz6gR/YD4F+YHbJycd9p5/8q86
 fVIxXVWKPlmK0UOqvBAQxUKJ2qQ4L7I1AznYHpKabwrz3J9vWMy005TcjNKCAxlAtah2
 Kn9g==
X-Gm-Message-State: APjAAAVFS0oxUAsE4uQKrtUIDvfZM0GJCyB+IA2MlGHfzTDX0dBi8Dlp
 SRre/VPUsbTYOTvgNyH0UFLeY/Uml3zkfp2tVkrI8Q==
X-Google-Smtp-Source: APXvYqzCww2lW0PtxSg3odpkkA5VJF/XxD5kKaqrmZ1KDA7CF0CBSRDpFDrvufwyLOctz33+u6vqBpksBAlWIGv+72Q=
X-Received: by 2002:a17:90a:ff08:: with SMTP id
 ce8mr4950627pjb.123.1567604688325; 
 Wed, 04 Sep 2019 06:44:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190904065133.20268-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20190904065133.20268-1-walter-zh.wu@mediatek.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 4 Sep 2019 15:44:37 +0200
Message-ID: <CAAeHK+wyvLF8=DdEczHLzNXuP+oC0CEhoPmp_LHSKVNyAiRGLQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] mm/kasan: dump alloc/free stack for page allocator
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_064452_965885_E5BC8BD7 
X-CRM114-Status: GOOD (  26.73  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: wsd_upstream@mediatek.com, Arnd Bergmann <arnd@arndb.de>,
 Linux Memory Management List <linux-mm@kvack.org>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 8:51 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> This patch is KASAN report adds the alloc/free stacks for page allocator
> in order to help programmer to see memory corruption caused by page.
>
> By default, KASAN doesn't record alloc/free stack for page allocator.
> It is difficult to fix up page use-after-free issue.
>
> This feature depends on page owner to record the last stack of pages.
> It is very helpful for solving the page use-after-free or out-of-bound.
>
> KASAN report will show the last stack of page, it may be:
> a) If page is in-use state, then it prints alloc stack.
>    It is useful to fix up page out-of-bound issue.
>
> BUG: KASAN: slab-out-of-bounds in kmalloc_pagealloc_oob_right+0x88/0x90
> Write of size 1 at addr ffffffc0d64ea00a by task cat/115
> ...
> Allocation stack of page:
>  prep_new_page+0x1a0/0x1d8
>  get_page_from_freelist+0xd78/0x2748
>  __alloc_pages_nodemask+0x1d4/0x1978
>  kmalloc_order+0x28/0x58
>  kmalloc_order_trace+0x28/0xe0
>  kmalloc_pagealloc_oob_right+0x2c/0x90
>
> b) If page is freed state, then it prints free stack.
>    It is useful to fix up page use-after-free issue.
>
> BUG: KASAN: use-after-free in kmalloc_pagealloc_uaf+0x70/0x80
> Write of size 1 at addr ffffffc0d651c000 by task cat/115
> ...
> Free stack of page:
>  kasan_free_pages+0x68/0x70
>  __free_pages_ok+0x3c0/0x1328
>  __free_pages+0x50/0x78
>  kfree+0x1c4/0x250
>  kmalloc_pagealloc_uaf+0x38/0x80
>
>
> This has been discussed, please refer below link.
> https://bugzilla.kernel.org/show_bug.cgi?id=203967
>
> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> ---
>  lib/Kconfig.kasan | 9 +++++++++
>  mm/kasan/common.c | 6 ++++++
>  2 files changed, 15 insertions(+)
>
> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> index 4fafba1a923b..ba17f706b5f8 100644
> --- a/lib/Kconfig.kasan
> +++ b/lib/Kconfig.kasan
> @@ -135,6 +135,15 @@ config KASAN_S390_4_LEVEL_PAGING
>           to 3TB of RAM with KASan enabled). This options allows to force
>           4-level paging instead.
>
> +config KASAN_DUMP_PAGE
> +       bool "Dump the page last stack information"
> +       depends on KASAN && PAGE_OWNER
> +       help
> +         By default, KASAN doesn't record alloc/free stack for page allocator.
> +         It is difficult to fix up page use-after-free issue.
> +         This feature depends on page owner to record the last stack of page.
> +         It is very helpful for solving the page use-after-free or out-of-bound.

I'm not sure if we need a separate config for this. Is there any
reason to not have this enabled by default?

> +
>  config TEST_KASAN
>         tristate "Module for testing KASAN for bug detection"
>         depends on m && KASAN
> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> index 2277b82902d8..2a32474efa74 100644
> --- a/mm/kasan/common.c
> +++ b/mm/kasan/common.c
> @@ -35,6 +35,7 @@
>  #include <linux/vmalloc.h>
>  #include <linux/bug.h>
>  #include <linux/uaccess.h>
> +#include <linux/page_owner.h>
>
>  #include "kasan.h"
>  #include "../slab.h"
> @@ -227,6 +228,11 @@ void kasan_alloc_pages(struct page *page, unsigned int order)
>
>  void kasan_free_pages(struct page *page, unsigned int order)
>  {
> +#ifdef CONFIG_KASAN_DUMP_PAGE
> +       gfp_t gfp_flags = GFP_KERNEL;
> +
> +       set_page_owner(page, order, gfp_flags);
> +#endif
>         if (likely(!PageHighMem(page)))
>                 kasan_poison_shadow(page_address(page),
>                                 PAGE_SIZE << order,
> --
> 2.18.0
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20190904065133.20268-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
