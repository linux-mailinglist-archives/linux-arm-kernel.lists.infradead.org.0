Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EFC12564A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:08:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6Fv/4l609cDWjL88/f/J/JHMtfblGgcB5ed+p9cm1Y=; b=Yl6gwV1zIYprKX
	ba6z76qW+KokPVNzO03WCT7HWPzk8z++7uxwFk9kUE0y7tioh2iNmKFKL7j9OnyV2ZVggzNxEqIwj
	ayJUztPxXAqRBwuiYdX7Rj5nr2YoFFD5E5wleHO5jEvzVbWURk3Uxgu7I26Av1X8Vdrwh5FdWMaCg
	3rjVQKskMz1P62e+ArfYF1Cz3g7VuIHzmzfXwAzr/QQ60S3LCrkNxYK92iOrfn1fewlAS3NDgBry2
	Bz/jcNGOa/Izqc9eLMKxJ2mcnaf/JQjvqTxi3iKb9vNW9pqF0PK6WQ+6USBmBTbQVx3d2zTVJVvnq
	L4IpnXPcVIzIsHie/4pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhUa-0001vN-06; Wed, 18 Dec 2019 22:08:28 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhIb-0004yV-4A
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:56:09 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:55:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222108164"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2019 13:55:49 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 37/45] KVM: Drop kvm_arch_vcpu_setup()
Date: Wed, 18 Dec 2019 13:55:22 -0800
Message-Id: <20191218215530.2280-38-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218215530.2280-1-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_135605_358960_DCC6B3DB 
X-CRM114-Status: GOOD (  12.14  )
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

Remove kvm_arch_vcpu_setup() now that all arch specific implementations
are nops.

Acked-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/arm/kvm/guest.c      | 5 -----
 arch/arm64/kvm/guest.c    | 5 -----
 arch/mips/kvm/mips.c      | 5 -----
 arch/powerpc/kvm/book3s.c | 5 -----
 arch/powerpc/kvm/booke.c  | 5 -----
 arch/s390/kvm/kvm-s390.c  | 5 -----
 arch/x86/kvm/x86.c        | 5 -----
 include/linux/kvm_host.h  | 1 -
 virt/kvm/kvm_main.c       | 5 -----
 9 files changed, 41 deletions(-)

diff --git a/arch/arm/kvm/guest.c b/arch/arm/kvm/guest.c
index 0e6f23504c26..9f7ae0d8690f 100644
--- a/arch/arm/kvm/guest.c
+++ b/arch/arm/kvm/guest.c
@@ -34,11 +34,6 @@ struct kvm_stats_debugfs_item debugfs_entries[] = {
 	{ NULL }
 };
 
-int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
 static u64 core_reg_offset_from_id(u64 id)
 {
 	return id & ~(KVM_REG_ARCH_MASK | KVM_REG_SIZE_MASK | KVM_REG_ARM_CORE);
diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 2fff06114a8f..2bd92301d32f 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -47,11 +47,6 @@ struct kvm_stats_debugfs_item debugfs_entries[] = {
 	{ NULL }
 };
 
-int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
 static bool core_reg_offset_is_vreg(u64 off)
 {
 	return off >= KVM_REG_ARM_CORE_REG(fp_regs.vregs) &&
diff --git a/arch/mips/kvm/mips.c b/arch/mips/kvm/mips.c
index b3a4435af66b..06366e2415a6 100644
--- a/arch/mips/kvm/mips.c
+++ b/arch/mips/kvm/mips.c
@@ -1244,11 +1244,6 @@ int kvm_arch_vcpu_ioctl_translate(struct kvm_vcpu *vcpu,
 	return 0;
 }
 
-int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
 static void kvm_mips_set_c0_status(void)
 {
 	u32 status = read_c0_status();
diff --git a/arch/powerpc/kvm/book3s.c b/arch/powerpc/kvm/book3s.c
index 5ad20fc0c6a1..0d393f1a835b 100644
--- a/arch/powerpc/kvm/book3s.c
+++ b/arch/powerpc/kvm/book3s.c
@@ -471,11 +471,6 @@ int kvmppc_load_last_inst(struct kvm_vcpu *vcpu,
 }
 EXPORT_SYMBOL_GPL(kvmppc_load_last_inst);
 
-int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
 int kvmppc_subarch_vcpu_init(struct kvm_vcpu *vcpu)
 {
 	return 0;
diff --git a/arch/powerpc/kvm/booke.c b/arch/powerpc/kvm/booke.c
index b1b5073a22b1..35b781775d3d 100644
--- a/arch/powerpc/kvm/booke.c
+++ b/arch/powerpc/kvm/booke.c
@@ -1377,11 +1377,6 @@ static void kvmppc_set_tsr(struct kvm_vcpu *vcpu, u32 new_tsr)
 	update_timer_ints(vcpu);
 }
 
-int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
 int kvmppc_subarch_vcpu_init(struct kvm_vcpu *vcpu)
 {
 	/* setup watchdog timer once */
diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index 5cd92c9fc050..bcdd542b96a2 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -2931,11 +2931,6 @@ static void kvm_s390_vcpu_setup_model(struct kvm_vcpu *vcpu)
 		vcpu->arch.sie_block->fac = (u32)(u64) model->fac_list;
 }
 
-int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
 static int kvm_s390_vcpu_setup(struct kvm_vcpu *vcpu)
 {
 	int rc = 0;
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index 0ab96dc3dd08..20f8ac086824 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -9116,11 +9116,6 @@ int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
 	return 0;
 }
 
-int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
 void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu)
 {
 	struct msr_data msr;
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index d24e6c134d15..792b122e44fa 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -873,7 +873,6 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu);
 void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu);
 int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id);
 int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu);
-int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu);
 void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu);
 void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu);
 
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 876cf3dd2c97..f76b2155dfee 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -2753,10 +2753,6 @@ static int kvm_vm_ioctl_create_vcpu(struct kvm *kvm, u32 id)
 	if (r)
 		goto vcpu_uninit;
 
-	r = kvm_arch_vcpu_setup(vcpu);
-	if (r)
-		goto vcpu_destroy;
-
 	kvm_create_vcpu_debugfs(vcpu);
 
 	mutex_lock(&kvm->lock);
@@ -2792,7 +2788,6 @@ static int kvm_vm_ioctl_create_vcpu(struct kvm *kvm, u32 id)
 unlock_vcpu_destroy:
 	mutex_unlock(&kvm->lock);
 	debugfs_remove_recursive(vcpu->debugfs_dentry);
-vcpu_destroy:
 	kvm_arch_vcpu_destroy(vcpu);
 vcpu_uninit:
 	kvm_vcpu_uninit(vcpu);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
