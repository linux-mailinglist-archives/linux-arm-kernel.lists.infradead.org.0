Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03077DFB54
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 04:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kglyZkzywcEkBngrC5bssdk6mbU7+Qv2usGwzEWmrX4=; b=uI3sIfN85cTLjA
	msQJSIwjL5uXrPPJjS7ai3j49B3YRJ1HNwq8guCTtThBXBclkbNCxSo+h3ALgi8wr7MigPowyQmu5
	wYLGEAOCJJARjRJrJnnE/YdEcPo8wALiXEYBWwEtY5BscXaFwxrN47/IE1IrrapNVo83cb4ehzW+D
	zcYo83b6OjPh92Jy7CFU79kYlIlX2FJk95hlcJWrdamdv3V5uGo7bVPZlQqncQZr5JzYyeb8pSNjG
	Zw9bBDmjE1FSX8BUT8Pmk+nG3kN7gmjLzUWMCgXfer4z1u85Nktmqee3uWBS6XjUJDv2kBCc+5sXp
	rUxpG50MCDyWK4N1T3ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMjXq-0000zy-NI; Tue, 22 Oct 2019 02:05:10 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMjSa-0003sV-JG
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 01:59:46 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 18:59:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="196293810"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by fmsmga008.fm.intel.com with ESMTP; 21 Oct 2019 18:59:42 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 15/45] KVM: PPC: Move kvm_vcpu_init() invocation to common code
Date: Mon, 21 Oct 2019 18:58:55 -0700
Message-Id: <20191022015925.31916-16-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191022015925.31916-1-sean.j.christopherson@intel.com>
References: <20191022015925.31916-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_185944_708805_A396E6CD 
X-CRM114-Status: GOOD (  16.23  )
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

Move the kvm_cpu_{un}init() calls to common PPC code as an intermediate
step towards removing kvm_cpu_{un}init() altogether.

No functional change intended.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/powerpc/include/asm/kvm_ppc.h |  3 +--
 arch/powerpc/kvm/book3s.c          |  5 ++---
 arch/powerpc/kvm/book3s_hv.c       | 17 ++++++-----------
 arch/powerpc/kvm/book3s_pr.c       | 13 +++----------
 arch/powerpc/kvm/booke.c           |  5 ++---
 arch/powerpc/kvm/e500.c            | 16 +++-------------
 arch/powerpc/kvm/e500mc.c          |  8 ++------
 arch/powerpc/kvm/powerpc.c         | 10 +++++++++-
 8 files changed, 28 insertions(+), 49 deletions(-)

diff --git a/arch/powerpc/include/asm/kvm_ppc.h b/arch/powerpc/include/asm/kvm_ppc.h
index a7795339df92..d84f273ea574 100644
--- a/arch/powerpc/include/asm/kvm_ppc.h
+++ b/arch/powerpc/include/asm/kvm_ppc.h
@@ -119,8 +119,7 @@ extern int kvmppc_xlate(struct kvm_vcpu *vcpu, ulong eaddr,
 			enum xlate_instdata xlid, enum xlate_readwrite xlrw,
 			struct kvmppc_pte *pte);
 
-extern int kvmppc_core_vcpu_create(struct kvm *kvm, struct kvm_vcpu *vcpu,
-				   unsigned int id);
+extern int kvmppc_core_vcpu_create(struct kvm_vcpu *vcpu);
 extern void kvmppc_core_vcpu_free(struct kvm_vcpu *vcpu);
 extern int kvmppc_core_vcpu_setup(struct kvm_vcpu *vcpu);
 extern int kvmppc_core_check_processor_compat(void);
diff --git a/arch/powerpc/kvm/book3s.c b/arch/powerpc/kvm/book3s.c
index 241ae3e114d2..fd049ede2487 100644
--- a/arch/powerpc/kvm/book3s.c
+++ b/arch/powerpc/kvm/book3s.c
@@ -814,10 +814,9 @@ void kvmppc_decrementer_func(struct kvm_vcpu *vcpu)
 	kvm_vcpu_kick(vcpu);
 }
 
-int kvmppc_core_vcpu_create(struct kvm *kvm, struct kvm_vcpu *vcpu,
-			    unsigned int id)
+int kvmppc_core_vcpu_create(struct kvm_vcpu *vcpu)
 {
-	return kvm->arch.kvm_ops->vcpu_create(kvm, vcpu, id);
+	return kvm->arch.kvm_ops->vcpu_create(vcpu);
 }
 
 void kvmppc_core_vcpu_free(struct kvm_vcpu *vcpu)
diff --git a/arch/powerpc/kvm/book3s_hv.c b/arch/powerpc/kvm/book3s_hv.c
index 103a7599c2d1..ecc0895fd76f 100644
--- a/arch/powerpc/kvm/book3s_hv.c
+++ b/arch/powerpc/kvm/book3s_hv.c
@@ -2257,16 +2257,16 @@ static void debugfs_vcpu_init(struct kvm_vcpu *vcpu, unsigned int id)
 }
 #endif /* CONFIG_KVM_BOOK3S_HV_EXIT_TIMING */
 
-static int kvmppc_core_vcpu_create_hv(struct kvm *kvm, struct kvm_vcpu *vcpu,
-				      unsigned int id)
+static int kvmppc_core_vcpu_create_hv(struct kvm_vcpu *vcpu)
 {
 	int err;
 	int core;
 	struct kvmppc_vcore *vcore;
+	struct kvm *kvm;
+	unsigned int id;
 
-	err = kvm_vcpu_init(vcpu, kvm, id);
-	if (err)
-		return err;
+	kvm = vcpu->kvm;
+	id = vcpu->vcpu_id;
 
 	vcpu->arch.shared = &vcpu->arch.shregs;
 #ifdef CONFIG_KVM_BOOK3S_PR_POSSIBLE
@@ -2348,7 +2348,7 @@ static int kvmppc_core_vcpu_create_hv(struct kvm *kvm, struct kvm_vcpu *vcpu,
 	mutex_unlock(&kvm->lock);
 
 	if (!vcore)
-		goto uninit_vcpu;
+		return err;
 
 	spin_lock(&vcore->lock);
 	++vcore->num_threads;
@@ -2364,10 +2364,6 @@ static int kvmppc_core_vcpu_create_hv(struct kvm *kvm, struct kvm_vcpu *vcpu,
 	debugfs_vcpu_init(vcpu, id);
 
 	return 0;
-
-uninit_vcpu:
-	kvm_vcpu_uninit(vcpu);
-	return err;
 }
 
 static int kvmhv_set_smt_mode(struct kvm *kvm, unsigned long smt_mode,
@@ -2421,7 +2417,6 @@ static void kvmppc_core_vcpu_free_hv(struct kvm_vcpu *vcpu)
 	unpin_vpa(vcpu->kvm, &vcpu->arch.slb_shadow);
 	unpin_vpa(vcpu->kvm, &vcpu->arch.vpa);
 	spin_unlock(&vcpu->arch.vpa_update_lock);
-	kvm_vcpu_uninit(vcpu);
 }
 
 static int kvmppc_core_check_requests_hv(struct kvm_vcpu *vcpu)
diff --git a/arch/powerpc/kvm/book3s_pr.c b/arch/powerpc/kvm/book3s_pr.c
index a933ba60bc7c..12f23f0c4ece 100644
--- a/arch/powerpc/kvm/book3s_pr.c
+++ b/arch/powerpc/kvm/book3s_pr.c
@@ -1708,22 +1708,17 @@ static int kvmppc_set_one_reg_pr(struct kvm_vcpu *vcpu, u64 id,
 	return r;
 }
 
-static int kvmppc_core_vcpu_create_pr(struct kvm *kvm, struct kvm_vcpu *vcpu,
-				      unsigned int id)
+static int kvmppc_core_vcpu_create_pr(struct kvm_vcpu *vcpu)
 {
 	struct kvmppc_vcpu_book3s *vcpu_book3s;
 	unsigned long p;
 	int err;
 
-	err = kvm_vcpu_init(vcpu, kvm, id);
-	if (err)
-		return err;
-
 	err = -ENOMEM;
 
 	vcpu_book3s = vzalloc(sizeof(struct kvmppc_vcpu_book3s));
 	if (!vcpu_book3s)
-		goto uninit_vcpu;
+		goto out;
 	vcpu->arch.book3s = vcpu_book3s;
 
 #ifdef CONFIG_KVM_BOOK3S_32_HANDLER
@@ -1777,8 +1772,7 @@ static int kvmppc_core_vcpu_create_pr(struct kvm *kvm, struct kvm_vcpu *vcpu,
 free_vcpu3s:
 #endif
 	vfree(vcpu_book3s);
-uninit_vcpu:
-	kvm_vcpu_uninit(vcpu);
+out:
 	return err;
 }
 
@@ -1787,7 +1781,6 @@ static void kvmppc_core_vcpu_free_pr(struct kvm_vcpu *vcpu)
 	struct kvmppc_vcpu_book3s *vcpu_book3s = to_book3s(vcpu);
 
 	free_page((unsigned long)vcpu->arch.shared & PAGE_MASK);
-	kvm_vcpu_uninit(vcpu);
 #ifdef CONFIG_KVM_BOOK3S_32_HANDLER
 	kfree(vcpu->arch.shadow_vcpu);
 #endif
diff --git a/arch/powerpc/kvm/booke.c b/arch/powerpc/kvm/booke.c
index 047c9f707704..dd7440e50c7a 100644
--- a/arch/powerpc/kvm/booke.c
+++ b/arch/powerpc/kvm/booke.c
@@ -2114,10 +2114,9 @@ int kvmppc_core_init_vm(struct kvm *kvm)
 	return kvm->arch.kvm_ops->init_vm(kvm);
 }
 
-int kvmppc_core_vcpu_create(struct kvm *kvm, struct kvm_vcpu *vcpu,
-			    unsigned int id)
+int kvmppc_core_vcpu_create(struct kvm_vcpu *vcpu)
 {
-	return kvm->arch.kvm_ops->vcpu_create(kvm, vcpu, id);
+	return kvm->arch.kvm_ops->vcpu_create(vcpu);
 }
 
 void kvmppc_core_vcpu_free(struct kvm_vcpu *vcpu)
diff --git a/arch/powerpc/kvm/e500.c b/arch/powerpc/kvm/e500.c
index 96d9cde3d2e3..942bfaa2d1d0 100644
--- a/arch/powerpc/kvm/e500.c
+++ b/arch/powerpc/kvm/e500.c
@@ -433,8 +433,7 @@ static int kvmppc_set_one_reg_e500(struct kvm_vcpu *vcpu, u64 id,
 	return r;
 }
 
-static int kvmppc_core_vcpu_create_e500(struct kvm *kvm, struct kvm_vcpu *vcpu,
-					unsigned int id)
+static int kvmppc_core_vcpu_create_e500(struct kvm_vcpu *vcpu)
 {
 	struct kvmppc_vcpu_e500 *vcpu_e500;
 	int err;
@@ -442,14 +441,8 @@ static int kvmppc_core_vcpu_create_e500(struct kvm *kvm, struct kvm_vcpu *vcpu,
 	BUILD_BUG_ON(offsetof(struct kvmppc_vcpu_e500, vcpu) != 0);
 	vcpu_e500 = to_e500(vcpu);
 
-	err = kvm_vcpu_init(vcpu, kvm, id);
-	if (err)
-		return err;
-
-	if (kvmppc_e500_id_table_alloc(vcpu_e500) == NULL) {
-		err = -ENOMEM;
-		goto uninit_vcpu;
-	}
+	if (kvmppc_e500_id_table_alloc(vcpu_e500) == NULL)
+		return -ENOMEM;
 
 	err = kvmppc_e500_tlb_init(vcpu_e500);
 	if (err)
@@ -467,8 +460,6 @@ static int kvmppc_core_vcpu_create_e500(struct kvm *kvm, struct kvm_vcpu *vcpu,
 	kvmppc_e500_tlb_uninit(vcpu_e500);
 uninit_id:
 	kvmppc_e500_id_table_free(vcpu_e500);
-uninit_vcpu:
-	kvm_vcpu_uninit(vcpu);
 	return err;
 }
 
@@ -479,7 +470,6 @@ static void kvmppc_core_vcpu_free_e500(struct kvm_vcpu *vcpu)
 	free_page((unsigned long)vcpu->arch.shared);
 	kvmppc_e500_tlb_uninit(vcpu_e500);
 	kvmppc_e500_id_table_free(vcpu_e500);
-	kvm_vcpu_uninit(vcpu);
 }
 
 static int kvmppc_core_init_vm_e500(struct kvm *kvm)
diff --git a/arch/powerpc/kvm/e500mc.c b/arch/powerpc/kvm/e500mc.c
index f2902e612150..3b37957fbfe5 100644
--- a/arch/powerpc/kvm/e500mc.c
+++ b/arch/powerpc/kvm/e500mc.c
@@ -301,8 +301,7 @@ static int kvmppc_set_one_reg_e500mc(struct kvm_vcpu *vcpu, u64 id,
 	return r;
 }
 
-static int kvmppc_core_vcpu_create_e500mc(struct kvm *kvm, struct kvm_vcpu *vcpu,
-					  unsigned int id)
+static int kvmppc_core_vcpu_create_e500mc(struct kvm_vcpu *vcpu)
 {
 	struct kvmppc_vcpu_e500 *vcpu_e500;
 	int err;
@@ -319,7 +318,7 @@ static int kvmppc_core_vcpu_create_e500mc(struct kvm *kvm, struct kvm_vcpu *vcpu
 
 	err = kvmppc_e500_tlb_init(vcpu_e500);
 	if (err)
-		goto uninit_vcpu;
+		return err;
 
 	vcpu->arch.shared = (void *)__get_free_page(GFP_KERNEL | __GFP_ZERO);
 	if (!vcpu->arch.shared) {
@@ -331,8 +330,6 @@ static int kvmppc_core_vcpu_create_e500mc(struct kvm *kvm, struct kvm_vcpu *vcpu
 
 uninit_tlb:
 	kvmppc_e500_tlb_uninit(vcpu_e500);
-uninit_vcpu:
-	kvm_vcpu_uninit(vcpu);
 	return err;
 }
 
@@ -342,7 +339,6 @@ static void kvmppc_core_vcpu_free_e500mc(struct kvm_vcpu *vcpu)
 
 	free_page((unsigned long)vcpu->arch.shared);
 	kvmppc_e500_tlb_uninit(vcpu_e500);
-	kvm_vcpu_uninit(vcpu);
 }
 
 static int kvmppc_core_init_vm_e500mc(struct kvm *kvm)
diff --git a/arch/powerpc/kvm/powerpc.c b/arch/powerpc/kvm/powerpc.c
index 1d9997ad2795..2bc5e9f592aa 100644
--- a/arch/powerpc/kvm/powerpc.c
+++ b/arch/powerpc/kvm/powerpc.c
@@ -725,14 +725,20 @@ struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id)
 	if (!vcpu)
 		return ERR_PTR(-ENOMEM);
 
-	err = kvmppc_core_vcpu_create(kvm, vcpu, id);
+	err = kvm_vcpu_init(vcpu, kvm, id);
 	if (err)
 		goto free_vcpu;
 
+	err = kvmppc_core_vcpu_create(vcpu);
+	if (err)
+		goto uninit_vcpu;
+
 	vcpu->arch.wqp = &vcpu->wq;
 	kvmppc_create_vcpu_debugfs(vcpu, id);
 	return vcpu;
 
+uninit_vcpu:
+	kvm_vcpu_uninit(vcpu);
 free_vcpu:
 	kmem_cache_free(kvm_vcpu_cache, vcpu);
 	return ERR_PTR(err);
@@ -766,6 +772,8 @@ void kvm_arch_vcpu_free(struct kvm_vcpu *vcpu)
 
 	kvmppc_core_vcpu_free(vcpu);
 
+	kvm_vcpu_uninit(vcpu);
+
 	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
