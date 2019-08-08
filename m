Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42FC859B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 07:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aazBVOIlpD+NJQaNHSY+Qgdk1wKox+Td8h4PRj7m1B4=; b=bvYAeugEh3fjF0
	am2AWxMxvvyiRRLLc045P9QwVC2xYtPXwWyOaF4rcFFaFpUlhbJf6uxLu/sJO0zLWyDV7yA1htsNM
	2m0j9bd7NzJUc7rJXig9JzHZhDMAox9MfOS+DS0HbdSGTVsghSM0AuZhheCAMSwMmR66BPBTlsFPn
	ax50JhHON41HK4AMMx8ezGBa2VEvIQkhUbPyqvJXMIZ01M7pDzCsHIF48MUtZQV5osetTqO0Sjs2B
	ORCoVZc4vjg08hsB66pWFnH2V7m6Vn6qXOvkFUz4nw3fqZNN7rwLyQwAqwrG1Z3LCWRebN5enoiba
	wEU31DPainkqKhvxz1NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvapc-0008BN-6Q; Thu, 08 Aug 2019 05:19:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvapN-0008AY-Ko
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 05:19:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 902D428;
 Wed,  7 Aug 2019 22:19:02 -0700 (PDT)
Received: from [10.163.1.243] (unknown [10.163.1.243])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A6EF3F706;
 Wed,  7 Aug 2019 22:21:07 -0700 (PDT)
Subject: Re: [PATCH] arm64: mm: add missing PTE_SPECIAL in pte_mkdevmap on
 arm64
To: Jia He <justin.he@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 James Morse <james.morse@arm.com>
References: <20190807045851.10772-1-justin.he@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <ce0be561-117c-ef94-6a26-f88c3ba21096@arm.com>
Date: Thu, 8 Aug 2019 10:48:53 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190807045851.10772-1-justin.he@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_221905_784177_F4C264E8 
X-CRM114-Status: GOOD (  24.20  )
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
Cc: Christoffer Dall <christoffer.dall@arm.com>, linux-kernel@vger.kernel.org,
 Jun Yao <yaojun8558363@gmail.com>, Qian Cai <cai@lca.pw>,
 Punit Agrawal <punitagrawal@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Robin Murphy <robin.murphy@arm.com>, Alex Van Brunt <avanbrunt@nvidia.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08/07/2019 10:28 AM, Jia He wrote:
> Without this patch, the MAP_SYNC test case will cause a print_bad_pte
> warning on arm64 as follows:
> [   25.542693] BUG: Bad page map in process mapdax333
> pte:2e8000448800f53 pmd:41ff5f003
> [   25.546360] page:ffff7e0010220000 refcount:1 mapcount:-1
> mapping:ffff8003e29c7440 index:0x0
> [   25.550281] ext4_dax_aops
> [   25.550282] name:"__aaabbbcccddd__"
> [   25.551553] flags: 0x3ffff0000001002(referenced|reserved)
> [   25.555802] raw: 03ffff0000001002 ffff8003dfffa908 0000000000000000
> ffff8003e29c7440
> [   25.559446] raw: 0000000000000000 0000000000000000 00000001fffffffe
> 0000000000000000
> [   25.563075] page dumped because: bad pte
> [   25.564938] addr:0000ffffbe05b000 vm_flags:208000fb
> anon_vma:0000000000000000 mapping:ffff8003e29c7440 index:0
> [   25.574272] file:__aaabbbcccddd__ fault:ext4_dax_fault
> mmmmap:ext4_file_mmap readpage:0x0
> [   25.578799] CPU: 1 PID: 1180 Comm: mapdax333 Not tainted 5.2.0+ #21
> [   25.581702] Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0
> 02/06/2015
> [   25.585624] Call trace:
> [   25.587008]  dump_backtrace+0x0/0x178
> [   25.588799]  show_stack+0x24/0x30
> [   25.590328]  dump_stack+0xa8/0xcc
> [   25.591901]  print_bad_pte+0x18c/0x218
> [   25.593628]  unmap_page_range+0x778/0xc00
> [   25.595506]  unmap_single_vma+0x94/0xe8
> [   25.597304]  unmap_vmas+0x90/0x108
> [   25.598901]  unmap_region+0xc0/0x128
> [   25.600566]  __do_munmap+0x284/0x3f0
> [   25.602245]  __vm_munmap+0x78/0xe0
> [   25.603820]  __arm64_sys_munmap+0x34/0x48
> [   25.605709]  el0_svc_common.constprop.0+0x78/0x168
> [   25.607956]  el0_svc_handler+0x34/0x90
> [   25.609698]  el0_svc+0x8/0xc
> [   25.611103] Disabling lock debugging due to kernel taint
> [   25.613573] BUG: Bad page state in process mapdax333  pfn:448800
> [   25.616359] page:ffff7e0010220000 refcount:0 mapcount:-1
> mapping:ffff8003e29c7440 index:0x1
> [   25.620236] ext4_dax_aops
> [   25.620237] name:"__aaabbbcccddd__"
> [   25.621495] flags: 0x3ffff0000000000()
> [   25.624912] raw: 03ffff0000000000 dead000000000100 dead000000000200
> ffff8003e29c7440
> [   25.628502] raw: 0000000000000001 0000000000000000 00000000fffffffe
> 0000000000000000
> [   25.632097] page dumped because: non-NULL mapping
> [...]
> [   25.656567] CPU: 1 PID: 1180 Comm: mapdax333 Tainted: G    B
> 5.2.0+ #21
> [   25.660131] Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0
> 02/06/2015
> [   25.663324] Call trace:
> [   25.664466]  dump_backtrace+0x0/0x178
> [   25.666163]  show_stack+0x24/0x30
> [   25.667721]  dump_stack+0xa8/0xcc
> [   25.669270]  bad_page+0xf0/0x150
> [   25.670772]  free_pages_check_bad+0x84/0xa0
> [   25.672724]  free_pcppages_bulk+0x45c/0x708
> [   25.674675]  free_unref_page_commit+0xcc/0x100
> [   25.676751]  free_unref_page_list+0x13c/0x200
> [   25.678801]  release_pages+0x350/0x420
> [   25.680539]  free_pages_and_swap_cache+0xf8/0x128
> [   25.682738]  tlb_flush_mmu+0x164/0x2b0
> [   25.684485]  unmap_page_range+0x648/0xc00
> [   25.686349]  unmap_single_vma+0x94/0xe8
> [   25.688131]  unmap_vmas+0x90/0x108
> [   25.689739]  unmap_region+0xc0/0x128
> [   25.691392]  __do_munmap+0x284/0x3f0
> [   25.693079]  __vm_munmap+0x78/0xe0
> [   25.694658]  __arm64_sys_munmap+0x34/0x48
> [   25.696530]  el0_svc_common.constprop.0+0x78/0x168
> [   25.698772]  el0_svc_handler+0x34/0x90
> [   25.700512]  el0_svc+0x8/0xc
> 
> The root cause is in _vm_normal_page, without the PTE_SPECIAL bit,
> the return value will be incorrectly set to pfn_to_page(pfn) instead
> of NULL. Besides, this patch also rewrite the pmd_mkdevmap to avoid
> setting PTE_SPECIAL for pmd
> 
> The MAP_SYNC test case is as follows(Provided by Yibo Cai)
> $#include <stdio.h>
> $#include <string.h>
> $#include <unistd.h>
> $#include <sys/file.h>
> $#include <sys/mman.h>
> 
> $#ifndef MAP_SYNC
> $#define MAP_SYNC 0x80000
> $#endif
> 
> /* mount -o dax /dev/pmem0 /mnt */
> $#define F "/mnt/__aaabbbcccddd__"
> 
> int main(void)
> {
>     int fd;
>     char buf[4096];
>     void *addr;
> 
>     if ((fd = open(F, O_CREAT|O_TRUNC|O_RDWR, 0644)) < 0) {
>         perror("open1");
>         return 1;
>     }
> 
>     if (write(fd, buf, 4096) != 4096) {
>         perror("lseek");
>         return 1;
>     }
> 
>     addr = mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_SHARED|MAP_SYNC,
> fd, 0);
>     if (addr == MAP_FAILED) {
>         perror("mmap");
>         printf("did you mount with '-o dax'?\n");
>         return 1;
>     }
> 
>     memset(addr, 0x55, 4096);
> 
>     if (munmap(addr, 4096) == -1) {
>         perror("munmap");
>         return 1;
>     }
> 
>     close(fd);
> 
>     return 0;
> }
> 
> Fixes: 73b20c84d42d ("arm64: mm: implement pte_devmap support")
> Reported-by: Yibo Cai <Yibo.Cai@arm.com>
> Signed-off-by: Jia He <justin.he@arm.com>
> Acked-by: Robin Murphy <Robin.Murphy@arm.com>
> ---
>  arch/arm64/include/asm/pgtable.h | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index 5fdcfe237338..e09760ece844 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -209,7 +209,7 @@ static inline pmd_t pmd_mkcont(pmd_t pmd)
>  
>  static inline pte_t pte_mkdevmap(pte_t pte)
>  {
> -	return set_pte_bit(pte, __pgprot(PTE_DEVMAP));
> +	return set_pte_bit(pte, __pgprot(PTE_DEVMAP | PTE_SPECIAL));
>  }
>  
>  static inline void set_pte(pte_t *ptep, pte_t pte)
> @@ -396,7 +396,10 @@ static inline int pmd_protnone(pmd_t pmd)
>  #ifdef CONFIG_TRANSPARENT_HUGEPAGE
>  #define pmd_devmap(pmd)		pte_devmap(pmd_pte(pmd))
>  #endif
> -#define pmd_mkdevmap(pmd)	pte_pmd(pte_mkdevmap(pmd_pte(pmd)))
> +static inline pmd_t pmd_mkdevmap(pmd_t pmd)
> +{
> +	return pte_pmd(set_pte_bit(pmd_pte(pmd), __pgprot(PTE_DEVMAP)));
> +}

Though I could see other platforms like powerpc and x86 following same
approach (DEVMAP + SPECIAL) for pte so that it checks positive for
pte_special() but then just DEVMAP for pmd which could never have a
pmd_special(). But a more fundamental question is - why should a devmap
be a special pte as well ?

Also in vm_normal_page() why cannot it tests for pte_devmap() before it
starts looking for CONFIG_ARCH_HAS_PTE_SPECIAL. Is this the only path for
which we need to set SPECIAL bit on a devmap pte or there are other paths
where this semantics is assumed ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
