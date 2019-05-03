Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DC312E22
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 14:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ttYh1CZVtlof/CSW/qjPbGRxzY44KpzTJnjyKT3lZpo=; b=e9D7CxbfrEUdwF
	Ez9nICZmiORlsI0BZ3s9K9S/XqH4c1ypXSUCZJkdjkmFiLWghtIVXshC214SSxwXtQ1GxUnRJX0nC
	yvPSXt+BtM+XcRofpbg94UuURNrpG5VcOw1+U8BFqjucW09XOWXKToak219Z/+POjyxyamBPjIF5O
	wK9toF405jkTRJ5wRYyapSr9ZRyT75cBWfp2nlv8JR7vcPaJaLxMeKykVpEW7TJKlqFiVn8ZrpwgU
	bQa94zjK8wxoh1OnJA3pN4rj9+D6Yi0Qylei1WszMRIsQGop7Fi63Xp6qRSCAUlaDaB0+1qa/rXAo
	eYZmLxsYD9kolvMtLstQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXa3-0005OH-Tm; Fri, 03 May 2019 12:46:23 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXYp-00037h-JO
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:45:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6030780D;
 Fri,  3 May 2019 05:45:07 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 266D13F220;
 Fri,  3 May 2019 05:45:04 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 07/56] arm64/sve: Check SVE virtualisability
Date: Fri,  3 May 2019 13:43:38 +0100
Message-Id: <20190503124427.190206-8-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_054508_417732_5D47B516 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "zhang . lei" <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 kvmarm@lists.cs.columbia.edu, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Martin <Dave.Martin@arm.com>

Due to the way the effective SVE vector length is controlled and
trapped at different exception levels, certain mismatches in the
sets of vector lengths supported by different physical CPUs in the
system may prevent straightforward virtualisation of SVE at parity
with the host.

This patch analyses the extent to which SVE can be virtualised
safely without interfering with migration of vcpus between physical
CPUs, and rejects late secondary CPUs that would erode the
situation further.

It is left up to KVM to decide what to do with this information.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Tested-by: zhang.lei <zhang.lei@jp.fujitsu.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/include/asm/fpsimd.h |  1 +
 arch/arm64/kernel/cpufeature.c  |  2 +-
 arch/arm64/kernel/fpsimd.c      | 86 +++++++++++++++++++++++++++------
 3 files changed, 73 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/include/asm/fpsimd.h b/arch/arm64/include/asm/fpsimd.h
index dd1ad3950ef5..964adc9f312d 100644
--- a/arch/arm64/include/asm/fpsimd.h
+++ b/arch/arm64/include/asm/fpsimd.h
@@ -87,6 +87,7 @@ extern void sve_kernel_enable(const struct arm64_cpu_capabilities *__unused);
 extern u64 read_zcr_features(void);
 
 extern int __ro_after_init sve_max_vl;
+extern int __ro_after_init sve_max_virtualisable_vl;
 
 #ifdef CONFIG_ARM64_SVE
 
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 4061de10cea6..7f8cc51f0740 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1863,7 +1863,7 @@ static void verify_sve_features(void)
 	unsigned int len = zcr & ZCR_ELx_LEN_MASK;
 
 	if (len < safe_len || sve_verify_vq_map()) {
-		pr_crit("CPU%d: SVE: required vector length(s) missing\n",
+		pr_crit("CPU%d: SVE: vector length support mismatch\n",
 			smp_processor_id());
 		cpu_die_early();
 	}
diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index f59ea677cd42..b219796a4081 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -18,6 +18,7 @@
  */
 
 #include <linux/bitmap.h>
+#include <linux/bitops.h>
 #include <linux/bottom_half.h>
 #include <linux/bug.h>
 #include <linux/cache.h>
@@ -48,6 +49,7 @@
 #include <asm/sigcontext.h>
 #include <asm/sysreg.h>
 #include <asm/traps.h>
+#include <asm/virt.h>
 
 #define FPEXC_IOF	(1 << 0)
 #define FPEXC_DZF	(1 << 1)
@@ -130,14 +132,18 @@ static int sve_default_vl = -1;
 
 /* Maximum supported vector length across all CPUs (initially poisoned) */
 int __ro_after_init sve_max_vl = SVE_VL_MIN;
+int __ro_after_init sve_max_virtualisable_vl = SVE_VL_MIN;
 /* Set of available vector lengths, as vq_to_bit(vq): */
 static __ro_after_init DECLARE_BITMAP(sve_vq_map, SVE_VQ_MAX);
+/* Set of vector lengths present on at least one cpu: */
+static __ro_after_init DECLARE_BITMAP(sve_vq_partial_map, SVE_VQ_MAX);
 static void __percpu *efi_sve_state;
 
 #else /* ! CONFIG_ARM64_SVE */
 
 /* Dummy declaration for code that will be optimised out: */
 extern __ro_after_init DECLARE_BITMAP(sve_vq_map, SVE_VQ_MAX);
+extern __ro_after_init DECLARE_BITMAP(sve_vq_partial_map, SVE_VQ_MAX);
 extern void __percpu *efi_sve_state;
 
 #endif /* ! CONFIG_ARM64_SVE */
@@ -623,12 +629,6 @@ int sve_get_current_vl(void)
 	return sve_prctl_status(0);
 }
 
-/*
- * Bitmap for temporary storage of the per-CPU set of supported vector lengths
- * during secondary boot.
- */
-static DECLARE_BITMAP(sve_secondary_vq_map, SVE_VQ_MAX);
-
 static void sve_probe_vqs(DECLARE_BITMAP(map, SVE_VQ_MAX))
 {
 	unsigned int vq, vl;
@@ -654,6 +654,7 @@ static void sve_probe_vqs(DECLARE_BITMAP(map, SVE_VQ_MAX))
 void __init sve_init_vq_map(void)
 {
 	sve_probe_vqs(sve_vq_map);
+	bitmap_copy(sve_vq_partial_map, sve_vq_map, SVE_VQ_MAX);
 }
 
 /*
@@ -663,8 +664,11 @@ void __init sve_init_vq_map(void)
  */
 void sve_update_vq_map(void)
 {
-	sve_probe_vqs(sve_secondary_vq_map);
-	bitmap_and(sve_vq_map, sve_vq_map, sve_secondary_vq_map, SVE_VQ_MAX);
+	DECLARE_BITMAP(tmp_map, SVE_VQ_MAX);
+
+	sve_probe_vqs(tmp_map);
+	bitmap_and(sve_vq_map, sve_vq_map, tmp_map, SVE_VQ_MAX);
+	bitmap_or(sve_vq_partial_map, sve_vq_partial_map, tmp_map, SVE_VQ_MAX);
 }
 
 /*
@@ -673,18 +677,48 @@ void sve_update_vq_map(void)
  */
 int sve_verify_vq_map(void)
 {
-	int ret = 0;
+	DECLARE_BITMAP(tmp_map, SVE_VQ_MAX);
+	unsigned long b;
 
-	sve_probe_vqs(sve_secondary_vq_map);
-	bitmap_andnot(sve_secondary_vq_map, sve_vq_map, sve_secondary_vq_map,
-		      SVE_VQ_MAX);
-	if (!bitmap_empty(sve_secondary_vq_map, SVE_VQ_MAX)) {
+	sve_probe_vqs(tmp_map);
+
+	bitmap_complement(tmp_map, tmp_map, SVE_VQ_MAX);
+	if (bitmap_intersects(tmp_map, sve_vq_map, SVE_VQ_MAX)) {
 		pr_warn("SVE: cpu%d: Required vector length(s) missing\n",
 			smp_processor_id());
-		ret = -EINVAL;
+		return -EINVAL;
 	}
 
-	return ret;
+	if (!IS_ENABLED(CONFIG_KVM) || !is_hyp_mode_available())
+		return 0;
+
+	/*
+	 * For KVM, it is necessary to ensure that this CPU doesn't
+	 * support any vector length that guests may have probed as
+	 * unsupported.
+	 */
+
+	/* Recover the set of supported VQs: */
+	bitmap_complement(tmp_map, tmp_map, SVE_VQ_MAX);
+	/* Find VQs supported that are not globally supported: */
+	bitmap_andnot(tmp_map, tmp_map, sve_vq_map, SVE_VQ_MAX);
+
+	/* Find the lowest such VQ, if any: */
+	b = find_last_bit(tmp_map, SVE_VQ_MAX);
+	if (b >= SVE_VQ_MAX)
+		return 0; /* no mismatches */
+
+	/*
+	 * Mismatches above sve_max_virtualisable_vl are fine, since
+	 * no guest is allowed to configure ZCR_EL2.LEN to exceed this:
+	 */
+	if (sve_vl_from_vq(bit_to_vq(b)) <= sve_max_virtualisable_vl) {
+		pr_warn("SVE: cpu%d: Unsupported vector length(s) present\n",
+			smp_processor_id());
+		return -EINVAL;
+	}
+
+	return 0;
 }
 
 static void __init sve_efi_setup(void)
@@ -751,6 +785,8 @@ u64 read_zcr_features(void)
 void __init sve_setup(void)
 {
 	u64 zcr;
+	DECLARE_BITMAP(tmp_map, SVE_VQ_MAX);
+	unsigned long b;
 
 	if (!system_supports_sve())
 		return;
@@ -779,11 +815,31 @@ void __init sve_setup(void)
 	 */
 	sve_default_vl = find_supported_vector_length(64);
 
+	bitmap_andnot(tmp_map, sve_vq_partial_map, sve_vq_map,
+		      SVE_VQ_MAX);
+
+	b = find_last_bit(tmp_map, SVE_VQ_MAX);
+	if (b >= SVE_VQ_MAX)
+		/* No non-virtualisable VLs found */
+		sve_max_virtualisable_vl = SVE_VQ_MAX;
+	else if (WARN_ON(b == SVE_VQ_MAX - 1))
+		/* No virtualisable VLs?  This is architecturally forbidden. */
+		sve_max_virtualisable_vl = SVE_VQ_MIN;
+	else /* b + 1 < SVE_VQ_MAX */
+		sve_max_virtualisable_vl = sve_vl_from_vq(bit_to_vq(b + 1));
+
+	if (sve_max_virtualisable_vl > sve_max_vl)
+		sve_max_virtualisable_vl = sve_max_vl;
+
 	pr_info("SVE: maximum available vector length %u bytes per vector\n",
 		sve_max_vl);
 	pr_info("SVE: default vector length %u bytes per vector\n",
 		sve_default_vl);
 
+	/* KVM decides whether to support mismatched systems. Just warn here: */
+	if (sve_max_virtualisable_vl < sve_max_vl)
+		pr_warn("SVE: unvirtualisable vector lengths present\n");
+
 	sve_efi_setup();
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
