Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED8D1D02BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 01:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=sS/tsK47VqvnwgqaO0bwxJns8qqetR0Tp+UO/OBPOCg=; b=stCrs/4vBbpfTxbd5iPAUqrVV
	Yjxuu1pRM2zFK83hQvNv/G+u3TPhMktXTtlXegOsNMWDNXlJKySZrI5HhbDFFg/70nUPAisZiPiAY
	kIaput37puzi7G/wAsZy7o/3GnHggM9WwUQE31eXrNLSVwSrw3OIxf0hdIT4oXxjPpjcTA4ufqc7u
	tUosxjC7MlK6JuuqFLNhERod27nkpcJntZZoAeVHckobNDTlDuQv2t9+FaxrWH2bC9s+ADHvwrDlS
	aOZ7jeEqqCVUhjsrA/HwmYWibv9HrlGOqdmEMujKe0a1ZFOlgr9bTMz1IfHitXbFJp322cOvk4QTO
	QvnfF+Yqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYdtE-0004kb-9J; Tue, 12 May 2020 23:00:44 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYdsz-0004eX-LD
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 23:00:31 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ms17so10131222pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 16:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=TxR+iMR41NNC8Tp0Yh5G0J9anaHo/y+mAo5OJ6FnE3w=;
 b=YV0IEXO5IABYUMUtMWw6Y0a2xNZhYt4iDNMNdBJAdhkLz+DhDJrEb2/tely+kMRfBe
 elzT7mfwntttCi0+nBJzpxqW1RzbdA4k2z5m0sbPhXbgm86NhUGJ6ezv1UWvqUAF6AFb
 GwYEyZnEpPlXtS0AdB1oOMIXhoSzH1oQ3QYdKyFvf7rV9a0F5474HoxquQdEEcVsoVZk
 mkFDvy/LaDlTuj+uY+/sZnyRH+3w/Rut2ArIzwHPIrhPI856FrWtiOC99MOqCPnAlAt1
 y5de0EiQgDBn8VhocdW7T7X+feJnXd114pzMo7qEMcn1qfbF3zf4gbB8O6Pkx7p0q4QB
 ZmJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=TxR+iMR41NNC8Tp0Yh5G0J9anaHo/y+mAo5OJ6FnE3w=;
 b=tgJVRnlvngFlaqMbvqeHrsUqzVMfFlv2TMvOHcW42odvf1KGeWfdN1+yo08wVW6V6h
 pXcoq/IKEgyngx2N8mx3dcfxZSmv4Xuf1Z7i5ETrtDyjv+0uraXpLjr9yUtKnTPt5+Ge
 Jw1pApUEATe0AvMqif3MsCSpkycqrCOcFeIghYVF5D1ttZLoo1DXsD8nVLj5V1scQP00
 XhYmQGKGX5rjcBrY5HobgMFIV99qpq6pz/GJ5Uz02qMlV0f30lIXK6WMg/bbtFDsoxtL
 qWl2sslbAPA59bKzLNglkb5El9GFSJQSdtKzNzmfP1qjhRqEmN13BAA4u5BlL54jVlka
 66eg==
X-Gm-Message-State: AGi0PuaMpep0JLymAJg1ymgaBZsnSP8CY4wsINpHJtUYhTx5iH0R1qU6
 Y1YD9HpQJUVqyE+vuCzOHHXPXQ==
X-Google-Smtp-Source: APiQypKPbiNIuzOhnfWZK3aSuAimZ6kMvjtjoB3PUVWkLgrXCsrrvonJs2vHPqxiHQA1YoMJYuJ02Q==
X-Received: by 2002:a17:90a:2281:: with SMTP id
 s1mr31687737pjc.68.1589324428530; 
 Tue, 12 May 2020 16:00:28 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id w143sm12602170pfc.165.2020.05.12.16.00.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 16:00:26 -0700 (PDT)
Date: Tue, 12 May 2020 16:00:26 -0700 (PDT)
X-Google-Original-Date: Tue, 12 May 2020 15:59:50 PDT (-0700)
Subject: Re: [PATCH 19/31] riscv: use asm-generic/cacheflush.h
In-Reply-To: <20200510075510.987823-20-hch@lst.de>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <mhng-8adbedbc-0f91-4291-9471-2df5eb7b802b@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_160029_704987_60436B15 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org, zippel@linux-m68k.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-xtensa@linux-xtensa.org, Arnd Bergmann <arnd@arndb.de>, jeyu@kernel.org,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, linux-arm-kernel@lists.infradead.org,
 monstr@monstr.eu, linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 10 May 2020 00:54:58 PDT (-0700), Christoph Hellwig wrote:
> RISC-V needs almost no cache flushing routines of its own.  Rely on
> asm-generic/cacheflush.h for the defaults.
>
> Also remove the pointless __KERNEL__ ifdef while we're at it.
> ---
>  arch/riscv/include/asm/cacheflush.h | 62 ++---------------------------
>  1 file changed, 3 insertions(+), 59 deletions(-)
>
> diff --git a/arch/riscv/include/asm/cacheflush.h b/arch/riscv/include/asm/cacheflush.h
> index c8677c75f82cb..a167b4fbdf007 100644
> --- a/arch/riscv/include/asm/cacheflush.h
> +++ b/arch/riscv/include/asm/cacheflush.h
> @@ -8,65 +8,6 @@
>
>  #include <linux/mm.h>
>
> -#define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 0
> -
> -/*
> - * The cache doesn't need to be flushed when TLB entries change when
> - * the cache is mapped to physical memory, not virtual memory
> - */
> -static inline void flush_cache_all(void)
> -{
> -}
> -
> -static inline void flush_cache_mm(struct mm_struct *mm)
> -{
> -}
> -
> -static inline void flush_cache_dup_mm(struct mm_struct *mm)
> -{
> -}
> -
> -static inline void flush_cache_range(struct vm_area_struct *vma,
> -				     unsigned long start,
> -				     unsigned long end)
> -{
> -}
> -
> -static inline void flush_cache_page(struct vm_area_struct *vma,
> -				    unsigned long vmaddr,
> -				    unsigned long pfn)
> -{
> -}
> -
> -static inline void flush_dcache_mmap_lock(struct address_space *mapping)
> -{
> -}
> -
> -static inline void flush_dcache_mmap_unlock(struct address_space *mapping)
> -{
> -}
> -
> -static inline void flush_icache_page(struct vm_area_struct *vma,
> -				     struct page *page)
> -{
> -}
> -
> -static inline void flush_cache_vmap(unsigned long start, unsigned long end)
> -{
> -}
> -
> -static inline void flush_cache_vunmap(unsigned long start, unsigned long end)
> -{
> -}
> -
> -#define copy_to_user_page(vma, page, vaddr, dst, src, len) \
> -	do { \
> -		memcpy(dst, src, len); \
> -		flush_icache_user_range(vma, page, vaddr, len); \
> -	} while (0)
> -#define copy_from_user_page(vma, page, vaddr, dst, src, len) \
> -	memcpy(dst, src, len)
> -
>  static inline void local_flush_icache_all(void)
>  {
>  	asm volatile ("fence.i" ::: "memory");
> @@ -79,6 +20,7 @@ static inline void flush_dcache_page(struct page *page)
>  	if (test_bit(PG_dcache_clean, &page->flags))
>  		clear_bit(PG_dcache_clean, &page->flags);
>  }
> +#define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 1
>
>  /*
>   * RISC-V doesn't have an instruction to flush parts of the instruction cache,
> @@ -105,4 +47,6 @@ void flush_icache_mm(struct mm_struct *mm, bool local);
>  #define SYS_RISCV_FLUSH_ICACHE_LOCAL 1UL
>  #define SYS_RISCV_FLUSH_ICACHE_ALL   (SYS_RISCV_FLUSH_ICACHE_LOCAL)
>
> +#include <asm-generic/cacheflush.h>
> +
>  #endif /* _ASM_RISCV_CACHEFLUSH_H */

Thanks!

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>

Were you trying to get these all in at once, or do you want me to take it into
my tree?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
