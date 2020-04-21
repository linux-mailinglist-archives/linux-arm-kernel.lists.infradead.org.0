Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D271B2A16
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dtt5CNn0sVPaXSyTZm0jJIeWdOiuWUXO3s2OXAdBBos=; b=DQZH151lJ31QZW
	RIXA+OvoLFTHxaQgTOCwuHbhhbcvCkF/sPLuTUB3OO7TwFzY8Z9rBj3qwARXdeCNven4fjPKaRhXx
	d7Noq+xANiI+sBtDcKdjSowpdiHi3Mq84EII8BuK/O+Ux+m/EkiXo7NCpiF2zRX+XhmTbXAVYOtS/
	EkTWfFObQR26315tOPAjdXlRDpEtY72SnQxgi5nU+1PGYGEkr9o0MdXJ3KMoJVIT2ywy+bmkT94MX
	bCcqGGk6RLpjvpmKZLn7V3mSy4Q2GfisKhILg6KCWuPEOFhyRbjJCayTEY8AN80uy5tCrBv+PLfVV
	7GFObzE2JnlmgBy4S1dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQu1K-00052l-2K; Tue, 21 Apr 2020 14:37:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtuC-0002lj-Dc
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:29:52 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7DA0F2071C;
 Tue, 21 Apr 2020 14:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587479382;
 bh=8Oyrol7qvIM/UF0b+U1DBGmfmyKVdmtIZeJLwupvoTY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=alIzc6X4cji+C0EuciJTgrC0hul13+KTEuTvXvi6inXEUNSnGg2XYEGop/f/XPdG1
 47E46CpTHxC/IkFVxReR59fHwf4q6q7gRj4U2l2NbAnla/R4TDJSmSirtbB1S2bG6D
 mmGUetf71DqxW34otwpC39CuLQa2gLPo0nkIpm8I=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v2 6/8] arm64: cpufeature: Relax AArch32 system checks if EL1
 is 64-bit only
Date: Tue, 21 Apr 2020 15:29:20 +0100
Message-Id: <20200421142922.18950-7-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421142922.18950-1-will@kernel.org>
References: <20200421142922.18950-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_072944_604181_B25CF787 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>, kernel-team@android.com,
 Anshuman Khandual <anshuman.khandual@arm.com>, Marc Zyngier <maz@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Doug Anderson <dianders@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If AArch32 is not supported at EL1, the AArch32 feature register fields
no longer advertise support for some system features:

  * ISAR4.SMC
  * PFR1.{Virt_frac, Sec_frac, Virtualization, Security, ProgMod}

In which case, we don't need to emit "SANITY CHECK" failures for all of
them.

Add logic to relax the strictness of individual feature register fields
at runtime and use this for the fields above if 32-bit EL1 is not
supported.

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Tested-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/cpufeature.h |  7 ++++++
 arch/arm64/kernel/cpufeature.c      | 33 ++++++++++++++++++++++++++++-
 2 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index afe08251ff95..f5c4672e498b 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -551,6 +551,13 @@ static inline bool id_aa64mmfr0_mixed_endian_el0(u64 mmfr0)
 		cpuid_feature_extract_unsigned_field(mmfr0, ID_AA64MMFR0_BIGENDEL0_SHIFT) == 0x1;
 }
 
+static inline bool id_aa64pfr0_32bit_el1(u64 pfr0)
+{
+	u32 val = cpuid_feature_extract_unsigned_field(pfr0, ID_AA64PFR0_EL1_SHIFT);
+
+	return val == ID_AA64PFR0_EL1_32BIT_64BIT;
+}
+
 static inline bool id_aa64pfr0_32bit_el0(u64 pfr0)
 {
 	u32 val = cpuid_feature_extract_unsigned_field(pfr0, ID_AA64PFR0_EL0_SHIFT);
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 6892b2440676..7e0dbe2a2f2d 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -715,6 +715,25 @@ static int check_update_ftr_reg(u32 sys_id, int cpu, u64 val, u64 boot)
 	return 1;
 }
 
+static void relax_cpu_ftr_reg(u32 sys_id, int field)
+{
+	const struct arm64_ftr_bits *ftrp;
+	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id);
+
+	if (WARN_ON(!regp))
+		return;
+
+	for (ftrp = regp->ftr_bits; ftrp->width; ftrp++) {
+		if (ftrp->shift == field) {
+			regp->strict_mask &= ~arm64_ftr_mask(ftrp);
+			break;
+		}
+	}
+
+	/* Bogus field? */
+	WARN_ON(!ftrp->width);
+}
+
 static int update_32bit_cpu_features(int cpu, struct cpuinfo_arm64 *info,
 				     struct cpuinfo_arm64 *boot)
 {
@@ -729,6 +748,19 @@ static int update_32bit_cpu_features(int cpu, struct cpuinfo_arm64 *info,
 	if (!id_aa64pfr0_32bit_el0(pfr0))
 		return taint;
 
+	/*
+	 * If we don't have AArch32 at EL1, then relax the strictness of
+	 * EL1-dependent register fields to avoid spurious sanity check fails.
+	 */
+	if (!id_aa64pfr0_32bit_el1(pfr0)) {
+		relax_cpu_ftr_reg(SYS_ID_ISAR4_EL1, ID_ISAR4_SMC_SHIFT);
+		relax_cpu_ftr_reg(SYS_ID_PFR1_EL1, ID_PFR1_VIRT_FRAC_SHIFT);
+		relax_cpu_ftr_reg(SYS_ID_PFR1_EL1, ID_PFR1_SEC_FRAC_SHIFT);
+		relax_cpu_ftr_reg(SYS_ID_PFR1_EL1, ID_PFR1_VIRTUALIZATION_SHIFT);
+		relax_cpu_ftr_reg(SYS_ID_PFR1_EL1, ID_PFR1_SECURITY_SHIFT);
+		relax_cpu_ftr_reg(SYS_ID_PFR1_EL1, ID_PFR1_PROGMOD_SHIFT);
+	}
+
 	taint |= check_update_ftr_reg(SYS_ID_DFR0_EL1, cpu,
 				      info->reg_id_dfr0, boot->reg_id_dfr0);
 	taint |= check_update_ftr_reg(SYS_ID_ISAR0_EL1, cpu,
@@ -773,7 +805,6 @@ static int update_32bit_cpu_features(int cpu, struct cpuinfo_arm64 *info,
 	return taint;
 }
 
-
 /*
  * Update system wide CPU feature registers with the values from a
  * non-boot CPU. Also performs SANITY checks to make sure that there
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
