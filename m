Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CBBF3314
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 16:30:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=qJyTVjLqavFvZnVZbVIqjeqLnyiPwMUJmbCLcKgohB0=; b=InJ9DPsbgNgQbbcfc63MzQVRR
	7bpRanub2OnBHfd5uWLtqsD3UpRUXCaNaJWerrsF2GNN+L1hW/8werDxsJ48CrSnxy9id2XhwPMTk
	7/sj65LBiG+X96K43+jmwi1fN5+RF2e25RAewukW4Ae5mT8Szm+ndSBxyJE9/veaKcWU/LNKBOCk7
	IbF2YR+I7a0CCRinIax1p5P1J6R6Zc/9+r67pSTdvYpHIacL4B5BtPjAZWKeWC4IVi8MCGJurhVCi
	B6iHYlk2rXjTpKJJnn03gG0kbYaBevzcHcLKe3lOJ4m2byEcoXoYebeL+pEuaD4+xiWC3iJYy3bA3
	wMScitw4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjjU-00075c-Hu; Thu, 07 Nov 2019 15:30:00 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjih-0006W4-J8
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 15:29:15 +0000
Received: by mail-pl1-x642.google.com with SMTP id p13so1709419pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 07:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=celw7kLC34qqwTTfh++uCkQEjOgc/6nwF8dFF2fJRcA=;
 b=noW+GrgCtBbtWmvRliYdOAuMA0YUG7D+eX91HjAU5IDNU+EBOcrbt42dkubqBTxW4S
 WQ8n2ZfnbmfCL4+eE6s1MnG4kJG52VZJ91QbzuQNFIi/COPg+DrUHbZ8+Jcgjj/Q48Re
 QNX4NY1E7vtLM68r6rfozcc3RNzkIItLOE7o9jhPPrBLVYCbQcAaXYdiCcQx1PUOZm7u
 oSAbYZ4+XOAXy2q29Df881Gyse5LGoGTyAaPv6aJ5raeRYhtrrpUAm1qesZ/YD4XWer0
 OQ5NPy7zRFp9dt0jb2kjIPuYcQwfIBFil4fTrnHBnYJ1ukrYml+utoouUC2biDI7it8K
 q8Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=celw7kLC34qqwTTfh++uCkQEjOgc/6nwF8dFF2fJRcA=;
 b=uTllh6qU85c9ngKWrn2vEJfLcmNalzM1lJvS0/IdhtH2jit87NYmfZtI9uDNhiX6Pb
 Au10csxMo9qjpyqDlnPBkV0OQTGnxjxD07vMUfNhQA9EL7k7YeHG4eZEccTmL2XKyKhE
 KjNauH8upqu4Y6IqjIsqc95rl5TEzz02fYrqi+9UNzbIbta/xeMn2lUdpIAhsg5EkmsY
 HVSV/diP2oxaeZLCEPrRgml2AbcWnRv6oNxFMHf2iz4uryfmtyXEnAaPSrVzu0MZXM3w
 wvhYt4Mzd/kOX88/RLV1FXkRpiwOAVHnBso3v40YdnnY1sO4DT2nfr043rqKcnPipfD5
 Fk5w==
X-Gm-Message-State: APjAAAVgbuL1eu7e22pDa3iSVTcVApddZNCAIlyFaD0EDO+kSJDr1l3k
 L5ZvJHRR+JWsyzdnjM5Ff3pqbg==
X-Google-Smtp-Source: APXvYqxwW3UXdXBa6cGLkWhsyLfBz9Kw3ES1wGdovuqY/c7cBz2zbKIbrHc7CxUnNtedCkwAnHzZJw==
X-Received: by 2002:a17:90a:174a:: with SMTP id
 10mr5875131pjm.104.1573140550559; 
 Thu, 07 Nov 2019 07:29:10 -0800 (PST)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id r10sm2405827pgn.68.2019.11.07.07.29.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 07:29:10 -0800 (PST)
Date: Thu, 07 Nov 2019 07:29:10 -0800 (PST)
X-Google-Original-Date: Wed, 06 Nov 2019 10:45:31 PST (-0800)
Subject: Re: [PATCH 17/21] lib: provide a simple generic ioremap implementation
In-Reply-To: <20191029064834.23438-18-hch@lst.de>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <mhng-e96b8613-e384-4e94-90f8-d1cf78c5627a@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_072911_636481_75EFF449 
X-CRM114-Status: GOOD (  25.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, guoren@kernel.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, deanbo422@gmail.com,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, green.hu@gmail.com,
 linux-mtd@lists.infradead.org, gxt@pku.edu.cn,
 linux-arm-kernel@lists.infradead.org, monstr@monstr.eu,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019 23:48:30 PDT (-0700), Christoph Hellwig wrote:
> A lot of architectures reuse the same simple ioremap implementation, so
> start lifting the most simple variant to lib/ioremap.c.  It provides
> ioremap_prot and iounmap, plus a default ioremap that uses prot_noncached,
> although that can be overridden by asm/io.h.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  include/asm-generic/io.h | 20 ++++++++++++++++----
>  lib/Kconfig              |  3 +++
>  lib/ioremap.c            | 39 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 58 insertions(+), 4 deletions(-)
>
> diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
> index 4e45e1cb6560..4a661fdd1937 100644
> --- a/include/asm-generic/io.h
> +++ b/include/asm-generic/io.h
> @@ -923,9 +923,10 @@ static inline void *phys_to_virt(unsigned long address)
>   * DOC: ioremap() and ioremap_*() variants
>   *
>   * Architectures with an MMU are expected to provide ioremap() and iounmap()
> - * themselves.  For NOMMU architectures we provide a default nop-op
> - * implementation that expect that the physical address used for MMIO are
> - * already marked as uncached, and can be used as kernel virtual addresses.
> + * themselves or rely on GENERIC_IOREMAP.  For NOMMU architectures we provide
> + * a default nop-op implementation that expect that the physical address used
> + * for MMIO are already marked as uncached, and can be used as kernel virtual
> + * addresses.
>   *
>   * ioremap_wc() and ioremap_wt() can provide more relaxed caching attributes
>   * for specific drivers if the architecture choses to implement them.  If they
> @@ -946,7 +947,18 @@ static inline void iounmap(void __iomem *addr)
>  {
>  }
>  #endif
> -#endif /* CONFIG_MMU */
> +#elif defined(CONFIG_GENERIC_IOREMAP)
> +#include <asm/pgtable.h>
> +
> +void __iomem *ioremap_prot(phys_addr_t addr, size_t size, unsigned long prot);
> +void iounmap(volatile void __iomem *addr);
> +
> +static inline void __iomem *ioremap(phys_addr_t addr, size_t size)
> +{
> +	/* _PAGE_IOREMAP needs to be supplied by the architecture */
> +	return ioremap_prot(addr, size, _PAGE_IOREMAP);
> +}
> +#endif /* !CONFIG_MMU || CONFIG_GENERIC_IOREMAP */
>
>  #ifndef ioremap_nocache
>  #define ioremap_nocache ioremap
> diff --git a/lib/Kconfig b/lib/Kconfig
> index 183f92a297ca..afc78aaf2b25 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -638,6 +638,9 @@ config STRING_SELFTEST
>
>  endmenu
>
> +config GENERIC_IOREMAP
> +	bool
> +
>  config GENERIC_LIB_ASHLDI3
>  	bool
>
> diff --git a/lib/ioremap.c b/lib/ioremap.c
> index 0a2ffadc6d71..3f0e18543de8 100644
> --- a/lib/ioremap.c
> +++ b/lib/ioremap.c
> @@ -231,3 +231,42 @@ int ioremap_page_range(unsigned long addr,
>
>  	return err;
>  }
> +
> +#ifdef CONFIG_GENERIC_IOREMAP
> +void __iomem *ioremap_prot(phys_addr_t addr, size_t size, unsigned long prot)
> +{
> +	unsigned long offset, vaddr;
> +	phys_addr_t last_addr;
> +	struct vm_struct *area;
> +
> +	/* Disallow wrap-around or zero size */
> +	last_addr = addr + size - 1;
> +	if (!size || last_addr < addr)
> +		return NULL;
> +
> +	/* Page-align mappings */
> +	offset = addr & (~PAGE_MASK);
> +	addr -= offset;
> +	size = PAGE_ALIGN(size + offset);
> +
> +	area = get_vm_area_caller(size, VM_IOREMAP,
> +			__builtin_return_address(0));
> +	if (!area)
> +		return NULL;
> +	vaddr = (unsigned long)area->addr;
> +
> +	if (ioremap_page_range(vaddr, vaddr + size, addr, __pgprot(prot))) {
> +		free_vm_area(area);
> +		return NULL;
> +	}
> +
> +	return (void __iomem *)(vaddr + offset);
> +}
> +EXPORT_SYMBOL(ioremap_prot);
> +
> +void iounmap(volatile void __iomem *addr)
> +{
> +	vunmap((void *)((unsigned long)addr & PAGE_MASK));
> +}
> +EXPORT_SYMBOL(iounmap);
> +#endif /* CONFIG_GENERIC_IOREMAP */

Reviewed-by: Palmer Dabbelt <palmer@dabbelt.com>

Thanks!  This should let us get rid of arch/riscv/mm/ioremap.c.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
