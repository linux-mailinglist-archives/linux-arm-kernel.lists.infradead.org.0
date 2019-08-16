Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A44789016D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 14:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yyHFQQheohOG3pHBkmrwu+RWgapjg08LvS1GeD2Svss=; b=ipSJmR6TZHf8X+ZPs5sRpU9dBW
	GXBccCpGpWUZMFI9knmD+yB3bfPArlUeGQs9t2iicCRbJwGe9HFuEfObYTcjDuZJh8EPqbbdqRPuJ
	GIREqTrB7JxByFxMzZfzOQBe0wBb55hq8n0wwn9T7GXFZ2n1ftV0XIXUuH1/JZexEYpbf3y/jzBPk
	Jp832WITGWdM4gwnXgGmPs6QQPqsVTSavGI6vZpSpaFe8/W3rUEyyV+3XPzBoS+LitBKCbBvn+OFw
	yM2r05+qqRAWiaC6vZkMkwPh5FlO86K20MAx4KBBuwE9M9t31GCgMPcZw020egk+ylo8QQVGrxENL
	ur/eUkQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybJh-00071z-8q; Fri, 16 Aug 2019 12:26:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hybHl-0004Np-2B
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 12:24:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83A961570;
 Fri, 16 Aug 2019 05:24:48 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4A2F13F706;
 Fri, 16 Aug 2019 05:24:47 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jpoimboe@redhat.com
Subject: [RFC v4 06/18] objtool: arm64: Adapt the stack frame checks for arm
 architecture
Date: Fri, 16 Aug 2019 13:23:51 +0100
Message-Id: <20190816122403.14994-7-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816122403.14994-1-raphael.gault@arm.com>
References: <20190816122403.14994-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_052449_323672_51E66443 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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

Since the way the initial stack frame when entering a function is different
that what is done in the x86_64 architecture, we need to add some more
check to support the different cases.  As opposed as for x86_64, the return
address is not stored by the call instruction but is instead loaded in a
register. The initial stack frame is thus empty when entering a function
and 2 push operations are needed to set it up correctly. All the different
combinations need to be taken into account.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 tools/objtool/arch.h              |   2 +
 tools/objtool/arch/arm64/decode.c |  28 +++++++++
 tools/objtool/arch/x86/decode.c   |   5 ++
 tools/objtool/check.c             | 100 ++++++++++++++++++++++++++++--
 tools/objtool/elf.c               |   3 +-
 5 files changed, 131 insertions(+), 7 deletions(-)

diff --git a/tools/objtool/arch.h b/tools/objtool/arch.h
index bb5ce810fb6e..68d6371a24a2 100644
--- a/tools/objtool/arch.h
+++ b/tools/objtool/arch.h
@@ -91,4 +91,6 @@ unsigned long arch_jump_destination(struct instruction *insn);
 
 unsigned long arch_dest_rela_offset(int addend);
 
+bool arch_is_insn_sibling_call(struct instruction *insn);
+
 #endif /* _ARCH_H */
diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 395c5777afab..be3d2eb10227 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -106,6 +106,34 @@ unsigned long arch_dest_rela_offset(int addend)
 	return addend;
 }
 
+/*
+ * In order to know if we are in presence of a sibling
+ * call and not in presence of a switch table we look
+ * back at the previous instructions and see if we are
+ * jumping inside the same function that we are already
+ * in.
+ */
+bool arch_is_insn_sibling_call(struct instruction *insn)
+{
+	struct instruction *prev;
+	struct list_head *l;
+	struct symbol *sym;
+	list_for_each_prev(l, &insn->list) {
+		prev = list_entry(l, struct instruction, list);
+		if (!prev->func ||
+		    prev->func->pfunc != insn->func->pfunc)
+			return false;
+		if (prev->stack_op.src.reg != ADR_SOURCE)
+			continue;
+		sym = find_symbol_containing(insn->sec, insn->immediate);
+		if (!sym || sym->type != STT_FUNC)
+			return false;
+		else if (sym->type == STT_FUNC)
+			return true;
+		break;
+	}
+	return false;
+}
 static int is_arm64(struct elf *elf)
 {
 	switch (elf->ehdr.e_machine) {
diff --git a/tools/objtool/arch/x86/decode.c b/tools/objtool/arch/x86/decode.c
index fa33b3465722..98726990714d 100644
--- a/tools/objtool/arch/x86/decode.c
+++ b/tools/objtool/arch/x86/decode.c
@@ -72,6 +72,11 @@ unsigned long arch_dest_rela_offset(int addend)
 	return addend + 4;
 }
 
+bool arch_is_insn_sibling_call(struct instruction *insn)
+{
+	return true;
+}
+
 int arch_decode_instruction(struct elf *elf, struct section *sec,
 			    unsigned long offset, unsigned int maxlen,
 			    unsigned int *len, enum insn_type *type,
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 4af6422d3428..519569b0329f 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -566,10 +566,10 @@ static int add_jump_destinations(struct objtool_file *file)
 			dest_off = arch_jump_destination(insn);
 		} else if (rela->sym->type == STT_SECTION) {
 			dest_sec = rela->sym->sec;
-			dest_off = rela->addend + 4;
+			dest_off = arch_dest_rela_offset(rela->addend);
 		} else if (rela->sym->sec->idx) {
 			dest_sec = rela->sym->sec;
-			dest_off = rela->sym->sym.st_value + rela->addend + 4;
+			dest_off = rela->sym->sym.st_value + arch_dest_rela_offset(rela->addend);
 		} else if (strstr(rela->sym->name, "_indirect_thunk_")) {
 			/*
 			 * Retpoline jumps are really dynamic jumps in
@@ -1368,8 +1368,8 @@ static void save_reg(struct insn_state *state, unsigned char reg, int base,
 
 static void restore_reg(struct insn_state *state, unsigned char reg)
 {
-	state->regs[reg].base = CFI_UNDEFINED;
-	state->regs[reg].offset = 0;
+	state->regs[reg].base = initial_func_cfi.regs[reg].base;
+	state->regs[reg].offset = initial_func_cfi.regs[reg].offset;
 }
 
 /*
@@ -1525,8 +1525,32 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
 
 				/* add imm, %rsp */
 				state->stack_size -= op->src.offset;
-				if (cfa->base == CFI_SP)
+				if (cfa->base == CFI_SP) {
 					cfa->offset -= op->src.offset;
+					if (state->stack_size == 0 &&
+					    initial_func_cfi.cfa.base == CFI_CFA) {
+						cfa->base = CFI_CFA;
+						cfa->offset = 0;
+					}
+				}
+				/*
+				 * on arm64 the save/restore of sp into fp is not automatic
+				 * and the first one can be done without the other so we
+				 * need to be careful not to invalidate the stack frame in such
+				 * cases.
+				 */
+				else if (cfa->base == CFI_BP) {
+					if (state->stack_size == 0 &&
+					    initial_func_cfi.cfa.base == CFI_CFA) {
+						cfa->base = CFI_CFA;
+						cfa->offset = 0;
+						restore_reg(state, CFI_BP);
+					}
+				} else if (cfa->base == CFI_CFA) {
+					cfa->base = CFI_SP;
+					if (state->stack_size >= 16)
+						cfa->offset = 16;
+				}
 				break;
 			}
 
@@ -1537,6 +1561,15 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
 				break;
 			}
 
+			if (op->src.reg == CFI_SP && op->dest.reg == CFI_BP &&
+			    cfa->base == CFI_SP &&
+			    regs[CFI_BP].base == CFI_CFA &&
+			    regs[CFI_BP].offset == -cfa->offset) {
+				/* mov %rsp, %rbp */
+				cfa->base = op->dest.reg;
+				state->bp_scratch = false;
+				break;
+			}
 			if (op->src.reg == CFI_SP && cfa->base == CFI_SP) {
 
 				/* drap: lea disp(%rsp), %drap */
@@ -1629,6 +1662,22 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
 			state->stack_size -= 8;
 			if (cfa->base == CFI_SP)
 				cfa->offset -= 8;
+			if (cfa->base == CFI_SP &&
+			    cfa->offset == 0 &&
+			    initial_func_cfi.cfa.base == CFI_CFA)
+				cfa->base = CFI_CFA;
+
+			if (op->extra.used) {
+				if (regs[op->extra.reg].offset == -state->stack_size)
+					restore_reg(state, op->extra.reg);
+				state->stack_size -= 8;
+				if (cfa->base == CFI_SP)
+					cfa->offset -= 8;
+				if (cfa->base == CFI_SP &&
+				    cfa->offset == 0 &&
+				    initial_func_cfi.cfa.base == CFI_CFA)
+					cfa->base = CFI_CFA;
+			}
 
 			break;
 
@@ -1648,12 +1697,22 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
 				/* drap: mov disp(%rbp), %reg */
 				restore_reg(state, op->dest.reg);
 
+				if (op->extra.used &&
+				    op->src.reg == CFI_BP &&
+				    op->extra.offset == regs[op->extra.reg].offset)
+					restore_reg(state, op->extra.reg);
+
 			} else if (op->src.reg == cfa->base &&
 			    op->src.offset == regs[op->dest.reg].offset + cfa->offset) {
 
 				/* mov disp(%rbp), %reg */
 				/* mov disp(%rsp), %reg */
 				restore_reg(state, op->dest.reg);
+
+				if (op->extra.used &&
+				    op->src.reg == cfa->base &&
+				    op->extra.offset == regs[op->extra.reg].offset + cfa->offset)
+					restore_reg(state, op->extra.reg);
 			}
 
 			break;
@@ -1669,6 +1728,8 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
 	case OP_DEST_PUSH:
 	case OP_DEST_PUSHF:
 		state->stack_size += 8;
+		if (cfa->base == CFI_CFA)
+			cfa->base = CFI_SP;
 		if (cfa->base == CFI_SP)
 			cfa->offset += 8;
 
@@ -1702,6 +1763,21 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
 			save_reg(state, op->src.reg, CFI_CFA, -state->stack_size);
 		}
 
+		if (op->extra.used) {
+			state->stack_size += 8;
+			if (cfa->base == CFI_CFA)
+				cfa->base = CFI_SP;
+			if (cfa->base == CFI_SP)
+				cfa->offset += 8;
+			if (!state->drap ||
+			    (!(op->extra.reg == cfa->base &&
+			       op->extra.reg == state->drap_reg) &&
+			     !(op->extra.reg == CFI_BP &&
+			       cfa->base == state->drap_reg) &&
+			     regs[op->extra.reg].base == CFI_UNDEFINED))
+			save_reg(state, op->extra.reg, CFI_CFA,
+				 -state->stack_size);
+		}
 		/* detect when asm code uses rbp as a scratch register */
 		if (!no_fp && insn->func && op->src.reg == CFI_BP &&
 		    cfa->base != CFI_BP)
@@ -1720,11 +1796,19 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
 				/* save drap offset so we know when to restore it */
 				state->drap_offset = op->dest.offset;
 			}
+			if (op->extra.used && op->extra.reg == cfa->base &&
+			    op->extra.reg == state->drap_reg) {
+				cfa->base = CFI_BP_INDIRECT;
+				cfa->offset = op->extra.offset;
+			}
 
 			else if (regs[op->src.reg].base == CFI_UNDEFINED) {
 
 				/* drap: mov reg, disp(%rbp) */
 				save_reg(state, op->src.reg, CFI_BP, op->dest.offset);
+				if (op->extra.used)
+					save_reg(state, op->extra.reg, CFI_BP,
+						 op->extra.offset);
 			}
 
 		} else if (op->dest.reg == cfa->base) {
@@ -1733,8 +1817,12 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
 			/* mov reg, disp(%rsp) */
 			save_reg(state, op->src.reg, CFI_CFA,
 				 op->dest.offset - state->cfa.offset);
+			if (op->extra.used)
+				save_reg(state, op->extra.reg, CFI_CFA,
+					 op->extra.offset - state->cfa.offset);
 		}
 
+
 		break;
 
 	case OP_DEST_LEAVE:
@@ -1857,7 +1945,7 @@ static int validate_call(struct instruction *insn, struct insn_state *state)
 
 static int validate_sibling_call(struct instruction *insn, struct insn_state *state)
 {
-	if (has_modified_stack_frame(state)) {
+	if (arch_is_insn_sibling_call(insn) && has_modified_stack_frame(state)) {
 		WARN_FUNC("sibling call from callable instruction with modified stack frame",
 				insn->sec, insn->offset);
 		return 1;
diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index edba4745f25a..c6ac0b771b73 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -62,7 +62,8 @@ struct symbol *find_symbol_by_offset(struct section *sec, unsigned long offset)
 	struct symbol *sym;
 
 	list_for_each_entry(sym, &sec->symbol_list, list)
-		if (sym->type != STT_SECTION &&
+		if (sym->type != STT_NOTYPE &&
+		    sym->type != STT_SECTION &&
 		    sym->offset == offset)
 			return sym;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
