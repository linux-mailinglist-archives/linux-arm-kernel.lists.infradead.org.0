Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAB9EFFC3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 15:29:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xU3/SjnYc0vg7m6PuBiA0Ngr6pnFCRlsKlRt8Wybdhc=; b=Pg1/QobcgImx9r
	BDXRChwaVmlUb6Ixfn6PZChZLZOn1pJIWWtBHDwhi4u4VrEZKsC9vakwQgzbtT9+lkSulTq6lkurN
	lkplav1wu6UeG2jdoWFAZtaXWmP7LJtggGC+kw1dOj0/UblRW04AmJc0/u1kAETP2yzl/jSQ4QWGC
	pWKEjVbR3JV7bLFa+8iBqOpPubntjXNwPEuTsnTVj1P0atDzGHIMp5fMPviLqKMY/xVbTquSjSimc
	UgnpT3EQcrzuW9y3fdq4zBuO6aHceCwRDcgZxlpCW3kL3c+oJ5Wj+y81MJel4YIOWeJc3SIlVeRTl
	wAhSIfcrI70beeYu7mdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRzpo-0000Kn-Kb; Tue, 05 Nov 2019 14:29:28 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRzph-0000K0-2T; Tue, 05 Nov 2019 14:29:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572964151;
 bh=1ccRhMfOjQfCWgxZtJzM4hP1zgDfrNPilzzEdo9nVpk=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Y0fiQZVlL53W17TOlZbi6XyMv5zjwVPRrWuOHJMTc50mzth8UTL/m2E1lYcbSheEF
 8jorhA7eYWbpK5PWaPEPGi/wJtl+L33sVAQqL300Yc0SHDjTKJjeHWLOB6GN35q3YS
 +a7NPrubb/JJYnsmHtwYU8sEHifg8Yl87BpLmw98=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.20.60] ([92.116.150.99]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MpUYu-1i9DSt0bLI-00pqwr; Tue, 05
 Nov 2019 15:29:11 +0100
Subject: Re: [PATCH 07/21] parisc: remove __ioremap
To: Christoph Hellwig <hch@lst.de>
References: <20191029064834.23438-1-hch@lst.de>
 <20191029064834.23438-8-hch@lst.de>
From: Helge Deller <deller@gmx.de>
Autocrypt: addr=deller@gmx.de; keydata=
 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
 oiAieEtb6a/7+jPKZnRFTw==
Message-ID: <23dd12c1-8af2-dd97-18f2-da3203d49a48@gmx.de>
Date: Tue, 5 Nov 2019 15:29:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191029064834.23438-8-hch@lst.de>
Content-Language: en-US
X-Provags-ID: V03:K1:K84d31/CVvwIJRKgEkYeLn7nG07Ceq3NW0dsqaiRS5IsUys1PNO
 B3wZA6JSQUR3ASpFYkzv5n9DIUepkHMiZULCTf1KC+BWlAXPXnF8HuJwokTu9RHIoaGeecm
 Ci3RRzeiRWquDPKN9RN+JUnecDqMAenupRgKRqv99/LWiBv0xQpgWSKokC8ejSoOAF87fIb
 GlxUK3lSPzPHSDlD+KOEg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qywLIYXxQ6w=:uquN0cefM1Gv+iPhjMDm4y
 WzeGInW3/ErqTG1UoKT/xRidojOzqlKb5yOcKxyKZooWk6bL0fIl5AhbM6blTwH8c66Kn8H1J
 WGQc1ZJSoco0WhSHDXQ7118RQcJ0xrZYuyKBlHofDr66VPHNcDWKy5kH8jKybSP7WJTfqINRw
 XxrfJB4efx2ltV+lzx058SbsYx4C2h/rBJPKR7Kqu12s97bSiY+nyblh2s/yxfeKFuFc/wjCs
 lFYevasBI4YCaAngtQ6appEtRUuMVex0GquZfTkuN9kQa+RTc+z5tNk/7jbcLhxfdgxDb2A4Y
 A/K7Bt5gq41M7Jn+KWZX/6P2XqsNOt+6inw4TwVnCWKxgaw4xs9j+1+zOqMQZiYL/+b0EeS0h
 brYf9g9CAaFNjtMq6+/VAW2IOZ5Nv94fAwRDijmOwyrTdd18Y6DPZNsURYzGl5eEPOeFfkL/F
 JQUcovMUYYj9ZyJXaUrtQ2Lv1lLkNS2AbR8d6Z/6jfAFZlQsxf8UPI82eUYeX00lWlgIp/SYH
 cMXDYNrAgF3fA02cefaga+ToL9W+PJkdoWMNamBPYbInO41HfM4bO0JLXBJxLu8NxsIHwyYbL
 jISx7DcFcwYuhtufHVwYQb2iUXssyinN3j5YlEUD5kcq0apbnaksTH/qQGR+n+GfJqmwZUeTP
 LwRpD/4coGlhAyp/lmnCABsVRB5lwbpRNVUVoJzONql8z4AriXnPaX9nbHtB3uJ8FT1k1bImz
 E56ha19Q0Hnmpw/rCFgb7UT4+4PlAIXgifeujs/4EfgAtwZeLMDSJkAL3PBHGUAs62iq2qh1m
 vpSXwvx1tptIrnrGAtzQHlpMTiy3aP3TJHvhozmVGgOaIR3xRyA9CXUTBI+Hk0XuwymklVM5A
 BvFZUGwg1Wb55/+OdgYFXa6p9XFxMk+XBpGa8NYWQXBZxnCXVRMf3ucDkauRT/6fdyMaVUBvx
 qywVTNg1ILLrPVRP63jplKrFoDllanZJZNwQQgR0kyBWBaUMEBKRGhOn8wdgaWGOB5aC65RGx
 AkhXGJIgOkrsNq3xEuYujqPxATUS2ohV5/RQJjOfpLXgeBUx7ZOhe063AQZ72pgAsRhU5l5bP
 p/KTjTIG/oyqLgCyNVW9DucS2YjDRVYuPoK5r+qOQfF1oFXgONBCwUTL7hhhu/VtZ6J52BURA
 uUYYBM/GzpGVcgiHzTrdtFtF4RDNhEibY8tLl2/IpBAL3fwmJg8W+IziWuaj77zX1IdQfs5WW
 sY7znfNyevOrgCAOqWYYuW4MFkdA7qd6WtFYbUg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_062921_446173_EDDBD99D 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deller[at]gmx.de)
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
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 Greentime Hu <green.hu@gmail.com>, nios2-dev@lists.rocketboards.org,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <monstr@monstr.eu>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-alpha@vger.kernel.org,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29.10.19 07:48, Christoph Hellwig wrote:
> __ioremap is always called with the _PAGE_NO_CACHE, so fold the whole
> thing and rename it to ioremap.  This also allows to remove the special
> EISA quirk to force _PAGE_NO_CACHE.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Acked-by: Helge Deller <deller@gmx.de>

Helge

> ---
>  arch/parisc/include/asm/io.h | 11 +----------
>  arch/parisc/mm/ioremap.c     | 10 ++++------
>  2 files changed, 5 insertions(+), 16 deletions(-)
>
> diff --git a/arch/parisc/include/asm/io.h b/arch/parisc/include/asm/io.h
> index 93d37010b375..46212b52c23e 100644
> --- a/arch/parisc/include/asm/io.h
> +++ b/arch/parisc/include/asm/io.h
> @@ -127,16 +127,7 @@ static inline void gsc_writeq(unsigned long long val, unsigned long addr)
>  /*
>   * The standard PCI ioremap interfaces
>   */
> -
> -extern void __iomem * __ioremap(unsigned long offset, unsigned long size, unsigned long flags);
> -
> -/* Most machines react poorly to I/O-space being cacheable... Instead let's
> - * define ioremap() in terms of ioremap_nocache().
> - */
> -static inline void __iomem * ioremap(unsigned long offset, unsigned long size)
> -{
> -	return __ioremap(offset, size, _PAGE_NO_CACHE);
> -}
> +void __iomem *ioremap(unsigned long offset, unsigned long size);
>  #define ioremap_nocache(off, sz)	ioremap((off), (sz))
>  #define ioremap_wc			ioremap_nocache
>  #define ioremap_uc			ioremap_nocache
> diff --git a/arch/parisc/mm/ioremap.c b/arch/parisc/mm/ioremap.c
> index f29f682352f0..6e7c005aa09b 100644
> --- a/arch/parisc/mm/ioremap.c
> +++ b/arch/parisc/mm/ioremap.c
> @@ -25,7 +25,7 @@
>   * have to convert them into an offset in a page-aligned mapping, but the
>   * caller shouldn't need to know that small detail.
>   */
> -void __iomem * __ioremap(unsigned long phys_addr, unsigned long size, unsigned long flags)
> +void __iomem *ioremap(unsigned long phys_addr, unsigned long size)
>  {
>  	void __iomem *addr;
>  	struct vm_struct *area;
> @@ -36,10 +36,8 @@ void __iomem * __ioremap(unsigned long phys_addr, unsigned long size, unsigned l
>  	unsigned long end = phys_addr + size - 1;
>  	/* Support EISA addresses */
>  	if ((phys_addr >= 0x00080000 && end < 0x000fffff) ||
> -	    (phys_addr >= 0x00500000 && end < 0x03bfffff)) {
> +	    (phys_addr >= 0x00500000 && end < 0x03bfffff))
>  		phys_addr |= F_EXTEND(0xfc000000);
> -		flags |= _PAGE_NO_CACHE;
> -	}
>  #endif
>
>  	/* Don't allow wraparound or zero size */
> @@ -65,7 +63,7 @@ void __iomem * __ioremap(unsigned long phys_addr, unsigned long size, unsigned l
>  	}
>
>  	pgprot = __pgprot(_PAGE_PRESENT | _PAGE_RW | _PAGE_DIRTY |
> -			  _PAGE_ACCESSED | flags);
> +			  _PAGE_ACCESSED | _PAGE_NO_CACHE);
>
>  	/*
>  	 * Mappings have to be page-aligned
> @@ -90,7 +88,7 @@ void __iomem * __ioremap(unsigned long phys_addr, unsigned long size, unsigned l
>
>  	return (void __iomem *) (offset + (char __iomem *)addr);
>  }
> -EXPORT_SYMBOL(__ioremap);
> +EXPORT_SYMBOL(ioremap);
>
>  void iounmap(const volatile void __iomem *io_addr)
>  {
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
