Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35CB672D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 17:58:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/oEz4xjyGgwzdwlM67pmZiCLjWYK9y8seVWgwgdiYBI=; b=YQKE0axNiemYvP
	W0VRO0gMxs16ZtQ2I09huAYJhOfhD8SNzZsPhm/cCxMcn7UrhegcGtWRhlp2ncfsDgXmiQ2X1MHXf
	8UMXKQkgCPf+ImufXa800onZYSWlHuUiSnNCep7WT+6GH8a8+bRsTJPCQgGh+RLh+txrbR/fuvda8
	1LeALxpqxHd+oTaIfTzy9rMRhpzS1gcrMwjKZF+QmuuzRI/pFvLoYrAtATgGOqfByX0O/yoE7PiZn
	hQnXhWtBShbYyfiiMA1jlyhUwqaygwbW6Oivy5EmqWZ1VhOoPleypYZnRgT4lKBUFSmEiKH02mYrv
	tGnemAFxPGytwqJsMfag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlxwY-0007Qr-KU; Fri, 12 Jul 2019 15:58:42 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlxwM-0007Q5-10
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 15:58:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1562947109; x=1594483109;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:mime-version: content-transfer-encoding;
 bh=Xv6oMdRCDU5+Rbt92DK7ZqXDl23JyeTh31Mje6oJEeA=;
 b=iiavQVDXsfKYvtjb7AVbbq5zd8PPT9jaocdsU3LJ8SOBHOaD2IePIVpA
 inGN1kXir/lbAYBBE9D4HHVhaCfpcDp1Zu8jseGM/dF2RaQ2qWfja9Cz5
 cAvfkVllJ2cwW3qHFn9nn0otncWPgB8UBakvanPXLS6+OzR4DBqZZ7i6B s=;
X-IronPort-AV: E=Sophos;i="5.62,483,1554768000"; d="scan'208";a="810893324"
Received: from sea3-co-svc-lb6-vlan3.sea.amazon.com (HELO
 email-inbound-relay-2c-168cbb73.us-west-2.amazon.com) ([10.47.22.38])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 12 Jul 2019 15:58:25 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2c-168cbb73.us-west-2.amazon.com (Postfix) with ESMTPS
 id 819EEA2452; Fri, 12 Jul 2019 15:58:25 +0000 (UTC)
Received: from EX13D01EUB003.ant.amazon.com (10.43.166.248) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.82) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 12 Jul 2019 15:58:24 +0000
Received: from EX13D01EUB003.ant.amazon.com (10.43.166.248) by
 EX13D01EUB003.ant.amazon.com (10.43.166.248) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 12 Jul 2019 15:58:24 +0000
Received: from EX13D01EUB003.ant.amazon.com ([10.43.166.248]) by
 EX13D01EUB003.ant.amazon.com ([10.43.166.248]) with mapi id 15.00.1367.000;
 Fri, 12 Jul 2019 15:58:24 +0000
From: "Raslan, KarimAllah" <karahmed@amazon.de>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] KVM: arm/arm64: Properly check for MMIO regions
Thread-Topic: [PATCH] KVM: arm/arm64: Properly check for MMIO regions
Thread-Index: AQHVOIsEiyNRFKEvKk+KpgFJVWRN7KbHJC2A
Date: Fri, 12 Jul 2019 15:58:23 +0000
Message-ID: <1562947103.19043.1.camel@amazon.de>
References: <1562919728-642-1-git-send-email-karahmed@amazon.de>
In-Reply-To: <1562919728-642-1-git-send-email-karahmed@amazon.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.165.54]
Content-ID: <5D2353EA90095E4081DA8A6D66A19A79@amazon.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_085830_130950_A1ADBB0A 
X-CRM114-Status: GOOD (  20.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "julien.thierry@arm.com" <julien.thierry@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-07-12 at 10:22 +0200, KarimAllah Ahmed wrote:
> Valid RAM can live outside kernel control (e.g. using "mem=" command-line
> parameter). This memory can still be used as valid guest memory for KVM. So
> ensure that we validate that this memory is definitely not "RAM" before
> assuming that it is an MMIO region.

This patch actually suffers from the same problem pointed out here:
https://lkml.org/lkml/2019/7/12/760

.. so I will need to rework them together.

> 
> One way to use memory outside kernel control is:
> 
> 1- Pass 'mem=' in the kernel command-line to limit the amount of memory managed
>    by the kernel.
> 2- Map this physical memory you want to give to the guest with:
>    mmap("/dev/mem", physical_address_offset, ..)
> 3- Use the user-space virtual address as the "userspace_addr" field in
>    KVM_SET_USER_MEMORY_REGION ioctl.
> 
> One of the limitations of the current /dev/mem for ARM is that it would map
> this memory as uncached without this patch:
> https://lkml.org/lkml/2019/7/11/684
> 
> This work is similar to the work done on x86 here:
> https://lkml.org/lkml/2019/1/31/933
> 
> Cc: Marc Zyngier <marc.zyngier@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Julien Thierry <julien.thierry@arm.com>
> Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: kvmarm@lists.cs.columbia.edu
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: KarimAllah Ahmed <karahmed@amazon.de>
> ---
>  virt/kvm/arm/mmu.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> index 06180c9..2105134 100644
> --- a/virt/kvm/arm/mmu.c
> +++ b/virt/kvm/arm/mmu.c
> @@ -8,6 +8,7 @@
>  #include <linux/kvm_host.h>
>  #include <linux/io.h>
>  #include <linux/hugetlb.h>
> +#include <linux/memblock.h>
>  #include <linux/sched/signal.h>
>  #include <trace/events/kvm.h>
>  #include <asm/pgalloc.h>
> @@ -89,7 +90,7 @@ static void kvm_flush_dcache_pud(struct kvm *kvm,
>  
>  static bool kvm_is_device_pfn(unsigned long pfn)
>  {
> -	return !pfn_valid(pfn);
> +	return !memblock_is_memory(__pfn_to_phys(pfn));
>  }
>  
>  /**
> @@ -949,6 +950,7 @@ static void stage2_unmap_memslot(struct kvm *kvm,
>  	do {
>  		struct vm_area_struct *vma = find_vma(current->mm, hva);
>  		hva_t vm_start, vm_end;
> +		gpa_t gpa;
>  
>  		if (!vma || vma->vm_start >= reg_end)
>  			break;
> @@ -959,11 +961,14 @@ static void stage2_unmap_memslot(struct kvm *kvm,
>  		vm_start = max(hva, vma->vm_start);
>  		vm_end = min(reg_end, vma->vm_end);
>  
> -		if (!(vma->vm_flags & VM_PFNMAP)) {
> -			gpa_t gpa = addr + (vm_start - memslot->userspace_addr);
> -			unmap_stage2_range(kvm, gpa, vm_end - vm_start);
> -		}
>  		hva = vm_end;
> +
> +		if ((vma->vm_flags & VM_PFNMAP) &&
> +		    !memblock_is_memory(__pfn_to_phys(vma->vm_pgoff)))
> +			continue;
> +
> +		gpa = addr + (vm_start - memslot->userspace_addr);
> +		unmap_stage2_range(kvm, gpa, vm_end - vm_start);
>  	} while (hva < reg_end);
>  }
>  
> @@ -2329,7 +2334,8 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
>  		vm_start = max(hva, vma->vm_start);
>  		vm_end = min(reg_end, vma->vm_end);
>  
> -		if (vma->vm_flags & VM_PFNMAP) {
> +		if ((vma->vm_flags & VM_PFNMAP) &&
> +		    !memblock_is_memory(__pfn_to_phys(vma->vm_pgoff))) {
>  			gpa_t gpa = mem->guest_phys_addr +
>  				    (vm_start - mem->userspace_addr);
>  			phys_addr_t pa;



Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Ralf Herbrich
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
