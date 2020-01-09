Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81752135DC6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:09:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfLzeQtVJCQ92ImfWYyeuMQHaiybNxMY3DJ4gx+Ox5Y=; b=pG8PjXbMRivDyA
	KIefDtgkBOLguh02AsG4V+3KCahnwypkI0cLJfZ7Vb8GKznsHL/eTPqKuXv0FRllWk6BcB3CbEcjH
	ZI4q0BnnR40QGe0JFnvDrNqFm6IE9wW7hsadVaTxDy+Iv33ZcKHnUX0yE99+m+fYzqrNq00lEZgpX
	dY5/9SYsdZEvydxYo7wNBiKT0A+6iiIcs1hVjoSMYbu1VgkvsiVEkk06KjAySTcYQRYiEsTvkrpr4
	c3Oc9czl/G0+nP32g3MiaRK/4dYssib/+TiEFM33n77hiI7DisuSvFyfktGqVGMvWTk/Zp/jF89Xe
	J0OgjtbeYHHqthaZM62A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaNK-0002Er-Bh; Thu, 09 Jan 2020 16:09:34 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaJB-0006v2-4P
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:05:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585916;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=liqkySHLKIz0uoBGXHlsMeQRRl9gvCVdhNGv8Wwep9Q=;
 b=E/YApsBBFPFS/ZZ8nkui51bEEaF9wDmlAD5ZTKYorkSyOgXwHFU7x3zVvOklXV4EsqUtYP
 PF6RXqOtfygMn8dcqlWsZylTB+MKQ+897/UDHl5IGDJeyPJviYFBd/aYxe9XwncplJAsfB
 g+y088Z6aWUbqgjAbum15qFoMO3IfjY=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-310-054Wb59wNp6VWhLbo3EKSQ-1; Thu, 09 Jan 2020 11:05:12 -0500
Received: by mail-wm1-f71.google.com with SMTP id b9so1093753wmj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:05:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=paPYD98fP2vtMtxm6JwVilmzUTcQhBJ0i4er0etHTlI=;
 b=cqlhQSoBFz2L28lwlgAQqhSri6f35ZeaZmvpWR7RU7epn6sx044+u0r5J3XLliQ3tj
 zQC7y9GGQEwdhLcUeiLA7NojOOqYzax6uKGBJAGVxM8iiAA1vq2Zw+py1mRrXCQMI6ls
 mJPGJzV3QHCWJgXMCHq6pddqH8b5mJDnHRl6oWHyV4oOY1CVYb17hyJtxXsYFhbl6UZX
 nR7mfDAlu7uiMFms67400G5oKzRRDywdy8SKokJ85BXHHMzsn/G07zjcRbpfuCyIZlVn
 0Y0rSLQGKUjJ17bjXkXueDnFvHWYLktUo500oIbJF/hC7jaAoA1gwGb4oBA8pxYMoRTN
 chfA==
X-Gm-Message-State: APjAAAXMbarDszbG2+BLznJiyNIlCnKWVtj3Acf6TlMWEQZ+tD81MQ2O
 ii7HuVKbNm0pVrsXa3qAcMboVGyewbALEMGL9FTS8su4HEjNjw+BlKyRbEdS0GOa3E6EyKnxKLU
 /Zjt/657Uu76dw4rEVIkaGOqevBkQcyNGO08=
X-Received: by 2002:adf:d4ca:: with SMTP id w10mr11107408wrk.53.1578585911063; 
 Thu, 09 Jan 2020 08:05:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqwGtV8Ry02kUzdgkMc5mjIbvbd8qI1FNNyDK/gxNDOK9K/FQSxV7d/la71ePxNsc07Fc7+xbg==
X-Received: by 2002:adf:d4ca:: with SMTP id w10mr11107372wrk.53.1578585910720; 
 Thu, 09 Jan 2020 08:05:10 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id d16sm9285303wrg.27.2020.01.09.08.05.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:05:09 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 19/57] objtool: arm64: Add required implementation for
 supporting the aarch64 architecture in objtool.
Date: Thu,  9 Jan 2020 16:02:22 +0000
Message-Id: <20200109160300.26150-20-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: 054Wb59wNp6VWhLbo3EKSQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080517_439212_509B1192 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Raphael Gault <raphael.gault@arm.com>

Provide implementation for the arch-dependent functions that are called by
the main check function of objtool.

Provide an empty squeleton for the aarch64 decoder that shall be
completed in later patches.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
[J.T.: Use enum for instruction type,
       Remove orc functions,
       Remove x86 feature macros from arm64 header,
       Split decoder over multiple patches,
       Use SPDX identifiers]
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/Build                |   5 +
 tools/objtool/arch/arm64/arch_special.c       |  15 +++
 tools/objtool/arch/arm64/bit_operations.c     |  69 ++++++++++
 tools/objtool/arch/arm64/decode.c             | 127 ++++++++++++++++++
 .../objtool/arch/arm64/include/arch_special.h |  21 +++
 .../arch/arm64/include/bit_operations.h       |  31 +++++
 tools/objtool/arch/arm64/include/cfi_regs.h   |  44 ++++++
 .../objtool/arch/arm64/include/insn_decode.h  |  15 +++
 8 files changed, 327 insertions(+)
 create mode 100644 tools/objtool/arch/arm64/Build
 create mode 100644 tools/objtool/arch/arm64/arch_special.c
 create mode 100644 tools/objtool/arch/arm64/bit_operations.c
 create mode 100644 tools/objtool/arch/arm64/decode.c
 create mode 100644 tools/objtool/arch/arm64/include/arch_special.h
 create mode 100644 tools/objtool/arch/arm64/include/bit_operations.h
 create mode 100644 tools/objtool/arch/arm64/include/cfi_regs.h
 create mode 100644 tools/objtool/arch/arm64/include/insn_decode.h

diff --git a/tools/objtool/arch/arm64/Build b/tools/objtool/arch/arm64/Build
new file mode 100644
index 000000000000..2a554af43e96
--- /dev/null
+++ b/tools/objtool/arch/arm64/Build
@@ -0,0 +1,5 @@
+objtool-y += arch_special.o
+objtool-y += bit_operations.o
+objtool-y += decode.o
+
+CFLAGS_decode.o += -I$(OUTPUT)arch/arm64/lib
diff --git a/tools/objtool/arch/arm64/arch_special.c b/tools/objtool/arch/arm64/arch_special.c
new file mode 100644
index 000000000000..5239489c9c57
--- /dev/null
+++ b/tools/objtool/arch/arm64/arch_special.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include "../../special.h"
+
+int arch_add_jump_table_dests(struct objtool_file *file,
+			      struct instruction *insn)
+{
+	return 0;
+}
+
+struct rela *arch_find_switch_table(struct objtool_file *file,
+				    struct instruction *insn)
+{
+	return NULL;
+}
diff --git a/tools/objtool/arch/arm64/bit_operations.c b/tools/objtool/arch/arm64/bit_operations.c
new file mode 100644
index 000000000000..cd44138956bb
--- /dev/null
+++ b/tools/objtool/arch/arm64/bit_operations.c
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
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
index 000000000000..4d0ab2acca27
--- /dev/null
+++ b/tools/objtool/arch/arm64/decode.c
@@ -0,0 +1,127 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <stdint.h>
+
+#include "insn_decode.h"
+#include "cfi_regs.h"
+#include "bit_operations.h"
+
+#include "../../check.h"
+#include "../../arch.h"
+#include "../../elf.h"
+#include "../../warn.h"
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
+	state->cfa.base = CFI_SP;
+	state->cfa.offset = 0;
+}
+
+unsigned long arch_dest_rela_offset(int addend)
+{
+	return addend;
+}
+
+unsigned long arch_jump_destination(struct instruction *insn)
+{
+	return insn->offset + insn->immediate;
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
+ * static int (*arm_decode_class)(u32 instr,
+ *				 unsigned int *len,
+ *				 enum insn_type *type,
+ *				 unsigned long *immediate,
+ *				 struct list_head *ops_list);
+ */
+static arm_decode_class aarch64_insn_class_decode_table[NR_INSN_CLASS] = {
+	NULL,
+};
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
+			    unsigned int *len, enum insn_type *type,
+			    unsigned long *immediate,
+			    struct list_head *ops_list)
+{
+	arm_decode_class decode_fun;
+	int arm64 = 0;
+	u32 insn = 0;
+	int res;
+
+	*len = 4;
+	*immediate = 0;
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
+	decode_fun = aarch64_insn_class_decode_table[INSN_CLASS(insn)];
+	if (decode_fun)
+		res = decode_fun(insn, type, immediate, ops_list);
+	else
+		res = -1;
+
+	if (res)
+		WARN_FUNC("Unsupported instruction", sec, offset);
+	return res;
+}
diff --git a/tools/objtool/arch/arm64/include/arch_special.h b/tools/objtool/arch/arm64/include/arch_special.h
new file mode 100644
index 000000000000..a82a9b3e51df
--- /dev/null
+++ b/tools/objtool/arch/arm64/include/arch_special.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
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
+#endif /* _ARM64_ARCH_SPECIAL_H */
diff --git a/tools/objtool/arch/arm64/include/bit_operations.h b/tools/objtool/arch/arm64/include/bit_operations.h
new file mode 100644
index 000000000000..8554adb0df70
--- /dev/null
+++ b/tools/objtool/arch/arm64/include/bit_operations.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
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
+#define SIGN_EXTEND(X, N)	sign_extend((X), (N))
+
+static inline unsigned long sign_extend(unsigned long x, int nbits)
+{
+	return ((~0UL + (EXTRACT_BIT(x, nbits - 1) ^ 1)) << nbits) | x;
+}
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
diff --git a/tools/objtool/arch/arm64/include/cfi_regs.h b/tools/objtool/arch/arm64/include/cfi_regs.h
new file mode 100644
index 000000000000..d48f41e7890b
--- /dev/null
+++ b/tools/objtool/arch/arm64/include/cfi_regs.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _OBJTOOL_CFI_REGS_H
+#define _OBJTOOL_CFI_REGS_H
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
+#endif /* _OBJTOOL_CFI_REGS_H */
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
new file mode 100644
index 000000000000..c56b72ac4633
--- /dev/null
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _ARM_INSN_DECODE_H
+#define _ARM_INSN_DECODE_H
+
+#include "../../../arch.h"
+
+#define NR_INSN_CLASS	16
+#define INSN_CLASS(opcode)	(((opcode) >> 25) & (NR_INSN_CLASS - 1))
+
+typedef int (*arm_decode_class)(u32 instr, enum insn_type *type,
+				unsigned long *immediate,
+				struct list_head *ops_list);
+
+#endif /* _ARM_INSN_DECODE_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
