Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D4C11D3F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 18:30:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCx6WHoOuzIdiPMhIuUp4HM1GgGVEbm7p7utbxZd4I8=; b=iE/VrM+Sf7NzU7
	DT5JQgiEDUjbmI49pwsVm/7mbO0YloY5wonQCe5iGJUTbRPp2CKu+VXDfSqByPu6YRuQXb5ZdZQpU
	flwqcp06qfubNr3/skxMQtkROlJsaIOCUCUj6QE3F6T3ZE49AoW0J1s3oI3ucYvXmzCrKEQ9a36X2
	RutNEioexfGiJ8vhCdcG6lhSPv7DwR0kO8MIZ4TqXUTDEbYet5eOfkR3jKKXS6A86HYWMY/K6W5h/
	i7Ysrja8pAy8e0KnRzYvJaLOMxvr3UspZacopHMPBhoOFBXu0DjBEOuv285sjs8IQJR2EHroCcv97
	Nm5xTQ2sdkWDpisHiKcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifSI9-0006Ga-VM; Thu, 12 Dec 2019 17:30:22 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifSGf-0005AK-L1
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 17:28:52 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifSGZ-00069s-LQ; Thu, 12 Dec 2019 18:28:43 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 6/8] KVM: arm/arm64: Remove excessive permission check in
 kvm_arch_prepare_memory_region
Date: Thu, 12 Dec 2019 17:28:22 +0000
Message-Id: <20191212172824.11523-7-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191212172824.11523-1-maz@kernel.org>
References: <20191212172824.11523-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, rkrcmar@redhat.com,
 alexandru.elisei@arm.com, ard.biesheuvel@linaro.org, christoffer.dall@arm.com,
 eric.auger@redhat.com, james.morse@arm.com, justin.he@arm.com,
 mark.rutland@arm.com, linmiaohe@huawei.com, steven.price@arm.com,
 will@kernel.org, kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_092849_826477_057CCEAA 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Miaohe Lin <linmiaohe@huawei.com>,
 Jia He <justin.he@arm.com>, kvm@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Steven Price <steven.price@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jia He <justin.he@arm.com>

In kvm_arch_prepare_memory_region, arm kvm regards the memory region as
writable if the flag has no KVM_MEM_READONLY, and the vm is readonly if
!VM_WRITE.

But there is common usage for setting kvm memory region as follows:
e.g. qemu side (see the PROT_NONE flag)
1. mmap(NULL, size, PROT_NONE, MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
   memory_region_init_ram_ptr()
2. re mmap the above area with read/write authority.

Such example is used in virtio-fs qemu codes which hasn't been upstreamed
[1]. But seems we can't forbid this example.

Without this patch, it will cause an EPERM during kvm_set_memory_region()
and cause qemu boot crash.

As told by Ard, "the underlying assumption is incorrect, i.e., that the
value of vm_flags at this point in time defines how the VMA is used
during its lifetime. There may be other cases where a VMA is created
with VM_READ vm_flags that are changed to VM_READ|VM_WRITE later, and
we are currently rejecting this use case as well."

[1] https://gitlab.com/virtio-fs/qemu/blob/5a356e/hw/virtio/vhost-user-fs.c#L488

Suggested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Jia He <justin.he@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Christoffer Dall <christoffer.dall@arm.com>
Link: https://lore.kernel.org/r/20191206020802.196108-1-justin.he@arm.com
---
 virt/kvm/arm/mmu.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 38b4c910b6c3..a48994af70b8 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -2301,15 +2301,6 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 		if (!vma || vma->vm_start >= reg_end)
 			break;
 
-		/*
-		 * Mapping a read-only VMA is only allowed if the
-		 * memory region is configured as read-only.
-		 */
-		if (writable && !(vma->vm_flags & VM_WRITE)) {
-			ret = -EPERM;
-			break;
-		}
-
 		/*
 		 * Take the intersection of this VMA with the memory region
 		 */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
