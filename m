Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 187B7200534
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 11:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d/CX5B/2qJI71wcjFyiDZL3AohjPXLUKxhpq6jm/I0E=; b=ZrSwVhbi9v1H4J5mJ2oT8lTsTA
	Wl8hOaSOsGLu9VGv7yI3Sb6cAeYvNR49DW885vGizDkLiO7xNzJJ1h9kITPdR9KYhezxiFtSwpiF8
	DnC7V4/Cn6Jbfq6sUQwmQld5aI5YBKTYY2Eo9GfAbfFR5HHj2ke+6iTzeCj6uwx+xuUi6jgBDATtC
	8c+n+3PcQGVbLZVzWR1zDLK1UDpU5u9+wcFm+2LugG9FpdcDKGYWl1mnNoe9eHC1B4a8JfGNycRt1
	uO9pwv8GZUPoPxz3dM3ooKjbZbrJtyDjmm+1KficmA5GnE67T1UGNDjkljeLWe+/AFCnNGiPLgr+n
	azkapFvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDOj-0004uv-Qg; Fri, 19 Jun 2020 09:33:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDN2-0003Tp-RU
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 09:31:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A1CDD1435;
 Fri, 19 Jun 2020 02:31:35 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 73F663F71F;
 Fri, 19 Jun 2020 02:31:29 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com
Subject: [RFC PATCH v13 7/9] arm64/kvm: Add hypercall service for kvm ptp.
Date: Fri, 19 Jun 2020 17:30:31 +0800
Message-Id: <20200619093033.58344-8-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619093033.58344-1-jianyong.wu@arm.com>
References: <20200619093033.58344-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_023136_995617_030C363A 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: justin.he@arm.com, Wei.Chen@arm.com, kvm@vger.kernel.org,
 Steve.Capper@arm.com, jianyong.wu@arm.com, linux-kernel@vger.kernel.org,
 Kaly.Xin@arm.com, nd@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ptp_kvm will get this service through smccc call.
The service offers wall time and counter cycle of host for guest.
caller must explicitly determines which cycle of virtual counter or
physical counter to return if it needs counter cycle.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 arch/arm64/kvm/Kconfig      |  6 +++++
 arch/arm64/kvm/hypercalls.c | 50 +++++++++++++++++++++++++++++++++++++
 include/linux/arm-smccc.h   | 30 ++++++++++++++++++++++
 3 files changed, 86 insertions(+)

diff --git a/arch/arm64/kvm/Kconfig b/arch/arm64/kvm/Kconfig
index 13489aff4440..79091f6e5e7a 100644
--- a/arch/arm64/kvm/Kconfig
+++ b/arch/arm64/kvm/Kconfig
@@ -60,6 +60,12 @@ config KVM_ARM_PMU
 config KVM_INDIRECT_VECTORS
 	def_bool HARDEN_BRANCH_PREDICTOR || HARDEN_EL2_VECTORS
 
+config ARM64_KVM_PTP_HOST
+	bool "KVM PTP host service for arm64"
+	default y
+	help
+	  virtual kvm ptp clock hypercall service for arm64
+
 endif # KVM
 
 endif # VIRTUALIZATION
diff --git a/arch/arm64/kvm/hypercalls.c b/arch/arm64/kvm/hypercalls.c
index db6dce3d0e23..366b0646c360 100644
--- a/arch/arm64/kvm/hypercalls.c
+++ b/arch/arm64/kvm/hypercalls.c
@@ -3,6 +3,7 @@
 
 #include <linux/arm-smccc.h>
 #include <linux/kvm_host.h>
+#include <linux/clocksource_ids.h>
 
 #include <asm/kvm_emulate.h>
 
@@ -11,6 +12,10 @@
 
 int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 {
+#ifdef CONFIG_ARM64_KVM_PTP_HOST
+	struct system_time_snapshot systime_snapshot;
+	u64 cycles = 0;
+#endif
 	u32 func_id = smccc_get_function(vcpu);
 	u32 val[4] = {SMCCC_RET_NOT_SUPPORTED};
 	u32 feature;
@@ -70,7 +75,52 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 		break;
 	case ARM_SMCCC_VENDOR_HYP_KVM_FEATURES_FUNC_ID:
 		val[0] = BIT(ARM_SMCCC_KVM_FUNC_FEATURES);
+
+#ifdef CONFIG_ARM64_KVM_PTP_HOST
+		val[0] |= BIT(ARM_SMCCC_KVM_FUNC_KVM_PTP);
+#endif
+		break;
+
+#ifdef CONFIG_ARM64_KVM_PTP_HOST
+	/*
+	 * This serves virtual kvm_ptp.
+	 * Four values will be passed back.
+	 * reg0 stores high 32-bit host ktime;
+	 * reg1 stores low 32-bit host ktime;
+	 * reg2 stores high 32-bit difference of host cycles and cntvoff;
+	 * reg3 stores low 32-bit difference of host cycles and cntvoff.
+	 */
+	case ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID:
+		/*
+		 * system time and counter value must captured in the same
+		 * time to keep consistency and precision.
+		 */
+		ktime_get_snapshot(&systime_snapshot);
+		if (systime_snapshot.cs_id != CSID_ARM_ARCH_COUNTER)
+			break;
+		val[0] = upper_32_bits(systime_snapshot.real);
+		val[1] = lower_32_bits(systime_snapshot.real);
+		/*
+		 * which of virtual counter or physical counter being
+		 * asked for is decided by the first argument of smccc
+		 * call. If no first argument or invalid argument, zero
+		 * counter value will return;
+		 */
+		feature = smccc_get_arg1(vcpu);
+		switch (feature) {
+		case ARM_PTP_VIRT_COUNTER:
+			cycles = systime_snapshot.cycles -
+			vcpu_vtimer(vcpu)->cntvoff;
+			break;
+		case ARM_PTP_PHY_COUNTER:
+			cycles = systime_snapshot.cycles;
+			break;
+		}
+		val[2] = upper_32_bits(cycles);
+		val[3] = lower_32_bits(cycles);
 		break;
+#endif
+
 	default:
 		return kvm_psci_call(vcpu);
 	}
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 86ff30131e7b..e593ec515f82 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -98,6 +98,9 @@
 
 /* KVM "vendor specific" services */
 #define ARM_SMCCC_KVM_FUNC_FEATURES		0
+#define ARM_SMCCC_KVM_FUNC_KVM_PTP		1
+#define ARM_SMCCC_KVM_FUNC_KVM_PTP_PHY		2
+#define ARM_SMCCC_KVM_FUNC_KVM_PTP_VIRT		3
 #define ARM_SMCCC_KVM_FUNC_FEATURES_2		127
 #define ARM_SMCCC_KVM_NUM_FUNCS			128
 
@@ -107,6 +110,33 @@
 			   ARM_SMCCC_OWNER_VENDOR_HYP,			\
 			   ARM_SMCCC_KVM_FUNC_FEATURES)
 
+/*
+ * kvm_ptp is a feature used for time sync between vm and host.
+ * kvm_ptp module in guest kernel will get service from host using
+ * this hypercall ID.
+ */
+#define ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID				\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   ARM_SMCCC_OWNER_VENDOR_HYP,			\
+			   ARM_SMCCC_KVM_FUNC_KVM_PTP)
+
+/*
+ * kvm_ptp may get counter cycle from host and should ask for which of
+ * physical counter or virtual counter by using ARM_PTP_PHY_COUNTER and
+ * ARM_PTP_VIRT_COUNTER explicitly.
+ */
+#define ARM_PTP_PHY_COUNTER						\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   ARM_SMCCC_OWNER_VENDOR_HYP,			\
+			   ARM_SMCCC_KVM_FUNC_KVM_PTP_PHY)
+
+#define ARM_PTP_VIRT_COUNTER						\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   ARM_SMCCC_OWNER_VENDOR_HYP,			\
+			   ARM_SMCCC_KVM_FUNC_KVM_PTP_VIRT)
 #ifndef __ASSEMBLY__
 
 #include <linux/linkage.h>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
