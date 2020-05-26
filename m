Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1039A1DE243
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 10:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tUvwKV6ORbME6B8t8hTHwcYEsAlodvgWTIU8cu/sos4=; b=BfW5bI2sG2It1v/s0IoFqHI28P
	3V/rknKr67s36t0vJ76k6EbYnlfTR2MqUxsKPnFgDFTvGeSKmEy8XojF3kS1M2Pvh/6aWXu+zaU8h
	yCAcEW5zkA0pnkgGSDbNjDL0bjRTb42Wx1RJnzWm7vxLaapAD/P9dviPEjgs2DlMVSmFhbBGsiU3y
	BrRGibB/REwcntp0kPgQz3x/G7SVonYs+uaGMoV4d1e+2RphWomLbZqOr7dfqDrz1H6qy/63o/WA1
	82139eMB4YwCk4HGFH3Detf76Wsn0Zm4842Xrb36kGkE8EMlUPYUvNDNFhd7ZvRzvjSoXN7HMud7v
	WN9CXIRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc3DN-0005zE-Ho; Fri, 22 May 2020 08:39:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc3Bi-0004yk-2B
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 08:37:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C7F8855D;
 Fri, 22 May 2020 01:37:52 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F34DC3F52E;
 Fri, 22 May 2020 01:37:46 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com
Subject: [RFC PATCH v12 02/11] arm/arm64: KVM: Advertise KVM UID to guests via
 SMCCC
Date: Fri, 22 May 2020 16:37:15 +0800
Message-Id: <20200522083724.38182-3-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200522083724.38182-1-jianyong.wu@arm.com>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_013754_172680_36F45D05 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
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

From: Will Deacon <will@kernel.org>

We can advertise ourselves to guests as KVM and provide a basic features
bitmap for discoverability of future hypervisor services.

Cc: Marc Zyngier <maz@kernel.org>
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 virt/kvm/arm/hypercalls.c | 29 +++++++++++++++++++----------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
index 550dfa3e53cd..db6dce3d0e23 100644
--- a/virt/kvm/arm/hypercalls.c
+++ b/virt/kvm/arm/hypercalls.c
@@ -12,13 +12,13 @@
 int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 {
 	u32 func_id = smccc_get_function(vcpu);
-	long val = SMCCC_RET_NOT_SUPPORTED;
+	u32 val[4] = {SMCCC_RET_NOT_SUPPORTED};
 	u32 feature;
 	gpa_t gpa;
 
 	switch (func_id) {
 	case ARM_SMCCC_VERSION_FUNC_ID:
-		val = ARM_SMCCC_VERSION_1_1;
+		val[0] = ARM_SMCCC_VERSION_1_1;
 		break;
 	case ARM_SMCCC_ARCH_FEATURES_FUNC_ID:
 		feature = smccc_get_arg1(vcpu);
@@ -28,10 +28,10 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 			case KVM_BP_HARDEN_UNKNOWN:
 				break;
 			case KVM_BP_HARDEN_WA_NEEDED:
-				val = SMCCC_RET_SUCCESS;
+				val[0] = SMCCC_RET_SUCCESS;
 				break;
 			case KVM_BP_HARDEN_NOT_REQUIRED:
-				val = SMCCC_RET_NOT_REQUIRED;
+				val[0] = SMCCC_RET_NOT_REQUIRED;
 				break;
 			}
 			break;
@@ -41,31 +41,40 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 			case KVM_SSBD_UNKNOWN:
 				break;
 			case KVM_SSBD_KERNEL:
-				val = SMCCC_RET_SUCCESS;
+				val[0] = SMCCC_RET_SUCCESS;
 				break;
 			case KVM_SSBD_FORCE_ENABLE:
 			case KVM_SSBD_MITIGATED:
-				val = SMCCC_RET_NOT_REQUIRED;
+				val[0] = SMCCC_RET_NOT_REQUIRED;
 				break;
 			}
 			break;
 		case ARM_SMCCC_HV_PV_TIME_FEATURES:
-			val = SMCCC_RET_SUCCESS;
+			val[0] = SMCCC_RET_SUCCESS;
 			break;
 		}
 		break;
 	case ARM_SMCCC_HV_PV_TIME_FEATURES:
-		val = kvm_hypercall_pv_features(vcpu);
+		val[0] = kvm_hypercall_pv_features(vcpu);
 		break;
 	case ARM_SMCCC_HV_PV_TIME_ST:
 		gpa = kvm_init_stolen_time(vcpu);
 		if (gpa != GPA_INVALID)
-			val = gpa;
+			val[0] = gpa;
+		break;
+	case ARM_SMCCC_VENDOR_HYP_CALL_UID_FUNC_ID:
+		val[0] = ARM_SMCCC_VENDOR_HYP_UID_KVM_REG_0;
+		val[1] = ARM_SMCCC_VENDOR_HYP_UID_KVM_REG_1;
+		val[2] = ARM_SMCCC_VENDOR_HYP_UID_KVM_REG_2;
+		val[3] = ARM_SMCCC_VENDOR_HYP_UID_KVM_REG_3;
+		break;
+	case ARM_SMCCC_VENDOR_HYP_KVM_FEATURES_FUNC_ID:
+		val[0] = BIT(ARM_SMCCC_KVM_FUNC_FEATURES);
 		break;
 	default:
 		return kvm_psci_call(vcpu);
 	}
 
-	smccc_set_retval(vcpu, val, 0, 0, 0);
+	smccc_set_retval(vcpu, val[0], val[1], val[2], val[3]);
 	return 1;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
