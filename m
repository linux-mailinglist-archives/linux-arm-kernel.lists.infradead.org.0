Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCD390166
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 14:25:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KGNiZ8fssAbk2gm2hNZeJVZpUZMEiXSBGCQwy3UckFQ=; b=d2wG7cbRUHEp01aRAsIeJOmG9x
	N8eRIjYPQIs93ShUNYBNAYiaGJOPHO9iIzq8n9k4UW8/JWdcOo1jVftuK3rJUT84gVgf5yDNR1J7L
	e9WMNICI08W9Op9cZPr0eyuBCI6YiKuOkMrRcMobqX8EPXNhSknb7nmI8sQiulhj/2Kl7rBarB//+
	hAJa43CIPSwDSDbFKFZCIZ9APBuExq15U1N3uVC9hqCr6HbysNzExqa6kqTQQqCqWM6FqbAL9IUgP
	QQz+XutnvOtfSqiLuzlima9j+0KldHUKw2rSeIKmn+TLwoS916Xb7Ncl0MMQrpgkAKp390r8DL60z
	PPrqK5Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybIY-00062b-SJ; Fri, 16 Aug 2019 12:25:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hybHf-0004Ep-6Z
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 12:24:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C5F4A360;
 Fri, 16 Aug 2019 05:24:40 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8C3BE3F706;
 Fri, 16 Aug 2019 05:24:39 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jpoimboe@redhat.com
Subject: [RFC v4 01/18] objtool: Add abstraction for computation of symbols
 offsets
Date: Fri, 16 Aug 2019 13:23:46 +0100
Message-Id: <20190816122403.14994-2-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816122403.14994-1-raphael.gault@arm.com>
References: <20190816122403.14994-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_052443_362884_4BDCA968 
X-CRM114-Status: GOOD (  13.95  )
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

The jump destination and relocation offset used previously are only
reliable on x86_64 architecture. We abstract these computations by calling
arch-dependent implementations.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 tools/objtool/arch.h            |  6 ++++++
 tools/objtool/arch/x86/decode.c | 11 +++++++++++
 tools/objtool/check.c           | 15 ++++++++++-----
 3 files changed, 27 insertions(+), 5 deletions(-)

diff --git a/tools/objtool/arch.h b/tools/objtool/arch.h
index ced3765c4f44..a9a50a25ca66 100644
--- a/tools/objtool/arch.h
+++ b/tools/objtool/arch.h
@@ -66,6 +66,8 @@ struct stack_op {
 	struct op_src src;
 };
 
+struct instruction;
+
 void arch_initial_func_cfi_state(struct cfi_state *state);
 
 int arch_decode_instruction(struct elf *elf, struct section *sec,
@@ -75,4 +77,8 @@ int arch_decode_instruction(struct elf *elf, struct section *sec,
 
 bool arch_callee_saved_reg(unsigned char reg);
 
+unsigned long arch_jump_destination(struct instruction *insn);
+
+unsigned long arch_dest_rela_offset(int addend);
+
 #endif /* _ARCH_H */
diff --git a/tools/objtool/arch/x86/decode.c b/tools/objtool/arch/x86/decode.c
index 0567c47a91b1..fa33b3465722 100644
--- a/tools/objtool/arch/x86/decode.c
+++ b/tools/objtool/arch/x86/decode.c
@@ -11,6 +11,7 @@
 #include "lib/inat.c"
 #include "lib/insn.c"
 
+#include "../../check.h"
 #include "../../elf.h"
 #include "../../arch.h"
 #include "../../warn.h"
@@ -66,6 +67,11 @@ bool arch_callee_saved_reg(unsigned char reg)
 	}
 }
 
+unsigned long arch_dest_rela_offset(int addend)
+{
+	return addend + 4;
+}
+
 int arch_decode_instruction(struct elf *elf, struct section *sec,
 			    unsigned long offset, unsigned int maxlen,
 			    unsigned int *len, enum insn_type *type,
@@ -497,3 +503,8 @@ void arch_initial_func_cfi_state(struct cfi_state *state)
 	state->regs[16].base = CFI_CFA;
 	state->regs[16].offset = -8;
 }
+
+unsigned long arch_jump_destination(struct instruction *insn)
+{
+	return insn->offset + insn->len + insn->immediate;
+}
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 176f2f084060..479fab46b656 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -563,7 +563,7 @@ static int add_jump_destinations(struct objtool_file *file)
 					       insn->len);
 		if (!rela) {
 			dest_sec = insn->sec;
-			dest_off = insn->offset + insn->len + insn->immediate;
+			dest_off = arch_jump_destination(insn);
 		} else if (rela->sym->type == STT_SECTION) {
 			dest_sec = rela->sym->sec;
 			dest_off = rela->addend + 4;
@@ -659,7 +659,7 @@ static int add_call_destinations(struct objtool_file *file)
 		rela = find_rela_by_dest_range(insn->sec, insn->offset,
 					       insn->len);
 		if (!rela) {
-			dest_off = insn->offset + insn->len + insn->immediate;
+			dest_off = arch_jump_destination(insn);
 			insn->call_dest = find_symbol_by_offset(insn->sec,
 								dest_off);
 
@@ -672,14 +672,19 @@ static int add_call_destinations(struct objtool_file *file)
 			}
 
 		} else if (rela->sym->type == STT_SECTION) {
+			/*
+			 * the original x86_64 code adds 4 to the rela->addend
+			 * which is not needed on arm64 architecture.
+			 */
+			dest_off = arch_dest_rela_offset(rela->addend);
 			insn->call_dest = find_symbol_by_offset(rela->sym->sec,
-								rela->addend+4);
+								dest_off);
 			if (!insn->call_dest ||
 			    insn->call_dest->type != STT_FUNC) {
-				WARN_FUNC("can't find call dest symbol at %s+0x%x",
+				WARN_FUNC("can't find call dest symbol at %s+0x%lx",
 					  insn->sec, insn->offset,
 					  rela->sym->sec->name,
-					  rela->addend + 4);
+					  dest_off);
 				return -1;
 			}
 		} else
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
