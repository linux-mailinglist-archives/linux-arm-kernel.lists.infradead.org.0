Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00377122DBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 14:58:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iT9mBZcp8DjDHuZ+qx8Ok8FzSZ2GI6NDHIiRXUdW2b0=; b=VQ/rlK+QCWRvtW
	1lm+g8COYT8H8Kz+UOsCSW7Uj7u8fk6kVlSbL33RgfboxQrebMhBwLUOPaLigFNfFWPIYtbJlq4mp
	kki+qC4fujmR0XQqieWR/AYudemigrHRdfVTa36f9csY27mht3Hqze5WBbIoSw2QQaRFilAM8iCzD
	tdUOHGlLhKlu9kt0Ip1XzXcwHlhqwnUHTBkIWXsVULUsdhkNpGu1wM8W2AnlYStqrtXJUeCFyU5Br
	tgJkIQn6t2dbXtd+iHIPhSWlqwPoLpk565AiNlZ8XsIaEG0nV9ewKNfpIyIDLVuUUMmSmoc8XRsBt
	c15qGcqih1PlW8ov20RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDMN-0001sc-OM; Tue, 17 Dec 2019 13:57:59 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDL7-0000ts-5f
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 13:56:44 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 5E5388D9205F537191E2;
 Tue, 17 Dec 2019 21:56:30 +0800 (CST)
Received: from DESKTOP-1NISPDV.china.huawei.com (10.173.221.248) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Tue, 17 Dec 2019 21:56:22 +0800
From: <yezengruan@huawei.com>
To: <yezengruan@huawei.com>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <kvm@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <virtualization@lists.linux-foundation.org>
Subject: [PATCH 2/5] KVM: arm64: Implement PV_LOCK_FEATURES call
Date: Tue, 17 Dec 2019 21:55:46 +0800
Message-ID: <20191217135549.3240-3-yezengruan@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
In-Reply-To: <20191217135549.3240-1-yezengruan@huawei.com>
References: <20191217135549.3240-1-yezengruan@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.221.248]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_055641_889297_B97EA30A 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 daniel.lezcano@linaro.org, linux@armlinux.org.uk, steven.price@arm.com,
 james.morse@arm.com, maz@kernel.org, will@kernel.org,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Zengruan Ye <yezengruan@huawei.com>

This provides a mechanism for querying which paravirtualized lock
features are available in this hypervisor.

Also add the header file which defines the ABI for the paravirtualized
lock features we're about to add.

Signed-off-by: Zengruan Ye <yezengruan@huawei.com>
---
 arch/arm64/include/asm/pvlock-abi.h | 16 ++++++++++++++++
 include/linux/arm-smccc.h           | 13 +++++++++++++
 virt/kvm/arm/hypercalls.c           |  3 +++
 3 files changed, 32 insertions(+)
 create mode 100644 arch/arm64/include/asm/pvlock-abi.h

diff --git a/arch/arm64/include/asm/pvlock-abi.h b/arch/arm64/include/asm/pvlock-abi.h
new file mode 100644
index 000000000000..06e0c3d7710a
--- /dev/null
+++ b/arch/arm64/include/asm/pvlock-abi.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright(c) 2019 Huawei Technologies Co., Ltd
+ * Author: Zengruan Ye <yezengruan@huawei.com>
+ */
+
+#ifndef __ASM_PVLOCK_ABI_H
+#define __ASM_PVLOCK_ABI_H
+
+struct pvlock_vcpu_state {
+	__le64 preempted;
+	/* Structure must be 64 byte aligned, pad to that size */
+	u8 padding[56];
+} __packed;
+
+#endif
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 59494df0f55b..59e65a951959 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -377,5 +377,18 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
 			   0x21)
 
+/* Paravirtualised lock calls */
+#define ARM_SMCCC_HV_PV_LOCK_FEATURES				\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
+			   ARM_SMCCC_SMC_64,			\
+			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
+			   0x40)
+
+#define ARM_SMCCC_HV_PV_LOCK_PREEMPTED				\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
+			   ARM_SMCCC_SMC_64,			\
+			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
+			   0x41)
+
 #endif /*__ASSEMBLY__*/
 #endif /*__LINUX_ARM_SMCCC_H*/
diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
index 550dfa3e53cd..ff13871fd85a 100644
--- a/virt/kvm/arm/hypercalls.c
+++ b/virt/kvm/arm/hypercalls.c
@@ -52,6 +52,9 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 		case ARM_SMCCC_HV_PV_TIME_FEATURES:
 			val = SMCCC_RET_SUCCESS;
 			break;
+		case ARM_SMCCC_HV_PV_LOCK_FEATURES:
+			val = SMCCC_RET_SUCCESS;
+			break;
 		}
 		break;
 	case ARM_SMCCC_HV_PV_TIME_FEATURES:
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
