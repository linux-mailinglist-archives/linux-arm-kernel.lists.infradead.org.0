Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FD6C300E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 11:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4mBDjOb95f0nJcmYbJWFFvNBlqyFYui9DFeZJqp8bXA=; b=I/gGcsCloDUmxa
	vwAE39GlNzmHLiS2WQakXKzVW12bwjd5rC4HBlwt33P0GqNQepDQCsh4XgBDuqu2GMY9J0Fx8NwsY
	BMe7D2oMjkq0BFKNsuWWQVu2jynCSDccSdkLJSV8VrOsLhzLDVucSN0UK/HmVtEdG9E7f7cimwpET
	3fq7bPuE9vBMaCnPJZ1W6mbpHIPPMHggDNfpLwXvvgrIpHDlG7Cppkwu2U8Qiaxh+HdT4I4dN2jC9
	uu/jnqJ3Rj7hEvewAAU/rD7wnH5qO2SqZI6SDDWA2UpB8g6xVtSHossCvyCYE4S0cSSZHguyfj8pw
	ItdDqseFe7beVQrPk/eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFEM5-0004vZ-S5; Tue, 01 Oct 2019 09:22:01 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFELE-00049z-Ti
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 09:21:11 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iFEL6-00019A-Fq; Tue, 01 Oct 2019 11:21:00 +0200
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 2/4] arm64: KVM: Replace hyp_alternate_select with has_vhe()
Date: Tue,  1 Oct 2019 10:20:36 +0100
Message-Id: <20191001092038.17097-3-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191001092038.17097-1-maz@kernel.org>
References: <20191001092038.17097-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, rkrcmar@redhat.com, drjones@redhat.com,
 christoffer.dall@arm.com, yamada.masahiro@socionext.com, yuzenghui@huawei.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_022109_105828_6C0F132A 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
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
Cc: Andrew Jones <drjones@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Zenghui Yu <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
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
Reviewed-by: Christoffer Dall <christoffer.dall@arm.com>
Reviewed-by: Andrew Jones <drjones@redhat.com>
---
 arch/arm64/kvm/hyp/tlb.c | 36 ++++++++++++++++++++++--------------
 1 file changed, 22 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index c466060b76d6..eb0efc5557f3 100644
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
