Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA07666911
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 10:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zA3G3BM6sCPkxclfr0W25Gpjpzn/IUCXdvjBezndnC4=; b=LBi
	bWscK+qxNLDEaIFMzHuVB6k05r0Q9TCUu32x+uTvtYS6HagSsA9dDYaRZKyF2XDuaSKaKVYUO1ZME
	50XGbmv+KizcSL1K+zfJvKY96rZxfHXU7jpWW8rQ9CJtiKjYggoZUCgnEguDb4nPd+CEYm8i40k2q
	4RYc0e9fdZi/VWLB327TGzfDvDN7hBSx55E7BtdAEwqAHcM/9EchSJAlgfLjyH40z3V3gB4pV7Owa
	h2NEWGFOmu3J5GBfSqe2yekqt/rCqf+bIuA2slPr/34Z5PdVlT4qydhhMFEOQM2I0L+6IvjIOuYIi
	S5JDd+yyx1urN0/0LTduoFQqsWoqhZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlqpl-0008PC-6c; Fri, 12 Jul 2019 08:23:13 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlqpZ-0008OU-0G
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 08:23:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1562919780; x=1594455780;
 h=from:to:cc:subject:date:message-id;
 bh=2GHXvodd5mYiOI7g2dcIp8dLyBwMPtlaooER9mc1rHw=;
 b=MgrpSQioI9pnDPyv6io4SECNunYVgwSHkwxipE5C15aT0ppHC4t2/o3Y
 bU6opfOJe7elcvIf0oQMK9EN/KneZBnYQbNpzCcvk5OMtbMYAqdOl1bbL
 g4aAin14NhGjseCQdu3EAOnXFwQb6KJHoMowo0tPYnDEmoCxtgbeaBqwh Y=;
X-IronPort-AV: E=Sophos;i="5.62,481,1554768000"; d="scan'208";a="404647834"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1a-af6a10df.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 12 Jul 2019 08:22:57 +0000
Received: from u54e1ad5160425a4b64ea.ant.amazon.com
 (iad7-ws-svc-lb50-vlan3.amazon.com [10.0.93.214])
 by email-inbound-relay-1a-af6a10df.us-east-1.amazon.com (Postfix) with ESMTPS
 id 8BFEEA252A; Fri, 12 Jul 2019 08:22:53 +0000 (UTC)
Received: from u54e1ad5160425a4b64ea.ant.amazon.com (localhost [127.0.0.1])
 by u54e1ad5160425a4b64ea.ant.amazon.com (8.15.2/8.15.2/Debian-3) with ESMTP id
 x6C8MoPk016257; Fri, 12 Jul 2019 10:22:50 +0200
Received: (from karahmed@localhost)
 by u54e1ad5160425a4b64ea.ant.amazon.com (8.15.2/8.15.2/Submit) id
 x6C8MnRH016242; Fri, 12 Jul 2019 10:22:49 +0200
From: KarimAllah Ahmed <karahmed@amazon.de>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] KVM: arm/arm64: Properly check for MMIO regions
Date: Fri, 12 Jul 2019 10:22:08 +0200
Message-Id: <1562919728-642-1-git-send-email-karahmed@amazon.de>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_012301_172493_E01006C8 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -9.7 (---------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-9.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 KarimAllah Ahmed <karahmed@amazon.de>, Julien Thierry <julien.thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Valid RAM can live outside kernel control (e.g. using "mem=" command-line
parameter). This memory can still be used as valid guest memory for KVM. So
ensure that we validate that this memory is definitely not "RAM" before
assuming that it is an MMIO region.

One way to use memory outside kernel control is:

1- Pass 'mem=' in the kernel command-line to limit the amount of memory managed
   by the kernel.
2- Map this physical memory you want to give to the guest with:
   mmap("/dev/mem", physical_address_offset, ..)
3- Use the user-space virtual address as the "userspace_addr" field in
   KVM_SET_USER_MEMORY_REGION ioctl.

One of the limitations of the current /dev/mem for ARM is that it would map
this memory as uncached without this patch:
https://lkml.org/lkml/2019/7/11/684

This work is similar to the work done on x86 here:
https://lkml.org/lkml/2019/1/31/933

Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry@arm.com>
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: kvmarm@lists.cs.columbia.edu
Cc: linux-kernel@vger.kernel.org
Signed-off-by: KarimAllah Ahmed <karahmed@amazon.de>
---
 virt/kvm/arm/mmu.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 06180c9..2105134 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -8,6 +8,7 @@
 #include <linux/kvm_host.h>
 #include <linux/io.h>
 #include <linux/hugetlb.h>
+#include <linux/memblock.h>
 #include <linux/sched/signal.h>
 #include <trace/events/kvm.h>
 #include <asm/pgalloc.h>
@@ -89,7 +90,7 @@ static void kvm_flush_dcache_pud(struct kvm *kvm,
 
 static bool kvm_is_device_pfn(unsigned long pfn)
 {
-	return !pfn_valid(pfn);
+	return !memblock_is_memory(__pfn_to_phys(pfn));
 }
 
 /**
@@ -949,6 +950,7 @@ static void stage2_unmap_memslot(struct kvm *kvm,
 	do {
 		struct vm_area_struct *vma = find_vma(current->mm, hva);
 		hva_t vm_start, vm_end;
+		gpa_t gpa;
 
 		if (!vma || vma->vm_start >= reg_end)
 			break;
@@ -959,11 +961,14 @@ static void stage2_unmap_memslot(struct kvm *kvm,
 		vm_start = max(hva, vma->vm_start);
 		vm_end = min(reg_end, vma->vm_end);
 
-		if (!(vma->vm_flags & VM_PFNMAP)) {
-			gpa_t gpa = addr + (vm_start - memslot->userspace_addr);
-			unmap_stage2_range(kvm, gpa, vm_end - vm_start);
-		}
 		hva = vm_end;
+
+		if ((vma->vm_flags & VM_PFNMAP) &&
+		    !memblock_is_memory(__pfn_to_phys(vma->vm_pgoff)))
+			continue;
+
+		gpa = addr + (vm_start - memslot->userspace_addr);
+		unmap_stage2_range(kvm, gpa, vm_end - vm_start);
 	} while (hva < reg_end);
 }
 
@@ -2329,7 +2334,8 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 		vm_start = max(hva, vma->vm_start);
 		vm_end = min(reg_end, vma->vm_end);
 
-		if (vma->vm_flags & VM_PFNMAP) {
+		if ((vma->vm_flags & VM_PFNMAP) &&
+		    !memblock_is_memory(__pfn_to_phys(vma->vm_pgoff))) {
 			gpa_t gpa = mem->guest_phys_addr +
 				    (vm_start - mem->userspace_addr);
 			phys_addr_t pa;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
