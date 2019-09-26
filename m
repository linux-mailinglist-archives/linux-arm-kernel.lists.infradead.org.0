Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1133BF1FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 13:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eRNISG5v8xSQfdo3JPIvfq9ncAyTNszvAT4XRduXs04=; b=gij4cVNIJJ4mumRb+RxfHWsIl4
	6wV+8MIYT0ZQ6krXvSzi0oBlOemeTjApGSQijintSQNwo1JnMJ7n6DeMFkKbcoyIG/ism72rOheoW
	f1PCUvb7LwrxgaJSiYGCoZD6jCOV/+ILMomCR+CmzEbEBxd/9tFl52yU7KpjFAD3s5jXPIT27BMOs
	p2KA2wfX6uO81FgikIhB2VOnWIVpod3oaqYg0f96AhnIW9oGqBfOs0n7tetpGP9WvYjlrNh+OonyX
	NdTElVXXH3kzpTo16Dt3OexwUt/3ah1HnPvUWf/U+2BXxlHH5q5ux0iQgb2+figfyXbQl3pi8SNjV
	BPbBq7nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDSAx-0005Wn-Tr; Thu, 26 Sep 2019 11:43:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDSAS-00051d-4g
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 11:42:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8954F142F;
 Thu, 26 Sep 2019 04:42:38 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EE0D73F67D;
 Thu, 26 Sep 2019 04:42:33 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 Will.Deacon@arm.com, suzuki.poulose@arm.com
Subject: [RFC PATCH v4 3/5] psci: Add hvc call service for ptp_kvm.
Date: Thu, 26 Sep 2019 19:42:10 +0800
Message-Id: <20190926114212.5322-4-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926114212.5322-1-jianyong.wu@arm.com>
References: <20190926114212.5322-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_044240_265931_4C9E150C 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

This patch is the base of ptp_kvm for arm64.
ptp_kvm modules will call hvc to get this service.
The service offers real time and counter cycle of host for guest.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 include/linux/arm-smccc.h | 12 ++++++++++++
 virt/kvm/arm/psci.c       | 18 ++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index a6e4d3e3d10a..bc0cdad10f35 100644
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
index 0debf49bf259..3f30fc42a5ca 100644
--- a/virt/kvm/arm/psci.c
+++ b/virt/kvm/arm/psci.c
@@ -392,6 +392,8 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 	u32 func_id = smccc_get_function(vcpu);
 	u32 val[4] = {};
 	u32 option;
+	u64 cycles;
+	struct system_time_snapshot systime_snapshot;
 
 	val[0] = SMCCC_RET_NOT_SUPPORTED;
 
@@ -431,6 +433,22 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
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
+		val[0] = systime_snapshot.real >> 32;
+		val[1] = systime_snapshot.real << 32 >> 32;
+		cycles = systime_snapshot.cycles - vcpu_vtimer(vcpu)->cntvoff;
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
