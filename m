Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EAC50665
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 12:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ibDeXmDgOfMcH7+ytTHFEuIO/m3TpMFxGS9Mfyw0d3w=; b=Xv0IXENqJoPkXlEYEW+qtSs1zj
	jk+Y/opzKYeHhtg69J0WaoQaw4L44aDEil9kK3LlvFZ2PtimXVcPcjXobrZyLDBWewYlduBHu9Vtp
	fRxEgb510txxGK8ZNNC3YjvvcjhzarddtYtmhgmEXLj59DTpogh/gzPY5GhXVKPXCWKy3wvL5tWYK
	+ura08/l9fCKufw3gy3Di0mapVAWeEtkio42Yd8a1w8DTIP0cSBsZCbHPwZImMEfP9IHS9Cuf9foG
	15kL2vTQ5T3Nbmx1q5DTvo0UH0PacdM26fgJa5fjldODNZjUmIbELsqmwsqQ1GEz4pz7ysv9nA26R
	EtyAaDMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLm6-0001OF-72; Mon, 24 Jun 2019 10:00:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLi5-0005Gc-8r
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:56:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9639152D;
 Mon, 24 Jun 2019 02:56:24 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B2473F71E;
 Mon, 24 Jun 2019 02:56:23 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC V3 10/18] objtool: arm64: Implement functions to add switch
 tables alternatives
Date: Mon, 24 Jun 2019 10:55:40 +0100
Message-Id: <20190624095548.8578-11-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190624095548.8578-1-raphael.gault@arm.com>
References: <20190624095548.8578-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_025625_453545_188EA756 
X-CRM114-Status: GOOD (  17.62  )
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
Cc: julien.thierry@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, Raphael Gault <raphael.gault@arm.com>,
 jpoimboe@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch implements the functions required to identify and add as
alternatives all the possible destinations of the switch table.
This implementation relies on the new plugin introduced previously which
records information about the switch-table in a .objtool_data section.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 tools/objtool/arch/arm64/arch_special.c       | 142 +++++++++++++++++-
 tools/objtool/arch/arm64/decode.c             |   2 +-
 .../objtool/arch/arm64/include/arch_special.h |  10 ++
 .../objtool/arch/arm64/include/insn_decode.h  |   3 +-
 tools/objtool/check.c                         |   8 +-
 tools/objtool/check.h                         |   2 +
 6 files changed, 157 insertions(+), 10 deletions(-)

diff --git a/tools/objtool/arch/arm64/arch_special.c b/tools/objtool/arch/arm64/arch_special.c
index a0f7066994b5..33f30876d339 100644
--- a/tools/objtool/arch/arm64/arch_special.c
+++ b/tools/objtool/arch/arm64/arch_special.c
@@ -12,8 +12,13 @@
  * You should have received a copy of the GNU General Public License
  * along with this program; if not, see <http://www.gnu.org/licenses/>.
  */
+
+#include <stdlib.h>
+#include <string.h>
+
 #include "../../special.h"
 #include "arch_special.h"
+#include "bit_operations.h"
 
 void arch_force_alt_path(unsigned short feature,
 			 bool uaccess,
@@ -21,9 +26,141 @@ void arch_force_alt_path(unsigned short feature,
 {
 }
 
+static u32 next_offset(u8 *table, u8 entry_size)
+{
+	switch (entry_size) {
+	case 1:
+		return table[0];
+	case 2:
+		return *(u16 *)(table);
+	default:
+		return *(u32 *)(table);
+	}
+}
+
+static u32 get_table_entry_size(u32 insn)
+{
+	unsigned char size = (insn >> 30) & ONES(2);
+	switch (size) {
+	case 0:
+		return 1;
+	case 1:
+		return 2;
+	default:
+		return 4;
+	}
+}
+
+static int add_possible_branch(struct objtool_file *file,
+			       struct instruction *insn,
+			       u32 base, u32 offset)
+{
+	struct instruction *new_insn;
+	struct alternative *alt;
+	offset = base + 4 * offset;
+	new_insn = calloc(1, sizeof(*new_insn));
+
+	if (new_insn == NULL) {
+		WARN("allocation failure, can't add jump alternative");
+		return -1;
+	}
+
+	memcpy(new_insn, insn, sizeof(*insn));
+	alt = calloc(1, sizeof(*alt));
+
+	if (new_insn == NULL) {
+		WARN("allocation failure, can't add jump alternative");
+		return -1;
+	}
+
+	new_insn->type = INSN_JUMP_UNCONDITIONAL;
+	new_insn->immediate = offset;
+	INIT_LIST_HEAD(&new_insn->alts);
+	new_insn->jump_dest = find_insn(file, insn->sec, offset);
+	alt->insn = new_insn;
+	alt->skip_orig = true;
+	list_add_tail(&alt->list, &insn->alts);
+	list_add_tail(&new_insn->list, &file->insn_list);
+	return 0;
+}
+
 int arch_add_switch_table(struct objtool_file *file, struct instruction *insn,
-			    struct rela *table, struct rela *next_table)
+			  struct rela *table, struct rela *next_table)
 {
+	struct rela *objtool_data_rela = NULL;
+	struct switch_table_info *swt_info = NULL;
+	struct section *objtool_data = find_section_by_name(file->elf, ".objtool_data");
+	struct section *rodata_sec = find_section_by_name(file->elf, ".rodata");
+	struct section *branch_sec = NULL;
+	u8 *switch_table = NULL;
+	u64 base_offset = 0;
+	struct instruction *pre_jump_insn;
+	u32 sec_size = 0;
+	u32 entry_size = 0;
+	u32 offset = 0;
+	u32 i, j;
+
+	if (objtool_data == NULL)
+		return 0;
+
+	/*
+	 * 1. Using rela, Identify entry for the switch table
+	 * 2. Retrieve base offset
+	 * 3. Retrieve branch instruction
+	 * 3. For all entries in switch table:
+	 * 	3.1. Compute new offset
+	 * 	3.2. Create alternative instruction
+	 * 	3.3. Add alt_instr to insn->alts list
+	 */
+	sec_size = objtool_data->sh.sh_size;
+	for (i = 0, swt_info = (void *)objtool_data->data->d_buf;
+	     i < sec_size / sizeof(struct switch_table_info);
+	     i++, swt_info++) {
+		offset = i * sizeof(struct switch_table_info);
+		objtool_data_rela = find_rela_by_dest_range(objtool_data, offset,
+							    sizeof(u64));
+		/* retrieving the objtool data of the switch table we need */
+		if (objtool_data_rela == NULL ||
+		    table->sym->sec != objtool_data_rela->sym->sec ||
+		    table->addend != objtool_data_rela->addend)
+			continue;
+
+		/* retrieving switch table content */
+		switch_table = (u8 *)(rodata_sec->data->d_buf + table->addend);
+
+		/* retrieving pre jump instruction (ldr) */
+		branch_sec = insn->sec;
+		pre_jump_insn = find_insn(file, branch_sec,
+					  insn->offset - 3 * sizeof(u32));
+		entry_size = get_table_entry_size(*(u32 *)(branch_sec->data->d_buf + pre_jump_insn->offset));
+
+		/*
+		 * iterating over the pre-jumps instruction in order to
+		 * retrieve switch base offset.
+		 */
+		while (pre_jump_insn != NULL &&
+		       pre_jump_insn->offset <= insn->offset) {
+			if (pre_jump_insn->stack_op.src.reg == ADR_SOURCE) {
+				base_offset = pre_jump_insn->offset +
+					      pre_jump_insn->immediate;
+				/*
+				 * Once we have the switch table entry size
+				 * we add every possible destination using
+				 * alternatives of the original branch
+				 * instruction
+				 */
+				for (j = 0; j < swt_info->nb_entries; j++) {
+					if (add_possible_branch(file, insn,
+								base_offset,
+								next_offset(switch_table, entry_size))) {
+						return -1;
+					}
+					switch_table += entry_size;
+				}
+			}
+			pre_jump_insn = next_insn_same_sec(file, pre_jump_insn);
+		}
+	}
 	return 0;
 }
 
@@ -32,6 +169,5 @@ struct rela *arch_find_switch_table(struct objtool_file *file,
 				    struct section *rodata_sec,
 				    unsigned long table_offset)
 {
-	file->ignore_unreachables = true;
-	return NULL;
+	return text_rela;
 }
diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index a40338a895f5..44ab2299bc0f 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -613,7 +613,7 @@ int arm_decode_except_gen(u32 instr, unsigned char *type,
 		return 0;
 	case INSN_BRK:
 		if (imm16 == 0x800)
-			*type = INSN_BUG;
+			*type = INSN_NOP;
 		else if (imm16 == 0x100 || imm16 >= 0x900)
 			*type = INSN_CONTEXT_SWITCH;
 		else
diff --git a/tools/objtool/arch/arm64/include/arch_special.h b/tools/objtool/arch/arm64/include/arch_special.h
index 185103be8a51..cba432fed80f 100644
--- a/tools/objtool/arch/arm64/include/arch_special.h
+++ b/tools/objtool/arch/arm64/include/arch_special.h
@@ -15,6 +15,8 @@
 #ifndef _ARM64_ARCH_SPECIAL_H
 #define _ARM64_ARCH_SPECIAL_H
 
+#include <linux/types.h>
+
 #define EX_ENTRY_SIZE		8
 #define EX_ORIG_OFFSET		0
 #define EX_NEW_OFFSET		4
@@ -30,6 +32,14 @@
 #define ALT_ORIG_LEN_OFFSET	10
 #define ALT_NEW_LEN_OFFSET	11
 
+#define ADR_SOURCE	255
+
+struct switch_table_info {
+	u64 switch_table_label;
+	u64 nb_entries;
+	u64 offset_unsigned;
+} __attribute__((__packed__));
+
 static inline bool arch_should_ignore_feature(unsigned short feature)
 {
 	return false;
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index a01d76306749..65b6efecd68f 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -18,6 +18,7 @@
 #define _ARM_INSN_DECODE_H
 
 #include "../../../arch.h"
+#include "arch_special.h"
 
 #define INSN_RESERVED	0b0000
 #define INSN_UNALLOC_1	0b0001
@@ -58,8 +59,6 @@
 #define COMPOSED_INSN_REGS_NUM	2
 #define INSN_COMPOSED	1
 
-#define ADR_SOURCE	-1
-
 typedef int (*arm_decode_class)(u32 instr, unsigned char *type,
 				unsigned long *immediate, struct stack_op *op);
 
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index ce1165ce448a..fce8ad7ab001 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -33,8 +33,8 @@ struct instruction *find_insn(struct objtool_file *file,
 	return NULL;
 }
 
-static struct instruction *next_insn_same_sec(struct objtool_file *file,
-					      struct instruction *insn)
+struct instruction *next_insn_same_sec(struct objtool_file *file,
+				       struct instruction *insn)
 {
 	struct instruction *next = list_next_entry(insn, list);
 
@@ -942,7 +942,7 @@ static struct rela *find_switch_table(struct objtool_file *file,
 				      struct symbol *func,
 				      struct instruction *insn)
 {
-	struct rela *text_rela, *rodata_rela;
+	struct rela *text_rela;
 	struct instruction *orig_insn = insn;
 	struct section *rodata_sec;
 	unsigned long table_offset;
@@ -1840,7 +1840,7 @@ static int validate_sibling_call(struct instruction *insn, struct insn_state *st
 {
 	if (arch_is_insn_sibling_call(insn) && has_modified_stack_frame(state)) {
 		WARN_FUNC("sibling call from callable instruction with modified stack frame",
-				insn->sec, insn->offset);
+			  insn->sec, insn->offset);
 		return 1;
 	}
 
diff --git a/tools/objtool/check.h b/tools/objtool/check.h
index 80e7a96525af..5acfd4b2951c 100644
--- a/tools/objtool/check.h
+++ b/tools/objtool/check.h
@@ -64,6 +64,8 @@ int check(const char *objname, bool orc);
 
 struct instruction *find_insn(struct objtool_file *file,
 			      struct section *sec, unsigned long offset);
+struct instruction *next_insn_same_sec(struct objtool_file *file,
+				       struct instruction *insn);
 
 #define for_each_insn(file, insn)					\
 	list_for_each_entry(insn, &file->insn_list, list)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
