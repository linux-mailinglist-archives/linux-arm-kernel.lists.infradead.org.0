Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CBC9017C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 14:27:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FCjDnOf801Ye0WHS1SqlVfagYZo9k1w8NtdzUDcN2dQ=; b=s2u/fnRJnExb1QYe3D0yLAlCcg
	DQsammlYnXafT48FnsJIYuh7Lb3o5Z8x/3Ynod5/5KNbhfwedUSEVzfB1cYywPvUZxbxKtBKh+cpP
	WZihGu7tFKjvzO/+HS8W1qaCC/Wpq397H5caHPtWq1L+Bvpvv9+FNxK8L6JwJVnIK3W7viXxIaXRk
	x20ndUf3Bb49UYFfKthOUyrz/OKaSkP76a0ljLQqJYuVCizbfUhiRat97GAKljZ7eDO9o4h2A46E9
	hPMA4BxJukQqHAJhS7dk4RT8X4MTspzRnZIgiKIBV+nBPrWS4E5NLHEml50VVGoDThXf2seFqNDcd
	2fMHBoIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybJx-0007HP-4H; Fri, 16 Aug 2019 12:27:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hybHn-0004MZ-I7
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 12:24:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6DC81360;
 Fri, 16 Aug 2019 05:24:51 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 346983F706;
 Fri, 16 Aug 2019 05:24:50 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jpoimboe@redhat.com
Subject: [RFC v4 08/18] objtool: Refactor switch-tables code to support other
 architectures
Date: Fri, 16 Aug 2019 13:23:53 +0100
Message-Id: <20190816122403.14994-9-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816122403.14994-1-raphael.gault@arm.com>
References: <20190816122403.14994-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_052451_725197_61C14FD7 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, Raphael Gault <raphael.gault@arm.com>,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The way to identify switch-tables and retrieves all the data necessary
to handle the different execution branches is not the same on all
architecture. In order to be able to add other architecture support,
this patch defines arch-dependent functions to process jump-tables.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 tools/objtool/arch/arm64/arch_special.c | 15 ++++
 tools/objtool/arch/arm64/decode.c       |  4 +-
 tools/objtool/arch/x86/arch_special.c   | 79 ++++++++++++++++++++
 tools/objtool/check.c                   | 95 +------------------------
 tools/objtool/check.h                   |  7 ++
 tools/objtool/special.h                 | 10 ++-
 6 files changed, 114 insertions(+), 96 deletions(-)

diff --git a/tools/objtool/arch/arm64/arch_special.c b/tools/objtool/arch/arm64/arch_special.c
index a21d28876317..17a8a06aac2a 100644
--- a/tools/objtool/arch/arm64/arch_special.c
+++ b/tools/objtool/arch/arm64/arch_special.c
@@ -20,3 +20,18 @@ void arch_force_alt_path(unsigned short feature,
 			 struct special_alt *alt)
 {
 }
+
+int arch_add_jump_table(struct objtool_file *file, struct instruction *insn,
+			struct rela *table, struct rela *next_table)
+{
+	return 0;
+}
+
+struct rela *arch_find_switch_table(struct objtool_file *file,
+				  struct rela *text_rela,
+				  struct section *rodata_sec,
+				  unsigned long table_offset)
+{
+	file->ignore_unreachables = true;
+	return NULL;
+}
diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 4cb9402d6fe1..a20725c1bfd7 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -159,7 +159,7 @@ static int is_arm64(struct elf *elf)
 
 int arch_decode_instruction(struct elf *elf, struct section *sec,
 			    unsigned long offset, unsigned int maxlen,
-			    unsigned int *len, unsigned char *type,
+			    unsigned int *len, enum insn_type *type,
 			    unsigned long *immediate, struct stack_op *op)
 {
 	int arm64 = 0;
@@ -184,7 +184,7 @@ int arch_decode_instruction(struct elf *elf, struct section *sec,
 	insn = *(u32 *)(sec->data->d_buf + offset);
 
 	//dispatch according to encoding classes
-	return aarch64_insn_class_decode_table[(insn >> 25) & 0xf](insn, type,
+	return aarch64_insn_class_decode_table[(insn >> 25) & 0xf](insn, (unsigned char *)type,
 							immediate, op);
 }
 
diff --git a/tools/objtool/arch/x86/arch_special.c b/tools/objtool/arch/x86/arch_special.c
index 6583a1770bb2..c097001d805b 100644
--- a/tools/objtool/arch/x86/arch_special.c
+++ b/tools/objtool/arch/x86/arch_special.c
@@ -26,3 +26,82 @@ void arch_force_alt_path(unsigned short feature,
 				alt->skip_alt = true;
 		}
 }
+
+int arch_add_jump_table(struct objtool_file *file, struct instruction *insn,
+			struct rela *table, struct rela *next_table)
+{
+	struct rela *rela = table;
+	struct instruction *dest_insn;
+	struct alternative *alt;
+	struct symbol *pfunc = insn->func->pfunc;
+	unsigned int prev_offset = 0;
+
+	/*
+	 * Each @rela is a switch table relocation which points to the target
+	 * instruction.
+	 */
+	list_for_each_entry_from(rela, &table->sec->rela_list, list) {
+
+		/* Check for the end of the table: */
+		if (rela != table && rela->jump_table_start)
+			break;
+
+		/* Make sure the table entries are consecutive: */
+		if (prev_offset && rela->offset != prev_offset + 8)
+			break;
+
+		/* Detect function pointers from contiguous objects: */
+		if (rela->sym->sec == pfunc->sec &&
+		    rela->addend == pfunc->offset)
+			break;
+
+		dest_insn = find_insn(file, rela->sym->sec, rela->addend);
+		if (!dest_insn)
+			break;
+
+		/* Make sure the destination is in the same function: */
+		if (!dest_insn->func || dest_insn->func->pfunc != pfunc)
+			break;
+
+		alt = malloc(sizeof(*alt));
+		if (!alt) {
+			WARN("malloc failed");
+			return -1;
+		}
+
+		alt->insn = dest_insn;
+		list_add_tail(&alt->list, &insn->alts);
+		prev_offset = rela->offset;
+	}
+
+	if (!prev_offset) {
+		WARN_FUNC("can't find switch jump table",
+			  insn->sec, insn->offset);
+		return -1;
+	}
+
+	return 0;
+}
+
+struct rela *arch_find_switch_table(struct objtool_file *file,
+				  struct rela *text_rela,
+				  struct section *rodata_sec,
+				  unsigned long table_offset)
+{
+	struct rela *rodata_rela;
+
+	rodata_rela = find_rela_by_dest(rodata_sec, table_offset);
+	if (rodata_rela) {
+		/*
+		 * Use of RIP-relative switch jumps is quite rare, and
+		 * indicates a rare GCC quirk/bug which can leave dead
+		 * code behind.
+		 */
+		if (text_rela->type == R_X86_64_PC32)
+			file->ignore_unreachables = true;
+
+		return rodata_rela;
+	}
+
+	return NULL;
+}
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index baa6a93f37cd..18f7fb47392a 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -20,12 +20,6 @@
 
 #define C_JUMP_TABLE_SECTION ".rodata..c_jump_table"
 
-struct alternative {
-	struct list_head list;
-	struct instruction *insn;
-	bool skip_orig;
-};
-
 const char *objname;
 struct cfi_state initial_func_cfi;
 
@@ -901,62 +895,6 @@ static int add_special_section_alts(struct objtool_file *file)
 	return ret;
 }
 
-static int add_jump_table(struct objtool_file *file, struct instruction *insn,
-			    struct rela *table)
-{
-	struct rela *rela = table;
-	struct instruction *dest_insn;
-	struct alternative *alt;
-	struct symbol *pfunc = insn->func->pfunc;
-	unsigned int prev_offset = 0;
-
-	/*
-	 * Each @rela is a switch table relocation which points to the target
-	 * instruction.
-	 */
-	list_for_each_entry_from(rela, &table->sec->rela_list, list) {
-
-		/* Check for the end of the table: */
-		if (rela != table && rela->jump_table_start)
-			break;
-
-		/* Make sure the table entries are consecutive: */
-		if (prev_offset && rela->offset != prev_offset + 8)
-			break;
-
-		/* Detect function pointers from contiguous objects: */
-		if (rela->sym->sec == pfunc->sec &&
-		    rela->addend == pfunc->offset)
-			break;
-
-		dest_insn = find_insn(file, rela->sym->sec, rela->addend);
-		if (!dest_insn)
-			break;
-
-		/* Make sure the destination is in the same function: */
-		if (!dest_insn->func || dest_insn->func->pfunc != pfunc)
-			break;
-
-		alt = malloc(sizeof(*alt));
-		if (!alt) {
-			WARN("malloc failed");
-			return -1;
-		}
-
-		alt->insn = dest_insn;
-		list_add_tail(&alt->list, &insn->alts);
-		prev_offset = rela->offset;
-	}
-
-	if (!prev_offset) {
-		WARN_FUNC("can't find switch jump table",
-			  insn->sec, insn->offset);
-		return -1;
-	}
-
-	return 0;
-}
-
 /*
  * find_jump_table() - Given a dynamic jump, find the switch jump table in
  * .rodata associated with it.
@@ -1058,38 +996,9 @@ static struct rela *find_jump_table(struct objtool_file *file,
 			continue;
 
 		/* Each table entry has a rela associated with it. */
-		table_rela = find_rela_by_dest(table_sec, table_offset);
+		table_rela = arch_find_switch_table(file, text_rela, table_sec, table_offset);
 		if (!table_rela)
 			continue;
-		/*
-		 * If we are on arm64 architecture, we now that we
-		 * are in presence of a switch table thanks to
-		 * the `br <Xn>` insn. but we can't retrieve it yet.
-		 * So we just ignore unreachable for this file.
-		 */
-		if (!arch_support_switch_table()) {
-			file->ignore_unreachables = true;
-			return NULL;
-		}
-
-		rodata_rela = find_rela_by_dest(rodata_sec, table_offset);
-		if (rodata_rela) {
-			/*
-			 * Use of RIP-relative switch jumps is quite rare, and
-			 * indicates a rare GCC quirk/bug which can leave dead
-			 * code behind.
-			 */
-			if (text_rela->type == R_X86_64_PC32)
-				file->ignore_unreachables = true;
-
-		/*
-		 * Use of RIP-relative switch jumps is quite rare, and
-		 * indicates a rare GCC quirk/bug which can leave dead code
-		 * behind.
-		 */
-		if (text_rela->type == R_X86_64_PC32)
-			file->ignore_unreachables = true;
-
 		return table_rela;
 	}
 
@@ -1145,7 +1054,7 @@ static int add_func_jump_tables(struct objtool_file *file,
 		if (!insn->jump_table)
 			continue;
 
-		ret = add_jump_table(file, insn, insn->jump_table);
+		ret = arch_add_jump_table(file, insn, insn->jump_table, NULL);
 		if (ret)
 			return ret;
 	}
diff --git a/tools/objtool/check.h b/tools/objtool/check.h
index af87b55db454..267759760a3d 100644
--- a/tools/objtool/check.h
+++ b/tools/objtool/check.h
@@ -13,6 +13,7 @@
 #include "orc.h"
 #include "arch_special.h"
 #include <linux/hashtable.h>
+;
 
 struct insn_state {
 	struct cfi_reg cfa;
@@ -48,6 +49,12 @@ struct instruction {
 	struct orc_entry orc;
 };
 
+struct alternative {
+	struct list_head list;
+	struct instruction *insn;
+	bool skip_orig;
+};
+
 struct objtool_file {
 	struct elf *elf;
 	struct list_head insn_list;
diff --git a/tools/objtool/special.h b/tools/objtool/special.h
index 90626a7e41cf..9b1f968a4325 100644
--- a/tools/objtool/special.h
+++ b/tools/objtool/special.h
@@ -7,7 +7,10 @@
 #define _SPECIAL_H
 
 #include <stdbool.h>
+#include <stdlib.h>
+#include "check.h"
 #include "elf.h"
+#include "warn.h"
 
 struct special_alt {
 	struct list_head list;
@@ -30,5 +33,10 @@ int special_get_alts(struct elf *elf, struct list_head *alts);
 void arch_force_alt_path(unsigned short feature,
 			 bool uaccess,
 			 struct special_alt *alt);
-
+int arch_add_jump_table(struct objtool_file *file, struct instruction *insn,
+			struct rela *table, struct rela *next_table);
+struct rela *arch_find_switch_table(struct objtool_file *file,
+				  struct rela *text_rela,
+				  struct section *rodata_sec,
+				  unsigned long table_offset);
 #endif /* _SPECIAL_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
