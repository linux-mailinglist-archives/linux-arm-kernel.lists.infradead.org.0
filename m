Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35561DA720
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 03:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=u5dbj0aGeEWUbHxO/kLToj0Fb1/lwgNeTCuzmiVa7sU=; b=PJj
	hmgGMjV9WS6IdwnR/0RTDxpQw/cEBhyp1YnqwSUVxI3P5tjWNZB849Qf4jRqR9B0x2PiDWtKtaQo3
	ux4tmVQyMsgsFin2J7OgQUJUQPgMhykDHP0xyVSCqf1UCWL9YDCIBbDqSCChN4ggnzkdZptBdzvu2
	Dr4rdDXi3NtHbEmPdVsDRat0JLxwx7GfiDfKa502y3HZxd3lQSqsPGYjpScjRshPyNOAh37a6f8Xm
	REElQCI0byXs+0ducn8XpAciG3ZOYvyj79hLnOPLj9GJ3ZY6IWLyfDDO/76kMry3nrbM0WYT88uQQ
	MFYkY8HulGtnYxoim0XZAoaVkRvJFOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbDSY-0000a4-Ad; Wed, 20 May 2020 01:23:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbDSP-0000ZC-QO
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 01:23:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9CE9A31B;
 Tue, 19 May 2020 18:23:39 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.75.101])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9F9473F68F;
 Tue, 19 May 2020 18:23:36 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/cpufeature: Move BUG_ON() inside get_arm64_ftr_reg()
Date: Wed, 20 May 2020 06:52:54 +0530
Message-Id: <1589937774-20479-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_182341_942334_7DA66771 
X-CRM114-Status: GOOD (  15.07  )
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
well. Hence lets just BUG_ON() when the search fails in get_arm64_ftr_reg()
rather than checking for return value and doing the same in some individual
callers.

But there are some callers that dont BUG_ON() upon search failure. It adds
an argument 'failsafe' that provides required switch between callers based
on whether they could proceed or not.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
Applies on next-20200518 that has recent cpufeature changes from Will.

 arch/arm64/kernel/cpufeature.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index bc5048f152c1..62767cc540c3 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -557,7 +557,7 @@ static int search_cmp_ftr_reg(const void *id, const void *regp)
  *         - NULL on failure. It is upto the caller to decide
  *	     the impact of a failure.
  */
-static struct arm64_ftr_reg *get_arm64_ftr_reg(u32 sys_id)
+static struct arm64_ftr_reg *get_arm64_ftr_reg(u32 sys_id, bool failsafe)
 {
 	const struct __ftr_reg_entry *ret;
 
@@ -568,6 +568,13 @@ static struct arm64_ftr_reg *get_arm64_ftr_reg(u32 sys_id)
 			search_cmp_ftr_reg);
 	if (ret)
 		return ret->reg;
+	/*
+	 * This can not really proceed when the search fails.
+	 * Requesting for a non existent register search will
+	 * also be an error in itself. Error out when not
+	 * called with fail safe request.
+	 */
+	BUG_ON(!failsafe);
 	return NULL;
 }
 
@@ -630,9 +637,7 @@ static void __init init_cpu_ftr_reg(u32 sys_reg, u64 new)
 	u64 valid_mask = 0;
 
 	const struct arm64_ftr_bits *ftrp;
-	struct arm64_ftr_reg *reg = get_arm64_ftr_reg(sys_reg);
-
-	BUG_ON(!reg);
+	struct arm64_ftr_reg *reg = get_arm64_ftr_reg(sys_reg, false);
 
 	for (ftrp = reg->ftr_bits; ftrp->width; ftrp++) {
 		u64 ftr_mask = arm64_ftr_mask(ftrp);
@@ -760,9 +765,8 @@ static void update_cpu_ftr_reg(struct arm64_ftr_reg *reg, u64 new)
 
 static int check_update_ftr_reg(u32 sys_id, int cpu, u64 val, u64 boot)
 {
-	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id);
+	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id, false);
 
-	BUG_ON(!regp);
 	update_cpu_ftr_reg(regp, val);
 	if ((boot & regp->strict_mask) == (val & regp->strict_mask))
 		return 0;
@@ -774,10 +778,7 @@ static int check_update_ftr_reg(u32 sys_id, int cpu, u64 val, u64 boot)
 static void relax_cpu_ftr_reg(u32 sys_id, int field)
 {
 	const struct arm64_ftr_bits *ftrp;
-	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id);
-
-	if (WARN_ON(!regp))
-		return;
+	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id, false);
 
 	for (ftrp = regp->ftr_bits; ftrp->width; ftrp++) {
 		if (ftrp->shift == field) {
@@ -959,10 +960,9 @@ void update_cpu_features(int cpu,
 
 u64 read_sanitised_ftr_reg(u32 id)
 {
-	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(id);
+	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(id, false);
 
 	/* We shouldn't get a request for an unsupported register */
-	BUG_ON(!regp);
 	return regp->sys_val;
 }
 
@@ -2565,7 +2565,7 @@ static int emulate_sys_reg(u32 id, u64 *valp)
 	if (sys_reg_CRm(id) == 0)
 		return emulate_id_reg(id, valp);
 
-	regp = get_arm64_ftr_reg(id);
+	regp = get_arm64_ftr_reg(id, true);
 	if (regp)
 		*valp = arm64_ftr_reg_user_value(regp);
 	else
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
