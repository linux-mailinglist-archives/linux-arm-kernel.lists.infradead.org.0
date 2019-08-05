Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A9E8206A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 17:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rMFYhuOpat53lGDNNBEyf02+WnpLMrJjXSXXnZnQ0E=; b=QfuoGE42kKYqJw
	dqeSbgQ1kMLNs+NWjiXs4xs2Sbn7SyXbKrb3Z76awfzrPh/cDzyxrNUwRFVp9ZV48rmM5l+y0+mW7
	xF+/NUMePIbJD065Uf0qXUEl2gjwvdugmOTka0kRmzfSE/gpWqH+M02yCcBoRSbS0K+9tu4svlyK6
	XjebTjOX1Dwvc14dUjHTlAcOxfO99R5ziEEmdpotRPIJm6j4ym2wBzZduBa1arzFFxc3/wUdv8xHJ
	eIOUz84Jp9DipKx1CRZ8iEjSgD7IGPkxabW0lQCcLRn8J5kaf/C5Ja/zCqglA9ODOWxzcab5PpqK0
	5WN58pMZXzC2Ze1F+vig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huf3G-00052E-Os; Mon, 05 Aug 2019 15:37:34 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huf35-0004xn-0J
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 15:37:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id w10so39936655pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 08:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BRP6laDcYsaagqowX6PM5vV1ql9YojC3f98ieQbfibw=;
 b=aZHdw82yWFty3hQVAzsHs2fUhyQvuwpZlVYSYWBLTB/8rupDAl0wKOFCYdmT2AVyM3
 bU4fhnvSzDKnLtiQ3rS7cijZ1Vv3IIZe4rRpc4rEibhv0ZDXZ9WOzma5OQlcS+kYc8Mt
 3aq2tOS5hdDp99Y8bIwoTjEQB80+ErgcnzBts/1QhdymZ2BjAdCta1VZ5xzoMpm6V2x1
 DZCYNyCjuRGW+uCHqJqV4KCP0MbZCeI9Yg5elIeOIapd0UtWSDxj7AOKYYjvTfNTK9V9
 yb22NKB3Py0XgnjBPYBGPZ2hy6herMOmpnsmUtGcyAepI5Z7zt4WR2w/bewU8Zp5+oIw
 3psA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BRP6laDcYsaagqowX6PM5vV1ql9YojC3f98ieQbfibw=;
 b=NToSs++8LHDnWgV7jGLh3SMF5U7bElDpvPWbLKl7Bp032VaHjbfDC6LXs1syrhqFjF
 KKsCT/4c5phaXFbUKQUPgMigpjcQp3bRS7fUO0U0JIBFVC3HdNZkbqr75GS23L5N3d3k
 jun+cj3ktpyB2YAuk5U0dSiiZiIhGGiF6vnz5aSMU1zzlafWajfr9sGQguXJRwaxqIod
 6baSnFp8C0Ud4gtm//KlP/mlFeL2rPcSMuZ/S9vB4itBDjwrlVWpkiTVQSvqdNI/h3jG
 kBrvsOrif/mTMNeMsBb5OxE6cV+M9yh26qRblcpdxcpgjQM6R4ElqAll7/qrkB20S3Mn
 vcCA==
X-Gm-Message-State: APjAAAU0mOPf+rcKss4Be5hZybBOQiKkYDbv8TOAePt/5xb7mBR12/Z/
 CiE/HF9dlbxMP2E1hae1tYdHjoT4LQAbTMM439hAvjrLPeM=
X-Google-Smtp-Source: APXvYqyQR0D20P/mnpoLOPlzIBaHmjQ7w8XW8u+YMSrUQUo8L+f9shx/FCzhOS5dVIpqRT8luECGQsvMeWq4moJNLGA=
X-Received: by 2002:aa7:97bb:: with SMTP id d27mr73075178pfq.93.1565019438226; 
 Mon, 05 Aug 2019 08:37:18 -0700 (PDT)
MIME-Version: 1.0
References: <1564670825-4050-1-git-send-email-cai@lca.pw>
In-Reply-To: <1564670825-4050-1-git-send-email-cai@lca.pw>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 5 Aug 2019 17:37:06 +0200
Message-ID: <CAAeHK+xMQ5m-_eeQUPM2DoN=6OV-1uC6NX3dVnSKcmEqwSM5ZA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64/mm: fix variable 'tag' set but not used
To: Qian Cai <cai@lca.pw>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_083723_045150_C7D3B1FA 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 4:47 PM Qian Cai <cai@lca.pw> wrote:
>
> When CONFIG_KASAN_SW_TAGS=n, set_tag() is compiled away. GCC throws a
> warning,
>
> mm/kasan/common.c: In function '__kasan_kmalloc':
> mm/kasan/common.c:464:5: warning: variable 'tag' set but not used
> [-Wunused-but-set-variable]
>   u8 tag = 0xff;
>      ^~~
>
> Fix it by making __tag_set() a static inline function the same as
> arch_kasan_set_tag() in mm/kasan/kasan.h for consistency because there
> is a macro in arch/arm64/include/asm/kasan.h,
>
>  #define arch_kasan_set_tag(addr, tag) __tag_set(addr, tag)
>
> However, when CONFIG_DEBUG_VIRTUAL=n and CONFIG_SPARSEMEM_VMEMMAP=y,
> page_to_virt() will call __tag_set() with incorrect type of a
> parameter, so fix that as well. Also, still let page_to_virt() return
> "void *" instead of "const void *", so will not need to add a similar
> cast in lowmem_page_address().
>
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>
> v2: Fix compilation warnings of CONFIG_DEBUG_VIRTUAL=n spotted by Will.
>
>  arch/arm64/include/asm/memory.h | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index b7ba75809751..fb04f10a78ab 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -210,7 +210,11 @@ static inline unsigned long kaslr_offset(void)
>  #define __tag_reset(addr)      untagged_addr(addr)
>  #define __tag_get(addr)                (__u8)((u64)(addr) >> 56)
>  #else
> -#define __tag_set(addr, tag)   (addr)
> +static inline const void *__tag_set(const void *addr, u8 tag)
> +{
> +       return addr;
> +}
> +
>  #define __tag_reset(addr)      (addr)
>  #define __tag_get(addr)                0
>  #endif
> @@ -301,8 +305,8 @@ static inline void *phys_to_virt(phys_addr_t x)
>  #define page_to_virt(page)     ({                                      \
>         unsigned long __addr =                                          \
>                 ((__page_to_voff(page)) | PAGE_OFFSET);                 \
> -       unsigned long __addr_tag =                                      \
> -                __tag_set(__addr, page_kasan_tag(page));               \
> +       const void *__addr_tag =                                        \
> +               __tag_set((void *)__addr, page_kasan_tag(page));        \
>         ((void *)__addr_tag);                                           \
>  })
>
> --
> 1.8.3.1
>

Reviewed-by: Andrey Konovalov <andreyknvl@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
