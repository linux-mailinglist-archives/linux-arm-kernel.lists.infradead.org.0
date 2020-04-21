Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 145761B2A14
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDVxcXuGdmfCMsCgAIUzsgroxuW0/NcRCovYJK6YfS4=; b=oh2WF0fkdIf4BK
	uv8Mzwse98XoZHCoxz89RGcdtKyE2kgqemkzAeqQIZy4FD0qzfoi+AWBxUaZgeYk7rkzp53+0uMNf
	37spmeOePM733c6oFfhDMxL9qVyy6+sTGfGa7Ej1cykF8nAwWYYMyF3E3KMf+79QGnOvC9rr9er88
	EISpoc3G4tUXPtq2k/kytSZboXR/PBDvMrjylo1LvPLu9xGMSwu/rmtl/VsCYbO5gY4RZTQ3Dbu0h
	YrfecsJbJRFxdwUtol5ey/qBAlI78stnJpm2fOvFqjZTAzln3iQDHSul9wcSbIVgDw7kPRRIHz4Ko
	yQWY+3ZvfJ4NBK0Fv1pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQu0y-0004ni-Hq; Tue, 21 Apr 2020 14:36:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtu9-0002jd-5E
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:29:49 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 16A81206B8;
 Tue, 21 Apr 2020 14:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587479380;
 bh=LrjuJODB+b4vgZl3OiZG3qomjA+lEJ+cv2JSlMbM668=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cfag7vOKhGuDQszuf8qcsuOkj854Qcq2K/wCIlMVJnG+ibupQKzTVpsS7jMgLYwnA
 PUsrItY2FEbfZ93JLjt31sN5Ag61fXnffxMrxgfbGqLF0HDCdTLgMZUMVcqHpTXeM5
 gS1BbQ41nHx/SFwanOk7rzdCd+1WSnTWAdCdvd10=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v2 5/8] arm64: cpufeature: Factor out checking of AArch32
 features
Date: Tue, 21 Apr 2020 15:29:19 +0100
Message-Id: <20200421142922.18950-6-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421142922.18950-1-will@kernel.org>
References: <20200421142922.18950-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_072941_388338_D6A7701E 
X-CRM114-Status: GOOD (  16.39  )
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

update_cpu_features() is pretty large, so split out the checking of the
AArch32 features into a separate function and call it after checking the
AArch64 features.

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Tested-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/cpufeature.c | 112 +++++++++++++++++++--------------
 1 file changed, 65 insertions(+), 47 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 7dfcdd9e75c1..6892b2440676 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -715,6 +715,65 @@ static int check_update_ftr_reg(u32 sys_id, int cpu, u64 val, u64 boot)
 	return 1;
 }
 
+static int update_32bit_cpu_features(int cpu, struct cpuinfo_arm64 *info,
+				     struct cpuinfo_arm64 *boot)
+{
+	int taint = 0;
+	u64 pfr0 = read_sanitised_ftr_reg(SYS_ID_AA64PFR0_EL1);
+
+	/*
+	 * If we don't have AArch32 at all then skip the checks entirely
+	 * as the register values may be UNKNOWN and we're not going to be
+	 * using them for anything.
+	 */
+	if (!id_aa64pfr0_32bit_el0(pfr0))
+		return taint;
+
+	taint |= check_update_ftr_reg(SYS_ID_DFR0_EL1, cpu,
+				      info->reg_id_dfr0, boot->reg_id_dfr0);
+	taint |= check_update_ftr_reg(SYS_ID_ISAR0_EL1, cpu,
+				      info->reg_id_isar0, boot->reg_id_isar0);
+	taint |= check_update_ftr_reg(SYS_ID_ISAR1_EL1, cpu,
+				      info->reg_id_isar1, boot->reg_id_isar1);
+	taint |= check_update_ftr_reg(SYS_ID_ISAR2_EL1, cpu,
+				      info->reg_id_isar2, boot->reg_id_isar2);
+	taint |= check_update_ftr_reg(SYS_ID_ISAR3_EL1, cpu,
+				      info->reg_id_isar3, boot->reg_id_isar3);
+	taint |= check_update_ftr_reg(SYS_ID_ISAR4_EL1, cpu,
+				      info->reg_id_isar4, boot->reg_id_isar4);
+	taint |= check_update_ftr_reg(SYS_ID_ISAR5_EL1, cpu,
+				      info->reg_id_isar5, boot->reg_id_isar5);
+	taint |= check_update_ftr_reg(SYS_ID_ISAR6_EL1, cpu,
+				      info->reg_id_isar6, boot->reg_id_isar6);
+
+	/*
+	 * Regardless of the value of the AuxReg field, the AIFSR, ADFSR, and
+	 * ACTLR formats could differ across CPUs and therefore would have to
+	 * be trapped for virtualization anyway.
+	 */
+	taint |= check_update_ftr_reg(SYS_ID_MMFR0_EL1, cpu,
+				      info->reg_id_mmfr0, boot->reg_id_mmfr0);
+	taint |= check_update_ftr_reg(SYS_ID_MMFR1_EL1, cpu,
+				      info->reg_id_mmfr1, boot->reg_id_mmfr1);
+	taint |= check_update_ftr_reg(SYS_ID_MMFR2_EL1, cpu,
+				      info->reg_id_mmfr2, boot->reg_id_mmfr2);
+	taint |= check_update_ftr_reg(SYS_ID_MMFR3_EL1, cpu,
+				      info->reg_id_mmfr3, boot->reg_id_mmfr3);
+	taint |= check_update_ftr_reg(SYS_ID_PFR0_EL1, cpu,
+				      info->reg_id_pfr0, boot->reg_id_pfr0);
+	taint |= check_update_ftr_reg(SYS_ID_PFR1_EL1, cpu,
+				      info->reg_id_pfr1, boot->reg_id_pfr1);
+	taint |= check_update_ftr_reg(SYS_MVFR0_EL1, cpu,
+				      info->reg_mvfr0, boot->reg_mvfr0);
+	taint |= check_update_ftr_reg(SYS_MVFR1_EL1, cpu,
+				      info->reg_mvfr1, boot->reg_mvfr1);
+	taint |= check_update_ftr_reg(SYS_MVFR2_EL1, cpu,
+				      info->reg_mvfr2, boot->reg_mvfr2);
+
+	return taint;
+}
+
+
 /*
  * Update system wide CPU feature registers with the values from a
  * non-boot CPU. Also performs SANITY checks to make sure that there
@@ -788,53 +847,6 @@ void update_cpu_features(int cpu,
 	taint |= check_update_ftr_reg(SYS_ID_AA64ZFR0_EL1, cpu,
 				      info->reg_id_aa64zfr0, boot->reg_id_aa64zfr0);
 
-	/*
-	 * If we have AArch32, we care about 32-bit features for compat.
-	 * If the system doesn't support AArch32, don't update them.
-	 */
-	if (id_aa64pfr0_32bit_el0(read_sanitised_ftr_reg(SYS_ID_AA64PFR0_EL1))) {
-		taint |= check_update_ftr_reg(SYS_ID_DFR0_EL1, cpu,
-					info->reg_id_dfr0, boot->reg_id_dfr0);
-		taint |= check_update_ftr_reg(SYS_ID_ISAR0_EL1, cpu,
-					info->reg_id_isar0, boot->reg_id_isar0);
-		taint |= check_update_ftr_reg(SYS_ID_ISAR1_EL1, cpu,
-					info->reg_id_isar1, boot->reg_id_isar1);
-		taint |= check_update_ftr_reg(SYS_ID_ISAR2_EL1, cpu,
-					info->reg_id_isar2, boot->reg_id_isar2);
-		taint |= check_update_ftr_reg(SYS_ID_ISAR3_EL1, cpu,
-					info->reg_id_isar3, boot->reg_id_isar3);
-		taint |= check_update_ftr_reg(SYS_ID_ISAR4_EL1, cpu,
-					info->reg_id_isar4, boot->reg_id_isar4);
-		taint |= check_update_ftr_reg(SYS_ID_ISAR5_EL1, cpu,
-					info->reg_id_isar5, boot->reg_id_isar5);
-		taint |= check_update_ftr_reg(SYS_ID_ISAR6_EL1, cpu,
-					info->reg_id_isar6, boot->reg_id_isar6);
-
-		/*
-		 * Regardless of the value of the AuxReg field, the AIFSR, ADFSR, and
-		 * ACTLR formats could differ across CPUs and therefore would have to
-		 * be trapped for virtualization anyway.
-		 */
-		taint |= check_update_ftr_reg(SYS_ID_MMFR0_EL1, cpu,
-					info->reg_id_mmfr0, boot->reg_id_mmfr0);
-		taint |= check_update_ftr_reg(SYS_ID_MMFR1_EL1, cpu,
-					info->reg_id_mmfr1, boot->reg_id_mmfr1);
-		taint |= check_update_ftr_reg(SYS_ID_MMFR2_EL1, cpu,
-					info->reg_id_mmfr2, boot->reg_id_mmfr2);
-		taint |= check_update_ftr_reg(SYS_ID_MMFR3_EL1, cpu,
-					info->reg_id_mmfr3, boot->reg_id_mmfr3);
-		taint |= check_update_ftr_reg(SYS_ID_PFR0_EL1, cpu,
-					info->reg_id_pfr0, boot->reg_id_pfr0);
-		taint |= check_update_ftr_reg(SYS_ID_PFR1_EL1, cpu,
-					info->reg_id_pfr1, boot->reg_id_pfr1);
-		taint |= check_update_ftr_reg(SYS_MVFR0_EL1, cpu,
-					info->reg_mvfr0, boot->reg_mvfr0);
-		taint |= check_update_ftr_reg(SYS_MVFR1_EL1, cpu,
-					info->reg_mvfr1, boot->reg_mvfr1);
-		taint |= check_update_ftr_reg(SYS_MVFR2_EL1, cpu,
-					info->reg_mvfr2, boot->reg_mvfr2);
-	}
-
 	if (id_aa64pfr0_sve(info->reg_id_aa64pfr0)) {
 		taint |= check_update_ftr_reg(SYS_ZCR_EL1, cpu,
 					info->reg_zcr, boot->reg_zcr);
@@ -845,6 +857,12 @@ void update_cpu_features(int cpu,
 			sve_update_vq_map();
 	}
 
+	/*
+	 * This relies on a sanitised view of the AArch64 ID registers
+	 * (e.g. SYS_ID_AA64PFR0_EL1), so we call it last.
+	 */
+	taint |= update_32bit_cpu_features(cpu, info, boot);
+
 	/*
 	 * Mismatched CPU features are a recipe for disaster. Don't even
 	 * pretend to support them.
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
