Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D67571E231D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 15:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jp/Jy3sZETqeM23AGaX4buDOwzHBf/gyZiYq0icHGlU=; b=K20
	wxtsmsiEf65UHl2kO2/zZYCeZij/MmrcIaX9U/g3eNDq/vw3sxAjJrPWTR3M6cDZir6+GZN6M9u5J
	2aos1Xs8s0qRyKfinOL3AlbS7NsBCgFNAykWpsqYac4/vJCHnvNzm0Wx/aP2u3xszQqiIpS9Y5XXO
	LcPdqMMrQlRON5xIUu/YWe/oll/beJGWFosK+GeqABdl3qEuknNFtXY09itUYGNu6WoYifEkilMQE
	du30eQbqEyPh7fFXthsf8SMTGSOfO+aRNe6bTisy7MSDkQppEJHUbX9AFxR1otEfl2+jyGQustE1O
	CbYRuLN0vunk/VnZZIBP8r/lBgPr8wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdZoc-0003J1-MG; Tue, 26 May 2020 13:40:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdZoN-00023c-KL
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 13:40:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 761031FB;
 Tue, 26 May 2020 06:40:05 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.78.28])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 459F83F6C4;
 Tue, 26 May 2020 06:40:02 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2] arm64/cpufeature: Add get_arm64_ftr_reg_nowarn()
Date: Tue, 26 May 2020 19:09:13 +0530
Message-Id: <1590500353-28082-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_064007_778080_9B71117C 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no way to proceed when requested register could not be searched in
arm64_ftr_reg[]. Requesting for a non present register would be an error as
well. Hence lets just WARN_ON() when search fails in get_arm64_ftr_reg()
rather than checking for return value and doing a BUG_ON() instead in some
individual callers. But there are also caller instances that dont error out
when register search fails. Add a new helper get_arm64_ftr_reg_nowarn() for
such cases.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
Changes in V2:

- Added get_arm64_ftr_reg_nowarn() per Will
- read_sanitised_ftr_reg() returns 0 when register search fails per Catalin

Changes in V1: (https://patchwork.kernel.org/patch/11559083/)

 arch/arm64/kernel/cpufeature.c | 42 +++++++++++++++++++++++-----------
 1 file changed, 29 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index bc5048f152c1..f4555b9d145c 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -548,16 +548,16 @@ static int search_cmp_ftr_reg(const void *id, const void *regp)
 }
 
 /*
- * get_arm64_ftr_reg - Lookup a feature register entry using its
- * sys_reg() encoding. With the array arm64_ftr_regs sorted in the
- * ascending order of sys_id , we use binary search to find a matching
+ * get_arm64_ftr_reg_nowarn - Looks up a feature register entry using
+ * its sys_reg() encoding. With the array arm64_ftr_regs sorted in the
+ * ascending order of sys_id, we use binary search to find a matching
  * entry.
  *
  * returns - Upon success,  matching ftr_reg entry for id.
  *         - NULL on failure. It is upto the caller to decide
  *	     the impact of a failure.
  */
-static struct arm64_ftr_reg *get_arm64_ftr_reg(u32 sys_id)
+static struct arm64_ftr_reg *get_arm64_ftr_reg_nowarn(u32 sys_id)
 {
 	const struct __ftr_reg_entry *ret;
 
@@ -571,6 +571,28 @@ static struct arm64_ftr_reg *get_arm64_ftr_reg(u32 sys_id)
 	return NULL;
 }
 
+/*
+ * get_arm64_ftr_reg - Looks up a feature register entry using
+ * its sys_reg() encoding. This calls get_arm64_ftr_reg_nowarn().
+ *
+ * returns - Upon success,  matching ftr_reg entry for id.
+ *         - NULL on failure but with an WARN_ON().
+ */
+static struct arm64_ftr_reg *get_arm64_ftr_reg(u32 sys_id)
+{
+	struct arm64_ftr_reg *reg;
+
+	reg = get_arm64_ftr_reg_nowarn(sys_id);
+
+	/*
+	 * Can not really proceed when the search fails here.
+	 * Requesting for a non existent register search will
+	 * be an error. Warn but let it continue for now.
+	 */
+	WARN_ON(!reg);
+	return reg;
+}
+
 static u64 arm64_ftr_set_value(const struct arm64_ftr_bits *ftrp, s64 reg,
 			       s64 ftr_val)
 {
@@ -632,8 +654,6 @@ static void __init init_cpu_ftr_reg(u32 sys_reg, u64 new)
 	const struct arm64_ftr_bits *ftrp;
 	struct arm64_ftr_reg *reg = get_arm64_ftr_reg(sys_reg);
 
-	BUG_ON(!reg);
-
 	for (ftrp = reg->ftr_bits; ftrp->width; ftrp++) {
 		u64 ftr_mask = arm64_ftr_mask(ftrp);
 		s64 ftr_new = arm64_ftr_value(ftrp, new);
@@ -762,7 +782,6 @@ static int check_update_ftr_reg(u32 sys_id, int cpu, u64 val, u64 boot)
 {
 	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id);
 
-	BUG_ON(!regp);
 	update_cpu_ftr_reg(regp, val);
 	if ((boot & regp->strict_mask) == (val & regp->strict_mask))
 		return 0;
@@ -776,9 +795,6 @@ static void relax_cpu_ftr_reg(u32 sys_id, int field)
 	const struct arm64_ftr_bits *ftrp;
 	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id);
 
-	if (WARN_ON(!regp))
-		return;
-
 	for (ftrp = regp->ftr_bits; ftrp->width; ftrp++) {
 		if (ftrp->shift == field) {
 			regp->strict_mask &= ~arm64_ftr_mask(ftrp);
@@ -961,8 +977,8 @@ u64 read_sanitised_ftr_reg(u32 id)
 {
 	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(id);
 
-	/* We shouldn't get a request for an unsupported register */
-	BUG_ON(!regp);
+	if (!regp)
+		return 0;
 	return regp->sys_val;
 }
 
@@ -2565,7 +2581,7 @@ static int emulate_sys_reg(u32 id, u64 *valp)
 	if (sys_reg_CRm(id) == 0)
 		return emulate_id_reg(id, valp);
 
-	regp = get_arm64_ftr_reg(id);
+	regp = get_arm64_ftr_reg_nowarn(id);
 	if (regp)
 		*valp = arm64_ftr_reg_user_value(regp);
 	else
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
