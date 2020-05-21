Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F05B51DCC78
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 13:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVKO11LoMOhNpKJ9MSoJ3xopPHKzzsa+Z78YwIfVA1U=; b=EhjVW/NItIjxqq
	9qKOIT4KzP8giIh3Hn8tr2sQFK5bcE9DAnvpEnq8xqd333jcfzC/0v9Kx7s3QOzUuvREY9t3YR46e
	qXKK1Uk8D+5m8yqm0MkyMvlrpYZtcFNhTnMTS2uyr+oLm0DAF4qiK8Dve+DaS1HjWmoLplex+7qdA
	tQE4ElWmgyS7LwrI7o3N+SFiBPLxiLfxRI2MmKxGqvrTiOROFOXdI+pGbsXS2NaiiIOGTbyrCFHAF
	6/I7D3y9xBQAgxwJgZWD8Tz2YEGctJoZZY9+tA+1JKPnTRwzqcRpbku985k9TnNItdq7yAFNwyju+
	uyiD/cVaPDuF+ASvUg5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbjoo-0000MR-Al; Thu, 21 May 2020 11:56:58 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbjoe-0000Li-6T
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 11:56:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=quMBNPN5Tp49fo/5cBfmhrGCcTfHCCpSeERvGXDp7hQ=; b=0bQAlB/cwU03IAtfbt9ghqL3e
 5S8U9BZ85Kv9BhXanRkt4ObkATMkaor9lN62C5Vj6MDXjrBzlBP/KosPuenNvsXh9DIj+oAZmqGcJ
 12xIVvVKQu5yYE1KJSKPEYO9ax/ilpNbmTs6BYcbXSQN1ZKsLYNF8MLtn4tG3lrz6lFVm8jdnhQwZ
 vSjRRu0oOEYm0Aj+ACqLJbeKAPp/XAUin5fMext2KxGq4qA5AA1A2EpBsbti3sh6RBP9r/d8FVWnQ
 Sk2mlrRwk5v+4doyKeQxz5uWTr3elMbYRSQPk9gSWoobimir9iX4/nYSJT1oFAvc1vAN80gpY6xyN
 sSwpmFLAA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:35048)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jbjoX-0002MA-4z; Thu, 21 May 2020 12:56:41 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jbjoV-0000Ap-3s; Thu, 21 May 2020 12:56:39 +0100
Date: Thu, 21 May 2020 12:56:39 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2] ARM: mm: make act_mm() respect THREAD_SIZE
Message-ID: <20200521115639.GQ1551@shell.armlinux.org.uk>
References: <20200515124808.213538-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515124808.213538-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_045648_237157_5859FC77 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 02:48:08PM +0200, Linus Walleij wrote:
> Recent work with KASan exposed the folling hard-coded bitmask
> in arch/arm/mm/proc-macros.S:
> 
>   bic     \rd, sp, #8128
>   bic     \rd, \rd, #63
> 
> This forms the bitmask 0x1FFF that is coinciding with
> (PAGE_SIZE << THREAD_SIZE_ORDER) - 1, this code was assuming
> that THREAD_SIZE is always 8K (8192).
> 
> As KASan was increasing THREAD_SIZE_ORDER to 2, I ran into
> this bug.
> 
> Fix it by this little oneline suggested by Ard:
> 
>   bic     \rd, sp, #(THREAD_SIZE - 1) & ~63
> 
> Where THREAD_SIZE is defined using THREAD_SIZE_ORDER.
> 
> We have to also include <linux/const.h> since the THREAD_SIZE
> expands to use the _AC() macro.
> 
> Cc: Ard Biesheuvel <ardb@kernel.org>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v1->v2:
> - Change from using THREAD_SIZE_ORDER with a hardcoded
>   page size constant to just using THREAD_SIZE - 1
>   for the mask.
> ---
>  arch/arm/mm/proc-macros.S | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mm/proc-macros.S b/arch/arm/mm/proc-macros.S
> index 5461d589a1e2..60ac7c5999a9 100644
> --- a/arch/arm/mm/proc-macros.S
> +++ b/arch/arm/mm/proc-macros.S
> @@ -5,6 +5,7 @@
>   *  VMA_VM_FLAGS
>   *  VM_EXEC
>   */
> +#include <linux/const.h>
>  #include <asm/asm-offsets.h>
>  #include <asm/thread_info.h>
>  
> @@ -30,7 +31,7 @@
>   * act_mm - get current->active_mm
>   */
>  	.macro	act_mm, rd
> -	bic	\rd, sp, #8128
> +	bic	\rd, sp, #(THREAD_SIZE - 1) & ~63
>  	bic	\rd, \rd, #63

We have a get_thread_info macro in asm/assembler that performs the same
task.  Maybe this should be converted to use that, and maybe the macro
should be updated to use bic, since this seems to be acceptable for
Thumb and is one instruction shorter.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
