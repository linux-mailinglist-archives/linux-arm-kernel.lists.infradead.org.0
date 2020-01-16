Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C20D013DA6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 13:47:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ovl7Q3cM6PsmPLuCNNUV5E4qQMhxBrtYnKgTrlywR7o=; b=TdvsgzWO4TzueW
	mujsSqHW2ejrr+Me2oppkh0vYVdIdQjZH7rhLjpyuPoEeibW9uFt8s4mlzc82Y2WVup5einrg8KoE
	SQ8k5zQ7KXUTW5mk+/I1NGtuVtP5WCPxNtl9OmICAB8L4Lo468EMExyE/IfDBbotYAA7Y0Znn5Mw1
	leKFerMPxINob7htzjOxcdPBt1t5QMFOZClTBHX5BBGCm3uIlm+E1UnSd6C5s5ENghOjRqJoqHt0C
	+Le1gMiHUTGmxxJngPkr/m7nYKsUpP19hkZUSjCrR43TN9f1tFUj8RUGTt+NmHgmxYViGTIumyOLj
	MrOfxU/3CSBZVylZUl0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is4Yo-0005cd-GY; Thu, 16 Jan 2020 12:47:42 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is4YB-0005M8-LC
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:47:08 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 91DA06A5E57719B433F2;
 Thu, 16 Jan 2020 20:46:54 +0800 (CST)
Received: from DESKTOP-1NISPDV.china.huawei.com (10.173.221.248) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Thu, 16 Jan 2020 20:46:48 +0800
From: Zengruan Ye <yezengruan@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <virtualization@lists.linux-foundation.org>
Subject: [PATCH v3 4/8] KVM: arm64: Add SMCCC paravirtualised lock calls
Date: Thu, 16 Jan 2020 20:46:22 +0800
Message-ID: <20200116124626.1155-5-yezengruan@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
In-Reply-To: <20200116124626.1155-1-yezengruan@huawei.com>
References: <20200116124626.1155-1-yezengruan@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.221.248]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_044703_860407_0A12E506 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, peterz@infradead.org,
 maz@kernel.org, daniel.lezcano@linaro.org, linux@armlinux.org.uk,
 steven.price@arm.com, yezengruan@huawei.com, james.morse@arm.com,
 longman@redhat.com, catalin.marinas@arm.com, wanghaibin.wang@huawei.com,
 will@kernel.org, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add two new SMCCC compatible hypercalls for PV lock features:
 * ARM_SMCCC_VENDOR_HYP_KVM_PV_LOCK_FUNC_ID:  0x86000001
   - KVM_PV_LOCK_FEATURES:   0
   - KVM_PV_LOCK_PREEMPTED:  1

Also add the header file which defines the ABI for the paravirtualized
lock features we're about to add.

Signed-off-by: Zengruan Ye <yezengruan@huawei.com>
---
 arch/arm64/include/asm/pvlock-abi.h | 16 ++++++++++++++++
 include/linux/arm-smccc.h           | 10 ++++++++++
 2 files changed, 26 insertions(+)
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
index 2b2c295c9109..081be5f6a6be 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -394,14 +394,24 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 
 /* KVM "vendor specific" services */
 #define ARM_SMCCC_KVM_FUNC_FEATURES		0
+#define ARM_SMCCC_KVM_FUNC_PV_LOCK		1
 #define ARM_SMCCC_KVM_FUNC_FEATURES_2		127
 #define ARM_SMCCC_KVM_NUM_FUNCS			128
 
+#define KVM_PV_LOCK_FEATURES			0
+#define KVM_PV_LOCK_PREEMPTED			1
+
 #define ARM_SMCCC_VENDOR_HYP_KVM_FEATURES_FUNC_ID			\
 	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
 			   ARM_SMCCC_SMC_32,				\
 			   ARM_SMCCC_OWNER_VENDOR_HYP,			\
 			   ARM_SMCCC_KVM_FUNC_FEATURES)
 
+#define ARM_SMCCC_VENDOR_HYP_KVM_PV_LOCK_FUNC_ID			\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   ARM_SMCCC_OWNER_VENDOR_HYP,			\
+			   ARM_SMCCC_KVM_FUNC_PV_LOCK)
+
 #endif /*__ASSEMBLY__*/
 #endif /*__LINUX_ARM_SMCCC_H*/
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
