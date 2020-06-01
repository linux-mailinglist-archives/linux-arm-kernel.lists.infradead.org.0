Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E23881EA635
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 16:47:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7bx/r0K7ZofoBKYgIOEvEnwEur5MyH31S4bSRJRzg1A=; b=KrIAsmDX2hTrQl
	ve9VSVs8ZmaWrKoSS+rFEWWmrMeBGZcL3h/BZPoc5iRgEbXc5c2GWVY7k8OsoggcTlIPQq1hGQ9ZY
	gUToDW/1ujkXfxIqSxIF9IZBIarktVXthzWoTastsFZ1MyO+SYMoqznatsjJ7z4ro8inciAHelQR3
	/qvVHIPt9KUdsIv0rCzCAAPSb0ZN4G04pccj1VVqGMg9s0Bphr5IBvUUR5Er0psYD6fov6ND9ZiDS
	op4rLMTAsdFxvtpKtIaW3Wf0HmWKXM4eg6wqxye8LFmk7rbFQBF3aneO6iPHFzC2m9vblA6YgOodq
	EQOMsPaQIDwAHiOjK2fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jflj5-0000By-3P; Mon, 01 Jun 2020 14:47:43 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfliv-0000AX-90
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 14:47:34 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 87036E95A74B1ED3EDA3;
 Mon,  1 Jun 2020 22:47:28 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.487.0; Mon, 1 Jun 2020 22:47:22 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>, <suzuki.poulose@arm.com>,
 <maz@kernel.org>, <steven.price@arm.com>, <guohanjun@huawei.com>,
 <olof@lixom.net>
Subject: [RFC PATCH v4 1/2] arm64: tlb: Detect the ARMv8.4 TLBI RANGE feature
Date: Mon, 1 Jun 2020 22:47:12 +0800
Message-ID: <20200601144713.2222-2-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200601144713.2222-1-yezhenyu2@huawei.com>
References: <20200601144713.2222-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_074733_509580_042BE01D 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arch@vger.kernel.org, yezhenyu2@huawei.com,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARMv8.4-TLBI provides TLBI invalidation instruction that apply to a
range of input addresses. This patch detect this feature.

Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
---
 arch/arm64/include/asm/cpucaps.h |  3 ++-
 arch/arm64/include/asm/sysreg.h  |  4 ++++
 arch/arm64/kernel/cpufeature.c   | 11 +++++++++++
 3 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index 8eb5a088ae65..950095a72617 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -61,7 +61,8 @@
 #define ARM64_HAS_AMU_EXTN			51
 #define ARM64_HAS_ADDRESS_AUTH			52
 #define ARM64_HAS_GENERIC_AUTH			53
+#define ARM64_HAS_TLBI_RANGE			54
 
-#define ARM64_NCAPS				54
+#define ARM64_NCAPS				55
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index c4ac0ac25a00..4cc3efd633bc 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -594,6 +594,7 @@
 
 /* id_aa64isar0 */
 #define ID_AA64ISAR0_RNDR_SHIFT		60
+#define ID_AA64ISAR0_TLBI_RANGE_SHIFT	56
 #define ID_AA64ISAR0_TS_SHIFT		52
 #define ID_AA64ISAR0_FHM_SHIFT		48
 #define ID_AA64ISAR0_DP_SHIFT		44
@@ -607,6 +608,9 @@
 #define ID_AA64ISAR0_SHA1_SHIFT		8
 #define ID_AA64ISAR0_AES_SHIFT		4
 
+#define ID_AA64ISAR0_TLBI_RANGE_NI	0x0
+#define ID_AA64ISAR0_TLBI_RANGE		0x2
+
 /* id_aa64isar1 */
 #define ID_AA64ISAR1_I8MM_SHIFT		52
 #define ID_AA64ISAR1_DGH_SHIFT		48
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9fac745aa7bb..31bcfd0722b5 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -124,6 +124,7 @@ static bool __system_matches_cap(unsigned int n);
  */
 static const struct arm64_ftr_bits ftr_id_aa64isar0[] = {
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_RNDR_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_TLBI_RANGE_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_TS_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_FHM_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_DP_SHIFT, 4, 0),
@@ -1779,6 +1780,16 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.min_field_value = 1,
 	},
 #endif
+	{
+		.desc = "TLB range maintenance instruction",
+		.capability = ARM64_HAS_TLBI_RANGE,
+		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.matches = has_cpuid_feature,
+		.sys_reg = SYS_ID_AA64ISAR0_EL1,
+		.field_pos = ID_AA64ISAR0_TLBI_RANGE_SHIFT,
+		.sign = FTR_UNSIGNED,
+		.min_field_value = ID_AA64ISAR0_TLBI_RANGE,
+	},
 	{},
 };
 
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
