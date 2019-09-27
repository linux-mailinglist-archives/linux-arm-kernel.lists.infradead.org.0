Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699ECC05FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 15:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqakUnZX8AssCoOe3cG5G5JhuL376tWq9WpVM/KfPFw=; b=fiI9f8v5zgo+F4
	632m7SEKurPscKeIW2dpthRuC1nCxrFgvKL2NQmo7u6aEH4bSVC2AJyMcjJ6kJ5UISrXzxQKxgTrQ
	cg72clLtEmvCm5nNiPP8Vk25spQwcFw4v7F+5Jg2WFHZy1mTCsuGYxrybYQ43cqdblmMoIKUaQAqU
	X3mxgOoEPoClLjxpKxX0gp1yKaRydx03sADxC0fPS/7H2o9WYYN1pQv+C974qemMDhxPKtvrTaxWy
	n0geY5m6BL351PA5/cMhM//qTetgICmvcmajso1dvNLJJXWOweXSWLiMnFh4w75sCpoKD3bVqFZeq
	irDRCbN5KPjyWLpJSPig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDpyS-0004Jd-E2; Fri, 27 Sep 2019 13:07:52 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDpyH-0004IT-Vc
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 13:07:43 +0000
Received: by mail-qk1-x742.google.com with SMTP id p10so1852294qkg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 06:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KFGrykQPVrfrF/RCxAyujZ2hxx3LnFuQxZYE85jjQVw=;
 b=eCGU90/xZEVHkKCXyCx9dXZYOtfiWFMq7pEiL6sVql5nIOuzUZmap6FW0TUmXa8+PU
 W7QjgFFyd0b7aGdzPj7JWFAaCxxkWHiLoAbcLFEFqS/5ZZWYoKcTAaAWkUAHhbeUW1FR
 kx/2TVbuRs9rN+dyRdEJw/yO/C/kppDIKK1TIs7Y2hIspTSWOLca0dGiNdfPh1ytEa0t
 tgfvgh7hlc9wXM1pdjaDWdUEQRj7Q+Yf8araXc0PrH+FuFKSfGxMA51kOFodqv3P89X3
 ClaMNs+Rr9x6+jwHltu3agDcuMkJqn+LiYWQhxmIonMqgaCA+H/rdfPLRojuTZgYyNZ0
 eSPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KFGrykQPVrfrF/RCxAyujZ2hxx3LnFuQxZYE85jjQVw=;
 b=nm6z1c9eM4zA835NXEfHtt4hAdubJggb4K+z6RnquqGyQ4e/1+kIQFyPrd6YNZhVsd
 h08gUjSbptIpiflOmo23IgfbOCGsLF77N9aDEyOxqyugsxmW0YjM35eeqj07x4+l1rn+
 vq2WoY4KI3VkDyyVewL6GmrSA9c/NNzdDLjy26xhRP5JULWXQ5j55h5KQ7FRN9Z9LjV0
 IXLy8dHnMtkF+I1ggoUYSyhsZC0Ox73/LX1JJOaclB/sxWIkUwna7BruicZEyK0XVahd
 5WgJrv9pNhfnroQEOgeRPiyBlwEmKRzvxk2enewz6mfu8s+ZXRO3g3yKXjSnBOVzcY04
 l9mA==
X-Gm-Message-State: APjAAAU+fJ2gS03M953ocPS4RZHbk0Z3AeAAQfcbyxoeqTv7z6URqmXm
 3xdvU3xWZ+8HCEMPquwX+LDlHyDsy7qbfbNtODxzSQ==
X-Google-Smtp-Source: APXvYqxSbPuLXB+yACgf7+ApwenZVI+V5HXnmMTKT9MisInSMbZ2ml/YIzKWfIjHD4YHiq/qrRKp5M1XDxBptaLE7RY=
X-Received: by 2002:a37:9202:: with SMTP id u2mr4399020qkd.8.1569589657502;
 Fri, 27 Sep 2019 06:07:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 27 Sep 2019 15:07:25 +0200
Message-ID: <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_060742_041616_37748E16 
X-CRM114-Status: GOOD (  27.22  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 5:43 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> memmove() and memcpy() have missing underflow issues.
> When -7 <= size < 0, then KASAN will miss to catch the underflow issue.
> It looks like shadow start address and shadow end address is the same,
> so it does not actually check anything.
>
> The following test is indeed not caught by KASAN:
>
>         char *p = kmalloc(64, GFP_KERNEL);
>         memset((char *)p, 0, 64);
>         memmove((char *)p, (char *)p + 4, -2);
>         kfree((char*)p);
>
> It should be checked here:
>
> void *memmove(void *dest, const void *src, size_t len)
> {
>         check_memory_region((unsigned long)src, len, false, _RET_IP_);
>         check_memory_region((unsigned long)dest, len, true, _RET_IP_);
>
>         return __memmove(dest, src, len);
> }
>
> We fix the shadow end address which is calculated, then generic KASAN
> get the right shadow end address and detect this underflow issue.
>
> [1] https://bugzilla.kernel.org/show_bug.cgi?id=199341
>
> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> Reported-by: Dmitry Vyukov <dvyukov@google.com>
> ---
>  lib/test_kasan.c   | 36 ++++++++++++++++++++++++++++++++++++
>  mm/kasan/generic.c |  8 ++++++--
>  2 files changed, 42 insertions(+), 2 deletions(-)
>
> diff --git a/lib/test_kasan.c b/lib/test_kasan.c
> index b63b367a94e8..8bd014852556 100644
> --- a/lib/test_kasan.c
> +++ b/lib/test_kasan.c
> @@ -280,6 +280,40 @@ static noinline void __init kmalloc_oob_in_memset(void)
>         kfree(ptr);
>  }
>
> +static noinline void __init kmalloc_oob_in_memmove_underflow(void)
> +{
> +       char *ptr;
> +       size_t size = 64;
> +
> +       pr_info("underflow out-of-bounds in memmove\n");
> +       ptr = kmalloc(size, GFP_KERNEL);
> +       if (!ptr) {
> +               pr_err("Allocation failed\n");
> +               return;
> +       }
> +
> +       memset((char *)ptr, 0, 64);
> +       memmove((char *)ptr, (char *)ptr + 4, -2);
> +       kfree(ptr);
> +}
> +
> +static noinline void __init kmalloc_oob_in_memmove_overflow(void)
> +{
> +       char *ptr;
> +       size_t size = 64;
> +
> +       pr_info("overflow out-of-bounds in memmove\n");
> +       ptr = kmalloc(size, GFP_KERNEL);
> +       if (!ptr) {
> +               pr_err("Allocation failed\n");
> +               return;
> +       }
> +
> +       memset((char *)ptr, 0, 64);
> +       memmove((char *)ptr + size, (char *)ptr, 2);
> +       kfree(ptr);
> +}
> +
>  static noinline void __init kmalloc_uaf(void)
>  {
>         char *ptr;
> @@ -734,6 +768,8 @@ static int __init kmalloc_tests_init(void)
>         kmalloc_oob_memset_4();
>         kmalloc_oob_memset_8();
>         kmalloc_oob_memset_16();
> +       kmalloc_oob_in_memmove_underflow();
> +       kmalloc_oob_in_memmove_overflow();
>         kmalloc_uaf();
>         kmalloc_uaf_memset();
>         kmalloc_uaf2();
> diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> index 616f9dd82d12..34ca23d59e67 100644
> --- a/mm/kasan/generic.c
> +++ b/mm/kasan/generic.c
> @@ -131,9 +131,13 @@ static __always_inline bool memory_is_poisoned_n(unsigned long addr,
>                                                 size_t size)
>  {
>         unsigned long ret;
> +       void *shadow_start = kasan_mem_to_shadow((void *)addr);
> +       void *shadow_end = kasan_mem_to_shadow((void *)addr + size - 1) + 1;
>
> -       ret = memory_is_nonzero(kasan_mem_to_shadow((void *)addr),
> -                       kasan_mem_to_shadow((void *)addr + size - 1) + 1);
> +       if ((long)size < 0)
> +               shadow_end = kasan_mem_to_shadow((void *)addr + size);

Hi Walter,

Thanks for working on this.

If size<0, does it make sense to continue at all? We will still check
1PB of shadow memory? What happens when we pass such huge range to
memory_is_nonzero?
Perhaps it's better to produce an error and bail out immediately if size<0?
Also, what's the failure mode of the tests? Didn't they badly corrupt
memory? We tried to keep tests such that they produce the KASAN
reports, but don't badly corrupt memory b/c/ we need to run all of
them.




> +       ret = memory_is_nonzero(shadow_start, shadow_end);
>
>         if (unlikely(ret)) {
>                 unsigned long last_byte = addr + size - 1;
> --
> 2.18.0
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20190927034338.15813-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
