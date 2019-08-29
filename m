Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2827A1925
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:45:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwqEdcOW8F84CkBtWM4h/3ZD8vVgctmG7jqXz1ChBK0=; b=Ykn/dJD1bJ1N6W
	Ivf/DRPCboAxc0r+6jXvF8SL4tNRR1kG/RpdbcO1OIaG51bIQk7yRTM1cfET6zVHTEpb252QuTaMI
	FlfIQZEe9eHtx1EwLOG98MOhjtSJ/uPNBIiE0j712FimPYWH3I7YSzSSOO3Mkwz+nMLEOPyg/Za33
	sfcw63RDqI/FA5m3DqswF5tM2SsLIxZ1mu7EBRlrCdXtbgJ2uUG01qPmCQWP+ph+Kw5NehaJJHU5N
	OMalglkANCR3gu82aWJPkObU2NJJc6ZZQaBJq0qaWzygR+l3jeXv96OlL6PwckgQX8VaVI9Ojbtkl
	ESy4qdMpx9ao29Mn1X5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Iry-0008M3-Vn; Thu, 29 Aug 2019 11:45:39 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ij4-0007ER-9W
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:36:28 +0000
Received: by mail-pl1-x642.google.com with SMTP id d3so1463222plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yC2M+WqtpDn8WEqkn0+0Dw3Z53HTrfg3c6ZZe0WXdnU=;
 b=GxHvDA/6fmrmac7D30qhXaKJnx1ZeBV+vKF0Tl5JzbIvDOFX05R94gDcyfHQmLOLs1
 plEfoetXfkZlVD6jwNSSr7oRBDMLpXF1WXjHaM6r3KZ6yR/NLXnK/9xdwHwCJR6SrOI9
 Uh9KgJGdolnR8ogY8td4UHSXUXFbzv1+d2SksDGk/S1Uor4QDfVW4f15kIW/7Wnk90pV
 uLJVdO2pxy5/65zcH+bHojgJlKtkGrGb5anNzESVrsYjfXpk2M2brqhZOJXeGljU7Asi
 QiAmassVz/TKw/MKJQpLE7lUihCvmP7XSrpvpfsVaJlL1bQ+U+GUOVqgJ1LhBGmXRvvq
 Nh5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yC2M+WqtpDn8WEqkn0+0Dw3Z53HTrfg3c6ZZe0WXdnU=;
 b=GyPVsRAU2gPWuptUfXIeWrFbmUz7FOo7iq/I1Ey3g9sfr3dz1rTv69zq1yu15rhTbQ
 pohxp1Iw03KWxwm9Mp+D25zHcQGuwP04mOtKTol18FkNEHqb/YFBqnU//h5epDr/R94Q
 1ZsXTAGb/5AugtxOEwbV4e9DkCWSDcgLAdsQH0u6IWaVViQaCX7DJO9bCWndK2Vkejro
 3oA6nNFw4EAvaShnD1psCkTWt/lkCz46BterXEVeWyNY1NRYa7Xm+Fv2SBySlqtPtVLV
 mLhyHga0YDrfahZEskMIzfT3KyEjfhCqNFV3pk1mivXQEaQl7iFZsIWVIAgAztwsqmW4
 27oQ==
X-Gm-Message-State: APjAAAU4IZThjzsqYmBsrHVH3f+Ev+ymgDgh7d5yNQfYc3yLOTaUxDHH
 GrFDvuBfNkldQsYrJEnhE0NF/gCvbJw=
X-Google-Smtp-Source: APXvYqx5d8XrcYQBxr7D45ys1DAr/pGsT/J8kM7yADQ1DxFf0pEobIAS1VJ1XjYoThFKRBwqHif4Lg==
X-Received: by 2002:a17:902:f30e:: with SMTP id
 gb14mr9461817plb.32.1567078585655; 
 Thu, 29 Aug 2019 04:36:25 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id w2sm2198815pjr.27.2019.08.29.04.36.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:36:25 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 35/44] ARM: 8478/2: arm/arm64: add arm-smccc
Date: Thu, 29 Aug 2019 17:04:20 +0530
Message-Id: <d3d100c6b807463c10962da5d0232cd965a47900.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043626_419277_44389E15 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jens Wiklander <jens.wiklander@linaro.org>

commit 98dd64f34f47ce19b388d9015f767f48393a81eb upstream.

Adds helpers to do SMC and HVC based on ARM SMC Calling Convention.
CONFIG_HAVE_ARM_SMCCC is enabled for architectures that may support the
SMC or HVC instruction. It's the responsibility of the caller to know if
the SMC instruction is supported by the platform.

This patch doesn't provide an implementation of the declared functions.
Later patches will bring in implementations and set
CONFIG_HAVE_ARM_SMCCC for ARM and ARM64 respectively.

Reviewed-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
[ v4.4: Added #ifndef __ASSEMBLY__ section to fix compilation issues ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/firmware/Kconfig  |   3 ++
 include/linux/arm-smccc.h | 107 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 110 insertions(+)
 create mode 100644 include/linux/arm-smccc.h

diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index cf478fe6b335..49a3a1185bb6 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -173,6 +173,9 @@ config QCOM_SCM_64
 	def_bool y
 	depends on QCOM_SCM && ARM64
 
+config HAVE_ARM_SMCCC
+	bool
+
 source "drivers/firmware/broadcom/Kconfig"
 source "drivers/firmware/google/Kconfig"
 source "drivers/firmware/efi/Kconfig"
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
new file mode 100644
index 000000000000..611d10580340
--- /dev/null
+++ b/include/linux/arm-smccc.h
@@ -0,0 +1,107 @@
+/*
+ * Copyright (c) 2015, Linaro Limited
+ *
+ * This software is licensed under the terms of the GNU General Public
+ * License version 2, as published by the Free Software Foundation, and
+ * may be copied, distributed, and modified under those terms.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#ifndef __LINUX_ARM_SMCCC_H
+#define __LINUX_ARM_SMCCC_H
+
+#include <linux/linkage.h>
+#include <linux/types.h>
+
+/*
+ * This file provides common defines for ARM SMC Calling Convention as
+ * specified in
+ * http://infocenter.arm.com/help/topic/com.arm.doc.den0028a/index.html
+ */
+
+#define ARM_SMCCC_STD_CALL		0
+#define ARM_SMCCC_FAST_CALL		1
+#define ARM_SMCCC_TYPE_SHIFT		31
+
+#define ARM_SMCCC_SMC_32		0
+#define ARM_SMCCC_SMC_64		1
+#define ARM_SMCCC_CALL_CONV_SHIFT	30
+
+#define ARM_SMCCC_OWNER_MASK		0x3F
+#define ARM_SMCCC_OWNER_SHIFT		24
+
+#define ARM_SMCCC_FUNC_MASK		0xFFFF
+
+#define ARM_SMCCC_IS_FAST_CALL(smc_val)	\
+	((smc_val) & (ARM_SMCCC_FAST_CALL << ARM_SMCCC_TYPE_SHIFT))
+#define ARM_SMCCC_IS_64(smc_val) \
+	((smc_val) & (ARM_SMCCC_SMC_64 << ARM_SMCCC_CALL_CONV_SHIFT))
+#define ARM_SMCCC_FUNC_NUM(smc_val)	((smc_val) & ARM_SMCCC_FUNC_MASK)
+#define ARM_SMCCC_OWNER_NUM(smc_val) \
+	(((smc_val) >> ARM_SMCCC_OWNER_SHIFT) & ARM_SMCCC_OWNER_MASK)
+
+#define ARM_SMCCC_CALL_VAL(type, calling_convention, owner, func_num) \
+	(((type) << ARM_SMCCC_TYPE_SHIFT) | \
+	((calling_convention) << ARM_SMCCC_CALL_CONV_SHIFT) | \
+	(((owner) & ARM_SMCCC_OWNER_MASK) << ARM_SMCCC_OWNER_SHIFT) | \
+	((func_num) & ARM_SMCCC_FUNC_MASK))
+
+#define ARM_SMCCC_OWNER_ARCH		0
+#define ARM_SMCCC_OWNER_CPU		1
+#define ARM_SMCCC_OWNER_SIP		2
+#define ARM_SMCCC_OWNER_OEM		3
+#define ARM_SMCCC_OWNER_STANDARD	4
+#define ARM_SMCCC_OWNER_TRUSTED_APP	48
+#define ARM_SMCCC_OWNER_TRUSTED_APP_END	49
+#define ARM_SMCCC_OWNER_TRUSTED_OS	50
+#define ARM_SMCCC_OWNER_TRUSTED_OS_END	63
+
+#ifndef __ASSEMBLY__
+
+/**
+ * struct arm_smccc_res - Result from SMC/HVC call
+ * @a0-a3 result values from registers 0 to 3
+ */
+struct arm_smccc_res {
+	unsigned long a0;
+	unsigned long a1;
+	unsigned long a2;
+	unsigned long a3;
+};
+
+/**
+ * arm_smccc_smc() - make SMC calls
+ * @a0-a7: arguments passed in registers 0 to 7
+ * @res: result values from registers 0 to 3
+ *
+ * This function is used to make SMC calls following SMC Calling Convention.
+ * The content of the supplied param are copied to registers 0 to 7 prior
+ * to the SMC instruction. The return values are updated with the content
+ * from register 0 to 3 on return from the SMC instruction.
+ */
+asmlinkage void arm_smccc_smc(unsigned long a0, unsigned long a1,
+			unsigned long a2, unsigned long a3, unsigned long a4,
+			unsigned long a5, unsigned long a6, unsigned long a7,
+			struct arm_smccc_res *res);
+
+/**
+ * arm_smccc_hvc() - make HVC calls
+ * @a0-a7: arguments passed in registers 0 to 7
+ * @res: result values from registers 0 to 3
+ *
+ * This function is used to make HVC calls following SMC Calling
+ * Convention.  The content of the supplied param are copied to registers 0
+ * to 7 prior to the HVC instruction. The return values are updated with
+ * the content from register 0 to 3 on return from the HVC instruction.
+ */
+asmlinkage void arm_smccc_hvc(unsigned long a0, unsigned long a1,
+			unsigned long a2, unsigned long a3, unsigned long a4,
+			unsigned long a5, unsigned long a6, unsigned long a7,
+			struct arm_smccc_res *res);
+
+#endif /*__ASSEMBLY__*/
+#endif /*__LINUX_ARM_SMCCC_H*/
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
