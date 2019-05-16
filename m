Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EB0203C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sMxZO+0Qos2nKMv0JUOuWuqoj90SWTY10s4Kgoew1Dw=; b=Rca1hlxyIHZQfLQGuleMb+fWLb
	sFuFTEUsa8ySKzsfDvqhgJGKfaBJXPQJ1FTucNyE2nmhnnYjtbqJxg/b5KCuWCiL1EgTGW5a1WOFn
	uiaA/FwjrzefYuiLhncm68WGzAOfOxB1Fu/oM33qtP0mXI67mF2UBcdr1kQY73U8zHF6IO6qeV6NV
	4wiebqW5IvvYnS5/LYhIk+YM8nS7MdkDNXDiv3TFC7Yv+RHSHfW6fP5Xg17MmXv1YJ2aOX6EnvciQ
	DCT3/X6crpRclV1PG/55Zx8HcBZegycZOjQ1bL9dvaAi5PpoWqwyx9dibosDuy9/p0Je0VZgg0JR/
	dE1D4IJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDoy-0001x7-Gf; Thu, 16 May 2019 10:41:08 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDmN-00065o-Gv
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 10:38:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 44CC71BA8;
 Thu, 16 May 2019 03:38:27 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.108])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BCFF53F703;
 Thu, 16 May 2019 03:38:25 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC 15/16] objtool: Introduce INSN_UNKNOWN type
Date: Thu, 16 May 2019 11:36:54 +0100
Message-Id: <20190516103655.5509-16-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190516103655.5509-1-raphael.gault@arm.com>
References: <20190516103655.5509-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_033828_002114_F768421D 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: julien.thierry@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, Raphael Gault <raphael.gault@arm.com>,
 jpoimboe@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On arm64 some object files contain data stored in the .text section.
This data is interpreted by objtool as instruction but can't be
identified as a valid one. In order to keep analysing those files we
introduce INSN_UNKNOWN type. The "unknown instruction" warning will thus
only be raised if such instructions are uncountered while validating an
execution branch.

This change doesn't impact the x86 decoding logic since 0 is still used
as a way to specify an unknown type, raising the "unknown instruction"
warning during the decoding phase still.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 tools/objtool/arch.h                           |  3 ++-
 tools/objtool/arch/arm64/decode.c              |  8 ++++----
 tools/objtool/arch/arm64/include/insn_decode.h |  4 ++--
 tools/objtool/check.c                          | 10 +++++++++-
 4 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/tools/objtool/arch.h b/tools/objtool/arch.h
index c1ea6ecdd5d2..1f84690ad9f5 100644
--- a/tools/objtool/arch.h
+++ b/tools/objtool/arch.h
@@ -38,7 +38,8 @@
 #define INSN_CLAC		12
 #define INSN_STD		13
 #define INSN_CLD		14
-#define INSN_OTHER		15
+#define INSN_UNKNOWN		15
+#define INSN_OTHER		16
 #define INSN_LAST		INSN_OTHER
 
 enum op_dest_type {
diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 5be1d87b1a1c..a40338a895f5 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -37,9 +37,9 @@
  */
 static arm_decode_class aarch64_insn_class_decode_table[] = {
 	[INSN_RESERVED]			= arm_decode_reserved,
-	[INSN_UNKNOWN]			= arm_decode_unknown,
+	[INSN_UNALLOC_1]		= arm_decode_unknown,
 	[INSN_SVE_ENC]			= arm_decode_sve_encoding,
-	[INSN_UNALLOC]			= arm_decode_unknown,
+	[INSN_UNALLOC_2]		= arm_decode_unknown,
 	[INSN_LD_ST_4]			= arm_decode_ld_st,
 	[INSN_DP_REG_5]			= arm_decode_dp_reg,
 	[INSN_LD_ST_6]			= arm_decode_ld_st,
@@ -191,7 +191,7 @@ int arch_decode_instruction(struct elf *elf, struct section *sec,
 int arm_decode_unknown(u32 instr, unsigned char *type,
 		       unsigned long *immediate, struct stack_op *op)
 {
-	*type = 0;
+	*type = INSN_UNKNOWN;
 	return 0;
 }
 
@@ -206,7 +206,7 @@ int arm_decode_reserved(u32 instr, unsigned char *type,
 			unsigned long *immediate, struct stack_op *op)
 {
 	*immediate = instr & ONES(16);
-	*type = INSN_BUG;
+	*type = INSN_UNKNOWN;
 	return 0;
 }
 
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index eb54fc39dca5..a01d76306749 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -20,9 +20,9 @@
 #include "../../../arch.h"
 
 #define INSN_RESERVED	0b0000
-#define INSN_UNKNOWN	0b0001
+#define INSN_UNALLOC_1	0b0001
 #define INSN_SVE_ENC	0b0010
-#define INSN_UNALLOC	0b0011
+#define INSN_UNALLOC_2	0b0011
 #define INSN_DP_IMM	0b1001	//0x100x
 #define INSN_BRANCH	0b1011	//0x101x
 #define INSN_LD_ST_4	0b0100	//0bx1x0
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index bfb36cca9be1..90a26f238899 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1961,6 +1961,13 @@ static int validate_branch(struct objtool_file *file, struct instruction *first,
 	while (1) {
 		next_insn = next_insn_same_sec(file, insn);
 
+		if (insn->type == INSN_UNKNOWN) {
+			WARN("%s+0x%lx unknown instruction type, should never be reached",
+			     insn->sec->name,
+			     insn->offset);
+			return 1;
+		}
+
 		if (file->c_file && func && insn->func && func != insn->func->pfunc) {
 			WARN("%s() falls through to next function %s()",
 			     func->name, insn->func->name);
@@ -2391,7 +2398,8 @@ static int validate_reachable_instructions(struct objtool_file *file)
 		return 0;
 
 	for_each_insn(file, insn) {
-		if (insn->visited || ignore_unreachable_insn(insn))
+		if (insn->visited || ignore_unreachable_insn(insn) ||
+		    insn->type == INSN_UNKNOWN)
 			continue;
 
 		WARN_FUNC("unreachable instruction", insn->sec, insn->offset);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
