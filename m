Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B38B2568D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 19:22:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fGJo3bDW+k0BC5fXrfKBLvzbLcEb25nbsdy2TNbCBHY=; b=j0eQ5w8qSS9tdwtl0sLwl9Y0cv
	scXtt5cQClX6XJIhQX1Bi/Ea3qQ7A+ymTqFyYmnFZv3wZTp1hIWFtbPZZEpoRJCVTQIrz39JmCB1C
	tbgzoHqiqr449Dr1MKOBwllfD9XUH1npa6nhuaprDqSBFStDUoD8Evh9VZEuNFBbY+l12rJDCQ7j/
	SOt2tPjyt7K3NlqZrasKS2TVR/fbljegw6pCHQ1dTpG/XMLcGeMCtE7kUhszOeej/OvbhMa73wOuC
	p33G4sEZ8RZ6O0I3fWWNJsOYK0gAoCdKSVcW15ngmluPRnqA/0R4LjxIpwLUAVK3Ib6Op+GtLQm1P
	c3lAJ4Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT8T6-0001qs-R3; Tue, 21 May 2019 17:22:28 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT8Sc-0001Oz-On
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 17:22:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AEA4115A2;
 Tue, 21 May 2019 10:21:57 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 76F4A3F718;
 Tue, 21 May 2019 10:21:55 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH v5 2/3] arch/arm64: fpsimd: Introduce
 fpsimd_save_and_flush_cpu_state() and use it
Date: Tue, 21 May 2019 18:21:38 +0100
Message-Id: <20190521172139.21277-3-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190521172139.21277-1-julien.grall@arm.com>
References: <20190521172139.21277-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_102158_941226_103E56D5 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: ard.biesheuvel@linaro.org, julien.thierry@arm.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, suzuki.poulose@arm.com, will.deacon@arm.com,
 christoffer.dall@arm.com, Julien Grall <julien.grall@arm.com>,
 james.morse@arm.com, Dave.Martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The only external user of fpsimd_save() and fpsimd_flush_cpu_state() is
the KVM FPSIMD code.

A following patch will introduce a mechanism to acquire owernship of the
FPSIMD/SVE context for performing context management operations. Rather
than having to export the new helpers to get/put the context, we can just
introduce a new function to combine fpsimd_save() and
fpsimd_flush_cpu_state().

This has also the advantage to remove any external call of fpsimd_save()
and fpsimd_flush_cpu_state(), so they can be turned static.

Lastly, the new function can also be used in the PM notifier.

Signed-off-by: Julien Grall <julien.grall@arm.com>
Reviewed-by: Dave Martin <Dave.Martin@arm.com>

---
    kernel_neon_begin() does not use fpsimd_save_and_flush_cpu_state()
    because the next patch will modify the function to also grab the
    FPSIMD/SVE context.

    Changes in v4:
        - Remove newline before the new prototype
        - Add Dave's reviewed-by

    Changes in v3:
        - Rework the commit message
        - Move the prototype of fpsimd_save_and_flush_cpu_state()
        further down in the header
        - Remove comment in kvm_arch_vcpu_put_fp()

    Changes in v2:
        - Patch added
---
 arch/arm64/include/asm/fpsimd.h |  4 +---
 arch/arm64/kernel/fpsimd.c      | 17 +++++++++++++----
 arch/arm64/kvm/fpsimd.c         |  4 +---
 3 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/include/asm/fpsimd.h b/arch/arm64/include/asm/fpsimd.h
index b73d12fcc7f9..4154851c21ab 100644
--- a/arch/arm64/include/asm/fpsimd.h
+++ b/arch/arm64/include/asm/fpsimd.h
@@ -48,8 +48,6 @@ struct task_struct;
 extern void fpsimd_save_state(struct user_fpsimd_state *state);
 extern void fpsimd_load_state(struct user_fpsimd_state *state);
 
-extern void fpsimd_save(void);
-
 extern void fpsimd_thread_switch(struct task_struct *next);
 extern void fpsimd_flush_thread(void);
 
@@ -63,7 +61,7 @@ extern void fpsimd_bind_state_to_cpu(struct user_fpsimd_state *state,
 				     void *sve_state, unsigned int sve_vl);
 
 extern void fpsimd_flush_task_state(struct task_struct *target);
-extern void fpsimd_flush_cpu_state(void);
+extern void fpsimd_save_and_flush_cpu_state(void);
 
 /* Maximum VL that SVE VL-agnostic software can transparently support */
 #define SVE_VL_ARCH_MAX 0x100
diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index a38bf74bcca8..6448921a2f59 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -246,7 +246,7 @@ static void task_fpsimd_load(void)
  *
  * Softirqs (and preemption) must be disabled.
  */
-void fpsimd_save(void)
+static void fpsimd_save(void)
 {
 	struct fpsimd_last_state_struct const *last =
 		this_cpu_ptr(&fpsimd_last_state);
@@ -1122,12 +1122,22 @@ void fpsimd_flush_task_state(struct task_struct *t)
  * Invalidate any task's FPSIMD state that is present on this cpu.
  * This function must be called with softirqs disabled.
  */
-void fpsimd_flush_cpu_state(void)
+static void fpsimd_flush_cpu_state(void)
 {
 	__this_cpu_write(fpsimd_last_state.st, NULL);
 	set_thread_flag(TIF_FOREIGN_FPSTATE);
 }
 
+/*
+ * Save the FPSIMD state to memory and invalidate cpu view.
+ * This function must be called with softirqs (and preemption) disabled.
+ */
+void fpsimd_save_and_flush_cpu_state(void)
+{
+	fpsimd_save();
+	fpsimd_flush_cpu_state();
+}
+
 #ifdef CONFIG_KERNEL_MODE_NEON
 
 DEFINE_PER_CPU(bool, kernel_neon_busy);
@@ -1284,8 +1294,7 @@ static int fpsimd_cpu_pm_notifier(struct notifier_block *self,
 {
 	switch (cmd) {
 	case CPU_PM_ENTER:
-		fpsimd_save();
-		fpsimd_flush_cpu_state();
+		fpsimd_save_and_flush_cpu_state();
 		break;
 	case CPU_PM_EXIT:
 		break;
diff --git a/arch/arm64/kvm/fpsimd.c b/arch/arm64/kvm/fpsimd.c
index 6e3c9c8b2df9..525010504f9d 100644
--- a/arch/arm64/kvm/fpsimd.c
+++ b/arch/arm64/kvm/fpsimd.c
@@ -112,9 +112,7 @@ void kvm_arch_vcpu_put_fp(struct kvm_vcpu *vcpu)
 	if (vcpu->arch.flags & KVM_ARM64_FP_ENABLED) {
 		u64 *guest_zcr = &vcpu->arch.ctxt.sys_regs[ZCR_EL1];
 
-		/* Clean guest FP state to memory and invalidate cpu view */
-		fpsimd_save();
-		fpsimd_flush_cpu_state();
+		fpsimd_save_and_flush_cpu_state();
 
 		if (guest_has_sve)
 			*guest_zcr = read_sysreg_s(SYS_ZCR_EL12);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
