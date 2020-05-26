Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9801B9638
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 06:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PZ9bRU4ZR79p03tKKj+ke9H/GYDfMF45PE5vgtrYjeY=; b=d6/rubJDKpqK47UfOAQs1arqhN
	lex69hROeYUbeEtS9haJPSOWaQanERju2CpMwomeUNoUdGshah0EIGxc1ZSHyTABFF4msa/+ge0Jl
	vxqvXZq8DL0ZdOcc7AJsJETODdJgh/rID74CzIDEiPYLVa+HI46WaE47vGusY0qUqUE7Ufs9H8LkK
	AyNqZumsv/Acz4QJyowqVhaMzOky/xtzxoDsA4M76h4tv6EGf5taozXeYZ21fkizstSrv53gJZADT
	Rs1o30Jpuxl7HyFh+A7o1iEwLXw7hM1GPY6nm+QusFyPeEnUW+R61VUbXkXjPJ9JM5jmJAPWDqYRr
	H4K2+haA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSvWR-0004cO-JI; Mon, 27 Apr 2020 04:37:35 +0000
Received: from out30-43.freemail.mail.aliyun.com ([115.124.30.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSvUP-00035U-QC
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 04:35:32 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R201e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01355;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=38; SR=0;
 TI=SMTPD_---0TwjvhzV_1587962120; 
Received: from localhost(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0TwjvhzV_1587962120) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 27 Apr 2020 12:35:21 +0800
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
To: pbonzini@redhat.com, tsbogend@alpha.franken.de, paulus@ozlabs.org,
 mpe@ellerman.id.au, benh@kernel.crashing.org, borntraeger@de.ibm.com,
 frankja@linux.ibm.com, david@redhat.com, cohuck@redhat.com,
 heiko.carstens@de.ibm.com, gor@linux.ibm.com,
 sean.j.christopherson@intel.com, vkuznets@redhat.com,
 wanpengli@tencent.com, jmattson@google.com, joro@8bytes.org,
 tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, x86@kernel.org,
 hpa@zytor.com, maz@kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 christoffer.dall@arm.com, peterx@redhat.com, thuth@redhat.com,
 chenhuacai@gmail.com
Subject: [PATCH v4 7/7] KVM: MIPS: clean up redundant kvm_run parameters in
 assembly
Date: Mon, 27 Apr 2020 12:35:14 +0800
Message-Id: <20200427043514.16144-8-tianjia.zhang@linux.alibaba.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_213530_037879_B4F8460E 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-s390@vger.kernel.org, tianjia.zhang@linux.alibaba.com,
 kvm@vger.kernel.org, linux-mips@vger.kernel.org, kvm-ppc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the current kvm version, 'kvm_run' has been included in the 'kvm_vcpu'
structure. For historical reasons, many kvm-related function parameters
retain the 'kvm_run' and 'kvm_vcpu' parameters at the same time. This
patch does a unified cleanup of these remaining redundant parameters.

Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
---
 arch/mips/include/asm/kvm_host.h |  4 ++--
 arch/mips/kvm/entry.c            | 21 ++++++++-------------
 arch/mips/kvm/mips.c             |  3 ++-
 arch/mips/kvm/trap_emul.c        |  2 +-
 arch/mips/kvm/vz.c               |  2 +-
 5 files changed, 14 insertions(+), 18 deletions(-)

diff --git a/arch/mips/include/asm/kvm_host.h b/arch/mips/include/asm/kvm_host.h
index 971439297cea..db915c55166d 100644
--- a/arch/mips/include/asm/kvm_host.h
+++ b/arch/mips/include/asm/kvm_host.h
@@ -310,7 +310,7 @@ struct kvm_mmu_memory_cache {
 #define KVM_MIPS_GUEST_TLB_SIZE	64
 struct kvm_vcpu_arch {
 	void *guest_ebase;
-	int (*vcpu_run)(struct kvm_run *run, struct kvm_vcpu *vcpu);
+	int (*vcpu_run)(struct kvm_vcpu *vcpu);
 
 	/* Host registers preserved across guest mode execution */
 	unsigned long host_stack;
@@ -821,7 +821,7 @@ int kvm_mips_emulation_init(struct kvm_mips_callbacks **install_callbacks);
 /* Debug: dump vcpu state */
 int kvm_arch_vcpu_dump_regs(struct kvm_vcpu *vcpu);
 
-extern int kvm_mips_handle_exit(struct kvm_run *run, struct kvm_vcpu *vcpu);
+extern int kvm_mips_handle_exit(struct kvm_vcpu *vcpu);
 
 /* Building of entry/exception code */
 int kvm_mips_entry_setup(void);
diff --git a/arch/mips/kvm/entry.c b/arch/mips/kvm/entry.c
index 16e1c93b484f..1083f35361ea 100644
--- a/arch/mips/kvm/entry.c
+++ b/arch/mips/kvm/entry.c
@@ -204,7 +204,7 @@ static inline void build_set_exc_base(u32 **p, unsigned int reg)
  * Assemble the start of the vcpu_run function to run a guest VCPU. The function
  * conforms to the following prototype:
  *
- * int vcpu_run(struct kvm_run *run, struct kvm_vcpu *vcpu);
+ * int vcpu_run(struct kvm_vcpu *vcpu);
  *
  * The exit from the guest and return to the caller is handled by the code
  * generated by kvm_mips_build_ret_to_host().
@@ -217,8 +217,7 @@ void *kvm_mips_build_vcpu_run(void *addr)
 	unsigned int i;
 
 	/*
-	 * A0: run
-	 * A1: vcpu
+	 * A0: vcpu
 	 */
 
 	/* k0/k1 not being used in host kernel context */
@@ -237,10 +236,10 @@ void *kvm_mips_build_vcpu_run(void *addr)
 	kvm_mips_build_save_scratch(&p, V1, K1);
 
 	/* VCPU scratch register has pointer to vcpu */
-	UASM_i_MTC0(&p, A1, scratch_vcpu[0], scratch_vcpu[1]);
+	UASM_i_MTC0(&p, A0, scratch_vcpu[0], scratch_vcpu[1]);
 
 	/* Offset into vcpu->arch */
-	UASM_i_ADDIU(&p, K1, A1, offsetof(struct kvm_vcpu, arch));
+	UASM_i_ADDIU(&p, K1, A0, offsetof(struct kvm_vcpu, arch));
 
 	/*
 	 * Save the host stack to VCPU, used for exception processing
@@ -628,10 +627,7 @@ void *kvm_mips_build_exit(void *addr)
 	/* Now that context has been saved, we can use other registers */
 
 	/* Restore vcpu */
-	UASM_i_MFC0(&p, S1, scratch_vcpu[0], scratch_vcpu[1]);
-
-	/* Restore run (vcpu->run) */
-	UASM_i_LW(&p, S0, offsetof(struct kvm_vcpu, run), S1);
+	UASM_i_MFC0(&p, S0, scratch_vcpu[0], scratch_vcpu[1]);
 
 	/*
 	 * Save Host level EPC, BadVaddr and Cause to VCPU, useful to process
@@ -793,7 +789,6 @@ void *kvm_mips_build_exit(void *addr)
 	 * with this in the kernel
 	 */
 	uasm_i_move(&p, A0, S0);
-	uasm_i_move(&p, A1, S1);
 	UASM_i_LA(&p, T9, (unsigned long)kvm_mips_handle_exit);
 	uasm_i_jalr(&p, RA, T9);
 	 UASM_i_ADDIU(&p, SP, SP, -CALLFRAME_SIZ);
@@ -835,7 +830,7 @@ static void *kvm_mips_build_ret_from_exit(void *addr)
 	 * guest, reload k1
 	 */
 
-	uasm_i_move(&p, K1, S1);
+	uasm_i_move(&p, K1, S0);
 	UASM_i_ADDIU(&p, K1, K1, offsetof(struct kvm_vcpu, arch));
 
 	/*
@@ -869,8 +864,8 @@ static void *kvm_mips_build_ret_to_guest(void *addr)
 {
 	u32 *p = addr;
 
-	/* Put the saved pointer to vcpu (s1) back into the scratch register */
-	UASM_i_MTC0(&p, S1, scratch_vcpu[0], scratch_vcpu[1]);
+	/* Put the saved pointer to vcpu (s0) back into the scratch register */
+	UASM_i_MTC0(&p, S0, scratch_vcpu[0], scratch_vcpu[1]);
 
 	/* Load up the Guest EBASE to minimize the window where BEV is set */
 	UASM_i_LW(&p, T0, offsetof(struct kvm_vcpu_arch, guest_ebase), K1);
diff --git a/arch/mips/kvm/mips.c b/arch/mips/kvm/mips.c
index 9710477a9827..32850470c037 100644
--- a/arch/mips/kvm/mips.c
+++ b/arch/mips/kvm/mips.c
@@ -1186,8 +1186,9 @@ static void kvm_mips_set_c0_status(void)
 /*
  * Return value is in the form (errcode<<2 | RESUME_FLAG_HOST | RESUME_FLAG_NV)
  */
-int kvm_mips_handle_exit(struct kvm_run *run, struct kvm_vcpu *vcpu)
+int kvm_mips_handle_exit(struct kvm_vcpu *vcpu)
 {
+	struct kvm_run *run = vcpu->run;
 	u32 cause = vcpu->arch.host_cp0_cause;
 	u32 exccode = (cause >> CAUSEB_EXCCODE) & 0x1f;
 	u32 __user *opc = (u32 __user *) vcpu->arch.pc;
diff --git a/arch/mips/kvm/trap_emul.c b/arch/mips/kvm/trap_emul.c
index d822f3aee3dc..04c864cc356a 100644
--- a/arch/mips/kvm/trap_emul.c
+++ b/arch/mips/kvm/trap_emul.c
@@ -1238,7 +1238,7 @@ static int kvm_trap_emul_vcpu_run(struct kvm_vcpu *vcpu)
 	 */
 	kvm_mips_suspend_mm(cpu);
 
-	r = vcpu->arch.vcpu_run(vcpu->run, vcpu);
+	r = vcpu->arch.vcpu_run(vcpu);
 
 	/* We may have migrated while handling guest exits */
 	cpu = smp_processor_id();
diff --git a/arch/mips/kvm/vz.c b/arch/mips/kvm/vz.c
index 94f1d23828e3..c5878fa0636d 100644
--- a/arch/mips/kvm/vz.c
+++ b/arch/mips/kvm/vz.c
@@ -3152,7 +3152,7 @@ static int kvm_vz_vcpu_run(struct kvm_vcpu *vcpu)
 	kvm_vz_vcpu_load_tlb(vcpu, cpu);
 	kvm_vz_vcpu_load_wired(vcpu);
 
-	r = vcpu->arch.vcpu_run(vcpu->run, vcpu);
+	r = vcpu->arch.vcpu_run(vcpu);
 
 	kvm_vz_vcpu_save_wired(vcpu);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
