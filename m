Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DF511B95E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 17:57:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZQcvF1VZqP/KZHZ6dSkAeuIR2YRFFZgmVj1FYiOeWo=; b=bFalNLkh0ocUZx
	6xrKBsaQl+he09DYqrRo/DBNaiSSSigQ8VQC/3hjq3cpshNWdAZMh1MIGYBcWemRfXik/+6PNmBRr
	VvjiAXEKwGmMOmc59BlhdoRTrd3zR4KmX26Yxhnx931eSWNJ6I5raiVkpccezCLkHxmt+wyJHp6j7
	V+tCd+GXQCHu3y4gTdj+4CD2vaCLLABG2PIMdn01CSt+k4SnJDFdQGjp2WvKxc1Z4pW0VXd82w06M
	dbk9pYn5D9+SlEkVJFViNbI652v19x5xLq8M4ghr1ClgzWSO6hzZCjk+cvb1NeOgHgdYJ/Z/OfGjW
	3MuyrVAir1oeHRGQY2eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5J6-00046W-3f; Wed, 11 Dec 2019 16:57:48 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5IS-0003di-8d
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 16:57:11 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1if5IP-00076q-7X; Wed, 11 Dec 2019 17:57:05 +0100
From: Marc Zyngier <maz@kernel.org>
To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] KVM: arm/arm64: Re-check VMA on detecting a poisoned page
Date: Wed, 11 Dec 2019 16:56:49 +0000
Message-Id: <20191211165651.7889-3-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211165651.7889-1-maz@kernel.org>
References: <20191211165651.7889-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 Christoffer.Dall@arm.com, alexandru.elisei@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_085708_457639_6E6DCE16 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Alexandru Elisei <alexandru.elisei@arm.com>,
 James Morse <james.morse@arm.com>, Christoffer Dall <Christoffer.Dall@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When we check for a poisoned page, we use the VMA to tell userspace
about the looming disaster. But we pass a pointer to this VMA
after having released the mmap_sem, which isn't a good idea.

Instead, re-check that we have still have a VMA, and that this
VMA still points to a poisoned page. If the VMA isn't there,
userspace is playing with our nerves, so lety's give it a -EFAULT
(it deserves it). If the PFN isn't poisoned anymore, let's restart
from the top and handle the fault again.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/mmu.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 0b32a904a1bb..f73393f5ddb7 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1741,9 +1741,30 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 
 	pfn = gfn_to_pfn_prot(kvm, gfn, write_fault, &writable);
 	if (pfn == KVM_PFN_ERR_HWPOISON) {
-		kvm_send_hwpoison_signal(hva, vma);
-		return 0;
+		/*
+		 * Search for the VMA again, as it may have been
+		 * removed in the interval...
+		 */
+		down_read(&current->mm->mmap_sem);
+		vma = find_vma_intersection(current->mm, hva, hva + 1);
+		if (vma) {
+			/*
+			 * Recheck for a poisoned page. If something changed
+			 * behind our back, don't do a thing and take the
+			 * fault again.
+			 */
+			pfn = gfn_to_pfn_prot(kvm, gfn, write_fault, &writable);
+			if (pfn == KVM_PFN_ERR_HWPOISON)
+				kvm_send_hwpoison_signal(hva, vma);
+
+			ret = 0;
+		} else {
+			ret = -EFAULT;
+		}
+		up_read(&current->mm->mmap_sem);
+		return ret;
 	}
+
 	if (is_error_noslot_pfn(pfn))
 		return -EFAULT;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
