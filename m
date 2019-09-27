Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17169BFF03
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 08:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Es9IkAY2fivk+8AN2wzrg+0VXbRjPfI4LY3WzUF6zM=; b=oJ1kBatl46NYy8
	tII7ZkpbiHuDoAwa/w69JM4aCEHBUKB+nyY6SEFqkgnLysMKOAm5roR8OKdn4P5y0Vdkk9AN9OcF7
	yDzhEOWUOShYibQo+pM1CGBfhtzgWZhGWDSBAWq4kVo8Vd0qr2Z9UeqLni1KC5C4LxWmCAj2srWvs
	vj/QhImO7C/baiCrb/gf53rs7im9+Or1H7YrmRRZaAlnytzgVPJhN3LQjYIzLyNbcfOH3R6LwZY5/
	FXfQTPJxmNwuBwSgrG6qKyb6IGg4xslC4FFmoDiOrzekjSI7aXVqLuNIqkyYILFTSLHUV+A8pVWHx
	yVruYaSCZgRm5PjksXaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDjcV-0004DE-AP; Fri, 27 Sep 2019 06:20:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDjcE-0004CO-Ra
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 06:20:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42AC328;
 Thu, 26 Sep 2019 23:20:27 -0700 (PDT)
Received: from [10.162.41.136] (p8cg001049571a15.blr.arm.com [10.162.41.136])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B1FC93F739; Thu, 26 Sep 2019 23:23:00 -0700 (PDT)
Subject: Re: [PATCH v3] arm64: use generic free_initrd_mem()
To: Mike Rapoport <rppt@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <1569388180-28274-1-git-send-email-rppt@kernel.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <76b49810-c59f-8cf1-7401-1f7262873601@arm.com>
Date: Fri, 27 Sep 2019 11:50:42 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1569388180-28274-1-git-send-email-rppt@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_232030_984882_58C0578A 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Laura Abbott <labbott@redhat.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 09/25/2019 10:39 AM, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> arm64 calls memblock_free() for the initrd area in its implementation of
> free_initrd_mem(), but this call has no actual effect that late in the boot
> process. By the time initrd is freed, all the reserved memory is managed by
> the page allocator and the memblock.reserved is unused, so the only purpose
> of the memblock_free() call is to keep track of initrd memory for debugging
> and accounting.
> 
> Without the memblock_free() call the only difference between arm64 and the
> generic versions of free_initrd_mem() is the memory poisoning.
> 
> Move memblock_free() call to the generic code, enable it there
> for the architectures that define ARCH_KEEP_MEMBLOCK and use the generic
> implementaion of free_initrd_mem() on arm64.

Small nit. s/implementaion/implementation.

> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
> 
> v3:
> * fix powerpc build
> 
> v2: 
> * add memblock_free() to the generic free_initrd_mem()
> * rebase on the current upstream
> 
> 
>  arch/arm64/mm/init.c | 12 ------------
>  init/initramfs.c     |  5 +++++
>  2 files changed, 5 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index 45c00a5..87a0e3b 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -580,18 +580,6 @@ void free_initmem(void)
>  	unmap_kernel_range((u64)__init_begin, (u64)(__init_end - __init_begin));
>  }
>  
> -#ifdef CONFIG_BLK_DEV_INITRD
> -void __init free_initrd_mem(unsigned long start, unsigned long end)
> -{
> -	unsigned long aligned_start, aligned_end;
> -
> -	aligned_start = __virt_to_phys(start) & PAGE_MASK;
> -	aligned_end = PAGE_ALIGN(__virt_to_phys(end));
> -	memblock_free(aligned_start, aligned_end - aligned_start);
> -	free_reserved_area((void *)start, (void *)end, 0, "initrd");
> -}
> -#endif
> -
>  /*
>   * Dump out memory limit information on panic.
>   */
> diff --git a/init/initramfs.c b/init/initramfs.c
> index c47dad0..3d61e13 100644
> --- a/init/initramfs.c
> +++ b/init/initramfs.c
> @@ -10,6 +10,7 @@
>  #include <linux/syscalls.h>
>  #include <linux/utime.h>
>  #include <linux/file.h>
> +#include <linux/memblock.h>
>  
>  static ssize_t __init xwrite(int fd, const char *p, size_t count)
>  {
> @@ -531,6 +532,10 @@ void __weak free_initrd_mem(unsigned long start, unsigned long end)
>  {
>  	free_reserved_area((void *)start, (void *)end, POISON_FREE_INITMEM,
>  			"initrd");
> +
> +#ifdef CONFIG_ARCH_KEEP_MEMBLOCK

Should not the addresses here be aligned first before calling memblock_free() ?
Without alignment, it breaks present behavior on arm64 which was explicitly added
with 13776f9d40a0 ("arm64: mm: free the initrd reserved memblock in a aligned manner").
Or does initrd always gets allocated with page alignment on other architectures.

> +	memblock_free(__pa(start), end - start);
> +#endif
>  }
>  
>  #ifdef CONFIG_KEXEC_CORE
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
