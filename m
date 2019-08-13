Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3968C02A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 20:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcdYK0OFJpK5ynxXHmo4TT08uMIqv9h4xzEuE0zClXg=; b=GpV3/usxBdCs6I
	tr85HY7zxy0C4D+YR4MEXU0AeTzIv15jIYh2jnoDymT67C7htR7OCFu56a87BSFsl/b+jmxvo0Mj1
	i38NKfDvX4UXQYKHQrQnFDY8X+zGSdHam3pJ7VWFYNr+NEc1wu5DyOuPx4jxQaCJpg3i7LtxH+mLe
	frft0DuZfnCOHsnw4rDnCeUEcVVvZGrvkMQmzLw7onUxjkuK20LgJcrnaXGEeAyETGubdhQmyRn6z
	vZZSIkp8NuJYciA24mNeUBoCQlVgAIgVV1UBxhsSD4EqV50P4X68G+ojcITLOiBllhrHkDuBBmr69
	qrjkoKM8wTVyRCdILrmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbEq-00026n-RP; Tue, 13 Aug 2019 18:09:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbEh-00026T-8T
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 18:09:32 +0000
Received: by mail-wm1-x344.google.com with SMTP id p74so2344504wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 11:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g0BxSzUgEtzvF8EaUEBcerCKfj44ujM6Ty77bF3naCs=;
 b=tFlMgMijUSt/AC5EWg2PuZYp1EE84UAWEnammlU2ucx0dMOs4fMwWuk4vawezW1B+S
 aiaa5hR4uF8DH2auJ0p1J47We0+e/WnnK13gmAA/yLQLehWllmhnUDSBDCY4Dm+sV63+
 JEMsJjjkY7DVkIov0LWdecSlPAI/LGw8jpRAVFplWwmu527S1JirOmUE4arBC/vuvqrl
 olh4T2dWYE9NTUk3jgPpFzIz3S/cmGYpZMNhUYyYMIlNNJoHppGyZcGgQ8+HwdEVeMDW
 8+Fj4G4UidUAkwmsVpCKgQaUOEcWNnfRRecplDo57kTS9Pz20Rl7ywcYJd0vYVjxe5ak
 /CLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g0BxSzUgEtzvF8EaUEBcerCKfj44ujM6Ty77bF3naCs=;
 b=ajtcfHuBgq8LavJCyUM0xn9kQv5zLF5lGCAsyRVlzRbKWCuV0i77dwkrTsf6fgXw+k
 YiQkFfB3mE8zVG2WU0yxj7teWioAD++nLzj0WN6m5KL+VuHIMszbg2dJqEk067zrsMs+
 UOz0Wn2pf42/u8042LAxXicOZ9Y7bhzAALf2rEUwtu9bU4+ZwqlPaTBz26iP66a6G5wV
 DOjIkhzw8ZoB8lgLvffAvZqywGugnheIb9csIjcYJ9atbODut1IYlc2adwWmlqO8nwyM
 S4SmzKCjbO02P5AUAof15zjCn8U3bK860lqZmcA2KepeILr3G4TBquNLWtJFnq+PMxUg
 /U8g==
X-Gm-Message-State: APjAAAUVkJpgsL3+Xs8VCrPo2QNL7qzfW0rWSnjtPuTtGtL7mg20SHi8
 QSjL4/B0hs78Hd8gZ3rBO45vyMO+lHEtyDmbKG+OOQ==
X-Google-Smtp-Source: APXvYqzfYoHIbeNcG86T9GYhVXMpPpvyOr0rO/c3Yo6gMlozMCci09xm6B9P9GtBRK+PRK6HDl6Wfyba8VmTp7Ick3M=
X-Received: by 2002:a7b:c21a:: with SMTP id x26mr4074568wmi.61.1565719768374; 
 Tue, 13 Aug 2019 11:09:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-2-will@kernel.org>
In-Reply-To: <20190813170149.26037-2-will@kernel.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 13 Aug 2019 21:09:16 +0300
Message-ID: <CAKv+Gu8Gws2MVE5ck1-rjm06X2nOUzRRQL_rCuoXd2Fyp-cOyw@mail.gmail.com>
Subject: Re: [PATCH 1/8] arm64: memory: Fix virt_addr_valid() using
 __is_lm_address()
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_110931_318399_ACFA9FCC 
X-CRM114-Status: GOOD (  17.75  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019 at 20:02, Will Deacon <will@kernel.org> wrote:
>
> virt_addr_valid() is intended to test whether or not the passed address
> is a valid linear map address. Unfortunately, it relies on
> _virt_addr_is_linear() which is broken because it assumes the linear
> map is at the top of the address space, which it no longer is.
>
> Reimplement virt_addr_valid() using __is_lm_address() and remove
> _virt_addr_is_linear() entirely. At the same time, ensure we evaluate
> the macro parameter only once and move it within the __ASSEMBLY__ block.
>
> Reported-by: Qian Cai <cai@lca.pw>
> Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Fixes: 14c127c957c1 ("arm64: mm: Flip kernel VA space")
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/include/asm/memory.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index afaf512c0e1b..442ab861cab8 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -244,9 +244,9 @@ static inline const void *__tag_set(const void *addr, u8 tag)
>  /*
>   * The linear kernel range starts in the middle of the virtual adddress
>   * space.

This is no longer true either.

> Testing the top bit for the start of the region is a
> - * sufficient check.
> + * sufficient check and avoids having to worry about the tag.
>   */
> -#define __is_lm_address(addr)  (!((addr) & BIT(vabits_actual - 1)))
> +#define __is_lm_address(addr)  (!(((u64)addr) & BIT(vabits_actual - 1)))
>

... and this assumes that the VA space is split evenly between linear
and vmalloc/vmemmap/etc, which is no longer true when running with
52-bit VAs

>  #define __lm_to_phys(addr)     (((addr) + physvirt_offset))
>  #define __kimg_to_phys(addr)   ((addr) - kimage_voffset)
> @@ -326,13 +326,13 @@ static inline void *phys_to_virt(phys_addr_t x)
>
>  #define virt_to_page(vaddr)    ((struct page *)((__virt_to_pgoff(vaddr)) + VMEMMAP_START))
>  #endif
> -#endif
>
> -#define _virt_addr_is_linear(kaddr)    \
> -       (__tag_reset((u64)(kaddr)) >= PAGE_OFFSET)
> +#define virt_addr_valid(addr)  ({                                      \
> +       __typeof__(addr) __addr = addr;                                 \
> +       __is_lm_address(__addr) && pfn_valid(virt_to_pfn(__addr));      \
> +})
>
> -#define virt_addr_valid(kaddr)         \
> -       (_virt_addr_is_linear(kaddr) && pfn_valid(virt_to_pfn(kaddr)))
> +#endif
>
>  /*
>   * Given that the GIC architecture permits ITS implementations that can only be
> --
> 2.11.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
