Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B16F9A2B0A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 01:40:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JeQr0+S2fOT67O5ef5jYWlGRcbqrkyxeETo2C3EpqSw=; b=q5D26xXRW09bxp
	zN2h4YsWfAvc9dQ1MbEnkVPKehLXXeqTtQfPjhM2tgu/iA4xHipCOQZ3r5Ji2E3O/A9k6fndmK2JT
	9tYNqkomUCHduDgcaQjPsX9fkyCrFuy+jfdLDn+ZdbLbJ3rxBNLBeGhidut2PkY+pAEL94k54Y7tF
	aIJK4vtE1fw7TVShGdZ2lANtiLJkyyF2nS1jTxIYwe5+GCLB85IELbxBjd1bCsqOhwrzIT0Pn6pp/
	taUkfDc5DqzJoNuGQZa2lekYqZALM9a41hHkGi7a9x9nabN4Zd6lRgU2pbiiKaVQKN5jCYetpZFxC
	uZLdkR3ZjxXh8O18Brug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3U1C-000413-UT; Thu, 29 Aug 2019 23:39:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3U0y-00040Y-4c
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 23:39:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 554D5337;
 Thu, 29 Aug 2019 16:39:37 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BDAF63F718;
 Thu, 29 Aug 2019 16:39:36 -0700 (PDT)
Date: Fri, 30 Aug 2019 00:39:35 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5 06/10] arm64: lse: Remove unused 'alt_lse' assembly
 macro
Message-ID: <20190829233933.GM14582@e119886-lin.cambridge.arm.com>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-7-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829154834.26547-7-will@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_163940_223961_42985A82 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, Ard.Biesheuvel@arm.com, natechancellor@gmail.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 04:48:30PM +0100, Will Deacon wrote:
> The 'alt_lse' assembly macro has been unused since 7c8fc35dfc32
> ("locking/atomics/arm64: Replace our atomic/lock bitop implementations
> with asm-generic").
> 
> Remove it.
> 
> Signed-off-by: Will Deacon <will@kernel.org>
> ---

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

>  arch/arm64/include/asm/lse.h | 22 ----------------------
>  1 file changed, 22 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
> index 52b80846d1b7..08e818e53ed7 100644
> --- a/arch/arm64/include/asm/lse.h
> +++ b/arch/arm64/include/asm/lse.h
> @@ -10,37 +10,15 @@
>  #include <asm/alternative.h>
>  #include <asm/cpucaps.h>
>  
> -#ifdef __ASSEMBLER__
> -
> -.arch_extension	lse
> -
> -.macro alt_lse, llsc, lse
> -	alternative_insn "\llsc", "\lse", ARM64_HAS_LSE_ATOMICS
> -.endm
> -
> -#else	/* __ASSEMBLER__ */
> -
>  __asm__(".arch_extension	lse");
>  
> -
>  /* In-line patching at runtime */
>  #define ARM64_LSE_ATOMIC_INSN(llsc, lse)				\
>  	ALTERNATIVE(llsc, lse, ARM64_HAS_LSE_ATOMICS)
>  
> -#endif	/* __ASSEMBLER__ */
>  #else	/* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
>  
> -#ifdef __ASSEMBLER__
> -
> -.macro alt_lse, llsc, lse
> -	\llsc
> -.endm
> -
> -#else	/* __ASSEMBLER__ */
> -
> -
>  #define ARM64_LSE_ATOMIC_INSN(llsc, lse)	llsc
>  
> -#endif	/* __ASSEMBLER__ */
>  #endif	/* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
>  #endif	/* __ASM_LSE_H */
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
