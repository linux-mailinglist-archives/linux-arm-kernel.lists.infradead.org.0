Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD51C1AF4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 07:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oJI/OBTL4MQvP/UUwqNHKnzidp4oV0Bu83TKzy91rBU=; b=oBV06rkzzIj7b7
	Y10/2dbgvJkeHJJ4Nd7QvMLh7RFyTYxyO0jd/4i16yIzG2aMu+DU1UBRsZdDLuedZ1T4QT0tf6XZE
	m2yTCQ/G12R8hrZVvSnoy1ae8NFeRwH6O+dFk7Q3pIazKCkA1N5w/d/AGxlXsuanwoaI87Kl6D3DJ
	SK8Wh6Jtvls79XT4rHYbMJpzSoHvFlRHDEUQrZhPqJe4Hu1iYBxaIzD3i5Svt22ga6F3iTcgUrPFc
	2jXXKRIVCCrFgu9u2lJM1O2uHKQZEWyvxyhqqZsnmQoPVDJBYJsmFBKsTfolngbQLbUhAm3P63S1W
	Wwy4TdwDRs1K8aeNmnRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEoAr-0006HG-Mm; Mon, 30 Sep 2019 05:24:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEoAj-0006Go-9i
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 05:24:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1964228;
 Sun, 29 Sep 2019 22:24:29 -0700 (PDT)
Received: from [10.162.43.119] (p8cg001049571a15.blr.arm.com [10.162.43.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A3D583F739; Sun, 29 Sep 2019 22:27:03 -0700 (PDT)
Subject: Re: [PATCH v4] arm64: use generic free_initrd_mem()
To: Mike Rapoport <rppt@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <1569657746-31672-1-git-send-email-rppt@kernel.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <4267bfb4-db55-49a5-634f-7d1b1fce650e@arm.com>
Date: Mon, 30 Sep 2019 10:54:45 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1569657746-31672-1-git-send-email-rppt@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_222433_426410_2D7D2440 
X-CRM114-Status: GOOD (  21.79  )
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
Cc: Laura Abbott <labbott@redhat.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 09/28/2019 01:32 PM, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> arm64 calls memblock_free() for the initrd area in its implementation of
> free_initrd_mem(), but this call has no actual effect that late in the boot
> process. By the time initrd is freed, all the reserved memory is managed by
> the page allocator and the memblock.reserved is unused, so the only purpose
> of the memblock_free() call is to keep track of initrd memory for debugging
> and accounting.

Thats correct. memblock_free_all() gets called before free_initrd_mem().

> 
> Without the memblock_free() call the only difference between arm64 and the
> generic versions of free_initrd_mem() is the memory poisoning.
> 
> Move memblock_free() call to the generic code, enable it there
> for the architectures that define ARCH_KEEP_MEMBLOCK and use the generic
> implementation of free_initrd_mem() on arm64.

This improves free_initrd_mem() generic implementation for others to use.

> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

Tested-by: Anshuman Khandual <anshuman.khandual@arm.com>	#arm64
Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>

> ---
> 
> v4:
> * memblock_free() aligned area around the initrd
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
>  init/initramfs.c     |  8 ++++++++
>  2 files changed, 8 insertions(+), 12 deletions(-)
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
> index c47dad0..8ec1be4 100644
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
> @@ -529,6 +530,13 @@ extern unsigned long __initramfs_size;
>  
>  void __weak free_initrd_mem(unsigned long start, unsigned long end)
>  {
> +#ifdef CONFIG_ARCH_KEEP_MEMBLOCK
> +	unsigned long aligned_start = ALIGN_DOWN(start, PAGE_SIZE);
> +	unsigned long aligned_end = ALIGN(end, PAGE_SIZE);
> +
> +	memblock_free(__pa(aligned_start), aligned_end - aligned_start);
> +#endif
> +
>  	free_reserved_area((void *)start, (void *)end, POISON_FREE_INITMEM,
>  			"initrd");
>  }
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
