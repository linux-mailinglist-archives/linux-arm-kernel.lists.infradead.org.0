Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFC39972A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:43:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zRLUESzfTW1cjGb7zVkL8cB63znBtsBR1kQmucNzlmM=; b=tPxpuQYp6qoPe2kJhu019TVwm0
	B7DSkqbk612vg8lp/wU3JIxtbOZBhnTwc8j6igXlVMFqDaKvoHZDS3FhPeh/Y5imrKaeepgVOBndR
	7UZT8pQBZPbl5MnfU6agNbGzGMiRPYboosUxLfKads8DjlxK1dAfPtkaQGa8g86GcPycyKJzXvgS5
	NzITKh7ZdO+/tBGbGVJy4SrvAIB7QicifQj8ZmKFtevQ4kkEt8JiA/bXTS87MjTaDYdxBsdyl5PIg
	vRrRSfUeZzON8c+LpN5PYko00U4Wgo284QsFKvOGh8FFqjbfx9JiNzEcqIMccw1huqAX7mS56ZP/e
	8X1NTfXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0oJa-0005Be-Bu; Thu, 22 Aug 2019 14:43:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oIO-0004PL-8e
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 14:42:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA39215AB;
 Thu, 22 Aug 2019 07:42:35 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 64B853F706;
 Thu, 22 Aug 2019 07:42:34 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/7] arm64: cpufeature: Add feature to detect homogeneous
 systems
Date: Thu, 22 Aug 2019 15:42:16 +0100
Message-Id: <20190822144220.27860-4-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822144220.27860-1-raphael.gault@arm.com>
References: <20190822144220.27860-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_074236_398443_86E2C25B 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, raph.gault+kdev@gmail.com, peterz@infradead.org,
 catalin.marinas@arm.com, will.deacon@arm.com, acme@kernel.org,
 Raphael Gault <raphael.gault@arm.com>, mingo@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This feature is required in order to enable PMU counters direct
access from userspace only when the system is homogeneous.
This feature checks the model of each CPU brought online and compares it
to the boot CPU. If it differs then it is heterogeneous.

This CPU feature doesn't prevent different models of CPUs from being
hotplugged on, however if such a scenario happens, it will turn off the
feature. There is no possibility for the feature to be turned on again
by hotplugging off CPUs though.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 arch/arm64/include/asm/cpucaps.h    |  3 ++-
 arch/arm64/include/asm/cpufeature.h | 10 ++++++++++
 arch/arm64/kernel/cpufeature.c      | 28 ++++++++++++++++++++++++++++
 3 files changed, 40 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index f19fe4b9acc4..1cd73cf46116 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -52,7 +52,8 @@
 #define ARM64_HAS_IRQ_PRIO_MASKING		42
 #define ARM64_HAS_DCPODP			43
 #define ARM64_WORKAROUND_1463225		44
+#define ARM64_HAS_HOMOGENEOUS_PMU		45
 
-#define ARM64_NCAPS				45
+#define ARM64_NCAPS				46
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 407e2bf23676..c54a87896bbd 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -430,6 +430,16 @@ static inline void cpus_set_cap(unsigned int num)
 	}
 }
 
+static inline void cpus_unset_cap(unsigned int num)
+{
+	if (num >= ARM64_NCAPS) {
+		pr_warn("Attempt to unset an illegal CPU capability (%d >= %d)\n",
+			num, ARM64_NCAPS);
+	} else {
+		clear_bit(num, cpu_hwcaps);
+	}
+}
+
 static inline int __attribute_const__
 cpuid_feature_extract_signed_field_width(u64 features, int field, int width)
 {
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index f29f36a65175..07be444c1e31 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1248,6 +1248,23 @@ static bool can_use_gic_priorities(const struct arm64_cpu_capabilities *entry,
 }
 #endif
 
+static bool has_homogeneous_pmu(const struct arm64_cpu_capabilities *entry,
+				  int scope)
+{
+	u32 model = read_cpuid_id() & MIDR_CPU_MODEL_MASK;
+	struct cpuinfo_arm64 *boot = get_boot_cpu_data();
+
+	return  (boot->reg_midr & MIDR_CPU_MODEL_MASK) == model;
+}
+
+static void disable_homogeneous_cap(const struct arm64_cpu_capabilities *entry)
+{
+	if (!has_homogeneous_pmu(entry, entry->type)) {
+		pr_info("Disabling Homogeneous PMU (%d)", entry->capability);
+		cpus_unset_cap(entry->capability);
+	}
+}
+
 static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "GIC system register CPU interface",
@@ -1548,6 +1565,17 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.min_field_value = 1,
 	},
 #endif
+	{
+		/*
+		 * Detect whether the system is heterogeneous or
+		 * homogeneous
+		 */
+		.desc = "Homogeneous CPUs",
+		.capability = ARM64_HAS_HOMOGENEOUS_PMU,
+		.type = ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE,
+		.matches = has_homogeneous_pmu,
+		.cpu_enable = disable_homogeneous_cap,
+	},
 	{},
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
