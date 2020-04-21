Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0491B1CBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 05:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RSuJ/uNo/hmcm2E6zlZ1wvPYCgVqllFkpIYEX2wRv+w=; b=tt4h3coYd99U9uFAT7OwaBMA1K
	nu7t0oQ9gzdcsCuBuG4b/+9bIqj4Vl5WQYwMWnB5I/aiLYXdus/H1I1V4KLt3UQQytO2iMzmz701u
	ddIbf4d6nPAQSLSe7xaSCweoxxXPak/b/wrE5BCQOK92od3MN5qHG2CPNyz1BIUoMSEzyXQgn4vCb
	h8Trp1nm4jRh95EYqiwWWwDBhxCta+PBEO2cT2vISnrHo1dFhSp6h2GLqs+fyVN8WZfGWi32msjL7
	atFPQjmKU4usItdEZAn9pfttQScuoEcMbWQYtFLXo4IKu0B4x9vYna0HwG0keWEAkB1MAdvEu9ZOE
	KBO1skxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQjXI-0005BB-CP; Tue, 21 Apr 2020 03:25:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQjVv-0004Gh-5E
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 03:24:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E589C14;
 Mon, 20 Apr 2020 20:23:58 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 830103F6CF;
 Mon, 20 Apr 2020 20:23:52 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com
Subject: [RFC PATCH v11 5/9] psci: Add hypercall service for ptp_kvm.
Date: Tue, 21 Apr 2020 11:23:00 +0800
Message-Id: <20200421032304.26300-6-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200421032304.26300-1-jianyong.wu@arm.com>
References: <20200421032304.26300-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_202400_093336_348AB32B 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 jianyong.wu@arm.com, linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 nd@arm.com, kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ptp_kvm modules will get this service through smccc call.
The service offers real time and counter cycle of host for guest.
Also let caller determine which cycle of virtual counter or physical counter
to return.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 include/linux/arm-smccc.h | 21 +++++++++++++++++++
 virt/kvm/arm/hypercalls.c | 44 ++++++++++++++++++++++++++++++++++++++-
 2 files changed, 64 insertions(+), 1 deletion(-)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 59494df0f55b..747b7595d0c6 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -77,6 +77,27 @@
 			   ARM_SMCCC_SMC_32,				\
 			   0, 0x7fff)
 
+/* PTP KVM call requests clock time from guest OS to host */
+#define ARM_SMCCC_HYP_KVM_PTP_FUNC_ID				\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
+			   ARM_SMCCC_SMC_32,			\
+			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
+			   0)
+
+/* request for virtual counter from ptp_kvm guest */
+#define ARM_SMCCC_HYP_KVM_PTP_VIRT				\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
+			   ARM_SMCCC_SMC_32,			\
+			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
+			   1)
+
+/* request for physical counter from ptp_kvm guest */
+#define ARM_SMCCC_HYP_KVM_PTP_PHY				\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
+			   ARM_SMCCC_SMC_32,			\
+			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
+			   2)
+
 #ifndef __ASSEMBLY__
 
 #include <linux/linkage.h>
diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
index 550dfa3e53cd..a5309c28d4dc 100644
--- a/virt/kvm/arm/hypercalls.c
+++ b/virt/kvm/arm/hypercalls.c
@@ -3,6 +3,7 @@
 
 #include <linux/arm-smccc.h>
 #include <linux/kvm_host.h>
+#include <linux/clocksource_ids.h>
 
 #include <asm/kvm_emulate.h>
 
@@ -11,8 +12,11 @@
 
 int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 {
-	u32 func_id = smccc_get_function(vcpu);
+	struct system_time_snapshot systime_snapshot;
+	long arg[4];
+	u64 cycles;
 	long val = SMCCC_RET_NOT_SUPPORTED;
+	u32 func_id = smccc_get_function(vcpu);
 	u32 feature;
 	gpa_t gpa;
 
@@ -62,6 +66,44 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 		if (gpa != GPA_INVALID)
 			val = gpa;
 		break;
+	/*
+	 * This serves virtual kvm_ptp.
+	 * Four values will be passed back.
+	 * reg0 stores high 32-bit host ktime;
+	 * reg1 stores low 32-bit host ktime;
+	 * reg2 stores high 32-bit difference of host cycles and cntvoff;
+	 * reg3 stores low 32-bit difference of host cycles and cntvoff.
+	 */
+	case ARM_SMCCC_HYP_KVM_PTP_FUNC_ID:
+		/*
+		 * system time and counter value must captured in the same
+		 * time to keep consistency and precision.
+		 */
+		ktime_get_snapshot(&systime_snapshot);
+		if (systime_snapshot.cs_id != CSID_ARM_ARCH_COUNTER)
+			break;
+		arg[0] = upper_32_bits(systime_snapshot.real);
+		arg[1] = lower_32_bits(systime_snapshot.real);
+		/*
+		 * which of virtual counter or physical counter being
+		 * asked for is decided by the first argument.
+		 */
+		feature = smccc_get_arg1(vcpu);
+		switch (feature) {
+		case ARM_SMCCC_HYP_KVM_PTP_PHY:
+			cycles = systime_snapshot.cycles;
+			break;
+		case ARM_SMCCC_HYP_KVM_PTP_VIRT:
+		default:
+			cycles = systime_snapshot.cycles -
+			vcpu_vtimer(vcpu)->cntvoff;
+		}
+		arg[2] = upper_32_bits(cycles);
+		arg[3] = lower_32_bits(cycles);
+
+		smccc_set_retval(vcpu, arg[0], arg[1], arg[2], arg[3]);
+		return 1;
+
 	default:
 		return kvm_psci_call(vcpu);
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
