Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4F1A4C3B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 23:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lsjvf6GCs80+9LK5Hjy8jmUZyCNpMJe1/8i3UuF3Mo=; b=pWEk2v/BacEwtO
	jt4tVVJmVhG2k/eC1ESBLUyojS7c/w6ZFJLMXFrUYU/pvGpRthiR3TJo/7gRnvOwtM1ZwC0SUsa0W
	/0b4HK4EWy0b/QGloetb5uLw8uhQJwaVd/ib3cm8IXjVFQEPJuHWhqxtGXCtj2h0TY9K/+u+vhLSP
	QTGc7mQ2gyL0MVJ4laeDo18i/KprB2nteiJvp8ZWBaqeWacyKiRRBGqZQsjN4jsm5SUu3LYZCHrnW
	ZdLBDJbPEJig6W3ZuKDx7phzPDJ27XISr0KDMfDaE+8N2S2v+/Xu1Vcm70yNEa+feq2ZhL2fUY8VY
	mwJ8IG/xAbs9zHrKhRFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4XA6-0006N8-Oh; Sun, 01 Sep 2019 21:13:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4X9h-0006D0-IT
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 21:13:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 682191576;
 Sun,  1 Sep 2019 14:12:59 -0700 (PDT)
Received: from why.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3CAF73F718;
 Sun,  1 Sep 2019 14:12:58 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
Subject: [PATCH 2/3] arm64: KVM: Replace hyp_alternate_select with has_vhe()
Date: Sun,  1 Sep 2019 22:12:36 +0100
Message-Id: <20190901211237.11673-3-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190901211237.11673-1-maz@kernel.org>
References: <20190901211237.11673-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_141301_735906_0F00C37E 
X-CRM114-Status: GOOD (  10.23  )
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
Cc: James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Given that the TLB invalidation path is pretty rarely used, there
was never any advantage to using hyp_alternate_select() here.
has_vhe(), being a glorified static key, is the right tool for
the job.

Off you go.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/hyp/tlb.c | 36 ++++++++++++++++++++++--------------
 1 file changed, 22 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index d49a14497715..f61db7f07619 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -67,10 +67,14 @@ static void __hyp_text __tlb_switch_to_guest_nvhe(struct kvm *kvm,
 	isb();
 }
 
-static hyp_alternate_select(__tlb_switch_to_guest,
-			    __tlb_switch_to_guest_nvhe,
-			    __tlb_switch_to_guest_vhe,
-			    ARM64_HAS_VIRT_HOST_EXTN);
+static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
+					     struct tlb_inv_context *cxt)
+{
+	if (has_vhe())
+		__tlb_switch_to_guest_vhe(kvm, cxt);
+	else
+		__tlb_switch_to_guest_nvhe(kvm, cxt);
+}
 
 static void __hyp_text __tlb_switch_to_host_vhe(struct kvm *kvm,
 						struct tlb_inv_context *cxt)
@@ -98,10 +102,14 @@ static void __hyp_text __tlb_switch_to_host_nvhe(struct kvm *kvm,
 	write_sysreg(0, vttbr_el2);
 }
 
-static hyp_alternate_select(__tlb_switch_to_host,
-			    __tlb_switch_to_host_nvhe,
-			    __tlb_switch_to_host_vhe,
-			    ARM64_HAS_VIRT_HOST_EXTN);
+static void __hyp_text __tlb_switch_to_host(struct kvm *kvm,
+					    struct tlb_inv_context *cxt)
+{
+	if (has_vhe())
+		__tlb_switch_to_host_vhe(kvm, cxt);
+	else
+		__tlb_switch_to_host_nvhe(kvm, cxt);
+}
 
 void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
 {
@@ -111,7 +119,7 @@ void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
 
 	/* Switch to requested VMID */
 	kvm = kern_hyp_va(kvm);
-	__tlb_switch_to_guest()(kvm, &cxt);
+	__tlb_switch_to_guest(kvm, &cxt);
 
 	/*
 	 * We could do so much better if we had the VA as well.
@@ -154,7 +162,7 @@ void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
 	if (!has_vhe() && icache_is_vpipt())
 		__flush_icache_all();
 
-	__tlb_switch_to_host()(kvm, &cxt);
+	__tlb_switch_to_host(kvm, &cxt);
 }
 
 void __hyp_text __kvm_tlb_flush_vmid(struct kvm *kvm)
@@ -165,13 +173,13 @@ void __hyp_text __kvm_tlb_flush_vmid(struct kvm *kvm)
 
 	/* Switch to requested VMID */
 	kvm = kern_hyp_va(kvm);
-	__tlb_switch_to_guest()(kvm, &cxt);
+	__tlb_switch_to_guest(kvm, &cxt);
 
 	__tlbi(vmalls12e1is);
 	dsb(ish);
 	isb();
 
-	__tlb_switch_to_host()(kvm, &cxt);
+	__tlb_switch_to_host(kvm, &cxt);
 }
 
 void __hyp_text __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
@@ -180,13 +188,13 @@ void __hyp_text __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
 	struct tlb_inv_context cxt;
 
 	/* Switch to requested VMID */
-	__tlb_switch_to_guest()(kvm, &cxt);
+	__tlb_switch_to_guest(kvm, &cxt);
 
 	__tlbi(vmalle1);
 	dsb(nsh);
 	isb();
 
-	__tlb_switch_to_host()(kvm, &cxt);
+	__tlb_switch_to_host(kvm, &cxt);
 }
 
 void __hyp_text __kvm_flush_vm_context(void)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
