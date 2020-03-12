Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 731CA18368D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 17:49:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZCT6l5zaYNGUWE8N0HLvJHWriJ1Me/bghVWti1Spns=; b=ZrtrsoB3XOtraN
	dnkLQs0x0rUtqT9NjzwxVY58xRxC70JyQ1TCWSPL33B16sYfP6m/kRoPikB3xcIkfb0WeNKOlDCpz
	YOnfH8sec/gOO9246ppmKw5Dh34kV0XpZKZhtO8aj81z6RmTG7ocL74wax3FEREwOWrwFi1848j/3
	Y5FpXPSes9aLOawDlrHIMgzUatjchrFjI7r5Nlf3NwioJY/Ighlg13fTGtW3M8Kka1O6TIsxgHj7a
	21nsYaA2oqr1fiovlvKLPpmAoauTsA+sIKL8tqI1f0nE+W7HYtrYlThFkrprBKuKD5X6odrabYRNM
	1oDEOmMJE0mrNHw5XYsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCR1Z-0003SL-Dk; Thu, 12 Mar 2020 16:49:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCR1S-0003Rr-Ix
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 16:49:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 923F930E;
 Thu, 12 Mar 2020 09:49:25 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 913623F6CF;
 Thu, 12 Mar 2020 09:49:24 -0700 (PDT)
Date: Thu, 12 Mar 2020 16:49:22 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: glider@google.com
Subject: Re: [PATCH] arm64: define __alloc_zeroed_user_highpage
Message-ID: <20200312164922.GC21120@lakrids.cambridge.arm.com>
References: <20200312155920.50067-1-glider@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312155920.50067-1-glider@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_094926_669958_01CFE1FD 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: keescook@chromium.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 04:59:20PM +0100, glider@google.com wrote:
> When running the kernel with init_on_alloc=1, calling the default
> implementation of __alloc_zeroed_user_highpage() from include/linux/highmem.h
> leads to double-initialization of the allocated page (first by the page
> allocator, then by clear_user_page().
> Calling alloc_page_vma() with __GFP_ZERO, similarly to e.g. x86, seems
> to be enough to ensure the user page is zeroed only once.

Just to check, is there a functional ussue beyond the redundant zeroing,
or is this jsut a performance issue?

On architectures with real highmem, does GFP_HIGHUSER prevent the
allocator from zeroing the page in this case, or is the architecture
prevented from allocating from highmem?

This feels like something we should be able to fix in the generic
implementation of __alloc_zeroed_user_highpage(), with an additional
check to see if init_on_alloc is in use.

Thanks,
Mark.

> 
> Signed-off-by: Alexander Potapenko <glider@google.com>
> ---
>  arch/arm64/include/asm/page.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/page.h b/arch/arm64/include/asm/page.h
> index d39ddb258a049..75d6cd23a6790 100644
> --- a/arch/arm64/include/asm/page.h
> +++ b/arch/arm64/include/asm/page.h
> @@ -21,6 +21,10 @@ extern void __cpu_copy_user_page(void *to, const void *from,
>  extern void copy_page(void *to, const void *from);
>  extern void clear_page(void *to);
>  
> +#define __alloc_zeroed_user_highpage(movableflags, vma, vaddr) \
> +	alloc_page_vma(GFP_HIGHUSER | __GFP_ZERO | movableflags, vma, vaddr)
> +#define __HAVE_ARCH_ALLOC_ZEROED_USER_HIGHPAGE
> +
>  #define clear_user_page(addr,vaddr,pg)  __cpu_clear_user_page(addr, vaddr)
>  #define copy_user_page(to,from,vaddr,pg) __cpu_copy_user_page(to, from, vaddr)
>  
> -- 
> 2.25.1.481.gfbce0eb801-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
