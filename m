Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4D21B7B4C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRRffhQrZkF51dEg+4xTNUE/1mXq+418VJZvouS4fRs=; b=dmPW4l3I6eX7Ok
	kzy0J4hbQUan3KbnodoW4g8C/DH4MJZygYtHBOOn2XW/GyVFG2PGr/kZthLfNhp9wmutqD6BKbtEr
	mqrm8BYiM/Z2GmiOynpO2U39ZIbnuY/5sc0k4MDH22BSPuIXdUzSwQZhwwFQoZxO5HdAG2gjEW8bv
	Ix95f0TTl1I+1BmfDN8eIyYe3fxNXzlqL8m8XUe2gJ1PxDDqngyE+t0gQHXFrFmj/R5zLQAbfTm54
	MhrRd945rcwkmC6n7ktkOfxa5gHIzRDsNv6vmO5qMOIfPGdvhX2ALUvyirvOxBBtJ2QrSf8t+woVD
	iMxx5wRxG3ZJj2CA8IHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS11c-0000nq-P6; Fri, 24 Apr 2020 16:18:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS11Q-0000m2-9a
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 16:17:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C983731B;
 Fri, 24 Apr 2020 09:17:46 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A1733F68F;
 Fri, 24 Apr 2020 09:17:44 -0700 (PDT)
Date: Fri, 24 Apr 2020 17:17:42 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 21/23] arm64: mte: Check the DT memory nodes for MTE
 support
Message-ID: <20200424161742.GE5551@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-22-catalin.marinas@arm.com>
 <20200424135735.GB5551@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424135735.GB5551@gaia>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_091748_426055_76553B80 
X-CRM114-Status: GOOD (  27.01  )
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Suzuki K Poulose <Suzuki.Poulose@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Rob Herring <Rob.Herring@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-mm@kvack.org,
 Mark Rutland <mark.rutland@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 02:57:36PM +0100, Catalin Marinas wrote:
> On Tue, Apr 21, 2020 at 03:26:01PM +0100, Catalin Marinas wrote:
> > Even if the ID_AA64PFR1_EL1 register advertises the presence of MTE, it
> > is not guaranteed that the memory system on the SoC supports the
> > feature. In the absence of system-wide MTE support, the behaviour is
> > undefined and the kernel should not enable the MTE memory type in
> > MAIR_EL1.
> > 
> > For FDT, add an 'arm,armv8.5-memtag' property to the /memory nodes and
> > check for its presence during MTE probing. For example:
> > 
> > 	memory@80000000 {
> > 		device_type = "memory";
> > 		arm,armv8.5-memtag;
> > 		reg = <0x00000000 0x80000000 0 0x80000000>,
> > 		      <0x00000008 0x80000000 0 0x80000000>;
> > 	};
> > 
> > If the /memory nodes are not present in DT or if at least one node does
> > not support MTE, the feature will be disabled. On EFI systems, it is
> > assumed that the memory description matches the EFI memory map (if not,
> > it is considered a firmware bug).
> > 
> > MTE is not currently supported on ACPI systems.
> > 
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Rob Herring <Rob.Herring@arm.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Suzuki K Poulose <Suzuki.Poulose@arm.com>
> 
> This patch turns out to be incomplete. While it does not expose the
> HWCAP2_MTE to user when the above DT property is not present, it still
> allows user access to the ID_AA64PFR1_EL1.MTE field (via MRS emulations)
> since it is marked as visible.

Attempt below at moving the check to the CPUID fields setup. This way we
can avoid the original patch entirely since the sanitised id regs will
have a zero MTE field if DT doesn't support it.

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index afc315814563..0a24d36bf231 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -61,6 +61,7 @@ struct arm64_ftr_bits {
 	u8		shift;
 	u8		width;
 	s64		safe_val; /* safe value for FTR_EXACT features */
+	s64		(*filter)(const struct arm64_ftr_bits *, s64);
 };
 
 /*
@@ -542,7 +543,10 @@ cpuid_feature_extract_field(u64 features, int field, bool sign)
 
 static inline s64 arm64_ftr_value(const struct arm64_ftr_bits *ftrp, u64 val)
 {
-	return (s64)cpuid_feature_extract_field_width(val, ftrp->shift, ftrp->width, ftrp->sign);
+	s64 fval = (s64)cpuid_feature_extract_field_width(val, ftrp->shift, ftrp->width, ftrp->sign);
+	if (ftrp->filter)
+		fval = ftrp->filter(ftrp, fval);
+	return fval;
 }
 
 static inline bool id_aa64mmfr0_mixed_endian_el0(u64 mmfr0)
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index a32aad1d5b57..b0f37c77ec77 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -89,23 +89,28 @@ DEFINE_STATIC_KEY_ARRAY_FALSE(cpu_hwcap_keys, ARM64_NCAPS);
 EXPORT_SYMBOL(cpu_hwcap_keys);
 
 #define __ARM64_FTR_BITS(SIGNED, VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL) \
-	{						\
 		.sign = SIGNED,				\
 		.visible = VISIBLE,			\
 		.strict = STRICT,			\
 		.type = TYPE,				\
 		.shift = SHIFT,				\
 		.width = WIDTH,				\
-		.safe_val = SAFE_VAL,			\
-	}
+		.safe_val = SAFE_VAL
 
 /* Define a feature with unsigned values */
 #define ARM64_FTR_BITS(VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL) \
-	__ARM64_FTR_BITS(FTR_UNSIGNED, VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL)
+	{ __ARM64_FTR_BITS(FTR_UNSIGNED, VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL), }
 
 /* Define a feature with a signed value */
 #define S_ARM64_FTR_BITS(VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL) \
-	__ARM64_FTR_BITS(FTR_SIGNED, VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL)
+	{ __ARM64_FTR_BITS(FTR_SIGNED, VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL), }
+
+/* Define a feature with a filter function to process the field value */
+#define FILTERED_ARM64_FTR_BITS(SIGNED, VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL, filter_fn) \
+	{											\
+		__ARM64_FTR_BITS(SIGNED, VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL),	\
+		.filter = filter_fn,								\
+	}
 
 #define ARM64_FTR_END					\
 	{						\
@@ -120,6 +125,42 @@ static void cpu_enable_cnp(struct arm64_cpu_capabilities const *cap);
 
 static bool __system_matches_cap(unsigned int n);
 
+#ifdef CONFIG_ARM64_MTE
+s64 mte_ftr_filter(const struct arm64_ftr_bits *ftrp, s64 val)
+{
+	struct device_node *np;
+	static bool memory_checked = false;
+	static bool mte_capable = true;
+
+	/* EL0-only MTE is not supported by Linux, don't expose it */
+	if (val < ID_AA64PFR1_MTE)
+		return ID_AA64PFR1_MTE_NI;
+
+	if (memory_checked)
+		return mte_capable ? val : ID_AA64PFR1_MTE_NI;
+
+	if (!acpi_disabled) {
+		pr_warn("MTE not supported on ACPI systems\n");
+		return ID_AA64PFR1_MTE_NI;
+	}
+
+	/* check the DT "memory" nodes for MTE support */
+	for_each_node_by_type(np, "memory") {
+		memory_checked = true;
+		mte_capable &= of_property_read_bool(np, "arm,armv8.5-memtag");
+	}
+
+	if (!memory_checked || !mte_capable) {
+		pr_warn("System memory is not MTE-capable\n");
+		memory_checked = true;
+		mte_capable = false;
+		return ID_AA64PFR1_MTE_NI;
+	}
+
+	return val;
+}
+#endif
+
 /*
  * NOTE: Any changes to the visibility of features should be kept in
  * sync with the documentation of the CPU feature register ABI.
@@ -184,8 +225,10 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr0[] = {
 
 static const struct arm64_ftr_bits ftr_id_aa64pfr1[] = {
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR1_SSBS_SHIFT, 4, ID_AA64PFR1_SSBS_PSTATE_NI),
-	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_MTE),
-		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR1_MTE_SHIFT, 4, ID_AA64PFR1_MTE_NI),
+#ifdef CONFIG_ARM64_MTE
+	FILTERED_ARM64_FTR_BITS(FTR_UNSIGNED, FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE,
+				ID_AA64PFR1_MTE_SHIFT, 4, ID_AA64PFR1_MTE_NI, mte_ftr_filter),
+#endif
 	ARM64_FTR_END,
 };
 

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
