Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 525DC2CD29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 19:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3W5PT1xT4AwwAz8sPXYztaiA2tjaql0YU0jXI0Nbkc=; b=AoSwYUrbgg1Pw1
	2D/o0S99eWuCJPOf6tcxMMFhFa2s36mDDyKFPml6qG3CwJRKnw1ih6TAz4qwbWE0Ib4Toi6sV6mr1
	Y9chCynL1oPoSAqHDqmW4jNxQpCd0J4cZlZgOXk2jr0B0R0GPM201MVDtxSNxb+0OmpiHACFCluec
	19V0xJ5ftMncMjlR81Wy8AF3KMGkzNyhDBHujrLvRF4sNFDJFOMfWzY2SY2O0JEr4GUJlZkSge4w9
	DOeO61t6onZZMKIyV9wn64zC5G46Rp0y9JENz5WI3GijXGhizivqZdcx/ohXBZMX4yWXAEyDgE7et
	ai5qvUYeaTmTx0q7adiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfZy-0002Ak-N4; Tue, 28 May 2019 17:08:02 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfZs-00029g-0x
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 17:07:57 +0000
Received: by mail-io1-xd41.google.com with SMTP id u25so819675iot.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 10:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o+CE7MrKDoduwbQI4BYzvnChQFaqVVhgzDgOnVuvjB4=;
 b=o16W63eBBD3P9WrstiBe3i+fdd4Jv6aTafyjWs1xNmsGAoWoOsCHZUeDwEynplfblk
 9lIv8Kr5wLeEhbczRLPwNU2ZQwwkx0KDbzjGlYQ0YFQt/fi7eI8fSNYTpUOJH54QoPH6
 Btu+usghESiOXNS6+q+G1RE+5lOsAXSpKy44kvIPIdf3SJgMQUZJxOvUy+uMnQvKHzjp
 U0HIENMzWmV2dR2i6qAQTwFY35XnOIv1ov1B/WZ/fZMG11wKqhDydRZtnrvoMzCbgdiU
 f2059725nifRAQ2VwrueSluYgTGVWZmTdZQy7WvOBKjSJIN7ujjglzSNgqbomeZsRfsi
 jB3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o+CE7MrKDoduwbQI4BYzvnChQFaqVVhgzDgOnVuvjB4=;
 b=mNKqxSmiJZxwxGafmMpLmvapV6dNo3kV2uFxmBByXW7+TMGw1NPGmZKxcNB/v8kjy2
 sDHhod2KGCUoEevr9pcq57jcv3qvdQ5zoh+HloItSH/bF0l8qjzn4PfuLJrKZd7a8u4g
 s+D8oCSpZy1ZkOtmzqCLU6cMK7WWReiBDo2jmlB38H4Eam/csl8TXGZOKFLDGkDMk3Hd
 3mqS6At9W8fYf861kXm4jJewHG1uYMpxU9oXmQM3rmT070CrG2u0gzaqMDMBumuCiQ+6
 ZHO6H/3P625S1eOQJdlWLyt10eoL31cLE/lOWaj7Ia4qk6FEvAui13mSXCt5Jxo4hU70
 bwdA==
X-Gm-Message-State: APjAAAUTWzJSoh3yq4JRR8FeQVVXtlN1edlybzXrufDvGzj32lcxN4H/
 Dm7WJ4qZGmLfOY2enMCnf5skHOZQDwnVUwZqL8O+TQ==
X-Google-Smtp-Source: APXvYqzqFcuVwGInO1/FV4YuVwtytAEsFid5IHlJBokx/dWxUiZ5bHQM1iwS2ND6u2hpnrkLAL4hBHfEjwi2KrdZktw=
X-Received: by 2002:a5d:9d83:: with SMTP id 3mr7823822ion.65.1559063272495;
 Tue, 28 May 2019 10:07:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190528161026.13193-1-steve.capper@arm.com>
 <20190528161026.13193-5-steve.capper@arm.com>
In-Reply-To: <20190528161026.13193-5-steve.capper@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 28 May 2019 19:07:40 +0200
Message-ID: <CAKv+Gu-4OOy14uKQHxvwiZ-opaMf4h5UJ2V7HhaEKLP=L3aeqQ@mail.gmail.com>
Subject: Re: [PATCH v2 04/12] arm64: mm: Replace fixed map BUILD_BUG_ON's with
 BUG_ON's
To: Steve Capper <steve.capper@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_100756_076441_D9840949 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: crecklin@redhat.com, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, Will Deacon <will.deacon@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 at 18:10, Steve Capper <steve.capper@arm.com> wrote:
>
> In order to prepare for a variable VA_BITS we need to account for a
> variable size VMEMMAP which in turn means the position of the fixed map
> is variable at compile time.
>
> Thus, we need to replace the BUILD_BUG_ON's that check the fixed map
> position with BUG_ON's.
>
> Signed-off-by: Steve Capper <steve.capper@arm.com>

Do we still need this patch now that VMEMMAP_SIZE is a compile time
constant again? Or am I missing something?

> ---
>  arch/arm64/mm/mmu.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index b0401b2ec4da..1b88d9d81954 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -846,7 +846,7 @@ void __init early_fixmap_init(void)
>          * The boot-ioremap range spans multiple pmds, for which
>          * we are not prepared:
>          */
> -       BUILD_BUG_ON((__fix_to_virt(FIX_BTMAP_BEGIN) >> PMD_SHIFT)
> +       BUG_ON((__fix_to_virt(FIX_BTMAP_BEGIN) >> PMD_SHIFT)
>                      != (__fix_to_virt(FIX_BTMAP_END) >> PMD_SHIFT));
>
>         if ((pmdp != fixmap_pmd(fix_to_virt(FIX_BTMAP_BEGIN)))
> @@ -914,9 +914,9 @@ void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot)
>          * On 4k pages, we'll use section mappings for the FDT so we only
>          * have to be in the same PUD.
>          */
> -       BUILD_BUG_ON(dt_virt_base % SZ_2M);
> +       BUG_ON(dt_virt_base % SZ_2M);
>
> -       BUILD_BUG_ON(__fix_to_virt(FIX_FDT_END) >> SWAPPER_TABLE_SHIFT !=
> +       BUG_ON(__fix_to_virt(FIX_FDT_END) >> SWAPPER_TABLE_SHIFT !=
>                      __fix_to_virt(FIX_BTMAP_BEGIN) >> SWAPPER_TABLE_SHIFT);
>
>         offset = dt_phys % SWAPPER_BLOCK_SIZE;
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
