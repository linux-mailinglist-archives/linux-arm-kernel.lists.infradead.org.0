Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD69125647
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:07:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Q0IUJEnh/6bXso35ibEtiNULYydIkNt3Izo6n4BFUo=; b=mFp+AG5n5xK6lg
	iPkW847GPymylUfX4PH+iXInJC5HHMXJo9nhoWHXKGzXtTAlX2VH3gFU5I+vmn9AClQSdABNjiJ5t
	ja0FIVIK5hSNUd78jcvAKguVHZkZkQq/alST+mYqnbi9gAzR1E1mFrj9anLRvFDxcqdo46K4AdwxH
	8U6Masl0hLj+mAyOYZG3yZpBxtPJnR0C5fU+F+1uu0VWt2LVwYC24NU0AI35gMhViAzKu4jc7Z6/Q
	4ev7WE85RYYSYilNqnDTJ9ZjBgOl6ioVP0Oo3mrcDJG5s+tYGSE8abl/Lu/b8ddiHckYxri8pYejG
	KjtSORfeUMg/yOZFfjMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhTm-00017L-Pg; Wed, 18 Dec 2019 22:07:38 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhIa-0004ya-OL
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:56:08 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:55:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222108161"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2019 13:55:48 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 36/45] KVM: PPC: BookE: Setup vcpu during
 kvmppc_core_vcpu_create()
Date: Wed, 18 Dec 2019 13:55:21 -0800
Message-Id: <20191218215530.2280-37-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218215530.2280-1-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_135604_860601_2D5337AE 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.55.52.93 listed in wl.mailspike.net]
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
Cc: kvm-ppc@vger.kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Joerg Roedel <joro@8bytes.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fold setup() into create() now that the two are called back-to-back by
common KVM code.  This paves the way for removing kvm_arch_vcpu_setup().
Note, BookE directly implements kvm_arch_vcpu_setup() and PPC's common
kvm_arch_vcpu_create() is responsible for its own cleanup, thus the only
cleanup required when directly invoking kvmppc_core_vcpu_setup() is to
call .vcpu_free(), which is the BookE specific portion of PPC's
kvm_arch_vcpu_destroy() by way of kvmppc_core_vcpu_free().

No functional change intended.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/powerpc/kvm/booke.c | 60 ++++++++++++++++++++++------------------
 1 file changed, 33 insertions(+), 27 deletions(-)

diff --git a/arch/powerpc/kvm/booke.c b/arch/powerpc/kvm/booke.c
index dd7440e50c7a..b1b5073a22b1 100644
--- a/arch/powerpc/kvm/booke.c
+++ b/arch/powerpc/kvm/booke.c
@@ -1377,34 +1377,9 @@ static void kvmppc_set_tsr(struct kvm_vcpu *vcpu, u32 new_tsr)
 	update_timer_ints(vcpu);
 }
 
-/* Initial guest state: 16MB mapping 0 -> 0, PC = 0, MSR = 0, R1 = 16MB */
 int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
 {
-	int i;
-	int r;
-
-	vcpu->arch.regs.nip = 0;
-	vcpu->arch.shared->pir = vcpu->vcpu_id;
-	kvmppc_set_gpr(vcpu, 1, (16<<20) - 8); /* -8 for the callee-save LR slot */
-	kvmppc_set_msr(vcpu, 0);
-
-#ifndef CONFIG_KVM_BOOKE_HV
-	vcpu->arch.shadow_msr = MSR_USER | MSR_IS | MSR_DS;
-	vcpu->arch.shadow_pid = 1;
-	vcpu->arch.shared->msr = 0;
-#endif
-
-	/* Eye-catching numbers so we know if the guest takes an interrupt
-	 * before it's programmed its own IVPR/IVORs. */
-	vcpu->arch.ivpr = 0x55550000;
-	for (i = 0; i < BOOKE_IRQPRIO_MAX; i++)
-		vcpu->arch.ivor[i] = 0x7700 | i * 4;
-
-	kvmppc_init_timing_stats(vcpu);
-
-	r = kvmppc_core_vcpu_setup(vcpu);
-	kvmppc_sanity_check(vcpu);
-	return r;
+	return 0;
 }
 
 int kvmppc_subarch_vcpu_init(struct kvm_vcpu *vcpu)
@@ -2116,7 +2091,38 @@ int kvmppc_core_init_vm(struct kvm *kvm)
 
 int kvmppc_core_vcpu_create(struct kvm_vcpu *vcpu)
 {
-	return kvm->arch.kvm_ops->vcpu_create(vcpu);
+	int i;
+	int r;
+
+	r = kvm->arch.kvm_ops->vcpu_create(vcpu);
+	if (r)
+		return r;
+
+	/* Initial guest state: 16MB mapping 0 -> 0, PC = 0, MSR = 0, R1 = 16MB */
+	vcpu->arch.regs.nip = 0;
+	vcpu->arch.shared->pir = vcpu->vcpu_id;
+	kvmppc_set_gpr(vcpu, 1, (16<<20) - 8); /* -8 for the callee-save LR slot */
+	kvmppc_set_msr(vcpu, 0);
+
+#ifndef CONFIG_KVM_BOOKE_HV
+	vcpu->arch.shadow_msr = MSR_USER | MSR_IS | MSR_DS;
+	vcpu->arch.shadow_pid = 1;
+	vcpu->arch.shared->msr = 0;
+#endif
+
+	/* Eye-catching numbers so we know if the guest takes an interrupt
+	 * before it's programmed its own IVPR/IVORs. */
+	vcpu->arch.ivpr = 0x55550000;
+	for (i = 0; i < BOOKE_IRQPRIO_MAX; i++)
+		vcpu->arch.ivor[i] = 0x7700 | i * 4;
+
+	kvmppc_init_timing_stats(vcpu);
+
+	r = kvmppc_core_vcpu_setup(vcpu);
+	if (r)
+		vcpu->kvm->arch.kvm_ops->vcpu_free(vcpu);
+	kvmppc_sanity_check(vcpu);
+	return r;
 }
 
 void kvmppc_core_vcpu_free(struct kvm_vcpu *vcpu)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
