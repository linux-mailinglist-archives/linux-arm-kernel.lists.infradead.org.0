Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EC21A8DB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 23:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OIIHQYzbRhbjN6vgXh6sH6oJN3BbWV9/vGTbGEd3aUg=; b=CPS+dof8JYrDUU
	/U7gXhX81wgwQ77sxjFOs1f0tbqaJ/eluzZFJtV4Ay4eLD0tx1byoUxbohK1xNqFWcuzgIfyOLGFF
	zDtZF5gdyg4zusSBauxJQchy4e5XNhqwmPjUmUQPVU40/fhTCHiDZRCwGY/ndGsmybVWmz3ygU4oh
	Rk8G8emcDtN1ig5ab/gcnTt149U3BFtBwVP5ED2BgWqZm63dBYSelQyHjdY1ZFKgR4e5+JcjF+z3h
	hedpFKD/6aom75aXv8UTEzDBQzUvVBGanhfqOStGNTnorbOi7KMhOrUDFEMuQ45RD0MiSu86FjHwT
	buGPcS/SQaaQwewmzBLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOTB0-0003EG-TV; Tue, 14 Apr 2020 21:33:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOT9c-00029q-Ib
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 21:31:38 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A29E2076B;
 Tue, 14 Apr 2020 21:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586899896;
 bh=GfhtXnhbWjI+0uvJbr13btlA5xQXBNo799Ku7twdf1s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hHm16xP1mJuxof7IgkpgHhk8uVL3LU/2o2JHpXaixP3VBb3Lsv/G35SjilgjAjzao
 GW93ORXQVNDBKESRmxoSLozvoZRy/tOb0CMgm4scLDnH9oU8Jugsi3aW0ofFL2vOKy
 MNjUkqBphASqZEuho+BI5vS9ljrrZpZK+mFCgWNM=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH 5/8] arm64: cpufeature: Factor out checking of AArch32 features
Date: Tue, 14 Apr 2020 22:31:11 +0100
Message-Id: <20200414213114.2378-6-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200414213114.2378-1-will@kernel.org>
References: <20200414213114.2378-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_143136_665940_E85EE864 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/cpufeature.c | 108 +++++++++++++++++++--------------
 1 file changed, 61 insertions(+), 47 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 7dfcdd9e75c1..32828a77acc3 100644
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
@@ -845,6 +857,8 @@ void update_cpu_features(int cpu,
 			sve_update_vq_map();
 	}
 
+	taint |= update_32bit_cpu_features(cpu, info, boot);
+
 	/*
 	 * Mismatched CPU features are a recipe for disaster. Don't even
 	 * pretend to support them.
-- 
2.26.0.110.g2183baf09c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
