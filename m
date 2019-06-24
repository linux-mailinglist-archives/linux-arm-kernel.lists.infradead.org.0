Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA7150664
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 12:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lAw7+m9NVv+rfzjIKpN7TygU552k+yZF4dE7JVRLzk4=; b=N4eno9Ju1Y6mvjaw0q7R5w8d0Y
	eiof+m7p9+4NczrlFZvzxx5WA2DtHqapxilCZ3PfGhMcWAFiwTDZb+h+IEsuZ3VHwDY0T87F+83o6
	GES8OJddHtNGKuJm0I5t36aHXCdc+bUiNd7ogvpoulwKdHscPKOcm62YxrLqMi9Xst07a8Z90sUfO
	T3ebvF17Sd21RYu4HUeAvmenoqpgBPUug/rHK9Gvrbkmo8XEuug+/7Kf9ZeNPHkmwqXxDXQiemSyD
	idMepvgvmuWtWtzd/szO78KUnpeu4OmiqB+WKEJKzJlBtw96pp5Av4gX3gituTT02EciIkT25FwYr
	15tO1Y4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLln-0008FM-M6; Mon, 24 Jun 2019 10:00:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLhx-0005D2-D4
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:56:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB268D6E;
 Mon, 24 Jun 2019 02:56:16 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4B28D3F71E;
 Mon, 24 Jun 2019 02:56:15 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC V3 04/18] objtool: arm64: Add required implementation for
 supporting the aarch64 architecture in objtool.
Date: Mon, 24 Jun 2019 10:55:34 +0100
Message-Id: <20190624095548.8578-5-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190624095548.8578-1-raphael.gault@arm.com>
References: <20190624095548.8578-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_025617_631498_5ECF3574 
X-CRM114-Status: GOOD (  23.94  )
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

Provide implementation for the arch-dependent functions that are called by
the main check function of objtool.  The ORC unwinder is not yet supported
by the arm64 architecture so we only provide a dummy interface for now.
The decoding of the instruction is split into classes and subclasses as
described into the Instruction Encoding in the ArmV8.5 Architecture
Reference Manual.

In order to handle the load/store instructions for a pair of registers
we add an extra field to the stack_op structure.

We consider that the hypervisor/secure-monitor is behaving
correctly. This enables us to handle hvc/smc/svc context switching
instructions as nop since we consider that the context is restored
correctly.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 tools/objtool/arch.h                          |    7 +
 tools/objtool/arch/arm64/Build                |    7 +
 tools/objtool/arch/arm64/bit_operations.c     |   67 +
 tools/objtool/arch/arm64/decode.c             | 2781 +++++++++++++++++
 .../objtool/arch/arm64/include/arch_special.h |   36 +
 .../arch/arm64/include/asm/orc_types.h        |   96 +
 .../arch/arm64/include/bit_operations.h       |   24 +
 tools/objtool/arch/arm64/include/cfi.h        |   74 +
 .../objtool/arch/arm64/include/insn_decode.h  |  211 ++
 tools/objtool/arch/arm64/orc_dump.c           |   26 +
 tools/objtool/arch/arm64/orc_gen.c            |   40 +
 11 files changed, 3369 insertions(+)
 create mode 100644 tools/objtool/arch/arm64/Build
 create mode 100644 tools/objtool/arch/arm64/bit_operations.c
 create mode 100644 tools/objtool/arch/arm64/decode.c
 create mode 100644 tools/objtool/arch/arm64/include/arch_special.h
 create mode 100644 tools/objtool/arch/arm64/include/asm/orc_types.h
 create mode 100644 tools/objtool/arch/arm64/include/bit_operations.h
 create mode 100644 tools/objtool/arch/arm64/include/cfi.h
 create mode 100644 tools/objtool/arch/arm64/include/insn_decode.h
 create mode 100644 tools/objtool/arch/arm64/orc_dump.c
 create mode 100644 tools/objtool/arch/arm64/orc_gen.c

diff --git a/tools/objtool/arch.h b/tools/objtool/arch.h
index ce7db772248e..53a72477c352 100644
--- a/tools/objtool/arch.h
+++ b/tools/objtool/arch.h
@@ -60,9 +60,16 @@ struct op_src {
 	int offset;
 };
 
+struct op_extra {
+	unsigned char used;
+	unsigned char reg;
+	int offset;
+};
+
 struct stack_op {
 	struct op_dest dest;
 	struct op_src src;
+	struct op_extra extra;
 };
 
 struct instruction;
diff --git a/tools/objtool/arch/arm64/Build b/tools/objtool/arch/arm64/Build
new file mode 100644
index 000000000000..bf7a32c2b9e9
--- /dev/null
+++ b/tools/objtool/arch/arm64/Build
@@ -0,0 +1,7 @@
+objtool-y += decode.o
+objtool-y += orc_dump.o
+objtool-y += orc_gen.o
+objtool-y += bit_operations.o
+
+
+CFLAGS_decode.o += -I$(OUTPUT)arch/arm64/lib
diff --git a/tools/objtool/arch/arm64/bit_operations.c b/tools/objtool/arch/arm64/bit_operations.c
new file mode 100644
index 000000000000..f457a14a7f5d
--- /dev/null
+++ b/tools/objtool/arch/arm64/bit_operations.c
@@ -0,0 +1,67 @@
+#include <stdio.h>
+#include <stdlib.h>
+#include "bit_operations.h"
+
+#include "../../warn.h"
+
+u64 replicate(u64 x, int size, int n)
+{
+	u64 ret = 0;
+
+	while (n >= 0) {
+		ret = (ret | x) << size;
+		n--;
+	}
+	return ret | x;
+}
+
+u64 ror(u64 x, int size, int shift)
+{
+	int m = shift % size;
+
+	if (shift == 0)
+		return x;
+	return ZERO_EXTEND((x >> m) | (x << (size - m)), size);
+}
+
+int highest_set_bit(u32 x)
+{
+	int i;
+
+	for (i = 31; i >= 0; i--, x <<= 1)
+		if (x & 0x80000000)
+			return i;
+	return 0;
+}
+
+/* imms and immr are both 6 bit long */
+__uint128_t decode_bit_masks(unsigned char N, unsigned char imms,
+			     unsigned char immr, bool immediate)
+{
+	u64 tmask, wmask;
+	u32 diff, S, R, esize, welem, telem;
+	unsigned char levels = 0, len = 0;
+
+	len = highest_set_bit((N << 6) | ((~imms) & ONES(6)));
+	levels = ZERO_EXTEND(ONES(len), 6);
+
+	if (immediate && ((imms & levels) == levels)) {
+		WARN("unknown instruction");
+		return -1;
+	}
+
+	S = imms & levels;
+	R = immr & levels;
+	diff = ZERO_EXTEND(S - R, 6);
+
+	esize = 1 << len;
+	diff = diff & ONES(len);
+
+	welem = ZERO_EXTEND(ONES(S + 1), esize);
+	telem = ZERO_EXTEND(ONES(diff + 1), esize);
+
+	wmask = replicate(ror(welem, esize, R), esize, 64 / esize);
+	tmask = replicate(telem, esize, 64 / esize);
+
+	return ((__uint128_t)wmask << 64) | tmask;
+}
diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
new file mode 100644
index 000000000000..6c77ad1a08ec
--- /dev/null
+++ b/tools/objtool/arch/arm64/decode.c
@@ -0,0 +1,2781 @@
+/*
+ * Copyright (C) 2019 Raphael Gault <raphael.gault@arm.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <stdint.h>
+
+#include "insn_decode.h"
+#include "cfi.h"
+#include "bit_operations.h"
+
+#include "../../check.h"
+#include "../../arch.h"
+#include "../../elf.h"
+#include "../../warn.h"
+
+/*
+ * static int (*arm_decode_class)(u32 instr,
+ *				 unsigned int *len,
+ *				 unsigned char *type,
+ *				 unsigned long *immediate,
+ *				 struct stack_op *op);
+ */
+static arm_decode_class aarch64_insn_class_decode_table[] = {
+	[INSN_RESERVED]			= arm_decode_reserved,
+	[INSN_UNKNOWN]			= arm_decode_unknown,
+	[INSN_SVE_ENC]			= arm_decode_sve_encoding,
+	[INSN_UNALLOC]			= arm_decode_unknown,
+	[INSN_LD_ST_4]			= arm_decode_ld_st,
+	[INSN_DP_REG_5]			= arm_decode_dp_reg,
+	[INSN_LD_ST_6]			= arm_decode_ld_st,
+	[INSN_DP_SIMD_7]		= arm_decode_dp_simd,
+	[0b1000 ... INSN_DP_IMM]	= arm_decode_dp_imm,
+	[0b1010 ... INSN_BRANCH]	= arm_decode_br_sys,
+	[INSN_LD_ST_C]			= arm_decode_ld_st,
+	[INSN_DP_REG_D]			= arm_decode_dp_reg,
+	[INSN_LD_ST_E]			= arm_decode_ld_st,
+	[INSN_DP_SIMD_F]		= arm_decode_dp_simd,
+};
+
+static arm_decode_class aarch64_insn_dp_imm_decode_table[] = {
+	[0 ... INSN_PCREL]	= arm_decode_pcrel,
+	[INSN_ADD_SUB]		= arm_decode_add_sub,
+	[INSN_ADD_TAG]		= arm_decode_add_sub_tags,
+	[INSN_LOGICAL]		= arm_decode_logical,
+	[INSN_MOVE_WIDE]	= arm_decode_move_wide,
+	[INSN_BITFIELD]		= arm_decode_bitfield,
+	[INSN_EXTRACT]		= arm_decode_extract,
+};
+
+bool arch_callee_saved_reg(unsigned char reg)
+{
+	switch (reg) {
+	case CFI_R19:
+	case CFI_R20:
+	case CFI_R21:
+	case CFI_R22:
+	case CFI_R23:
+	case CFI_R24:
+	case CFI_R25:
+	case CFI_R26:
+	case CFI_R27:
+	case CFI_R28:
+	case CFI_FP:
+	case CFI_R30:
+		return true;
+	default:
+		return false;
+	}
+}
+
+void arch_initial_func_cfi_state(struct cfi_state *state)
+{
+	int i;
+
+	for (i = 0; i < CFI_NUM_REGS; i++) {
+		state->regs[i].base = CFI_UNDEFINED;
+		state->regs[i].offset = 0;
+	}
+
+	/* initial CFA (call frame address) */
+	state->cfa.base = CFI_CFA;
+	state->cfa.offset = 0;
+
+	/* initial RA (return address) */
+	state->regs[CFI_LR].base = CFI_CFA;
+	state->regs[CFI_LR].offset = -8;
+}
+
+unsigned long arch_dest_rela_offset(int addend)
+{
+	return addend;
+}
+
+static int is_arm64(struct elf *elf)
+{
+	switch (elf->ehdr.e_machine) {
+	case EM_AARCH64: //0xB7
+		return 1;
+	default:
+		WARN("unexpected ELF machine type %x",
+		     elf->ehdr.e_machine);
+		return 0;
+	}
+}
+
+/*
+ * Arm A64 Instruction set' decode groups (based on op0 bits[28:25]):
+ * Ob0000 - Reserved
+ * 0b0001/0b001x - Unallocated
+ * 0b100x - Data Processing -- Immediate
+ * 0b101x - Branch, Exception Gen., System Instructions.
+ * 0bx1x0 - Loads and Stores
+ * 0bx101 - Data Processing -- Registers
+ * 0bx111 - Data Processing -- Scalar Floating-Points, Advanced SIMD
+ */
+
+int arch_decode_instruction(struct elf *elf, struct section *sec,
+			    unsigned long offset, unsigned int maxlen,
+			    unsigned int *len, unsigned char *type,
+			    unsigned long *immediate, struct stack_op *op)
+{
+	int arm64 = 0;
+	u32 insn = 0;
+
+	*len = 4;
+	*immediate = 0;
+
+	op->dest.type = 0;
+	op->dest.reg = 0;
+	op->dest.offset = 0;
+	op->src.type = 0;
+	op->src.reg = 0;
+	op->src.offset = 0;
+
+	//test architucture (make sure it is arm64)
+	arm64 = is_arm64(elf);
+	if (arm64 != 1)
+		return -1;
+
+	//retrieve instruction (from sec->data->offset)
+	insn = *(u32 *)(sec->data->d_buf + offset);
+
+	//dispatch according to encoding classes
+	return aarch64_insn_class_decode_table[(insn >> 25) & 0xf](insn, type,
+							immediate, op);
+}
+
+int arm_decode_unknown(u32 instr, unsigned char *type,
+		       unsigned long *immediate, struct stack_op *op)
+{
+	*type = 0;
+	return 0;
+}
+
+int arm_decode_dp_simd(u32 instr, unsigned char *type,
+		       unsigned long *immediate, struct stack_op *op)
+{
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_reserved(u32 instr, unsigned char *type,
+			unsigned long *immediate, struct stack_op *op)
+{
+	*immediate = instr & ONES(16);
+	*type = INSN_BUG;
+	return 0;
+}
+
+int arm_decode_dp_imm(u32 instr, unsigned char *type,
+		      unsigned long *immediate, struct stack_op *op)
+{
+	return aarch64_insn_dp_imm_decode_table[(instr >> 23) & 0x7](instr,
+							type, immediate, op);
+}
+
+int arm_decode_pcrel(u32 instr, unsigned char *type,
+		     unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char rd = 0, page = 0;
+	u32 immhi = 0, immlo = 0;
+
+	page = EXTRACT_BIT(instr, 31);
+	rd = instr & 0x1F;
+	immhi = (instr >> 5) & ONES(19);
+	immlo = (instr >> 29) & ONES(2);
+
+	*immediate = SIGN_EXTEND((immhi << 2) | immlo, 21);
+
+	if (page)
+		*immediate = SIGN_EXTEND(*immediate << 12, 33);
+
+	*type = INSN_OTHER;
+	op->src.reg = ADR_SOURCE;
+	op->dest.reg = rd;
+
+	return 0;
+}
+
+int arm_decode_add_sub(u32 instr, unsigned char *type,
+		       unsigned long *immediate, struct stack_op *op)
+{
+	unsigned long imm12 = 0, imm = 0;
+	unsigned char sf = 0, sh = 0, S = 0, op_bit = 0;
+	unsigned char rn = 0, rd = 0;
+
+	S = EXTRACT_BIT(instr, 29);
+	op_bit = EXTRACT_BIT(instr, 30);
+	sf = EXTRACT_BIT(instr, 31);
+	sh = EXTRACT_BIT(instr, 22);
+	rd = instr & ONES(5);
+	rn = (instr >> 5) & ONES(5);
+	imm12 = (instr >> 10) & ONES(12);
+	imm = ZERO_EXTEND(imm12 << (sh * 12), (sf + 1) * 32);
+
+	*type = INSN_OTHER;
+
+	if ((!S && rd == CFI_SP) || rn == CFI_SP) {
+		*type = INSN_STACK;
+		op->dest.type = OP_DEST_REG;
+		op->dest.offset = 0;
+		op->dest.reg = rd;
+		op->src.type = imm12 ? OP_SRC_ADD : OP_SRC_REG;
+		op->src.offset = op_bit ? -1 * imm : imm;
+		op->src.reg = rn;
+	}
+	return 0;
+}
+
+int arm_decode_add_sub_tags(u32 instr, unsigned char *type,
+			    unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char decode_field = 0, rn = 0, rd = 0, uimm6 = 0;
+
+	decode_field = (instr >> 29) & ONES(3);
+	rd = instr & ONES(5);
+	rn = (instr >> 5) & ONES(5);
+	uimm6 = (instr >> 16) & ONES(6);
+
+	*immediate = uimm6;
+	*type = INSN_OTHER;
+
+#define ADDG_DECODE	4
+#define SUBG_DECODE	5
+	if (decode_field != ADDG_DECODE && decode_field != SUBG_DECODE)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+#undef ADDG_DECODE
+#undef SUBG_DECODE
+	op->dest.type = OP_DEST_REG;
+	op->dest.offset = 0;
+	op->dest.reg = rd;
+	op->src.type = OP_SRC_ADD;
+	op->src.offset = 0;
+	op->src.reg = rn;
+
+	if (rd == CFI_SP)
+		*type = INSN_STACK;
+
+	return 0;
+}
+
+int arm_decode_logical(u32 instr, unsigned char *type,
+		       unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char sf = 0, opc = 0, N = 0;
+	unsigned char imms = 0, immr = 0, rn = 0, rd = 0;
+
+	rd = instr & ONES(5);
+	rn = (instr >> 5) & ONES(5);
+
+	imms = (instr >> 10) & ONES(6);
+	immr = (instr >> 16) & ONES(6);
+
+	N = EXTRACT_BIT(instr, 22);
+	opc = (instr >> 29) & ONES(2);
+	sf = EXTRACT_BIT(instr, 31);
+
+	if (N == 1 && sf == 0)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	*type = INSN_OTHER;
+	*immediate = (decode_bit_masks(N, imms, immr, true) >> 64);
+#define ANDS_DECODE	0b11
+	if (opc == ANDS_DECODE)
+		return 0;
+#undef ANDS_DECODE
+	if (rd == CFI_SP) {
+		*type = INSN_STACK;
+		op->dest.type = OP_DEST_REG;
+		op->dest.offset = 0;
+		op->dest.reg = CFI_SP;
+
+		op->src.type = OP_SRC_AND;
+		op->src.offset = 0;
+		op->src.reg = rn;
+	}
+
+	return 0;
+}
+
+int arm_decode_move_wide(u32 instr, unsigned char *type,
+			 unsigned long *immediate, struct stack_op *op)
+{
+	u32 imm16 = 0;
+	unsigned char hw = 0, opc = 0, sf = 0;
+
+	sf = EXTRACT_BIT(instr, 31);
+	opc = (instr >> 29) & ONES(2);
+	hw = (instr >> 21) & ONES(2);
+	imm16 = (instr >> 5) & ONES(16);
+
+	if ((sf == 0 && (hw & 0x2)) || opc == 0x1)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	*type = INSN_OTHER;
+	*immediate = imm16;
+
+	return 0;
+}
+
+int arm_decode_bitfield(u32 instr, unsigned char *type,
+			unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char sf = 0, opc = 0, N = 0;
+
+	sf = EXTRACT_BIT(instr, 31);
+	opc = (instr >> 29) & ONES(2);
+	N = EXTRACT_BIT(instr, 22);
+
+	if (opc == 0x3 || sf != N)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	*type = INSN_OTHER;
+
+	return 0;
+}
+
+int arm_decode_extract(u32 instr, unsigned char *type,
+		       unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char sf = 0, op21 = 0, N = 0, o0 = 0;
+	unsigned char imms = 0;
+	unsigned char decode_field = 0;
+
+	sf = EXTRACT_BIT(instr, 31);
+	op21 = (instr >> 29) & ONES(2);
+	N = EXTRACT_BIT(instr, 22);
+	o0 = EXTRACT_BIT(instr, 21);
+	imms = (instr >> 10) & ONES(6);
+
+	decode_field = (sf << 4) | (op21 << 2) | (N << 1) | o0;
+	*type = INSN_OTHER;
+	*immediate = imms;
+
+	if ((decode_field == 0 && !EXTRACT_BIT(imms, 5)) ||
+	    decode_field == 0b10010)
+		return 0;
+
+	return arm_decode_unknown(instr, type, immediate, op);
+}
+
+static struct aarch64_insn_decoder br_sys_decoder[] = {
+	{
+		.mask = 0b1111000000000000000000,
+		.value = 0b0100000000000000000000,
+		.decode_func = arm_decode_br_cond_imm,
+	},
+	{
+		.mask = 0b1111100000000000000000,
+		.value = 0b1100000000000000000000,
+		.decode_func = arm_decode_except_gen,
+	},
+	{
+		.mask = 0b1111111111111111111111,
+		.value = 0b1100100000011001011111,
+		.decode_func = arm_decode_hints,
+	},
+	{
+		.mask = 0b1111111111111111100000,
+		.value = 0b1100100000011001100000,
+		.decode_func = arm_decode_barriers,
+	},
+	{
+		.mask = 0b1111111111000111100000,
+		.value = 0b1100100000000010000000,
+		.decode_func = arm_decode_pstate,
+	},
+	{
+		.mask = 0b1111111011000000000000,
+		.value = 0b1100100001000000000000,
+		.decode_func = arm_decode_system_insn,
+	},
+	{
+		.mask = 0b1111111010000000000000,
+		.value = 0b1100100010000000000000,
+		.decode_func = arm_decode_system_regs,
+	},
+	{
+		.mask = 0b1111000000000000000000,
+		.value = 0b1101000000000000000000,
+		.decode_func = arm_decode_br_uncond_reg,
+	},
+	{
+		.mask = 0b0110000000000000000000,
+		.value = 0b0000000000000000000000,
+		.decode_func = arm_decode_br_uncond_imm,
+	},
+	{
+		.mask = 0b0111000000000000000000,
+		.value = 0b0010000000000000000000,
+		.decode_func = arm_decode_br_comp_imm,
+	},
+	{
+		.mask = 0b0111000000000000000000,
+		.value = 0b0011000000000000000000,
+		.decode_func = arm_decode_br_tst_imm,
+	},
+
+};
+
+int arm_decode_br_sys(u32 instr, unsigned char *type,
+		      unsigned long *immediate, struct stack_op *op)
+{
+	u32 decode_field = 0, op1 = 0;
+	unsigned char op0 = 0, op2 = 0;
+	int i = 0;
+
+	op0 = (instr >> 29) & ONES(3);
+	op1 = (instr >> 12) & ONES(14);
+	op2 = instr & ONES(5);
+
+	decode_field = op0;
+	decode_field = (decode_field << 19) | (op1 << 5) | op2;
+
+	for (i = 0; i < ARRAY_SIZE(br_sys_decoder); i++) {
+		if ((decode_field & br_sys_decoder[i].mask) ==
+		    br_sys_decoder[i].value) {
+			return br_sys_decoder[i].decode_func(instr,
+							     type,
+							     immediate,
+							     op);
+		}
+	}
+
+	return arm_decode_unknown(instr, type, immediate, op);
+}
+
+int arm_decode_br_cond_imm(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char o0 = 0, o1 = 0;
+	u32 imm19;
+
+	o0 = EXTRACT_BIT(instr, 4);
+	o1 = EXTRACT_BIT(instr, 24);
+	imm19 = (instr >> 5) & ONES(19);
+
+	*immediate = SIGN_EXTEND(imm19 << 2, 19);
+
+	if ((o1 << 1) | o0)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	*type = INSN_JUMP_CONDITIONAL;
+
+	return 0;
+}
+
+static struct aarch64_insn_decoder except_gen_decoder[] = {
+	{
+		.mask = 0b00000100,
+		.value = 0b00000100,
+	},
+	{
+		.mask = 0b00001000,
+		.value = 0b00001000,
+	},
+	{
+		.mask = 0b00010000,
+		.value = 0b00010000,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b00000000,
+	},
+	{
+		.mask = 0b11111101,
+		.value = 0b00100001,
+	},
+	{
+		.mask = 0b11111110,
+		.value = 0b00100010,
+	},
+	{
+		.mask = 0b11111101,
+		.value = 0b01000001,
+	},
+	{
+		.mask = 0b11111110,
+		.value = 0b01000010,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b01100001,
+	},
+	{
+		.mask = 0b11111110,
+		.value = 0b01100010,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b10000000,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b10100000,
+	},
+	{
+		.mask = 0b11111100,
+		.value = 0b11000000,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b11100001,
+	},
+	{
+		.mask = 0b11111110,
+		.value = 0b11100010,
+	},
+};
+
+int arm_decode_except_gen(u32 instr, unsigned char *type,
+			  unsigned long *immediate, struct stack_op *op)
+{
+	u32 imm16 = 0;
+	unsigned char opc = 0, op2 = 0, LL = 0, decode_field = 0;
+	int i = 0;
+
+	imm16 = (instr >> 5) & ONES(16);
+	opc = (instr >> 21) & ONES(3);
+	op2 = (instr >> 2) & ONES(3);
+	LL = instr & ONES(2);
+	decode_field = (opc << 5) | (op2 << 2) | LL;
+
+	for (i = 0; i < ARRAY_SIZE(except_gen_decoder); i++) {
+		if ((decode_field & except_gen_decoder[i].mask) ==
+		    except_gen_decoder[i].value) {
+			return arm_decode_unknown(instr, type, immediate, op);
+		}
+	}
+
+#define INSN_SVC	0b00000001
+#define INSN_HVC	0b00000010
+#define INSN_SMC	0b00000011
+#define INSN_BRK	0b00100000
+#define INSN_HLT	0b01000000
+#define INSN_DCPS1	0b10100001
+#define INSN_DCPS2	0b10100010
+#define INSN_DCPS3	0b10100011
+
+	switch (decode_field) {
+	case INSN_SVC:
+	case INSN_HVC:
+	case INSN_SMC:
+		/*
+		 * We consider that the context will be restored correctly
+		 * with an unchanged sp and the same general registers
+		 */
+		*type = INSN_NOP;
+		return 0;
+	case INSN_BRK:
+		if (imm16 == 0x800)
+			*type = INSN_BUG;
+		else if (imm16 == 0x100 || imm16 >= 0x900)
+			*type = INSN_CONTEXT_SWITCH;
+		else
+			*type = INSN_OTHER;
+		return 0;
+	case INSN_HLT:
+	case INSN_DCPS1:
+	case INSN_DCPS2:
+	case INSN_DCPS3:
+		*immediate = imm16;
+		*type = INSN_OTHER;
+		return 0;
+	default:
+		return arm_decode_unknown(instr, type, immediate, op);
+	}
+
+#undef INSN_SVC
+#undef INSN_HVC
+#undef INSN_SMC
+#undef INSN_BRK
+#undef INSN_HLT
+#undef INSN_DCPS1
+#undef INSN_DCPS2
+#undef INSN_DCPS3
+}
+
+int arm_decode_hints(u32 instr, unsigned char *type,
+		     unsigned long *immediate, struct stack_op *op)
+{
+	*type = INSN_NOP;
+	return 0;
+}
+
+int arm_decode_barriers(u32 instr, unsigned char *type,
+			unsigned long *immediate, struct stack_op *op)
+{
+	/* TODO:check unallocated */
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_pstate(u32 instr, unsigned char *type,
+		      unsigned long *immediate, struct stack_op *op)
+{
+	/* TODO:check unallocated */
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_system_insn(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	/* TODO:check unallocated */
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_system_regs(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	/* TODO:check unallocated */
+	*type = INSN_OTHER;
+	return 0;
+}
+
+static struct aarch64_insn_decoder ret_decoder[] = {
+	/*
+	 * RET, RETAA, RETAB
+	 */
+	{
+		.mask = 0b1111111111111110000011111,
+		.value = 0b0010111110000000000000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111111111111111,
+		.value = 0b0010111110000101111111111,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111111111111111,
+		.value = 0b0010111110000111111111111,
+		.decode_func = NULL,
+	},
+};
+
+static struct aarch64_insn_decoder br_decoder[] = {
+	/*
+	 * BR, BRAA, BRAAZ, BRAB, BRABZ
+	 */
+	{
+		.mask = 0b1111111111111110000011111,
+		.value = 0b0000111110000000000000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111110000011111,
+		.value = 0b0000111110000100000011111,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111110000011111,
+		.value = 0b0000111110000110000011111,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111110000000000,
+		.value = 0b1000111110000100000000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111110000000000,
+		.value = 0b1000111110000110000000000,
+		.decode_func = NULL,
+	},
+};
+
+#define INSN_DRPS_FIELD		0b0101111110000001111100000
+#define INSN_DRPS_MASK		0b1111111111111111111111111
+
+static struct aarch64_insn_decoder ct_sw_decoder[] = {
+	/*
+	 * ERET, ERETAA, ERETAB
+	 */
+	{
+		.mask = INSN_DRPS_MASK,
+		.value = 0b0100111110000001111100000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = INSN_DRPS_MASK,
+		.value = 0b0100111110000101111111111,
+		.decode_func = NULL,
+	},
+	{
+		.mask = INSN_DRPS_MASK,
+		.value = 0b0100111110000111111111111,
+		.decode_func = NULL,
+	},
+};
+
+static struct aarch64_insn_decoder call_decoder[] = {
+	/*
+	 * BLR, BLRAA, BLRAAZ, BLRAB, BLRABZ
+	 */
+	{
+		.mask = 0b1111111111111110000011111,
+		.value =  0b0001111110000000000000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111110000011111,
+		.value = 0b0001111110000100000011111,
+		.decode_func = NULL,
+	},
+	{
+		0b1111111111111110000011111,
+		0b0001111110000110000011111,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111110000000000,
+		.value = 0b1001111110000100000000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111110000000000,
+		.value = 0b1001111110000110000000000,
+		.decode_func = NULL,
+	},
+};
+
+int arm_decode_br_uncond_reg(u32 instr, unsigned char *type,
+			     unsigned long *immediate, struct stack_op *op)
+{
+	u32 decode_field = 0;
+	int i = 0;
+
+	decode_field = instr & ONES(25);
+	*type = 0;
+	for (i = 0; i < ARRAY_SIZE(br_decoder); i++) {
+		if ((decode_field & br_decoder[i].mask) == br_decoder[i].value)
+			*type = INSN_JUMP_DYNAMIC;
+	}
+	for (i = 0; i < ARRAY_SIZE(call_decoder); i++) {
+		if ((decode_field & call_decoder[i].value) ==
+		    call_decoder[i].value)
+			*type = INSN_CALL_DYNAMIC;
+	}
+	for (i = 0; i < ARRAY_SIZE(ret_decoder); i++) {
+		if ((decode_field & ret_decoder[i].mask) ==
+		    ret_decoder[i].value)
+			*type = INSN_RETURN;
+	}
+	for (i = 0; i < ARRAY_SIZE(ct_sw_decoder); i++) {
+		if ((decode_field & ct_sw_decoder[i].mask) ==
+		    ct_sw_decoder[i].value)
+			*type = INSN_CONTEXT_SWITCH;
+	}
+	if ((decode_field & INSN_DRPS_MASK) == INSN_DRPS_FIELD)
+		*type = INSN_OTHER;
+	if (*type == 0)
+		return arm_decode_unknown(instr, type, immediate, op);
+	return 0;
+}
+
+#undef INSN_DRPS_FIELD
+#undef INSN_DRPS_MASK
+
+int arm_decode_br_uncond_imm(u32 instr, unsigned char *type,
+			     unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char decode_field = 0;
+	u32 imm26 = 0;
+
+	decode_field = EXTRACT_BIT(instr, 31);
+	imm26 = instr & ONES(26);
+
+	*immediate = SIGN_EXTEND(imm26 << 2, 28);
+	if (decode_field == 0)
+		*type = INSN_JUMP_UNCONDITIONAL;
+	else
+		*type = INSN_CALL;
+
+	return 0;
+}
+
+int arm_decode_br_comp_imm(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	u32 imm19 = (instr >> 5) & ONES(19);
+
+	*immediate = SIGN_EXTEND(imm19 << 2, 21);
+	*type = INSN_JUMP_CONDITIONAL;
+	return 0;
+}
+
+int arm_decode_br_tst_imm(u32 instr, unsigned char *type,
+			  unsigned long *immediate, struct stack_op *op)
+{
+	u32 imm14 = (instr >> 5) & ONES(14);
+
+	*immediate = SIGN_EXTEND(imm14 << 2, 16);
+	*type = INSN_JUMP_CONDITIONAL;
+	return 0;
+}
+
+static struct aarch64_insn_decoder ld_st_decoder[] = {
+	{
+		.mask = 0b101111111111100,
+		.value = 0b000010000000000,
+		.decode_func = arm_decode_adv_simd_mult,
+	},
+	{
+		.mask = 0b101111110000000,
+		.value = 0b000010100000000,
+		.decode_func = arm_decode_adv_simd_mult_post,
+	},
+	{
+		.mask = 0b101111101111100,
+		.value = 0b000011000000000,
+		.decode_func = arm_decode_adv_simd_single,
+	},
+	{
+		.mask = 0b101111100000000,
+		.value = 0b000011100000000,
+		.decode_func = arm_decode_adv_simd_single_post,
+	},
+	{
+		.mask = 0b111111010000000,
+		.value = 0b110101010000000,
+		.decode_func = arm_decode_ld_st_mem_tags,
+	},
+	{
+		.mask = 0b001111000000000,
+		.value = 0b000000000000000,
+		.decode_func = arm_decode_ld_st_exclusive,
+	},
+	{
+		.mask = 0b001111010000011,
+		.value = 0b000101000000000,
+		.decode_func = arm_decode_ldapr_stlr_unsc_imm,
+	},
+	{
+		.mask = 0b001101000000000,
+		.value = 0b000100000000000,
+		.decode_func = arm_decode_ld_regs_literal,
+	},
+	{
+		.mask = 0b001101100000000,
+		.value = 0b001000000000000,
+		.decode_func = arm_decode_ld_st_noalloc_pair_off,
+	},
+	{
+		.mask = 0b001101100000000,
+		.value = 0b001000100000000,
+		.decode_func = arm_decode_ld_st_regs_pair_post,
+	},
+	{
+		.mask = 0b001101100000000,
+		.value = 0b001001000000000,
+		.decode_func = arm_decode_ld_st_regs_pair_off,
+	},
+	{
+		.mask = 0b001101100000000,
+		.value = 0b001001100000000,
+		.decode_func = arm_decode_ld_st_regs_pair_pre,
+	},
+	{
+		.mask = 0b001101010000011,
+		.value = 0b001100000000000,
+		.decode_func = arm_decode_ld_st_regs_unsc_imm,
+	},
+	{
+		.mask = 0b001101010000011,
+		.value = 0b001100000000001,
+		.decode_func = arm_decode_ld_st_imm_post,
+	},
+	{
+		.mask = 0b001101010000011,
+		.value = 0b001100000000010,
+		.decode_func = arm_decode_ld_st_imm_unpriv,
+	},
+	{
+		.mask = 0b001101010000011,
+		.value = 0b001100000000011,
+		.decode_func = arm_decode_ld_st_imm_pre,
+	},
+	{
+		.mask = 0b001101010000011,
+		.value = 0b001100010000000,
+		.decode_func = arm_decode_atomic,
+	},
+	{
+		.mask = 0b001101010000011,
+		.value = 0b001100010000010,
+		.decode_func = arm_decode_ld_st_regs_off,
+	},
+	{
+		.mask = 0b001101010000001,
+		.value = 0b001100010000001,
+		.decode_func = arm_decode_ld_st_regs_pac,
+	},
+	{
+		.mask = 0b001101000000000,
+		.value = 0b001101000000000,
+		.decode_func = arm_decode_ld_st_regs_unsigned,
+	},
+};
+
+int arm_decode_ld_st(u32 instr, unsigned char *type,
+		     unsigned long *immediate, struct stack_op *op)
+{
+	u32 decode_field = 0;
+	int i = 0;
+	unsigned char op0 = 0, op1 = 0, op2 = 0, op3 = 0, op4 = 0;
+
+	op0 = (instr >> 28) & ONES(4);
+	op1 = EXTRACT_BIT(instr, 26);
+	op2 = (instr >> 23) & ONES(2);
+	op3 = (instr >> 16) & ONES(6);
+	op4 = (instr >> 10) & ONES(2);
+	decode_field = (op0 << 3) | (op1 << 2) | op2;
+	decode_field = (decode_field << 8) | (op3 << 2) | op4;
+
+	for (i = 0; i < ARRAY_SIZE(ld_st_decoder); i++) {
+		if ((decode_field & ld_st_decoder[i].mask) ==
+		    ld_st_decoder[i].value) {
+			return ld_st_decoder[i].decode_func(instr,
+							    type,
+							    immediate,
+							    op);
+		}
+	}
+	return arm_decode_unknown(instr, type, immediate, op);
+}
+
+static int adv_simd_mult_fields[] = {
+	0b00000,
+	0b00010,
+	0b00100,
+	0b00110,
+	0b00111,
+	0b01000,
+	0b01010,
+	0b10000,
+	0b10010,
+	0b10100,
+	0b10110,
+	0b10111,
+	0b11000,
+	0b11010,
+};
+
+int arm_decode_adv_simd_mult(u32 instr, unsigned char *type,
+			     unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char L = 0, opcode = 0, rn = 0, rt = 0;
+	unsigned char decode_field = 0;
+	int i = 0;
+
+	L = EXTRACT_BIT(instr, 22);
+	opcode = (instr >> 12) & ONES(4);
+
+	decode_field = (L << 4) | opcode;
+	rn = (instr >> 5) & ONES(5);
+	rt = instr & ONES(5);
+	*type = INSN_OTHER;
+
+	for (i = 0; i < ARRAY_SIZE(adv_simd_mult_fields); i++) {
+		if ((decode_field & 0b11111) == adv_simd_mult_fields[i]) {
+			if (rn != 31)
+				return 0;
+			*type = INSN_STACK;
+		}
+	}
+	if (*type != INSN_STACK)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	if (!L) {
+		op->dest.type = OP_DEST_REG_INDIRECT;
+		op->dest.reg = CFI_SP;
+		op->dest.offset = 0;
+		op->src.type = OP_SRC_REG;
+		op->src.reg = rt;
+		op->src.offset = 0;
+	} else {
+		op->src.type = OP_SRC_REG_INDIRECT;
+		op->src.reg = CFI_SP;
+		op->src.offset = 0;
+		op->dest.type = OP_SRC_REG;
+		op->dest.reg = rt;
+		op->dest.offset = 0;
+	}
+
+	return 0;
+}
+
+int arm_decode_adv_simd_mult_post(u32 instr, unsigned char *type,
+				  unsigned long *immediate,
+				  struct stack_op *op)
+{
+	/* same opcode as for the no offset variant */
+	unsigned char rm = 0;
+	int ret = 0;
+
+	rm = (instr >> 16) & ONES(5);
+
+	ret = arm_decode_adv_simd_mult(instr, type, immediate, op);
+
+	/*
+	 * This is actually irrelevant if the offset is given by a register
+	 * however there is no way to know the offset value from the encoding
+	 * in such a case.
+	 */
+	if (op->dest.type == OP_DEST_REG_INDIRECT)
+		op->dest.offset = rm;
+	if (op->src.type == OP_SRC_REG_INDIRECT)
+		op->src.offset = rm;
+	return ret;
+}
+
+static struct aarch64_insn_decoder simd_single_decoder[] = {
+	{
+		.mask = 0b11111000,
+		.value = 0b00000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111000,
+		.value = 0b00001000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b00010000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b00011000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b00100000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b00100001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b00101000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b00101001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111000,
+		.value = 0b01000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111000,
+		.value = 0b01001000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b01010000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b01011000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b01100000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b01100001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b01101000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b01101001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111000,
+		.value = 0b10000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111000,
+		.value = 0b10001000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b10010000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b10011000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b10100000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b10100001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b10101000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b10101001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111100,
+		.value = 0b10110000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111100,
+		.value = 0b10111000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11000000,
+		.value = 0b11111000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111000,
+		.value = 0b11001000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b11010000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b11011000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b11100000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b11100001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b11101000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b11101001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111100,
+		.value = 0b11110000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111100,
+		.value = 0b11111000,
+		.decode_func = NULL,
+	},
+};
+
+int arm_decode_adv_simd_single(u32 instr, unsigned char *type,
+			       unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char L = 0, R = 0, S = 0, opcode = 0, size = 0;
+	unsigned char rn = 0, rt = 0, dfield = 0;
+	int i = 0;
+
+	L = EXTRACT_BIT(instr, 22);
+	R = EXTRACT_BIT(instr, 21);
+	S = EXTRACT_BIT(instr, 12);
+	opcode = (instr >> 13) & ONES(3);
+	size = (instr >> 10) & ONES(2);
+
+	dfield = (L << 7) | (R << 6) | (opcode << 3) | (S << 2) | size;
+
+	*type = INSN_OTHER;
+	rn = (instr << 5) & ONES(5);
+
+	for (i = 0; i < ARRAY_SIZE(simd_single_decoder); i++) {
+		if ((dfield & simd_single_decoder[i].mask) ==
+		    simd_single_decoder[i].value) {
+			if (rn != CFI_SP)
+				return 0;
+			*type = INSN_STACK;
+		}
+	}
+
+	if (*type == INSN_OTHER)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	rt = instr & ONES(5);
+	if (!L) {
+		op->dest.type = OP_DEST_REG_INDIRECT;
+		op->dest.reg = CFI_SP;
+		op->dest.offset = 0;
+		op->src.type = OP_SRC_REG;
+		op->src.reg = rt;
+		op->src.offset = 0;
+	} else {
+		op->src.type = OP_SRC_REG_INDIRECT;
+		op->src.reg = CFI_SP;
+		op->src.offset = 0;
+		op->dest.type = OP_DEST_REG;
+		op->dest.reg = rt;
+		op->dest.offset = 0;
+	}
+	return 0;
+}
+
+int arm_decode_adv_simd_single_post(u32 instr, unsigned char *type,
+				    unsigned long *immediate,
+				    struct stack_op *op)
+{
+	/* same opcode as for the no offset variant */
+	unsigned char rm = 0;
+	int ret = 0;
+
+	rm = (instr >> 16) & ONES(5);
+
+	ret = arm_decode_adv_simd_single(instr, type, immediate, op);
+
+	/*
+	 * This is actually irrelevant if the offset is given by a register
+	 * however there is no way to know the offset value from the encoding
+	 * in such a case.
+	 */
+	if (op->dest.type == OP_DEST_REG_INDIRECT)
+		op->dest.offset = rm;
+	if (op->src.type == OP_SRC_REG_INDIRECT)
+		op->src.offset = rm;
+	return ret;
+}
+
+int arm_decode_ld_st_mem_tags(u32 instr, unsigned char *type,
+			      unsigned long *immediate, struct stack_op *op)
+{
+	u32 imm9 = 0;
+	unsigned char opc = 0, op2 = 0, rn = 0, rt = 0, decode_field = 0;
+
+	imm9 = (instr >> 12) & ONES(9);
+	opc = (instr >> 22) & ONES(2);
+	op2 = (instr >> 10) & ONES(2);
+	rn = (instr >> 5) & ONES(5);
+	rt = instr & ONES(6);
+
+	decode_field = (opc << 2) | op2;
+
+	if (decode_field == 0x0 ||
+	    (decode_field == 0x8 && imm9 != 0) ||
+	    (decode_field == 0xC && imm9 != 0)) {
+		return arm_decode_unknown(instr, type, immediate, op);
+	}
+
+	if (rn != CFI_SP) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+	*type = INSN_STACK;
+	*immediate = imm9;
+
+	/*
+	 * Offset should normally be shifted to the
+	 * left of LOG2_TAG_GRANULE
+	 */
+	switch (decode_field) {
+	case 1:
+	case 5:
+	case 9:
+	case 13:
+		/* post index */
+	case 3:
+	case 7:
+	case 8:
+	case 11:
+	case 15:
+		/* pre index */
+		op->dest.reg = CFI_SP;
+		op->dest.type = OP_DEST_PUSH;
+		op->dest.offset = SIGN_EXTEND(imm9, 9);
+		op->src.reg = rt;
+		op->src.type = OP_SRC_REG;
+		op->src.offset = 0;
+		return 0;
+	case 2:
+	case 6:
+	case 10:
+	case 14:
+		/* store */
+		op->dest.reg = CFI_SP;
+		op->dest.type = OP_DEST_REG_INDIRECT;
+		op->dest.offset = SIGN_EXTEND(imm9, 9);
+		op->src.reg = rt;
+		op->src.type = OP_SRC_REG;
+		op->src.offset = 0;
+		return 0;
+	case 4:
+	case 12:
+		/* load */
+		op->src.reg = CFI_SP;
+		op->src.type = OP_SRC_REG_INDIRECT;
+		op->src.offset = SIGN_EXTEND(imm9, 9);
+		op->dest.reg = rt;
+		op->dest.type = OP_DEST_REG;
+		op->dest.offset = 0;
+		return 0;
+	}
+
+	return -1;
+}
+
+#define ST_EXCL_UNALLOC_1 0b001010
+#define ST_EXCL_UNALLOC_2 0b000010
+
+#define LDXRB		0b000100
+#define LDAXRB		0b000101
+#define LDLARB		0b001100
+#define LDARB		0b001101
+#define LDXRH		0b010100
+#define LDAXRH		0b010101
+#define LDLARH		0b011100
+#define LDARH		0b011101
+#define LDXR		0b100100
+#define LDAXR		0b100101
+#define LDXP		0b100110
+#define LDAXP		0b100111
+#define LDLAR		0b101100
+#define LDAR		0b101101
+#define LDXR_64		0b110100
+#define LDAXR_64	0b110101
+#define LDXP_64		0b110110
+#define LDAXP_64	0b110111
+#define LDLAR_64	0b111100
+#define LDAR_64		0b111101
+
+#define LD_EXCL_NUMBER	20
+
+static int ld_excl_masks[] = {
+	LDXRB,
+	LDAXRB,
+	LDLARB,
+	LDARB,
+	LDXRH,
+	LDAXRH,
+	LDLARH,
+	LDARH,
+	LDXR,
+	LDAXR,
+	LDXP,
+	LDAXP,
+	LDLAR,
+	LDAR,
+	LDXR_64,
+	LDAXR_64,
+	LDXP_64,
+	LDAXP_64,
+	LDLAR_64,
+	LDAR_64,
+};
+
+int arm_decode_ld_st_exclusive(u32 instr, unsigned char *type,
+			       unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char size = 0, o2 = 0, L = 0, o1 = 0, o0 = 0;
+	unsigned char rt = 0, rt2 = 0, rn = 0;
+	unsigned char decode_field = 0;
+	int i = 0;
+
+	size = (instr >> 30) & ONES(2);
+	o2 = EXTRACT_BIT(instr, 23);
+	L = EXTRACT_BIT(instr, 22);
+	o1 = EXTRACT_BIT(instr, 21);
+	o0 = EXTRACT_BIT(instr, 15);
+
+	rt2 = (instr >> 10) & ONES(5);
+	rn = (instr >> 5) & ONES(5);
+	rt = instr & ONES(5);
+
+	decode_field = (size << 4) | (o2 << 3) | (L << 2) | (o1 << 1) | o0;
+
+	if ((decode_field & ST_EXCL_UNALLOC_1) == ST_EXCL_UNALLOC_1 ||
+	    (decode_field & 0b101010) == ST_EXCL_UNALLOC_2) {
+		if (rt2 != 31)
+			return arm_decode_unknown(instr, type, immediate, op);
+	}
+
+	if (rn != 31) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+
+	*type = INSN_STACK;
+	for (i = 0; i < LD_EXCL_NUMBER; i++) {
+		if ((decode_field & 0b111111) == ld_excl_masks[i]) {
+			op->src.type = OP_SRC_REG_INDIRECT;
+			op->src.reg = CFI_SP;
+			op->src.offset = 0;
+			op->dest.type = OP_DEST_REG;
+			op->dest.reg = rt;
+			op->dest.offset = 0;
+			return 0;
+		}
+	}
+
+	op->dest.type = OP_DEST_REG_INDIRECT;
+	op->dest.reg = CFI_SP;
+	op->dest.offset = 0;
+	op->src.type = OP_SRC_REG;
+	op->src.reg = rt;
+	op->src.offset = 0;
+
+	return 0;
+}
+
+#undef ST_EXCL_UNALLOC_1
+#undef ST_EXCL_UNALLOC_2
+
+#undef LD_EXCL_NUMBER
+
+#undef LDXRB
+#undef LDAXRB
+#undef LDLARB
+#undef LDARB
+#undef LDXRH
+#undef LDAXRH
+#undef LDLARH
+#undef LDARH
+#undef LDXR
+#undef LDAXR
+#undef LDXP
+#undef LDAXP
+#undef LDLAR
+#undef LDAR
+#undef LDXR_64
+#undef LDAXR_64
+#undef LDXP_64
+#undef LDAXP_64
+#undef LDLAR_64
+#undef LDAR_64
+
+int arm_decode_ldapr_stlr_unsc_imm(u32 instr, unsigned char *type,
+				   unsigned long *immediate,
+				   struct stack_op *op)
+{
+	u32 imm9 = 0;
+	unsigned char size = 0, opc = 0, rn = 0, rt = 0, decode_field = 0;
+
+	imm9 = (instr >> 12) & ONES(9);
+	size = (instr >> 30) & ONES(2);
+	opc = (instr >> 22) & ONES(2);
+	rn = (instr >> 5) & ONES(5);
+	rt = instr & ONES(5);
+
+	decode_field = (size << 2) | opc;
+	if (decode_field == 0xB ||
+	    decode_field == 0xE ||
+	    decode_field == 0xF) {
+		return arm_decode_unknown(instr, type, immediate, op);
+	}
+
+	if (rn != 31) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+	*type = INSN_STACK;
+	*immediate = imm9;
+	switch (decode_field) {
+	case 1:
+	case 2:
+	case 3:
+	case 5:
+	case 6:
+	case 7:
+	case 9:
+	case 10:
+	case 13:
+		/* load */
+		op->src.type = OP_SRC_REG_INDIRECT;
+		op->src.reg = CFI_SP;
+		op->src.offset = SIGN_EXTEND(imm9, 9);
+		op->dest.type = OP_DEST_REG;
+		op->dest.reg = rt;
+		op->dest.offset = 0;
+		break;
+	default:
+		/* store */
+		op->dest.type = OP_SRC_REG_INDIRECT;
+		op->dest.reg = CFI_SP;
+		op->dest.offset = SIGN_EXTEND(imm9, 9);
+		op->src.type = OP_SRC_REG;
+		op->src.reg = rt;
+		op->src.offset = 0;
+		break;
+	}
+
+	return 0;
+}
+
+int arm_decode_ld_regs_literal(u32 instr, unsigned char *type,
+			       unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char opc = 0, V = 0;
+
+	opc = (instr >> 30) & ONES(2);
+	V = EXTRACT_BIT(instr, 26);
+
+	if (((opc << 1) | V) == 0x7)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_ld_st_noalloc_pair_off(u32 instr, unsigned char *type,
+				      unsigned long *immediate,
+				      struct stack_op *op)
+{
+	unsigned char opc = 0, V = 0, L = 0;
+	unsigned char decode_field = 0;
+
+	opc = (instr >> 30) & ONES(2);
+	V = EXTRACT_BIT(instr, 26);
+	L = EXTRACT_BIT(instr, 22);
+
+	decode_field = (opc << 2) | (V << 1) | L;
+
+	if (decode_field == 0x4 ||
+	    decode_field == 0x5 ||
+	    decode_field >= 12) {
+		return arm_decode_unknown(instr, type, immediate, op);
+	}
+	return arm_decode_ld_st_regs_pair_off(instr, type, immediate, op);
+}
+
+int arm_decode_ld_st_regs_pair_off(u32 instr, unsigned char *type,
+				   unsigned long *immediate,
+				   struct stack_op *op)
+{
+	unsigned char opc = 0, V = 0, L = 0, bit = 0;
+	unsigned char imm7 = 0, rt2 = 0, rt = 0, rn = 0;
+	unsigned char decode_field = 0;
+	int scale = 0;
+
+	opc = (instr >> 30) & ONES(2);
+	V = EXTRACT_BIT(instr, 26);
+	L = EXTRACT_BIT(instr, 22);
+	imm7 = (instr >> 15) & ONES(7);
+	rt2 = (instr >> 10) & ONES(5);
+	rn = (instr >> 5) & ONES(5);
+	rt = instr & ONES(5);
+	bit = EXTRACT_BIT(opc, 1);
+	scale = 2 + bit;
+
+	decode_field = (opc << 2) | (V << 1) | L;
+
+	if (decode_field >= 0xC)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	*immediate = (SIGN_EXTEND(imm7, 7)) << scale;
+
+	if (rn != CFI_SP) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+
+	*type = INSN_STACK;
+
+	switch (decode_field) {
+	case 1:
+	case 3:
+	case 5:
+	case 7:
+	case 9:
+	case 11:
+		/* load */
+		op->src.type = OP_SRC_REG_INDIRECT;
+		op->src.reg = CFI_SP;
+		op->src.offset = 0;
+		op->dest.type = OP_DEST_REG;
+		op->dest.reg = rt;
+		op->dest.offset = 0;
+		op->extra.used = 1;
+		op->extra.reg = rt2;
+		op->extra.offset = 8;
+		break;
+	default:
+		op->dest.type = OP_DEST_REG_INDIRECT;
+		op->dest.reg = CFI_SP;
+		op->dest.offset = 8;
+		op->src.type = OP_SRC_REG;
+		op->src.reg = rt2;
+		op->src.offset = 0;
+		op->extra.used = 1;
+		op->extra.reg = rt;
+		op->extra.offset = 0;
+		/* store */
+	}
+	return 0;
+}
+
+int arm_decode_ld_st_regs_pair_post(u32 instr, unsigned char *type,
+				    unsigned long *immediate,
+				    struct stack_op *op)
+{
+	int ret = 0;
+
+	ret = arm_decode_ld_st_regs_pair_off(instr, type, immediate, op);
+	if (ret < 0 || *type == INSN_OTHER)
+		return ret;
+	if (op->dest.type == OP_DEST_REG_INDIRECT) {
+		op->dest.type = OP_DEST_PUSH;
+		op->dest.reg = CFI_SP;
+	}
+
+	if (op->src.type == OP_SRC_REG_INDIRECT) {
+		op->src.type = OP_SRC_POP;
+		op->src.reg = CFI_SP;
+	}
+
+	return ret;
+}
+
+int arm_decode_ld_st_regs_pair_pre(u32 instr, unsigned char *type,
+				   unsigned long *immediate,
+				   struct stack_op *op)
+{
+	return arm_decode_ld_st_regs_pair_post(instr, type, immediate, op);
+}
+
+int arm_decode_ld_st_regs_unsc_imm(u32 instr, unsigned char *type,
+				   unsigned long *immediate,
+				   struct stack_op *op)
+{
+	u32 imm9 = 0;
+	unsigned char size = 0, V = 0, opc = 0, rn = 0, rt = 0;
+	unsigned char decode_field = 0;
+
+	size = (instr >> 30) & ONES(2);
+	V = EXTRACT_BIT(instr, 26);
+	opc = (instr >> 22) & ONES(2);
+
+	imm9 = (instr >> 12) & ONES(9);
+	rn = (instr >> 5) & ONES(5);
+	rt = instr & ONES(5);
+
+	decode_field = (size << 2) | (V << 2) | opc;
+
+	switch (decode_field) {
+	case 0b01110:
+	case 0b01111:
+	case 0b11110:
+	case 0b11111:
+	case 0b10011:
+	case 0b11011:
+	case 0b10110:
+	case 0b10111:
+		return arm_decode_unknown(instr, type, immediate, op);
+	case 26:
+		/* prefetch */
+		*type = INSN_OTHER;
+		return 0;
+	case 1:
+	case 2:
+	case 3:
+	case 5:
+	case 7:
+	case 9:
+	case 10:
+	case 11:
+	case 13:
+	case 17:
+	case 18:
+	case 21:
+	case 25:
+	case 29:
+		/* load */
+		if (rn != CFI_SP) {
+			*type = INSN_OTHER;
+			return 0;
+		}
+		op->src.type = OP_SRC_REG_INDIRECT;
+		op->src.reg = CFI_SP;
+		op->src.offset = SIGN_EXTEND(imm9, 9);
+		op->dest.type = OP_DEST_REG;
+		op->dest.reg = rt;
+		op->dest.offset = 0;
+		break;
+	default:
+		if (rn != CFI_SP) {
+			*type = INSN_OTHER;
+			return 0;
+		}
+		op->dest.type = OP_DEST_REG_INDIRECT;
+		op->dest.reg = CFI_SP;
+		op->dest.offset = SIGN_EXTEND(imm9, 9);
+		op->src.type = OP_DEST_REG;
+		op->src.reg = rt;
+		op->src.offset = 0;
+		break;
+	}
+
+	*type = INSN_STACK;
+	return 0;
+}
+
+static struct aarch64_insn_decoder ld_unsig_unalloc_decoder[] = {
+	{
+		.mask = 0b01110,
+		.value = 0b01110,
+	},
+	{
+		.mask = 0b10111,
+		.value = 0b10011,
+	},
+	{
+		.mask = 0b10110,
+		.value = 0b10110,
+	},
+};
+
+int arm_decode_ld_st_regs_unsigned(u32 instr, unsigned char *type,
+				   unsigned long *immediate,
+				   struct stack_op *op)
+{
+	unsigned char size = 0, V = 0, opc = 0, rn = 0, rt = 0;
+	unsigned char decode_field = 0;
+	u32 imm12 = 0;
+	int i = 0;
+
+	size = (instr >> 30) & ONES(2);
+	V = EXTRACT_BIT(instr, 26);
+	opc = (instr >> 22) & ONES(2);
+
+	decode_field = (size << 3) | (V << 2) | opc;
+	for (i = 0; i < ARRAY_SIZE(ld_unsig_unalloc_decoder); i++) {
+		if ((decode_field & ld_unsig_unalloc_decoder[i].mask) ==
+		    ld_unsig_unalloc_decoder[i].value) {
+			return arm_decode_unknown(instr, type,
+						immediate, op);
+		}
+	}
+
+	imm12 = (instr >> 10) & ONES(12);
+	rn = (instr >> 5) & ONES(5);
+	rt = instr & ONES(5);
+
+	if (rn != CFI_SP || decode_field == 26) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+
+	*type = INSN_STACK;
+
+	switch (decode_field) {
+	case 1:
+	case 2:
+	case 3:
+	case 5:
+	case 7:
+	case 9:
+	case 10:
+	case 11:
+	case 13:
+	case 17:
+	case 18:
+	case 21:
+	case 25:
+		/* load */
+		op->src.type = OP_SRC_REG_INDIRECT;
+		op->src.reg = CFI_SP;
+		op->src.offset = imm12;
+		op->dest.type = OP_DEST_REG;
+		op->dest.reg = rt;
+		op->dest.offset = 0;
+		break;
+	default: /* store */
+		op->dest.type = OP_DEST_REG_INDIRECT;
+		op->dest.reg = CFI_SP;
+		op->dest.offset = imm12;
+		op->src.type = OP_DEST_REG;
+		op->src.reg = rt;
+		op->src.offset = 0;
+	}
+
+	return 0;
+}
+
+int arm_decode_ld_st_imm_post(u32 instr, unsigned char *type,
+			      unsigned long *immediate,
+			      struct stack_op *op)
+{
+	unsigned char size = 0, V = 0, opc = 0;
+	unsigned char decode_field = 0;
+	u32 imm9 = 0;
+	int ret = 0;
+
+	size = (instr >> 30) & ONES(2);
+	V = EXTRACT_BIT(instr, 26);
+	opc = (instr >> 22) & ONES(2);
+
+	imm9 = (instr >> 12) & ONES(9);
+
+	decode_field = (size << 2) | (V << 2) | opc;
+
+	if (decode_field == 0b11010)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	ret = arm_decode_ld_st_regs_unsigned(instr, type, immediate, op);
+	if (ret < 0 || *type == INSN_OTHER)
+		return ret;
+
+	if (op->dest.type == OP_DEST_REG_INDIRECT) {
+		op->dest.type = OP_DEST_PUSH;
+		op->dest.reg = CFI_SP;
+		op->dest.offset = SIGN_EXTEND(imm9, 9);
+	}
+
+	if (op->src.type == OP_SRC_REG_INDIRECT) {
+		op->src.type = OP_SRC_POP;
+		op->src.reg = CFI_SP;
+		op->src.offset = SIGN_EXTEND(imm9, 9);
+	}
+
+	return 0;
+}
+
+int arm_decode_ld_st_imm_pre(u32 instr, unsigned char *type,
+			     unsigned long *immediate, struct stack_op *op)
+{
+	return arm_decode_ld_st_imm_post(instr, type, immediate, op);
+}
+
+#define LD_UNPR_UNALLOC_1 0b10011
+#define LD_UNPR_UNALLOC_2 0b11010
+int arm_decode_ld_st_imm_unpriv(u32 instr, unsigned char *type,
+				unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char size = 0, V = 0, opc = 0, rn = 0, rt = 0;
+	unsigned char decode_field = 0;
+	u32 imm9 = 0;
+
+	size = (instr >> 30) & ONES(2);
+	V = EXTRACT_BIT(instr, 26);
+	opc = (instr >> 22) & ONES(2);
+
+	imm9 = (instr >> 12) & ONES(9);
+
+	decode_field = (size << 3) | (V << 2) | opc;
+	if (V == 1 ||
+	    (decode_field & 0b10111) == LD_UNPR_UNALLOC_1 ||
+	    (decode_field & 0b11111) == LD_UNPR_UNALLOC_2) {
+		return arm_decode_unknown(instr, type, immediate, op);
+	}
+#undef LD_UNPR_UNALLOC_1
+#undef LD_UNPR_UNALLOC_2
+
+	if (rn != CFI_SP) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+	*type = INSN_STACK;
+
+	switch (decode_field) {
+	case 1:
+	case 2:
+	case 3:
+	case 9:
+	case 10:
+	case 11:
+	case 17:
+	case 18:
+	case 25:
+		/* load */
+		op->src.type = OP_SRC_REG_INDIRECT;
+		op->src.reg = CFI_SP;
+		op->src.offset = SIGN_EXTEND(imm9, 9);
+		op->dest.type = OP_DEST_REG;
+		op->dest.reg = rt;
+		op->dest.offset = 0;
+		break;
+	default:
+		/* store */
+		op->dest.type = OP_DEST_REG_INDIRECT;
+		op->dest.reg = CFI_SP;
+		op->dest.offset = SIGN_EXTEND(imm9, 9);
+		op->src.type = OP_DEST_REG;
+		op->src.reg = rt;
+		op->src.offset = 0;
+		break;
+	}
+	return 0;
+}
+
+static struct aarch64_insn_decoder atom_unallocs_decoder[] = {
+	{
+		.mask = 0b1001111,
+		.value = 0b0001001,
+	},
+	{
+		.mask = 0b1001110,
+		.value = 0b0001010,
+	},
+	{
+		.mask = 0b1001111,
+		.value = 0b0001101,
+	},
+	{
+		.mask = 0b1001110,
+		.value = 0b0001110,
+	},
+	{
+		.mask = 0b1101111,
+		.value = 0b0001100,
+	},
+	{
+		.mask = 0b1111111,
+		.value = 0b0111100,
+	},
+	{
+		.mask = 0b1000000,
+		.value = 0b1000000,
+	},
+};
+
+int arm_decode_atomic(u32 instr, unsigned char *type,
+		      unsigned long *immediate,
+		      struct stack_op *op)
+{
+	unsigned char V = 0, A = 0, R = 0, o3 = 0, opc = 0;
+	unsigned char rn = 0, rt = 0;
+	unsigned char decode_field = 0;
+	int i = 0;
+
+	V = EXTRACT_BIT(instr, 26);
+	A = EXTRACT_BIT(instr, 23);
+	R = EXTRACT_BIT(instr, 22);
+	o3 = EXTRACT_BIT(instr, 15);
+	opc = (instr >> 12) & ONES(3);
+
+	decode_field = (V << 6) | (A << 5) | (R << 4) | (o3 << 3) | opc;
+
+	for (i = 0; i < ARRAY_SIZE(atom_unallocs_decoder); i++) {
+		if ((decode_field & atom_unallocs_decoder[i].mask) ==
+		    atom_unallocs_decoder[i].value) {
+			return arm_decode_unknown(instr,
+						  type,
+						  immediate,
+						  op);
+		}
+	}
+
+	rn = (instr >> 5) & ONES(5);
+	rt = instr & ONES(5);
+
+	if (rn != CFI_SP) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+	*type = INSN_STACK;
+	op->src.reg = CFI_SP;
+	op->src.type = OP_DEST_REG_INDIRECT;
+	op->src.offset = 0;
+	op->dest.type = OP_DEST_REG;
+	op->dest.reg = rt;
+	op->dest.offset = 0;
+
+	return 0;
+}
+
+int arm_decode_ld_st_regs_off(u32 instr, unsigned char *type,
+			      unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char size = 0, V = 0, opc = 0, option = 0;
+	unsigned char rm = 0, rn = 0, rt = 0;
+	unsigned char decode_field = 0;
+
+	size = (instr >> 30) & ONES(2);
+	V = EXTRACT_BIT(instr, 26);
+	opc = (instr >> 22) & ONES(2);
+	option = (instr >> 13) & ONES(3);
+
+#define LD_ROFF_UNALLOC_1	0b01110
+#define LD_ROFF_UNALLOC_2	0b10110
+#define LD_ROFF_UNALLOC_3	0b10011
+	decode_field = (size << 3) | (V << 2) | opc;
+	if (!EXTRACT_BIT(option, 1) ||
+	    (decode_field & LD_ROFF_UNALLOC_1) == LD_ROFF_UNALLOC_1 ||
+	    (decode_field & LD_ROFF_UNALLOC_2) == LD_ROFF_UNALLOC_2 ||
+	    (decode_field & 0b10111) == LD_ROFF_UNALLOC_3) {
+		return arm_decode_unknown(instr, type, immediate, op);
+	}
+#undef LD_ROFF_UNALLOC_1
+#undef LD_ROFF_UNALLOC_2
+#undef LD_ROFF_UNALLOC_3
+
+	rn = (instr >> 5) & ONES(5);
+
+#define LD_ROFF_PRFM	0b11010
+	if (rn != CFI_SP || decode_field == LD_ROFF_PRFM) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+#undef LD_ROFF_PRFM
+
+	rt = instr & ONES(5);
+	rm = (instr >> 16) & ONES(5);
+
+	switch (decode_field & ONES(3)) {
+	case 0b001:
+	case 0b010:
+	case 0b011:
+	case 0b101:
+	case 0b111:
+		/* load */
+		op->src.type = OP_SRC_REG_INDIRECT;
+		op->src.reg = CFI_SP;
+		op->src.offset = rm;
+		op->dest.type = OP_DEST_REG;
+		op->dest.reg = rt;
+		op->dest.offset = 0;
+		break;
+	default:
+		/* store */
+		op->dest.type = OP_DEST_REG_INDIRECT;
+		op->dest.reg = CFI_SP;
+		op->dest.offset = rm;
+		op->src.type = OP_DEST_REG;
+		op->src.reg = rt;
+		op->src.offset = 0;
+		break;
+	}
+
+	return 0;
+}
+
+int arm_decode_ld_st_regs_pac(u32 instr, unsigned char *type,
+			      unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char size = 0, V = 0, W = 0, S = 0;
+	unsigned char rn = 0, rt = 0;
+	u32 imm9 = 0, s10 = 0;
+
+	size = (instr >> 30) & ONES(2);
+	V = EXTRACT_BIT(instr, 26);
+	W = EXTRACT_BIT(instr, 11);
+
+	if (size != 3 || V == 1)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	rn = (instr >> 5) & ONES(5);
+
+	if (rn != CFI_SP) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+
+	S = EXTRACT_BIT(instr, 22);
+	s10 = (S << 9) | imm9;
+
+	op->dest.reg = rt;
+	op->dest.type = OP_DEST_REG;
+	op->dest.offset = 0;
+	op->src.offset = (SIGN_EXTEND(s10, 9) << 3);
+	if (W) { /* pre-indexed/writeback */
+		op->src.type = OP_SRC_POP;
+		op->src.reg = CFI_SP;
+	} else {
+		op->src.type = OP_SRC_REG_INDIRECT;
+		op->src.reg = CFI_SP;
+	}
+
+	return 0;
+}
+
+static struct aarch64_insn_decoder dp_reg_decoder[] = {
+	{
+		.mask = 0b111111000000,
+		.value = 0b010110000000,
+		.decode_func = arm_decode_dp_reg_2src,
+	},
+	{
+		.mask = 0b111111000000,
+		.value = 0b110110000000,
+		.decode_func = arm_decode_dp_reg_1src,
+	},
+	{
+		.mask = 0b011000000000,
+		.value = 0b000000000000,
+		.decode_func = arm_decode_dp_reg_logi,
+	},
+	{
+		.mask = 0b011001000000,
+		.value = 0b001000000000,
+		.decode_func = arm_decode_dp_reg_adds,
+	},
+	{
+		.mask = 0b011001000000,
+		.value = 0b001001000000,
+		.decode_func = arm_decode_dp_reg_adde,
+	},
+	{
+		.mask = 0b011111111111,
+		.value = 0b010000000000,
+		.decode_func = arm_decode_dp_reg_addc,
+	},
+	{
+		.mask = 0b011111011111,
+		.value = 0b010000000001,
+		.decode_func = arm_decode_dp_reg_rota,
+	},
+	{
+		.mask = 0b011111001111,
+		.value = 0b010000000010,
+		.decode_func = arm_decode_dp_reg_eval,
+	},
+	{
+		.mask = 0b011111000010,
+		.value = 0b010010000000,
+		.decode_func = arm_decode_dp_reg_cmpr,
+	},
+	{
+		.mask = 0b011111000010,
+		.value = 0b010010000010,
+		.decode_func = arm_decode_dp_reg_cmpi,
+	},
+	{
+		.mask = 0b011111000000,
+		.value = 0b010100000000,
+		.decode_func = arm_decode_dp_reg_csel,
+	},
+	{
+		.mask = 0b011000000000,
+		.value = 0b011000000000,
+		.decode_func = arm_decode_dp_reg_3src,
+	},
+};
+
+int arm_decode_dp_reg(u32 instr, unsigned char *type,
+		      unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char op0 = 0, op1 = 0, op2 = 0, op3 = 0;
+	u32 decode_field = 0;
+	int i = 0;
+
+	op0 = EXTRACT_BIT(instr, 30);
+	op1 = EXTRACT_BIT(instr, 28);
+	op2 = (instr >> 21) & ONES(4);
+	op3 = (instr >> 10) & ONES(6);
+	decode_field = (op0 << 5) | (op1 << 4) | op2;
+	decode_field = (decode_field << 6) | op3;
+
+	for (i = 0; i < ARRAY_SIZE(dp_reg_decoder); i++) {
+		if ((decode_field & dp_reg_decoder[i].mask) ==
+		    dp_reg_decoder[i].value) {
+			return dp_reg_decoder[i].decode_func(instr, type,
+							immediate, op);
+		}
+	}
+	return arm_decode_unknown(instr, type, immediate, op);
+}
+
+static struct aarch64_insn_decoder dp_reg_2src_decoder[] = {
+	{
+		.mask = 0b00111111,
+		.value = 0b00000001,
+	},
+	{
+		.mask = 0b00111000,
+		.value = 0b00011000,
+	},
+	{
+		.mask = 0b00100000,
+		.value = 0b00100000,
+	},
+	{
+		.mask = 0b01111111,
+		.value = 0b00000101,
+	},
+	{
+		.mask = 0b01111100,
+		.value = 0b00001100,
+	},
+	{
+		.mask = 0b01111110,
+		.value = 0b01000010,
+	},
+	{
+		.mask = 0b01111100,
+		.value = 0b01000100,
+	},
+	{
+		.mask = 0b01111000,
+		.value = 0b01001000,
+	},
+	{
+		.mask = 0b01110000,
+		.value = 0b01010000,
+	},
+	{
+		.mask = 0b10111111,
+		.value = 0b00000000,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b00000100,
+	},
+	{
+		.mask = 0b11111110,
+		.value = 0b00000110,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b00010011,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b10010000,
+	},
+	{
+		.mask = 0b11111010,
+		.value = 0b10010000,
+	},
+};
+
+static int dp_reg_2src_stack_fields[] = {
+	0b10000000,
+	0b10000100,
+	0b10000101,
+	0b10001100,
+	0b11000000,
+};
+
+int arm_decode_dp_reg_2src(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char sf = 0, S = 0, opcode = 0, rn = 0, rd = 0;
+	unsigned char decode_field = 0;
+	int i = 0;
+
+	sf = EXTRACT_BIT(instr, 31);
+	S = EXTRACT_BIT(instr, 29);
+	opcode = (instr >> 10) & ONES(6);
+
+	decode_field = (sf << 7) | (S << 6) | opcode;
+
+	for (i = 0; i < ARRAY_SIZE(dp_reg_2src_decoder); i++) {
+		if ((decode_field & dp_reg_2src_decoder[i].mask) ==
+		    dp_reg_2src_decoder[i].value) {
+			return arm_decode_unknown(instr, type, immediate, op);
+		}
+	}
+
+	*type = 0;
+	for (i = 0; i < ARRAY_SIZE(dp_reg_2src_stack_fields); i++) {
+		if (opcode == dp_reg_2src_stack_fields[i]) {
+			*type = INSN_OTHER;
+			break;
+		}
+	}
+	if (*type == 0) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+
+	rn = (instr >> 5) & ONES(5);
+	rd = instr & ONES(5);
+
+#define IRG_OPCODE	0b10000100
+	if ((rn != CFI_SP && opcode != IRG_OPCODE) ||
+	    (opcode == IRG_OPCODE && rd != CFI_SP &&
+	     rn != CFI_SP)) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+#undef IRG_OPCODE
+
+	*type = INSN_STACK;
+	op->dest.reg = rd;
+	op->dest.type = OP_DEST_REG;
+	op->dest.offset = 0;
+
+	op->src.reg = rn;
+	op->src.type = OP_DEST_REG;
+	op->src.offset = 0;
+
+	return 0;
+}
+
+static struct aarch64_insn_decoder dp_reg_1src_decoder[] = {
+	{
+		.mask = 0b0000000001000,
+		.value = 0b0000000001000,
+	},
+	{
+		.mask = 0b0000000010000,
+		.value = 0b0000000010000,
+	},
+	{
+		.mask = 0b0000000100000,
+		.value = 0b0000000100000,
+	},
+	{
+		.mask = 0b0000001000000,
+		.value = 0b0000001000000,
+	},
+	{
+		.mask = 0b0000010000000,
+		.value = 0b0000010000000,
+	},
+	{
+		.mask = 0b0000100000000,
+		.value = 0b0000100000000,
+	},
+	{
+		.mask = 0b0001000000000,
+		.value = 0b0001000000000,
+	},
+	{
+		.mask = 0b0010000000000,
+		.value = 0b0010000000000,
+	},
+	{
+		.mask = 0b0111111111110,
+		.value = 0b0000000000110,
+	},
+	{
+		.mask = 0b0100000000000,
+		.value = 0b0100000000000,
+	},
+};
+
+int arm_decode_dp_reg_1src(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char sf = 0, S = 0, opcode2 = 0, opcode = 0;
+	u32 decode_field = 0;
+	int i = 0;
+
+	sf = EXTRACT_BIT(instr, 31);
+	S = EXTRACT_BIT(instr, 29);
+	opcode2 = (instr >> 16) & ONES(5);
+	opcode = (instr >> 10) & ONES(6);
+
+	decode_field = (sf << 6) | (S << 5) | opcode2;
+	decode_field = (decode_field << 6) | opcode;
+
+	for (i = 0; i < ARRAY_SIZE(dp_reg_1src_decoder); i++) {
+		if ((decode_field & dp_reg_1src_decoder[i].mask) ==
+		    dp_reg_1src_decoder[i].value) {
+			return arm_decode_unknown(instr, type, immediate, op);
+		}
+	}
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_logi(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char sf = 0, imm6 = 0;
+
+	sf = EXTRACT_BIT(instr, 31);
+	imm6 = (instr >> 10) & ONES(6);
+
+	if (imm6 >= 0b100000 && !sf)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_adds(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char sf = 0, shift = 0, imm6 = 0;
+
+	sf = EXTRACT_BIT(instr, 31);
+	shift = (instr >> 22) & ONES(2);
+	imm6 = (instr >> 10) & ONES(6);
+
+	if ((imm6 >= 0b100000 && !sf) || shift == 0b11)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_adde(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char S = 0, opt = 0, imm3 = 0, rn = 0, rd = 0;
+
+	S = EXTRACT_BIT(instr, 29);
+	opt = (instr >> 22) & ONES(2);
+	imm3 = (instr >> 10) & ONES(3);
+	rn = (instr >> 5) & ONES(5);
+	rd = instr & ONES(5);
+
+	if (opt != 0 || imm3 >= 0b101)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	if (rd == CFI_SP && S == 0) {
+		*type = INSN_STACK;
+		op->dest.reg = CFI_SP;
+		op->dest.type = OP_DEST_REG;
+		op->src.type = OP_SRC_ADD;
+		op->src.reg = rn;
+
+		return 0;
+	}
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_addc(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_rota(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char sf = 0, S = 0, op_bit = 0, o2 = 0;
+	unsigned char decode_field = 0;
+
+	sf = EXTRACT_BIT(instr, 31);
+	op_bit = EXTRACT_BIT(instr, 30);
+	S = EXTRACT_BIT(instr, 29);
+	o2 = EXTRACT_BIT(instr, 4);
+
+	decode_field = (sf << 3) | (op_bit << 2) | (S << 1) | o2;
+
+	if (decode_field != 0b1010)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_eval(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char sf = 0, S = 0, op_bit = 0, o3 = 0, sz = 0;
+	unsigned char opcode2 = 0, mask = 0;
+	u32 decode_field = 0;
+
+	sf = EXTRACT_BIT(instr, 31);
+	op_bit = EXTRACT_BIT(instr, 30);
+	S = EXTRACT_BIT(instr, 29);
+	sz = EXTRACT_BIT(instr, 14);
+	o3 = EXTRACT_BIT(instr, 4);
+
+	opcode2 = (instr >> 15) & ONES(6);
+	mask = instr & ONES(4);
+
+	decode_field = (sf << 2) | (op_bit << 1) | S;
+	decode_field = (decode_field << 12) | (opcode2 << 6) | (sz << 5);
+	decode_field |= (o3 << 4) | mask;
+
+#define DP_EVAL_SETF_1	0b001000000001101
+#define DP_EVAL_SETF_2	0b001000000101101
+
+	if (decode_field != DP_EVAL_SETF_1 &&
+	    decode_field != DP_EVAL_SETF_2) {
+		return arm_decode_unknown(instr, type, immediate, op);
+	}
+
+	*type = INSN_OTHER;
+	return 0;
+#undef DP_EVAL_SETF_1
+#undef DP_EVAL_SETF_2
+}
+
+int arm_decode_dp_reg_cmpr(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char S = 0, o2 = 0, o3 = 0;
+
+	S = EXTRACT_BIT(instr, 29);
+	o2 = EXTRACT_BIT(instr, 10);
+	o3 = EXTRACT_BIT(instr, 4);
+
+	if (!S || o2 || o3)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_csel(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char S = 0, op2 = 0;
+
+	S = EXTRACT_BIT(instr, 29);
+	op2 = (instr >> 10) & ONES(2);
+
+	if (S || op2 >= 0b10)
+		return arm_decode_unknown(instr, type, immediate, op);
+
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_cmpi(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	return arm_decode_dp_reg_cmpr(instr, type, immediate, op);
+}
+
+static int dp_reg_3src_fields[] = {
+};
+
+static struct aarch64_insn_decoder dp_reg_3src_decoder[] = {
+	{
+		.mask = 0b0111111,
+		.value = 0b0000101,
+	},
+	{
+		.mask = 0b0111110,
+		.value = 0b0000110,
+	},
+	{
+		.mask = 0b0111110,
+		.value = 0b0001000,
+	},
+	{
+		.mask = 0b0111111,
+		.value = 0b0001101,
+	},
+	{
+		.mask = 0b0111110,
+		.value = 0b0001110,
+	},
+	{
+		.mask = 0b0110000,
+		.value = 0b0010000,
+	},
+	{
+		.mask = 0b0100000,
+		.value = 0b0100000,
+	},
+	{
+		.mask = 0b1111111,
+		.value = 0b0000010,
+	},
+	{
+		.mask = 0b1111111,
+		.value = 0b0000011,
+	},
+	{
+		.mask = 0b1111111,
+		.value = 0b0000100,
+	},
+	{
+		.mask = 0b1111111,
+		.value = 0b0001010,
+	},
+	{
+		.mask = 0b1111111,
+		.value = 0b0001011,
+	},
+	{
+		.mask = 0b1111111,
+		.value = 0b0001100,
+	},
+};
+
+int arm_decode_dp_reg_3src(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op)
+{
+	unsigned char sf = 0, op54 = 0, op31 = 0, o0 = 0;
+	unsigned char decode_field = 0;
+	int i = 0;
+
+	sf = EXTRACT_BIT(instr, 31);
+	op54 = (instr >> 29) & ONES(2);
+	op31 = (instr >> 21) & ONES(3);
+	o0 = EXTRACT_BIT(instr, 15);
+
+	decode_field = (sf << 6) | (op54 << 4) | (op31 << 1) | o0;
+
+	for (i = 0; i < ARRAY_SIZE(dp_reg_3src_fields); i++) {
+		if ((decode_field & dp_reg_3src_decoder[i].mask) ==
+		    dp_reg_3src_decoder[i].value) {
+			return arm_decode_unknown(instr, type, immediate, op);
+		}
+	}
+
+	*type = INSN_OTHER;
+	return 0;
+}
+
+unsigned long arch_jump_destination(struct instruction *insn)
+{
+	return insn->offset + insn->immediate;
+}
+
+static struct aarch64_insn_decoder sve_enc_decoder[] = {
+	{
+		.mask = 0b1111010000111000,
+		.value = 0b0000010000011000,
+	},
+	{
+		.mask = 0b1111110000111000,
+		.value = 0b0001110000000000,
+	},
+	{
+		.mask = 0b1111010000110000,
+		.value = 0b0011010000010000,
+	},
+	{
+		.mask = 0b1111011100111000,
+		.value = 0b0011010100101000,
+	},
+	{
+		.mask = 0b1111011000110000,
+		.value = 0b0011011000100000,
+	},
+	{
+		.mask = 0b1111010000100000,
+		.value = 0b0100000000100000,
+	},
+	{
+		.mask = 0b1111000000000000,
+		.value = 0b0101000000000000,
+	},
+	{
+		.mask = 0b1111011111111000,
+		.value = 0b0110000000101000,
+	},
+	{
+		.mask = 0b1111011111110000,
+		.value = 0b0110000000110000,
+	},
+	{
+		.mask = 0b1111011111100000,
+		.value = 0b0110000001100000,
+	},
+	{
+		.mask = 0b1111011110100000,
+		.value = 0b0110000010100000,
+	},
+	{
+		.mask = 0b1111011100100000,
+		.value = 0b0110000100100000,
+	},
+	{
+		.mask = 0b1111011000100000,
+		.value = 0b0110001000100000,
+	},
+	{
+		.mask = 0b1111010000110110,
+		.value = 0b0110010000000010,
+	},
+	{
+		.mask = 0b1111010000111111,
+		.value = 0b0110010000001001,
+	},
+	{
+		.mask = 0b1111010000111100,
+		.value = 0b0110010000001100,
+	},
+	{
+		.mask = 0b1111010000110000,
+		.value = 0b0110010000010000,
+	},
+	{
+		.mask = 0b1111010000100000,
+		.value = 0b0110010000100000,
+	},
+	{
+		.mask = 0b1111011100111100,
+		.value = 0b0111000100001000,
+	},
+};
+
+/*
+ * Since these instructions are optional (not present on all arm processors)
+ * we consider that they will never be used to save/restore stack frame.
+ */
+int arm_decode_sve_encoding(u32 instr, unsigned char *type,
+			    unsigned long *immediate, struct stack_op *op)
+{
+	int i = 0;
+	unsigned char op0 = 0, op1 = 0, op2 = 0, op3 = 0;
+	u32 decode_field = 0;
+
+	op0 = (instr >> 29) & ONES(3);
+	op1 = (instr >> 23) & ONES(2);
+	op2 = (instr >> 17) & ONES(5);
+	op3 = (instr >> 10) & ONES(6);
+
+	decode_field = (op0 << 2) | op1;
+	decode_field = (decode_field << 5) | op2;
+	decode_field = (decode_field << 6) | op3;
+
+	for (i = 0; i < ARRAY_SIZE(sve_enc_decoder); i++) {
+		if ((decode_field & sve_enc_decoder[i].mask) ==
+		    sve_enc_decoder[i].value)
+			return arm_decode_unknown(instr, type, immediate, op);
+	}
+
+	*type = INSN_OTHER;
+
+	return 0;
+}
diff --git a/tools/objtool/arch/arm64/include/arch_special.h b/tools/objtool/arch/arm64/include/arch_special.h
new file mode 100644
index 000000000000..63da775d0581
--- /dev/null
+++ b/tools/objtool/arch/arm64/include/arch_special.h
@@ -0,0 +1,36 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, see <http://www.gnu.org/licenses/>.
+ */
+#ifndef _ARM64_ARCH_SPECIAL_H
+#define _ARM64_ARCH_SPECIAL_H
+
+#define EX_ENTRY_SIZE		8
+#define EX_ORIG_OFFSET		0
+#define EX_NEW_OFFSET		4
+
+#define JUMP_ENTRY_SIZE		16
+#define JUMP_ORIG_OFFSET	0
+#define JUMP_NEW_OFFSET		4
+
+#define ALT_ENTRY_SIZE		12
+#define ALT_ORIG_OFFSET		0
+#define ALT_NEW_OFFSET		4
+#define ALT_FEATURE_OFFSET	8
+#define ALT_ORIG_LEN_OFFSET	10
+#define ALT_NEW_LEN_OFFSET	11
+
+#define X86_FEATURE_POPCNT (4 * 32 + 23)
+#define X86_FEATURE_SMAP   (9 * 32 + 20)
+
+#endif /* _ARM64_ARCH_SPECIAL_H */
diff --git a/tools/objtool/arch/arm64/include/asm/orc_types.h b/tools/objtool/arch/arm64/include/asm/orc_types.h
new file mode 100644
index 000000000000..9b04885eb785
--- /dev/null
+++ b/tools/objtool/arch/arm64/include/asm/orc_types.h
@@ -0,0 +1,96 @@
+/*
+ * Copyright (C) 2017 Josh Poimboeuf <jpoimboe@redhat.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, see <http://www.gnu.org/licenses/>.
+ */
+
+#ifndef _ORC_TYPES_H
+#define _ORC_TYPES_H
+
+#include <linux/types.h>
+#include <linux/compiler.h>
+
+/*
+ * The ORC_REG_* registers are base registers which are used to find other
+ * registers on the stack.
+ *
+ * ORC_REG_PREV_SP, also known as DWARF Call Frame Address (CFA), is the
+ * address of the previous frame: the caller's SP before it called the current
+ * function.
+ *
+ * ORC_REG_UNDEFINED means the corresponding register's value didn't change in
+ * the current frame.
+ *
+ * The most commonly used base registers are SP and BP -- which the previous SP
+ * is usually based on -- and PREV_SP and UNDEFINED -- which the previous BP is
+ * usually based on.
+ *
+ * The rest of the base registers are needed for special cases like entry code
+ * and GCC realigned stacks.
+ */
+#define ORC_REG_UNDEFINED		0
+#define ORC_REG_PREV_SP			1
+#define ORC_REG_DX			2
+#define ORC_REG_DI			3
+#define ORC_REG_BP			4
+#define ORC_REG_SP			5
+#define ORC_REG_R10			6
+#define ORC_REG_R13			7
+#define ORC_REG_BP_INDIRECT		8
+#define ORC_REG_SP_INDIRECT		9
+#define ORC_REG_MAX			15
+
+/*
+ * ORC_TYPE_CALL: Indicates that sp_reg+sp_offset resolves to PREV_SP (the
+ * caller's SP right before it made the call).  Used for all callable
+ * functions, i.e. all C code and all callable asm functions.
+ *
+ * ORC_TYPE_REGS: Used in entry code to indicate that sp_reg+sp_offset points
+ * to a fully populated pt_regs from a syscall, interrupt, or exception.
+ *
+ * ORC_TYPE_REGS_IRET: Used in entry code to indicate that sp_reg+sp_offset
+ * points to the iret return frame.
+ *
+ * The UNWIND_HINT macros are used only for the unwind_hint struct.  They
+ * aren't used in struct orc_entry due to size and complexity constraints.
+ * Objtool converts them to real types when it converts the hints to orc
+ * entries.
+ */
+#define ORC_TYPE_CALL			0
+#define ORC_TYPE_REGS			1
+#define ORC_TYPE_REGS_IRET		2
+#define UNWIND_HINT_TYPE_SAVE		3
+#define UNWIND_HINT_TYPE_RESTORE	4
+
+#ifndef __ASSEMBLY__
+/*
+ * This struct is more or less a vastly simplified version of the DWARF Call
+ * Frame Information standard.  It contains only the necessary parts of DWARF
+ * CFI, simplified for ease of access by the in-kernel unwinder.  It tells the
+ * unwinder how to find the previous SP and BP (and sometimes entry regs) on
+ * the stack for a given code address.  Each instance of the struct corresponds
+ * to one or more code locations.
+ */
+struct orc_entry {
+	s16		sp_offset;
+	s16		bp_offset;
+	unsigned	sp_reg:4;
+	unsigned	bp_reg:4;
+	unsigned	type:2;
+	unsigned	end:1;
+} __packed;
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* _ORC_TYPES_H */
diff --git a/tools/objtool/arch/arm64/include/bit_operations.h b/tools/objtool/arch/arm64/include/bit_operations.h
new file mode 100644
index 000000000000..c198c0724b7c
--- /dev/null
+++ b/tools/objtool/arch/arm64/include/bit_operations.h
@@ -0,0 +1,24 @@
+#ifndef _BIT_OPERATIONS_H
+#define _BIT_OPERATIONS_H
+
+#include <stdint.h>
+#include <stdbool.h>
+#include <linux/types.h>
+
+#define ONES(N)			(((__uint128_t)1 << (N)) - 1)
+#define ZERO_EXTEND(X, N)	((X) & ONES(N))
+#define EXTRACT_BIT(X, N)	(((X) >> (N)) & ONES(1))
+#define SIGN_EXTEND(X, N)	((((unsigned long)-1 + (EXTRACT_BIT(X, (N) - 1) ^ 1)) << (N)) | X)
+
+u64 replicate(u64 x, int size, int n);
+
+u64 ror(u64 x, int size, int shift);
+
+int highest_set_bit(u32 x);
+
+__uint128_t decode_bit_masks(unsigned char N,
+			     unsigned char imms,
+			     unsigned char immr,
+			     bool immediate);
+
+#endif /* _BIT_OPERATIONS_H */
diff --git a/tools/objtool/arch/arm64/include/cfi.h b/tools/objtool/arch/arm64/include/cfi.h
new file mode 100644
index 000000000000..dbe973c4fe68
--- /dev/null
+++ b/tools/objtool/arch/arm64/include/cfi.h
@@ -0,0 +1,74 @@
+/*
+ * Copyright (C) 2015-2017 Josh Poimboeuf <jpoimboe@redhat.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, see <http://www.gnu.org/licenses/>.
+ */
+
+#ifndef _OBJTOOL_CFI_H
+#define _OBJTOOL_CFI_H
+
+#define CFI_UNDEFINED		-1
+#define CFI_CFA			-2
+#define CFI_SP_INDIRECT		-3
+#define CFI_BP_INDIRECT		-4
+
+#define CFI_R0			0
+#define CFI_R1			1
+#define CFI_R2			2
+#define CFI_R3			3
+#define CFI_R4			4
+#define CFI_R5			5
+#define CFI_R6			6
+#define CFI_R7			7
+#define CFI_R8			8
+#define CFI_R9			9
+#define CFI_R10			10
+#define CFI_R11			11
+#define CFI_R12			12
+#define CFI_R13			13
+#define CFI_R14			14
+#define CFI_R15			15
+#define CFI_R16			16
+#define CFI_R17			17
+#define CFI_R18			18
+#define CFI_R19			19
+#define CFI_R20			20
+#define CFI_R21			21
+#define CFI_R22			22
+#define CFI_R23			23
+#define CFI_R24			24
+#define CFI_R25			25
+#define CFI_R26			26
+#define CFI_R27			27
+#define CFI_R28			28
+#define CFI_R29			29
+#define CFI_FP			CFI_R29
+#define CFI_BP			CFI_FP
+#define CFI_R30			30
+#define CFI_LR			CFI_R30
+#define CFI_SP			31
+
+#define CFI_NUM_REGS		32
+
+struct cfi_reg {
+	int base;
+	int offset;
+};
+
+struct cfi_state {
+	struct cfi_reg cfa;
+	struct cfi_reg regs[CFI_NUM_REGS];
+};
+
+#endif /* _OBJTOOL_CFI_H */
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
new file mode 100644
index 000000000000..eb54fc39dca5
--- /dev/null
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -0,0 +1,211 @@
+/*
+ * Copyright (C) 2019 Raphael Gault <raphael.gault@arm.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#ifndef _ARM_INSN_DECODE_H
+#define _ARM_INSN_DECODE_H
+
+#include "../../../arch.h"
+
+#define INSN_RESERVED	0b0000
+#define INSN_UNKNOWN	0b0001
+#define INSN_SVE_ENC	0b0010
+#define INSN_UNALLOC	0b0011
+#define INSN_DP_IMM	0b1001	//0x100x
+#define INSN_BRANCH	0b1011	//0x101x
+#define INSN_LD_ST_4	0b0100	//0bx1x0
+#define INSN_LD_ST_6	0b0110	//0bx1x0
+#define INSN_LD_ST_C	0b1100	//0bx1x0
+#define INSN_LD_ST_E	0b1110	//0bx1x0
+#define INSN_DP_REG_5	0b0101	//0bx101
+#define INSN_DP_REG_D	0b1101	//0bx101
+#define INSN_DP_SIMD_7	0b0111	//0bx111
+#define INSN_DP_SIMD_F	0b1111	//0bx111
+
+#define INSN_PCREL	0b001	//0b00x
+#define INSN_ADD_SUB	0b010
+#define INSN_ADD_TAG	0b011
+#define INSN_LOGICAL	0b100
+#define INSN_MOVE_WIDE	0b101
+#define INSN_BITFIELD	0b110
+#define INSN_EXTRACT	0b111
+
+#define INSN_BR_UNCOND_IMM_L	0b0001
+#define INSN_CP_BR_IMM_L	0b0010
+#define INSN_TST_BR_IMM_L	0b0011
+#define INSN_BR_COND_IMM	0b0100
+#define INSN_BR_UNKNOWN_IMM	0b0111
+#define INSN_BR_UNCOND_IMM_H	0b1001
+#define INSN_CP_BR_IMM_H	0b1010
+#define INSN_TST_BR_IMM_H	0b1011
+#define INSN_BR_SYS_NO_IMM	0b1101
+
+#define INSN_OP1_HINTS		0b01000000110010
+#define INSN_OP1_BARRIERS	0b01000000110011
+
+#define COMPOSED_INSN_REGS_NUM	2
+#define INSN_COMPOSED	1
+
+#define ADR_SOURCE	-1
+
+typedef int (*arm_decode_class)(u32 instr, unsigned char *type,
+				unsigned long *immediate, struct stack_op *op);
+
+struct aarch64_insn_decoder {
+	u32 mask;
+	u32 value;
+	arm_decode_class decode_func;
+};
+
+/* arm64 instruction classes */
+int arm_decode_reserved(u32 instr, unsigned char *type,
+			unsigned long *immediate, struct stack_op *op);
+int arm_decode_sve_encoding(u32 instr, unsigned char *type,
+			    unsigned long *immediate, struct stack_op *op);
+int arm_decode_dp_imm(u32 instr, unsigned char *type,
+		      unsigned long *immediate, struct stack_op *op);
+int arm_decode_dp_reg(u32 instr, unsigned char *type,
+		      unsigned long *immediate, struct stack_op *op);
+int arm_decode_br_sys(u32 instr, unsigned char *type,
+		      unsigned long *immediate, struct stack_op *op);
+int arm_decode_ld_st(u32 instr, unsigned char *type,
+		     unsigned long *immediate, struct stack_op *op);
+int arm_decode_dp_simd(u32 instr, unsigned char *type,
+		       unsigned long *immediate, struct stack_op *op);
+int arm_decode_unknown(u32 instr, unsigned char *type,
+		       unsigned long *immediate, struct stack_op *op);
+
+/* arm64 data processing -- immediate subclasses */
+int arm_decode_pcrel(u32 instr, unsigned char *type,
+		     unsigned long *immediate, struct stack_op *op);
+int arm_decode_add_sub(u32 instr, unsigned char *type,
+		       unsigned long *immediate, struct stack_op *op);
+int arm_decode_add_sub_tags(u32 instr, unsigned char *type,
+			    unsigned long *immediate, struct stack_op *op);
+int arm_decode_logical(u32 instr, unsigned char *type,
+		       unsigned long *immediate, struct stack_op *op);
+int arm_decode_move_wide(u32 instr, unsigned char *type,
+			 unsigned long *immediate, struct stack_op *op);
+int arm_decode_bitfield(u32 instr, unsigned char *type,
+			unsigned long *immediate, struct stack_op *op);
+int arm_decode_extract(u32 instr, unsigned char *type,
+		       unsigned long *immediate, struct stack_op *op);
+
+/* arm64 branch, exception generation, system insn subclasses */
+int arm_decode_br_uncond_imm(u32 instr, unsigned char *type,
+			     unsigned long *immediate, struct stack_op *op);
+int arm_decode_br_comp_imm(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+int arm_decode_br_tst_imm(u32 instr, unsigned char *type,
+			  unsigned long *immediate, struct stack_op *op);
+int arm_decode_br_cond_imm(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+
+int arm_decode_br_uncond_reg(u32 instr, unsigned char *type,
+			     unsigned long *immediate, struct stack_op *op);
+
+int arm_decode_br_reg(u32 instr, unsigned char *type,
+		      unsigned long *immediate, struct stack_op *op);
+int arm_decode_except_gen(u32 instr, unsigned char *type,
+			  unsigned long *immediate, struct stack_op *op);
+int arm_decode_hints(u32 instr, unsigned char *type,
+		     unsigned long *immediate, struct stack_op *op);
+int arm_decode_barriers(u32 instr, unsigned char *type,
+			unsigned long *immediate, struct stack_op *op);
+int arm_decode_pstate(u32 instr, unsigned char *type,
+		      unsigned long *immediate, struct stack_op *op);
+int arm_decode_system_insn(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+int arm_decode_system_regs(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+
+/* arm64 load/store instructions */
+int arm_decode_adv_simd_mult(u32 instr, unsigned char *type,
+			     unsigned long *immediate, struct stack_op *op);
+int arm_decode_adv_simd_mult_post(u32 instr, unsigned char *type,
+				  unsigned long *immediate,
+				  struct stack_op *op);
+int arm_decode_adv_simd_single(u32 instr, unsigned char *type,
+			       unsigned long *immediate, struct stack_op *op);
+int arm_decode_adv_simd_single_post(u32 instr, unsigned char *type,
+				    unsigned long *immediate,
+				    struct stack_op *op);
+int arm_decode_ld_st_mem_tags(u32 instr, unsigned char *type,
+			      unsigned long *immediate, struct stack_op *op);
+int arm_decode_ldapr_stlr_unsc_imm(u32 instr, unsigned char *type,
+				   unsigned long *immediate,
+				   struct stack_op *op);
+int arm_decode_ld_regs_literal(u32 instr, unsigned char *type,
+			       unsigned long *immediate, struct stack_op *op);
+int arm_decode_ld_st_noalloc_pair_off(u32 instr, unsigned char *type,
+				      unsigned long *immediate,
+				      struct stack_op *op);
+int arm_decode_ld_st_regs_pair_post(u32 instr, unsigned char *type,
+				    unsigned long *immediate,
+				    struct stack_op *op);
+int arm_decode_ld_st_regs_pair_off(u32 instr, unsigned char *type,
+				   unsigned long *immediate,
+				   struct stack_op *op);
+int arm_decode_ld_st_regs_pair_pre(u32 instr, unsigned char *type,
+				   unsigned long *immediate,
+				   struct stack_op *op);
+int arm_decode_ld_st_regs_unsc_imm(u32 instr, unsigned char *type,
+				   unsigned long *immediate,
+				   struct stack_op *op);
+int arm_decode_ld_st_imm_post(u32 instr, unsigned char *type,
+			      unsigned long *immediate, struct stack_op *op);
+int arm_decode_ld_st_imm_unpriv(u32 instr, unsigned char *type,
+				unsigned long *immediate, struct stack_op *op);
+int arm_decode_ld_st_imm_pre(u32 instr, unsigned char *type,
+			     unsigned long *immediate, struct stack_op *op);
+int arm_decode_atomic(u32 instr, unsigned char *type,
+		      unsigned long *immediate, struct stack_op *op);
+int arm_decode_ld_st_regs_off(u32 instr, unsigned char *type,
+			      unsigned long *immediate, struct stack_op *op);
+int arm_decode_ld_st_regs_pac(u32 instr, unsigned char *type,
+			      unsigned long *immediate, struct stack_op *op);
+int arm_decode_ld_st_regs_unsigned(u32 instr, unsigned char *type,
+				   unsigned long *immediate,
+				   struct stack_op *op);
+
+int arm_decode_ld_st_exclusive(u32 instr, unsigned char *type,
+			       unsigned long *immediate, struct stack_op *op);
+
+/* arm64 data processing -- registers instructions */
+int arm_decode_dp_reg_1src(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+int arm_decode_dp_reg_2src(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+int arm_decode_dp_reg_3src(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+int arm_decode_dp_reg_adde(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+int arm_decode_dp_reg_cmpi(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+int arm_decode_dp_reg_eval(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+int arm_decode_dp_reg_cmpr(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+int arm_decode_dp_reg_rota(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+int arm_decode_dp_reg_csel(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+int arm_decode_dp_reg_addc(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+int arm_decode_dp_reg_adds(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+int arm_decode_dp_reg_logi(u32 instr, unsigned char *type,
+			   unsigned long *immediate, struct stack_op *op);
+#endif /* _ARM_INSN_DECODE_H */
diff --git a/tools/objtool/arch/arm64/orc_dump.c b/tools/objtool/arch/arm64/orc_dump.c
new file mode 100644
index 000000000000..d1dc39829c9e
--- /dev/null
+++ b/tools/objtool/arch/arm64/orc_dump.c
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2017 Josh Poimboeuf <jpoimboe@redhat.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <unistd.h>
+#include "../../orc.h"
+#include "../../warn.h"
+
+int orc_dump(const char *_objname)
+{
+	WARN("arm64 architecture does not yet support orc");
+	return -1;
+}
diff --git a/tools/objtool/arch/arm64/orc_gen.c b/tools/objtool/arch/arm64/orc_gen.c
new file mode 100644
index 000000000000..81383d34a743
--- /dev/null
+++ b/tools/objtool/arch/arm64/orc_gen.c
@@ -0,0 +1,40 @@
+/*
+ * Copyright (C) 2017 Josh Poimboeuf <jpoimboe@redhat.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <stdlib.h>
+#include <string.h>
+
+#include "../../orc.h"
+#include "../../check.h"
+#include "../../warn.h"
+
+int arch_create_orc(struct objtool_file *file)
+{
+	WARN("arm64 architecture does not yet support orc");
+	return -1;
+}
+
+int arch_create_orc_sections(struct objtool_file *file)
+{
+	WARN("arm64 architecture does not yet support orc");
+	return -1;
+}
+
+int arch_orc_read_unwind_hints(struct objtool_file *file)
+{
+	return 0;
+}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
