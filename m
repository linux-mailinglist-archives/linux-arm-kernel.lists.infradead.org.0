Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC34AE2FE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 13:04:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MfZxPEDUoYxevOKp1/pr+Uq9EPyaLbvIk0JKvrLNOWY=; b=EV94nveD4W9+F2iUoMgaxlwnzx
	kaX+UkQsR6W6ADDHX1BEYzUc7k1caUftD0ISCZhJ04OK7xZh8LOySpkWJg340jbOZX2H72TyW2Y+E
	H1j8+LXYHYVvczZCqrX0s66JfrVL4sfJmATMcJm0ERkwZXBevnp/nP6Yn+6rZdocS5p1EN2SPu3VI
	pSwoIemB3R0lHLr5nAKWL2NSj4A1sQXXa2ZVAodez4YG3TkknQdZi2ETHGU/mgTys7yLR1jCRJ/qz
	kh7I89PRC2AOrcu7/wA/rLodO1JczsBnxf0zFT2rQLBoUYXJxDaR8iiWj3zmMTu4L5ZWmHkR5vkbp
	VJTixZ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNauJ-0007eh-Mw; Thu, 24 Oct 2019 11:03:55 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNatH-0006pv-QV
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 11:02:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6C8A7AD;
 Thu, 24 Oct 2019 04:02:50 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C545E3F71A;
 Thu, 24 Oct 2019 04:02:45 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com
Subject: [RFC PATCH v6 5/7] psci: Add hvc call service for ptp_kvm.
Date: Thu, 24 Oct 2019 19:02:07 +0800
Message-Id: <20191024110209.21328-6-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024110209.21328-1-jianyong.wu@arm.com>
References: <20191024110209.21328-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_040251_977326_3C24F7FA 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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

This patch is the base of ptp_kvm for arm64.
ptp_kvm modules will call hvc to get this service.
The service offers real time and counter cycle of host for guest.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 drivers/clocksource/arm_arch_timer.c |  2 ++
 include/clocksource/arm_arch_timer.h |  4 ++++
 include/linux/arm-smccc.h            | 12 ++++++++++++
 virt/kvm/arm/psci.c                  | 22 ++++++++++++++++++++++
 4 files changed, 40 insertions(+)

diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
index 07e57a49d1e8..e4ad38042ef6 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -29,6 +29,7 @@
 #include <asm/virt.h>
 
 #include <clocksource/arm_arch_timer.h>
+#include <linux/clocksource_ids.h>
 
 #define CNTTIDR		0x08
 #define CNTTIDR_VIRT(n)	(BIT(1) << ((n) * 4))
@@ -188,6 +189,7 @@ static u64 arch_counter_read_cc(const struct cyclecounter *cc)
 static struct clocksource clocksource_counter = {
 	.name	= "arch_sys_counter",
 	.rating	= 400,
+	.id	= CSID_ARM_ARCH_COUNTER,
 	.read	= arch_counter_read,
 	.mask	= CLOCKSOURCE_MASK(56),
 	.flags	= CLOCK_SOURCE_IS_CONTINUOUS,
diff --git a/include/clocksource/arm_arch_timer.h b/include/clocksource/arm_arch_timer.h
index 1d68d5613dae..426d749e8cf8 100644
--- a/include/clocksource/arm_arch_timer.h
+++ b/include/clocksource/arm_arch_timer.h
@@ -104,6 +104,10 @@ static inline bool arch_timer_evtstrm_available(void)
 	return false;
 }
 
+bool is_arm_arch_counter(void *unuse)
+{
+	return false;
+}
 #endif
 
 #endif
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 6f82c87308ed..aafb6bac167d 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -94,6 +94,7 @@
 
 /* KVM "vendor specific" services */
 #define ARM_SMCCC_KVM_FUNC_FEATURES		0
+#define ARM_SMCCC_KVM_PTP			1
 #define ARM_SMCCC_KVM_FUNC_FEATURES_2		127
 #define ARM_SMCCC_KVM_NUM_FUNCS			128
 
@@ -103,6 +104,17 @@
 			   ARM_SMCCC_OWNER_VENDOR_HYP,			\
 			   ARM_SMCCC_KVM_FUNC_FEATURES)
 
+/*
+ * This ID used for virtual ptp kvm clock and it will pass second value
+ * and nanosecond value of host real time and system counter by vcpu
+ * register to guest.
+ */
+#define ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID				\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   ARM_SMCCC_OWNER_VENDOR_HYP,			\
+			   ARM_SMCCC_KVM_PTP)
+
 #ifndef __ASSEMBLY__
 
 #include <linux/linkage.h>
diff --git a/virt/kvm/arm/psci.c b/virt/kvm/arm/psci.c
index 0debf49bf259..339bcbafac7b 100644
--- a/virt/kvm/arm/psci.c
+++ b/virt/kvm/arm/psci.c
@@ -15,6 +15,7 @@
 #include <asm/kvm_host.h>
 
 #include <kvm/arm_psci.h>
+#include <linux/clocksource_ids.h>
 
 /*
  * This is an implementation of the Power State Coordination Interface
@@ -392,6 +393,8 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 	u32 func_id = smccc_get_function(vcpu);
 	u32 val[4] = {};
 	u32 option;
+	u64 cycles;
+	struct system_time_snapshot systime_snapshot;
 
 	val[0] = SMCCC_RET_NOT_SUPPORTED;
 
@@ -431,6 +434,25 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 	case ARM_SMCCC_VENDOR_HYP_KVM_FEATURES_FUNC_ID:
 		val[0] = BIT(ARM_SMCCC_KVM_FUNC_FEATURES);
 		break;
+	/*
+	 * This will used for virtual ptp kvm clock. three
+	 * values will be passed back.
+	 * reg0 stores high 32-bit host ktime;
+	 * reg1 stores low 32-bit host ktime;
+	 * reg2 stores high 32-bit difference of host cycles and cntvoff;
+	 * reg3 stores low 32-bit difference of host cycles and cntvoff.
+	 */
+	case ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID:
+		ktime_get_snapshot(&systime_snapshot);
+		if (systime_snapshot.cs_id != CSID_ARM_ARCH_COUNTER)
+			return kvm_psci_call(vcpu);
+		val[0] = systime_snapshot.real >> 32;
+		val[1] = systime_snapshot.real << 32 >> 32;
+		cycles = systime_snapshot.cycles -
+			 vcpu_vtimer(vcpu)->cntvoff;
+		val[2] = cycles >> 32;
+		val[3] = cycles << 32 >> 32;
+		break;
 	default:
 		return kvm_psci_call(vcpu);
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
