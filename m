Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 938412E5D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 22:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XI5pe+lWiE9XUUZAi7jRhYwot5Kyb2+e/epCMrCqQR4=; b=sllATu/TcRwFyN
	xaWZVVhnBvAtEKKTX6v82wzHRYIban0SDlCrYJnSj2uKQc1bPQ28+IHJacQG5TRHagUIIBo+jvIKA
	t7hL7deOj8IfEOzFbWbJIIE/0ZvDN/IE8khM2e/wK1ZQJSnd2QpfuAve4+mBU0KWIByubUdWAWjk4
	U45t6T3b8PD6Zg1Q9xfXeUfCWmPSZM2fj//MBS+NCskY/rrzfgrwDvdfdsoE8+vNfMS9L6muuPxAb
	r2jJfTINx30x1/LRpxOpFT1QqqLhPd3TB4CrOP6tkLH6YUNlU/HcETEzDIfBYkHVYIOPDAYP132kr
	ywEPjAzkhoZbx/Zi1F/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW4uj-0007WR-BY; Wed, 29 May 2019 20:11:09 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW4uT-0007NQ-G1
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 20:10:56 +0000
Received: by mail-pf1-x444.google.com with SMTP id s11so2321143pfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 13:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=l4laiGZ+6EAxTzYgyOLxq6AQ0ebW5F8MPaRp0yaenB4=;
 b=T+S4dzKkP0QeUP0gvmQYme6HE9FvwMG4qznuFtH/nyALnyYufIZl5Zude490BxgiIt
 TM/MxYm5xSz69G1obZoGJM1LDIeY9X8HJLMu8K1/UHH+gmEEyXz0iVgKFgUxlRbExavm
 GdYNYHEiXPSCZWG+4ftE4ubEET85V+Ow68jzY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=l4laiGZ+6EAxTzYgyOLxq6AQ0ebW5F8MPaRp0yaenB4=;
 b=AciTxhLVGFbY2wY0YQq91rVjzPqU/1nvDMMDcAvnMdHnRYc1X4d9XgLX7CvevntD1j
 k1EIYGq1VkFKCUn+Ss0EXS4O56V5KbNReIOTgp3hJBgekN9m7XFG7koY+rvq98IubZKX
 AFtke/EEHF/8KLnClToqh1Dad1/jYYrThw8RRjByCTdLwjg9dMGBQW8ZfOmR0yfNsbBu
 XujCFfH2omiOGecMHs7Fao9rAKLvunV0Prex9UmQFKrSnLaCxnPBYqXlSqYyBaBFXrND
 XFw5kycX3ni3v3GvEjcPkLlukujViI5nWUP+6RkkMt5q6Sh9dwoP1/W8rIkV7eR/5aAB
 4NjA==
X-Gm-Message-State: APjAAAW5iZVYqi38Cag3kMT+g9QXyP1sGo5PIHdpYG1d7xENACHZT/Ae
 dKtmBxSMH2Goixge5UszZYw4VA==
X-Google-Smtp-Source: APXvYqxcX+GEqaFki9ts9gcHnI+DJ4J45UmF6NQ3tBHikewn3dAB757SCx8zHdqTJ17A6V/LaCRYWA==
X-Received: by 2002:a63:6c83:: with SMTP id h125mr92843035pgc.86.1559160652464; 
 Wed, 29 May 2019 13:10:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o2sm216631pgq.50.2019.05.29.13.10.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 13:10:51 -0700 (PDT)
Date: Wed, 29 May 2019 13:10:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v4 05/14] arm64, mm: Make randomization selected by
 generic topdown mmap layout
Message-ID: <201905291310.E27265DACF@keescook>
References: <20190526134746.9315-1-alex@ghiti.fr>
 <20190526134746.9315-6-alex@ghiti.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190526134746.9315-6-alex@ghiti.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_131053_624943_954B8468 
X-CRM114-Status: GOOD (  21.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Burton <paul.burton@mips.com>,
 linux-riscv@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 James Hogan <jhogan@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Luis Chamberlain <mcgrof@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 26, 2019 at 09:47:37AM -0400, Alexandre Ghiti wrote:
> This commits selects ARCH_HAS_ELF_RANDOMIZE when an arch uses the generic
> topdown mmap layout functions so that this security feature is on by
> default.
> Note that this commit also removes the possibility for arm64 to have elf
> randomization and no MMU: without MMU, the security added by randomization
> is worth nothing.
> 
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>

Acked-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/Kconfig                |  1 +
>  arch/arm64/Kconfig          |  1 -
>  arch/arm64/kernel/process.c |  8 --------
>  mm/util.c                   | 11 +++++++++--
>  4 files changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index df3ab04270fa..3732654446cc 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -710,6 +710,7 @@ config HAVE_ARCH_COMPAT_MMAP_BASES
>  config ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
>  	bool
>  	depends on MMU
> +	select ARCH_HAS_ELF_RANDOMIZE
>  
>  config HAVE_COPY_THREAD_TLS
>  	bool
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 3d754c19c11e..403bd3fffdbc 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -15,7 +15,6 @@ config ARM64
>  	select ARCH_HAS_DMA_MMAP_PGPROT
>  	select ARCH_HAS_DMA_PREP_COHERENT
>  	select ARCH_HAS_ACPI_TABLE_UPGRADE if ACPI
> -	select ARCH_HAS_ELF_RANDOMIZE
>  	select ARCH_HAS_FAST_MULTIPLIER
>  	select ARCH_HAS_FORTIFY_SOURCE
>  	select ARCH_HAS_GCOV_PROFILE_ALL
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 3767fb21a5b8..3f85f8f2d665 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -535,14 +535,6 @@ unsigned long arch_align_stack(unsigned long sp)
>  	return sp & ~0xf;
>  }
>  
> -unsigned long arch_randomize_brk(struct mm_struct *mm)
> -{
> -	if (is_compat_task())
> -		return randomize_page(mm->brk, SZ_32M);
> -	else
> -		return randomize_page(mm->brk, SZ_1G);
> -}
> -
>  /*
>   * Called from setup_new_exec() after (COMPAT_)SET_PERSONALITY.
>   */
> diff --git a/mm/util.c b/mm/util.c
> index 717f5d75c16e..8a38126edc74 100644
> --- a/mm/util.c
> +++ b/mm/util.c
> @@ -319,7 +319,15 @@ unsigned long randomize_stack_top(unsigned long stack_top)
>  }
>  
>  #ifdef CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
> -#ifdef CONFIG_ARCH_HAS_ELF_RANDOMIZE
> +unsigned long arch_randomize_brk(struct mm_struct *mm)
> +{
> +	/* Is the current task 32bit ? */
> +	if (!IS_ENABLED(CONFIG_64BIT) || is_compat_task())
> +		return randomize_page(mm->brk, SZ_32M);
> +
> +	return randomize_page(mm->brk, SZ_1G);
> +}
> +
>  unsigned long arch_mmap_rnd(void)
>  {
>  	unsigned long rnd;
> @@ -333,7 +341,6 @@ unsigned long arch_mmap_rnd(void)
>  
>  	return rnd << PAGE_SHIFT;
>  }
> -#endif /* CONFIG_ARCH_HAS_ELF_RANDOMIZE */
>  
>  static int mmap_is_legacy(struct rlimit *rlim_stack)
>  {
> -- 
> 2.20.1
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
