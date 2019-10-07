Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6CBCE2A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:06:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fxmA4trJp0OKhqP+IAgVXePdWNqxj99e9gE/8OgLyQ=; b=mIHMWlBmFxXPTZ
	KuCumMnEAIBWYDTF1RT1n+XnOJ5f5u16aqrh3MEKh6U9sS/yobttrRuKYiIU42BYG37AOy1dHMI8o
	svaCy8VZqG2xKTwNdii1lWcR6iYd8nPlajhLwjGsDaOPiuJ/GWmfB3GyqeMdg8s9LoIy2J0oXRAwc
	JNwhY7JPA4pfccFvHyF+IH69TlbvdosX2S7LYuOiVsvnRurR7kIlR3FNj5jFKhRaQwXkwujytHVg0
	0ylKa+AOZyn3YVJGuayPtErO59eB5aGM6b0oDZYKcXBvpGfSDQHGcG6NZjH8YxIXHJi+P/2g5V5c6
	JnD4YTbNRvuYqOHBTbGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSih-0005Hr-2n; Mon, 07 Oct 2019 13:06:35 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSiV-0005Gw-BN; Mon, 07 Oct 2019 13:06:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id b24so12237135wmj.5;
 Mon, 07 Oct 2019 06:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RZE8Cj868kn5EJS/0QY29Orx1bZsg1Fle+VfrZSmgF8=;
 b=tJAewuqAmBMfjpkJA/1enuzflTjuI48UJZ0Z0fdDtpXMvjWt8JagrRMgnZLLai9UeY
 mkbErQhWM39j4Hm1s7MX9m/lzVTnkp+OMeG5ZXtiir6jn8BLfHkzXnUShAGoykAHXOnf
 zYcGSR++z2tbIUzuTH5tpf5m9vIc8eF3O3REAZ36+mr/kHp8w4U5Z+7uVFz79ksG8TIC
 eqab017gzKxysvQg39onykCPqr4VZgoidG0IKRK7bzgdYmIjLQ14xRLyhnknxrgOj8o1
 kkqFWIhWiVMX57N1WUPYfE6wABoyQFZVbrbpv3hVtkeFHgU3i9sImWF4xz9fwLCh2ch6
 oGzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=RZE8Cj868kn5EJS/0QY29Orx1bZsg1Fle+VfrZSmgF8=;
 b=elXCk6KtpH1/I/zEsq9nBG4r5WxSo7ksns6EJQYazmv9ijSZaTDTdWZgYBhcqrMjZP
 kJ4o95dexc1J7fxnY8s8hX29c7edMj19funz3Jlxc8a8CQ5UqXiMojUKHHI5rh2CTAL1
 Ld/O1gMsR6bkbqZaFWNXjmlybTN41m451FabQZIE8HQtE/gUKAyKjYTYz5YTQkerLkLA
 iulU6V5TOlSpVvWTr+uDGErBDRP7+RyoVXpY1B3TOaPgqs5nN+iPtd7iBcIdrCu2G+gi
 nsL6UWrsOqLc77HWA9bLyRkuocNqGcL8TJVo75Hp7JTgqFpO6pJR0Yi/nIaE6VEiXEPc
 WYiw==
X-Gm-Message-State: APjAAAXNRU+Udfx/DUcub45uTOm3kNR//gX1dUWTOFnbQ5CXIKc6YCX+
 ITgfHmIHqFn3Cqqg3uYnjQw=
X-Google-Smtp-Source: APXvYqwnZjlpL4PUUAvfK5d4pYWeE31TwsXrlSV5mEiGcVQWwRB9VHCMKlpm1WOlkrkBBukHu/Su/w==
X-Received: by 2002:a1c:7fcc:: with SMTP id a195mr21060937wmd.27.1570453581529; 
 Mon, 07 Oct 2019 06:06:21 -0700 (PDT)
Received: from gmail.com (2E8B0CD5.catv.pool.telekom.hu. [46.139.12.213])
 by smtp.gmail.com with ESMTPSA id l4sm14525979wrw.6.2019.10.07.06.06.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 06:06:20 -0700 (PDT)
Date: Mon, 7 Oct 2019 15:06:17 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V4 2/2] mm/pgtable/debug: Add test validating
 architecture page table helpers
Message-ID: <20191007130617.GB56546@gmail.com>
References: <1570427124-21887-1-git-send-email-anshuman.khandual@arm.com>
 <1570427124-21887-3-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570427124-21887-3-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_060623_415379_29B4CCA0 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: 1.9 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mingo.kernel.org[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


* Anshuman Khandual <anshuman.khandual@arm.com> wrote:

> This adds a test module which will validate architecture page table helpers
> and accessors regarding compliance with generic MM semantics expectations.
> This will help various architectures in validating changes to the existing
> page table helpers or addition of new ones.
> 
> Test page table and memory pages creating it's entries at various level are
> all allocated from system memory with required alignments. If memory pages
> with required size and alignment could not be allocated, then all depending
> individual tests are skipped.

> diff --git a/arch/x86/include/asm/pgtable_64_types.h b/arch/x86/include/asm/pgtable_64_types.h
> index 52e5f5f2240d..b882792a3999 100644
> --- a/arch/x86/include/asm/pgtable_64_types.h
> +++ b/arch/x86/include/asm/pgtable_64_types.h
> @@ -40,6 +40,8 @@ static inline bool pgtable_l5_enabled(void)
>  #define pgtable_l5_enabled() 0
>  #endif /* CONFIG_X86_5LEVEL */
>  
> +#define mm_p4d_folded(mm) (!pgtable_l5_enabled())
> +
>  extern unsigned int pgdir_shift;
>  extern unsigned int ptrs_per_p4d;

Any deep reason this has to be a macro instead of proper C?

> diff --git a/mm/Kconfig.debug b/mm/Kconfig.debug
> index 327b3ebf23bf..683131b1ee7d 100644
> --- a/mm/Kconfig.debug
> +++ b/mm/Kconfig.debug
> @@ -117,3 +117,18 @@ config DEBUG_RODATA_TEST
>      depends on STRICT_KERNEL_RWX
>      ---help---
>        This option enables a testcase for the setting rodata read-only.
> +
> +config DEBUG_ARCH_PGTABLE_TEST
> +	bool "Test arch page table helpers for semantics compliance"
> +	depends on MMU
> +	depends on DEBUG_KERNEL
> +	depends on !(ARM || IA64)

Please add a proper enabling switch for architectures to opt in.

Please also add it to Documentation/features/list-arch.sh so that it's 
listed as a 'TODO' entry on architectures where the tests are not enabled 
yet.

> +	help
> +	  This options provides a kernel module which can be used to test
> +	  architecture page table helper functions on various platform in
> +	  verifying if they comply with expected generic MM semantics. This
> +	  will help architectures code in making sure that any changes or
> +	  new additions of these helpers will still conform to generic MM
> +	  expected semantics.

Typos and grammar fixed:

	help
	  This option provides a kernel module which can be used to test
	  architecture page table helper functions on various platforms in
	  verifying if they comply with expected generic MM semantics. This
	  will help architecture code in making sure that any changes or
	  new additions of these helpers still conform to expected 
	  semantics of the generic MM.

Also, more fundamentally: isn't a kernel module too late for such a debug 
check, should something break due to a core MM change? Have these debug 
checks caught any bugs or inconsistencies before?

Why not call this as some earlier MM debug check, after enabling paging 
but before executing user-space binaries or relying on complex MM ops 
within the kernel, called at a stage when those primitives are all 
expected to work fine?

It seems to me that arch_pgtable_tests_init) won't even context-switch 
normally, right?

Finally, instead of inventing yet another randomly named .config debug 
switch, please fit it into the regular MM debug options which go along 
the CONFIG_DEBUG_VM* naming scheme.

Might even make sense to enable these new debug checks by default if 
CONFIG_DEBUG_VM=y, that way we'll get a *lot* more debug coverage than 
some random module somewhere that few people will know about, let alone 
run.

Thanks,

	Ingo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
