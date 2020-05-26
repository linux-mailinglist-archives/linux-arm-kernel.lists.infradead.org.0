Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6311D861D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgfJjvJMA4tgo5sxlQ3fLX/veuKiEBI7y+Fh6SDzzTw=; b=AzkFmOIbfpDFh9
	ua92Ehlz2+3DAo9fmG/HpQLuh6l9k27cHBFzkix9faI6HAT1Ybp0GBTn978pdIbE9U3gjkqOEDS3F
	lxfgb0NfckdtOUuDas5N04pMsW/BhlXxjZcoCiCZ1dJjmzXVkckmO5r8yDvVTPoMNs3W8myg0MRSJ
	D9wz+aaY+xzTyhYt/In5+YGuLciH3NL1dpSUtJtVIJJDDP76xgGBbJncIxnIuGDcObU6mqi55ZO0q
	HHswzG7vzYskUw35tGbSJDe92Wgb4+UI22oNsEZHqQlDiK61ghvOl+JIx5nxVf2cXo9nnzI1tDf3V
	mogE8NnmLAwWwCePn9yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakQ0-0005ps-W1; Mon, 18 May 2020 18:23:17 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jakPn-0005m9-DG
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:23:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589826181;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bgUgYOhXHVrOhAbBYxlnYyhMzdekwGrXn9fI5GzJacU=;
 b=aO0gEs3gguCIaK2BWL5X5EtHk8V5AxDuXSocAJRaBoX+Cdcg5OR01t6ima7+V8KRYywfTt
 0+Stv4mN4+nI4/R6OmGw1oRjk3ZxLpjOJT4U6/UeCB1QdvLxl0lgco67CySOi9A4OfABZI
 18/n6pWJo84PKezvNlXH//SOLx3Rc7U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-266-kVRrudnWNEOZ64966nyy_Q-1; Mon, 18 May 2020 14:20:52 -0400
X-MC-Unique: kVRrudnWNEOZ64966nyy_Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 428731005510;
 Mon, 18 May 2020 18:20:48 +0000 (UTC)
Received: from ovpn-115-234.rdu2.redhat.com (ovpn-115-234.rdu2.redhat.com
 [10.10.115.234])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6AF23398;
 Mon, 18 May 2020 18:20:43 +0000 (UTC)
Message-ID: <5260142047d0339e00d4a74865c2f0b7511c89f6.camel@redhat.com>
Subject: Re: [PATCH 10/29] c6x: use asm-generic/cacheflush.h
From: Mark Salter <msalter@redhat.com>
To: Christoph Hellwig <hch@lst.de>, Andrew Morton
 <akpm@linux-foundation.org>,  Arnd Bergmann <arnd@arndb.de>, Roman Zippel
 <zippel@linux-m68k.org>
Date: Mon, 18 May 2020 14:20:42 -0400
In-Reply-To: <20200515143646.3857579-11-hch@lst.de>
References: <20200515143646.3857579-1-hch@lst.de>
 <20200515143646.3857579-11-hch@lst.de>
Organization: Red Hat, Inc
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_112303_648880_5489CAA6 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-alpha@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 Jessica Yu <jeyu@kernel.org>, sparclinux@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-05-15 at 16:36 +0200, Christoph Hellwig wrote:
> C6x needs almost no cache flushing routines of its own.  Rely on
> asm-generic/cacheflush.h for the defaults.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/c6x/include/asm/cacheflush.h | 19 +------------------
>  1 file changed, 1 insertion(+), 18 deletions(-)
> 
> diff --git a/arch/c6x/include/asm/cacheflush.h b/arch/c6x/include/asm/cacheflush.h
> index 4540b40475e6c..10922d528de6d 100644
> --- a/arch/c6x/include/asm/cacheflush.h
> +++ b/arch/c6x/include/asm/cacheflush.h
> @@ -16,21 +16,6 @@
>  #include <asm/page.h>
>  #include <asm/string.h>
>  
> -/*
> - * virtually-indexed cache management (our cache is physically indexed)
> - */
> -#define flush_cache_all()			do {} while (0)
> -#define flush_cache_mm(mm)			do {} while (0)
> -#define flush_cache_dup_mm(mm)			do {} while (0)
> -#define flush_cache_range(mm, start, end)	do {} while (0)
> -#define flush_cache_page(vma, vmaddr, pfn)	do {} while (0)
> -#define flush_cache_vmap(start, end)		do {} while (0)
> -#define flush_cache_vunmap(start, end)		do {} while (0)
> -#define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 0
> -#define flush_dcache_page(page)			do {} while (0)
> -#define flush_dcache_mmap_lock(mapping)		do {} while (0)
> -#define flush_dcache_mmap_unlock(mapping)	do {} while (0)
> -
>  /*
>   * physically-indexed cache management
>   */
> @@ -49,14 +34,12 @@ do {								  \
>  			(unsigned long) page_address(page) + PAGE_SIZE)); \
>  } while (0)
>  
> -
>  #define copy_to_user_page(vma, page, vaddr, dst, src, len) \
>  do {						     \
>  	memcpy(dst, src, len);			     \
>  	flush_icache_range((unsigned) (dst), (unsigned) (dst) + (len)); \
>  } while (0)
>  
> -#define copy_from_user_page(vma, page, vaddr, dst, src, len) \
> -	memcpy(dst, src, len)
> +#include <asm-generic/cacheflush.h>
>  
>  #endif /* _ASM_C6X_CACHEFLUSH_H */

Acked-by: Mark Salter <msalter@redhat.com>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
