Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C665DFB61
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 04:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Xr12MTSji3pYHE90Ig4Kh27jxnjTy5sqWT8l10Gt4Q=; b=nB7JmaVCAUXyUi
	S89aQop/BCloJRoI5r46i0KuOlG6eLcDGkqVRQg8RansZkLpQfbI0pECLgxv2H09UWi/RchZv3Wey
	S6/zoYEumMwxRIy7rkUyjykS4NHGHHVqH3abREiq0yf8rzpUOhPCG1bX/wiwLerzcJY3+H82iNGc9
	A/JcN4WRsQPiVV43EmWGeIH4VVMhomHQYiRuG28wpExmNMK5nine1jmUaEZ5mrO6FObweVbrnhyb4
	p43dZfeNcIh2GNb6+lDWlzQlbJGV/NTZfz7T0VAAuxGNf6jn0I5NsZYQylpg9ft+xa9kQtt3VZ3Hh
	4cgjhA5t2JD3Wv4NOA1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMjao-0005FE-5R; Tue, 22 Oct 2019 02:08:14 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMjSh-0003sH-6R
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 01:59:53 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 18:59:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="196293851"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by fmsmga008.fm.intel.com with ESMTP; 21 Oct 2019 18:59:49 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 25/45] KVM: s390: Move guts of kvm_arch_vcpu_init() into
 kvm_arch_vcpu_create()
Date: Mon, 21 Oct 2019 18:59:05 -0700
Message-Id: <20191022015925.31916-26-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191022015925.31916-1-sean.j.christopherson@intel.com>
References: <20191022015925.31916-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_185951_328166_C00E3C89 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: kvm-ppc@vger.kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Joerg Roedel <joro@8bytes.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move all of kvm_arch_vcpu_init(), which is invoked at the very end of
kvm_vcpu_init(), into kvm_arch_vcpu_create() in preparation of moving
the call to kvm_vcpu_init().  Moving kvm_vcpu_init() is itself a
preparatory step for moving allocation and initialization to common KVM
code.

No functional change inteded.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/s390/kvm/kvm-s390.c | 62 ++++++++++++++++++++++------------------
 1 file changed, 34 insertions(+), 28 deletions(-)

diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index ddc90fa6abfd..43be136682bb 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -2708,34 +2708,6 @@ static int sca_can_add_vcpu(struct kvm *kvm, unsigned int id)
 
 int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 {
-	vcpu->arch.pfault_token = KVM_S390_PFAULT_TOKEN_INVALID;
-	kvm_clear_async_pf_completion_queue(vcpu);
-	vcpu->run->kvm_valid_regs = KVM_SYNC_PREFIX |
-				    KVM_SYNC_GPRS |
-				    KVM_SYNC_ACRS |
-				    KVM_SYNC_CRS |
-				    KVM_SYNC_ARCH0 |
-				    KVM_SYNC_PFAULT;
-	kvm_s390_set_prefix(vcpu, 0);
-	if (test_kvm_facility(vcpu->kvm, 64))
-		vcpu->run->kvm_valid_regs |= KVM_SYNC_RICCB;
-	if (test_kvm_facility(vcpu->kvm, 82))
-		vcpu->run->kvm_valid_regs |= KVM_SYNC_BPBC;
-	if (test_kvm_facility(vcpu->kvm, 133))
-		vcpu->run->kvm_valid_regs |= KVM_SYNC_GSCB;
-	if (test_kvm_facility(vcpu->kvm, 156))
-		vcpu->run->kvm_valid_regs |= KVM_SYNC_ETOKEN;
-	/* fprs can be synchronized via vrs, even if the guest has no vx. With
-	 * MACHINE_HAS_VX, (load|store)_fpu_regs() will work with vrs format.
-	 */
-	if (MACHINE_HAS_VX)
-		vcpu->run->kvm_valid_regs |= KVM_SYNC_VRS;
-	else
-		vcpu->run->kvm_valid_regs |= KVM_SYNC_FPRS;
-
-	if (kvm_is_ucontrol(vcpu->kvm))
-		return __kvm_ucontrol_vcpu_init(vcpu);
-
 	return 0;
 }
 
@@ -3080,11 +3052,45 @@ struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
 	rc = kvm_vcpu_init(vcpu, kvm, id);
 	if (rc)
 		goto out_free_sie_block;
+
+	vcpu->arch.pfault_token = KVM_S390_PFAULT_TOKEN_INVALID;
+	kvm_clear_async_pf_completion_queue(vcpu);
+	vcpu->run->kvm_valid_regs = KVM_SYNC_PREFIX |
+				    KVM_SYNC_GPRS |
+				    KVM_SYNC_ACRS |
+				    KVM_SYNC_CRS |
+				    KVM_SYNC_ARCH0 |
+				    KVM_SYNC_PFAULT;
+	kvm_s390_set_prefix(vcpu, 0);
+	if (test_kvm_facility(vcpu->kvm, 64))
+		vcpu->run->kvm_valid_regs |= KVM_SYNC_RICCB;
+	if (test_kvm_facility(vcpu->kvm, 82))
+		vcpu->run->kvm_valid_regs |= KVM_SYNC_BPBC;
+	if (test_kvm_facility(vcpu->kvm, 133))
+		vcpu->run->kvm_valid_regs |= KVM_SYNC_GSCB;
+	if (test_kvm_facility(vcpu->kvm, 156))
+		vcpu->run->kvm_valid_regs |= KVM_SYNC_ETOKEN;
+	/* fprs can be synchronized via vrs, even if the guest has no vx. With
+	 * MACHINE_HAS_VX, (load|store)_fpu_regs() will work with vrs format.
+	 */
+	if (MACHINE_HAS_VX)
+		vcpu->run->kvm_valid_regs |= KVM_SYNC_VRS;
+	else
+		vcpu->run->kvm_valid_regs |= KVM_SYNC_FPRS;
+
+	if (kvm_is_ucontrol(vcpu->kvm)) {
+		rc = __kvm_ucontrol_vcpu_init(vcpu);
+		if (rc)
+			goto out_uninit_vcpu;
+	}
+
 	VM_EVENT(kvm, 3, "create cpu %d at 0x%pK, sie block at 0x%pK", id, vcpu,
 		 vcpu->arch.sie_block);
 	trace_kvm_s390_create_vcpu(id, vcpu, vcpu->arch.sie_block);
 
 	return vcpu;
+out_uninit_vcpu:
+	kvm_vcpu_uninit(vcpu);
 out_free_sie_block:
 	free_page((unsigned long)(vcpu->arch.sie_block));
 out_free_cpu:
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
