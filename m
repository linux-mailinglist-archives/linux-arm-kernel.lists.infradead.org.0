Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E424E98332
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVotPJlJ7VqVlH4wrJ9NDSiqz2otCrrm2tNHsxlVGXQ=; b=cjYhNrFtmQqbpk
	TxvivdeufEK2Z115iCEzv1r36juWajeniIEByEnDQsQDpXmPbTczf2K2N6OOk6NfFSACNPwAK2GxM
	Fdx/3VzgglwxhIctI/lZIC0F82Yq7mihpbHM9UKPeZCVzNugf8U6OTh+peLLeN2gW1YVz2x/KjBzr
	2fYpXrsgDbM2OWOep7Ji3CYtKOGi1VWY79oDvSR9RuhG9jQhkRDJH34b8nZTh4GNF80JZmNJWcdGp
	4ZYF8BvUlQvnE/7+0VqaNbvtMoK7b+uXP/eYoA/GwQ2b4BpGlh048j1R+MHFdHkS/Pty1UujO16/c
	YDnd2CqTg+8t1/HqgtSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VUy-0003Ec-Rj; Wed, 21 Aug 2019 18:38:20 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VTA-0001A0-MD
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:36:30 +0000
Received: from p5de0b6c5.dip0.t-ipconnect.de ([93.224.182.197] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1i0VSx-0003HL-QR; Wed, 21 Aug 2019 20:36:15 +0200
Date: Wed, 21 Aug 2019 20:36:14 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH] mm: consolidate pgtable_cache_init() and pgd_cache_init()
In-Reply-To: <1566400018-15607-1-git-send-email-rppt@linux.ibm.com>
Message-ID: <alpine.DEB.2.21.1908212035200.1983@nanos.tec.linutronix.de>
References: <1566400018-15607-1-git-send-email-rppt@linux.ibm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_113628_893189_6B7D12B0 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019, Mike Rapoport wrote:
> diff --git a/arch/x86/include/asm/pgtable_32.h b/arch/x86/include/asm/pgtable_32.h
> index b9b9f8a..0dca7f7 100644
> --- a/arch/x86/include/asm/pgtable_32.h
> +++ b/arch/x86/include/asm/pgtable_32.h
> @@ -29,7 +29,6 @@ extern pgd_t swapper_pg_dir[1024];
>  extern pgd_t initial_page_table[1024];
>  extern pmd_t initial_pg_pmd[];
>  
> -static inline void pgtable_cache_init(void) { }
>  void paging_init(void);
>  void sync_initial_page_table(void);
>  
> diff --git a/arch/x86/include/asm/pgtable_64.h b/arch/x86/include/asm/pgtable_64.h
> index a26d2d5..0b6c4042 100644
> --- a/arch/x86/include/asm/pgtable_64.h
> +++ b/arch/x86/include/asm/pgtable_64.h
> @@ -241,8 +241,6 @@ extern void cleanup_highmap(void);
>  #define HAVE_ARCH_UNMAPPED_AREA
>  #define HAVE_ARCH_UNMAPPED_AREA_TOPDOWN
>  
> -#define pgtable_cache_init()   do { } while (0)
> -
>  #define PAGE_AGP    PAGE_KERNEL_NOCACHE
>  #define HAVE_PAGE_AGP 1
>  
> diff --git a/arch/x86/mm/pgtable.c b/arch/x86/mm/pgtable.c
> index 73757bc..3e4b903 100644
> --- a/arch/x86/mm/pgtable.c
> +++ b/arch/x86/mm/pgtable.c
> @@ -357,7 +357,7 @@ static void pgd_prepopulate_user_pmd(struct mm_struct *mm,
>  
>  static struct kmem_cache *pgd_cache;
>  
> -void __init pgd_cache_init(void)
> +void __init pgtable_cache_init(void)
>  {
>  	/*
>  	 * When PAE kernel is running as a Xen domain, it does not use
> @@ -402,10 +402,6 @@ static inline void _pgd_free(pgd_t *pgd)
>  }
>  #else
>  
> -void __init pgd_cache_init(void)
> -{
> -}

Acked-by: Thomas Gleixner <tglx@linutronix.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
