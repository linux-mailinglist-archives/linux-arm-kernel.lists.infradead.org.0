Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B796FDFB7D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 04:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1v+EziDffVWyj+eEjwhX30/h9YLLkAxy2PrcUg0i/4=; b=qp7X5+tMqc/vwm
	p9qEDl0cjKUbpONz0EA828pkQNe6GS0qn9Spy3vKZgCV1iX4x1iIBpoPWWaNRuKuuYTWDgoGFO8h6
	sQS+7n1Q3buLlJdJ0vMcIJjuVWz8mY9QjvBCmhXssML9FWHMHUFOUSNpEhCIE4kmRW5w2WVBBbNKu
	iTKtVqALvPiutbuoQCTs6GQjEsisBCbjnwTnMYUNWeMHCacnynddLvT69KCrJudGE/nv0w4/lH4Jy
	gN1eA0HOpg6bIA+9TYJrXNDAORxQurKIKT/xkR6o5SM7+QPBGrcbXJEh+gz1X9BHKxGw3vqKKR7DN
	ZyqLmgmNEi8DVygxZhCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMjfM-0002ir-QV; Tue, 22 Oct 2019 02:12:56 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMjT5-0003sj-Py
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 02:00:20 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 19:00:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="196293976"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by fmsmga008.fm.intel.com with ESMTP; 21 Oct 2019 19:00:03 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 43/45] KVM: Drop kvm_arch_vcpu_init() and
 kvm_arch_vcpu_uninit()
Date: Mon, 21 Oct 2019 18:59:23 -0700
Message-Id: <20191022015925.31916-44-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191022015925.31916-1-sean.j.christopherson@intel.com>
References: <20191022015925.31916-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_190016_485113_7232A543 
X-CRM114-Status: GOOD (  13.93  )
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

Remove kvm_arch_vcpu_init() and kvm_arch_vcpu_uninit() now that all
arch specific implementations are nops.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/arm/include/asm/kvm_host.h   |  1 -
 arch/arm64/include/asm/kvm_host.h |  1 -
 arch/arm64/kvm/reset.c            |  5 -----
 arch/mips/kvm/mips.c              | 10 ----------
 arch/powerpc/kvm/powerpc.c        | 10 ----------
 arch/s390/include/asm/kvm_host.h  |  1 -
 arch/s390/kvm/kvm-s390.c          |  5 -----
 arch/x86/kvm/x86.c                | 10 ----------
 include/linux/kvm_host.h          |  3 ---
 virt/kvm/arm/arm.c                |  5 -----
 virt/kvm/kvm_main.c               | 16 ++--------------
 11 files changed, 2 insertions(+), 65 deletions(-)

diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index cc414de5acd3..d0d84a4c8165 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -330,7 +330,6 @@ struct kvm_vcpu *kvm_mpidr_to_vcpu(struct kvm *kvm, unsigned long mpidr);
 static inline bool kvm_arch_requires_vhe(void) { return false; }
 static inline void kvm_arch_hardware_unsetup(void) {}
 static inline void kvm_arch_sync_events(struct kvm *kvm) {}
-static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
 static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
 static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
 static inline int kvm_arm_vcpu_destroy(struct kvm_vcpu *vcpu) {}
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 92d7c384a4ed..7b46725f1bdb 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -53,7 +53,6 @@ int kvm_arm_init_sve(void);
 int __attribute_const__ kvm_target_cpu(void);
 int kvm_reset_vcpu(struct kvm_vcpu *vcpu);
 int kvm_arm_vcpu_destroy(struct kvm_vcpu *vcpu);
-void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu);
 int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext);
 void __extended_idmap_trampoline(phys_addr_t boot_pgd, phys_addr_t idmap_start);
 
diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
index 98abc4278f42..c683364cc84b 100644
--- a/arch/arm64/kvm/reset.c
+++ b/arch/arm64/kvm/reset.c
@@ -204,11 +204,6 @@ bool kvm_arm_vcpu_is_finalized(struct kvm_vcpu *vcpu)
 	return true;
 }
 
-void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu)
-{
-
-}
-
 int kvm_arm_vcpu_destroy(struct kvm_vcpu *vcpu)
 {
 	kfree(vcpu->arch.sve_state);
diff --git a/arch/mips/kvm/mips.c b/arch/mips/kvm/mips.c
index 879a7cbd5b54..2606f3f02b54 100644
--- a/arch/mips/kvm/mips.c
+++ b/arch/mips/kvm/mips.c
@@ -1230,16 +1230,6 @@ static enum hrtimer_restart kvm_mips_comparecount_wakeup(struct hrtimer *timer)
 	return kvm_mips_count_timeout(vcpu);
 }
 
-int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
-void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu)
-{
-
-}
-
 int kvm_arch_vcpu_ioctl_translate(struct kvm_vcpu *vcpu,
 				  struct kvm_translation *tr)
 {
diff --git a/arch/powerpc/kvm/powerpc.c b/arch/powerpc/kvm/powerpc.c
index 3078231bd384..3215ebce0ed9 100644
--- a/arch/powerpc/kvm/powerpc.c
+++ b/arch/powerpc/kvm/powerpc.c
@@ -797,16 +797,6 @@ static enum hrtimer_restart kvmppc_decrementer_wakeup(struct hrtimer *timer)
 	return HRTIMER_NORESTART;
 }
 
-int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
-void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu)
-{
-
-}
-
 void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 {
 #ifdef CONFIG_BOOKE
diff --git a/arch/s390/include/asm/kvm_host.h b/arch/s390/include/asm/kvm_host.h
index abe60268335d..e0a542fd5559 100644
--- a/arch/s390/include/asm/kvm_host.h
+++ b/arch/s390/include/asm/kvm_host.h
@@ -913,7 +913,6 @@ extern int kvm_s390_gisc_unregister(struct kvm *kvm, u32 gisc);
 
 static inline void kvm_arch_hardware_disable(void) {}
 static inline void kvm_arch_sync_events(struct kvm *kvm) {}
-static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
 static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
 static inline void kvm_arch_free_memslot(struct kvm *kvm,
 		struct kvm_memory_slot *free, struct kvm_memory_slot *dont) {}
diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index c3c855fd909c..1ee64352440f 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -2703,11 +2703,6 @@ static int sca_can_add_vcpu(struct kvm *kvm, unsigned int id)
 	return rc == 0 && id < KVM_S390_ESCA_CPU_SLOTS;
 }
 
-int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
 /* needs disabled preemption to protect from TOD sync and vcpu_load/put */
 static void __start_cpu_timer_accounting(struct kvm_vcpu *vcpu)
 {
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index d8d3079af2c5..07b43cdc4d0b 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -9403,16 +9403,6 @@ bool kvm_vcpu_is_bsp(struct kvm_vcpu *vcpu)
 struct static_key kvm_no_apic_vcpu __read_mostly;
 EXPORT_SYMBOL_GPL(kvm_no_apic_vcpu);
 
-int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
-void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu)
-{
-
-}
-
 void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu)
 {
 	vcpu->arch.l1tf_flush_l1d = true;
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 0b8b0f0ab4d7..e5b4198cd267 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -845,9 +845,6 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run);
 int kvm_arch_init(void *opaque);
 void kvm_arch_exit(void);
 
-int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu);
-void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu);
-
 void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu);
 
 void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu);
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index b38088415cde..9079f7412379 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -328,11 +328,6 @@ void kvm_arch_vcpu_unblocking(struct kvm_vcpu *vcpu)
 	kvm_vgic_v4_disable_doorbell(vcpu);
 }
 
-int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
 void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 {
 	int *last_ran;
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 1ae98c1f12b0..b1f4ee9c2c76 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -290,7 +290,6 @@ void kvm_reload_remote_mmus(struct kvm *kvm)
 static int kvm_vcpu_init(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id)
 {
 	struct page *page;
-	int r;
 
 	mutex_init(&vcpu->mutex);
 	vcpu->cpu = -1;
@@ -304,10 +303,8 @@ static int kvm_vcpu_init(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id)
 	INIT_LIST_HEAD(&vcpu->blocked_vcpu_list);
 
 	page = alloc_page(GFP_KERNEL | __GFP_ZERO);
-	if (!page) {
-		r = -ENOMEM;
-		goto fail;
-	}
+	if (!page)
+		return -ENOMEM;
 	vcpu->run = page_address(page);
 
 	kvm_vcpu_set_in_spin_loop(vcpu, false);
@@ -316,15 +313,7 @@ static int kvm_vcpu_init(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id)
 	vcpu->ready = false;
 	preempt_notifier_init(&vcpu->preempt_notifier, &kvm_preempt_ops);
 
-	r = kvm_arch_vcpu_init(vcpu);
-	if (r < 0)
-		goto fail_free_run;
 	return 0;
-
-fail_free_run:
-	free_page((unsigned long)vcpu->run);
-fail:
-	return r;
 }
 
 static void kvm_vcpu_uninit(struct kvm_vcpu *vcpu)
@@ -335,7 +324,6 @@ static void kvm_vcpu_uninit(struct kvm_vcpu *vcpu)
 	 * descriptors are already gone.
 	 */
 	put_pid(rcu_dereference_protected(vcpu->pid, 1));
-	kvm_arch_vcpu_uninit(vcpu);
 	free_page((unsigned long)vcpu->run);
 }
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
