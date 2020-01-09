Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 427F9135D9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:07:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIRN7cutCnJWRNas581k5P/5J827qYpXdtzyp63pfks=; b=QxRio1Y8X74Qfu
	9U6n2tIbXeiUJfBU67LkAZAmAlW7HuaXYTZlKy7dFO2DViM8poZbBe5MZ5XUncKzZykkucsCe87Lx
	eYhQHOmYMrTHvzIPWM2eQg8K5wu9q1Sx4pGmI3tvaQBCC1kiv8HXyyVqFR+UpSicpzzMVWGc7kqKu
	OwOZFxPAYyJIuSgB9GxIdN4lUI5Wc3G0v0+JNmzi2cRxc+j73SmBj0GeoKCja2WJKgb5zbr7dmBZV
	yDYSy9X4ixbZWE3vmrz8ktNEFnpYdbUaqBHIfqyACcQnTSQNpFoJ/hTvpmJA4RJs177lak720KiV0
	gX/ZMnsAM2q0bGgfgduw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaKt-0008LD-0f; Thu, 09 Jan 2020 16:07:03 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaIW-0005AV-Iv
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:04:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585874;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cc/ZFBwn+owAUC3q/3LPd+YhZAW6KEWcDpWP6mVsy7U=;
 b=bfBkcwcjwLs65AOVuCd8fphcZRDV6M8z01q9F5LBYJbVY40zoXT1CY2W39HwaNXnNkCk/f
 Ne6bSdT3CUw6TOWV/Yxol6Gu6C/dT3p6ulIOPIQox7BaWF86EPuMTesS3KlgHTOPmPLTSr
 pS5e/j2L8jCsDUpkaONlbBESfNG32ak=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-324-TTJ-PL7HPMiezzgRy2J3TA-1; Thu, 09 Jan 2020 11:04:32 -0500
Received: by mail-wm1-f72.google.com with SMTP id 18so1103950wmp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:04:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bcJsi6poG6rW7I+2z+ATXTC2LDR+mpWWn+1cZrFZsLM=;
 b=nC3xMt2BNoQ6iJEXCkQTIqLn1kwR7QJQSGbNSmM/EsKIZ9ihV5CaDQ9kWoRRdW5exB
 HKM5MMdubUCQSLG+EwBIyWWK6E+Lmpi/DB9exIzdw21w1urBUEgsj5DtS0NXdsO2Rkmv
 Nnx8ijsCASrBD85fl4PwigweaCAlmEh+Qwz0GfI4RAAmSEbEiFLc1/pjXfq3OahpdZ+I
 PCo8OGpKGJ0ezyAeSZnRuKRFU186QBAhGEOJ0wgYWSWnipXs8dzXN3AB/Jq57jJiuOfW
 kzWohb5vfhOWUJJ0eUtEkxKObl3qjkZbG4m6KPfgxf903dAKjOBrrdJCAbokkMqYPYEN
 PUSw==
X-Gm-Message-State: APjAAAW4igLoVuhZXXAhTgzlsItuW789jD5TW3s91Sih+H1iL3bAz5U0
 4E8qEicyp61eMdltK37PEdb6UFSLHwZ5nssU7JoyDl8H9o44O8RCfsYmZJOvAdG+rFbFl+CDLjL
 pUSdLmXU/4ym14do4zdvkjPZyJXu7A4Ih5bA=
X-Received: by 2002:adf:cf06:: with SMTP id o6mr11621112wrj.349.1578585871350; 
 Thu, 09 Jan 2020 08:04:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqyo7qWerLrxda8DnRcqwsDd2dtjVq+e+ucigRp3KhQquOz5uAl0/8Qk6EgqebE1radeABodUQ==
X-Received: by 2002:adf:cf06:: with SMTP id o6mr11621067wrj.349.1578585870839; 
 Thu, 09 Jan 2020 08:04:30 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id b17sm8615898wrp.49.2020.01.09.08.04.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:04:29 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 13/57] objtool: Refactor switch-tables code to support other
 architectures
Date: Thu,  9 Jan 2020 16:02:16 +0000
Message-Id: <20200109160300.26150-14-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: TTJ-PL7HPMiezzgRy2J3TA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080436_838727_3E4ED2B5 
X-CRM114-Status: GOOD (  24.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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

The way to identify switch-tables and retrieves all the data necessary
to handle the different execution branches is not the same on all
architecture. In order to be able to add other architecture support,
this patch defines arch-dependent functions to process jump-tables.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
[J.T.: Move arm64 bits out of this patch,
       rename arch_add_jump_table to arch_add_jump_table_dests,
       remove redundant/unused arguments]
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/x86/arch_special.c | 148 ++++++++++++++++++++++++++
 tools/objtool/check.c                 | 148 +-------------------------
 tools/objtool/check.h                 |   7 ++
 tools/objtool/special.h               |   5 +
 4 files changed, 164 insertions(+), 144 deletions(-)

diff --git a/tools/objtool/arch/x86/arch_special.c b/tools/objtool/arch/x86/arch_special.c
index 6dba31f419d0..9e382155298b 100644
--- a/tools/objtool/arch/x86/arch_special.c
+++ b/tools/objtool/arch/x86/arch_special.c
@@ -1,6 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
+#include <stdlib.h>
+
 #include "../../special.h"
 #include "../../builtin.h"
+#include "../../warn.h"
 
 void arch_handle_alternative(unsigned short feature, struct special_alt *alt)
 {
@@ -32,3 +35,148 @@ void arch_handle_alternative(unsigned short feature, struct special_alt *alt)
 		break;
 	}
 }
+
+int arch_add_jump_table_dests(struct objtool_file *file,
+			      struct instruction *insn)
+{
+	struct rela *table = insn->jump_table;
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
+/*
+ * There are 3 basic jump table patterns:
+ *
+ * 1. jmpq *[rodata addr](,%reg,8)
+ *
+ *    This is the most common case by far.  It jumps to an address in a simple
+ *    jump table which is stored in .rodata.
+ *
+ * 2. jmpq *[rodata addr](%rip)
+ *
+ *    This is caused by a rare GCC quirk, currently only seen in three driver
+ *    functions in the kernel, only with certain obscure non-distro configs.
+ *
+ *    As part of an optimization, GCC makes a copy of an existing switch jump
+ *    table, modifies it, and then hard-codes the jump (albeit with an indirect
+ *    jump) to use a single entry in the table.  The rest of the jump table and
+ *    some of its jump targets remain as dead code.
+ *
+ *    In such a case we can just crudely ignore all unreachable instruction
+ *    warnings for the entire object file.  Ideally we would just ignore them
+ *    for the function, but that would require redesigning the code quite a
+ *    bit.  And honestly that's just not worth doing: unreachable instruction
+ *    warnings are of questionable value anyway, and this is such a rare issue.
+ *
+ * 3. mov [rodata addr],%reg1
+ *    ... some instructions ...
+ *    jmpq *(%reg1,%reg2,8)
+ *
+ *    This is a fairly uncommon pattern which is new for GCC 6.  As of this
+ *    writing, there are 11 occurrences of it in the allmodconfig kernel.
+ *
+ *    As of GCC 7 there are quite a few more of these and the 'in between' code
+ *    is significant. Esp. with KASAN enabled some of the code between the mov
+ *    and jmpq uses .rodata itself, which can confuse things.
+ *
+ *    TODO: Once we have DWARF CFI and smarter instruction decoding logic,
+ *    ensure the same register is used in the mov and jump instructions.
+ *
+ *    NOTE: RETPOLINE made it harder still to decode dynamic jumps.
+ */
+struct rela *arch_find_switch_table(struct objtool_file *file,
+				    struct instruction *insn)
+{
+	struct rela *text_rela, *rodata_rela;
+	struct section *table_sec;
+	unsigned long table_offset;
+
+	/* look for a relocation which references .rodata */
+	text_rela = find_rela_by_dest_range(insn->sec, insn->offset,
+					    insn->len);
+	if (!text_rela || text_rela->sym->type != STT_SECTION ||
+	    !text_rela->sym->sec->rodata)
+		return NULL;
+	table_offset = text_rela->addend;
+	table_sec = text_rela->sym->sec;
+
+	if (text_rela->type == R_X86_64_PC32)
+		table_offset += 4;
+
+	/*
+	 * Make sure the .rodata address isn't associated with a
+	 * symbol.  GCC jump tables are anonymous data.
+	 *
+	 * Also support C jump tables which are in the same format as
+	 * switch jump tables.  For objtool to recognize them, they
+	 * need to be placed in the C_JUMP_TABLE_SECTION section.  They
+	 * have symbols associated with them.
+	 */
+	if (find_symbol_containing(table_sec, table_offset) &&
+	    strcmp(table_sec->name, C_JUMP_TABLE_SECTION))
+		return NULL;
+
+	rodata_rela = find_rela_by_dest(table_sec, table_offset);
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
index c7b3f1e2a628..19e96c4ad0a3 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -18,14 +18,6 @@
 
 #define FAKE_JUMP_OFFSET -1
 
-#define C_JUMP_TABLE_SECTION ".rodata..c_jump_table"
-
-struct alternative {
-	struct list_head list;
-	struct instruction *insn;
-	bool skip_orig;
-};
-
 const char *objname;
 struct cfi_state initial_func_cfi;
 
@@ -914,113 +906,16 @@ static int add_special_section_alts(struct objtool_file *file)
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
- * .rodata associated with it.
- *
- * There are 3 basic patterns:
- *
- * 1. jmpq *[rodata addr](,%reg,8)
- *
- *    This is the most common case by far.  It jumps to an address in a simple
- *    jump table which is stored in .rodata.
- *
- * 2. jmpq *[rodata addr](%rip)
- *
- *    This is caused by a rare GCC quirk, currently only seen in three driver
- *    functions in the kernel, only with certain obscure non-distro configs.
- *
- *    As part of an optimization, GCC makes a copy of an existing switch jump
- *    table, modifies it, and then hard-codes the jump (albeit with an indirect
- *    jump) to use a single entry in the table.  The rest of the jump table and
- *    some of its jump targets remain as dead code.
- *
- *    In such a case we can just crudely ignore all unreachable instruction
- *    warnings for the entire object file.  Ideally we would just ignore them
- *    for the function, but that would require redesigning the code quite a
- *    bit.  And honestly that's just not worth doing: unreachable instruction
- *    warnings are of questionable value anyway, and this is such a rare issue.
- *
- * 3. mov [rodata addr],%reg1
- *    ... some instructions ...
- *    jmpq *(%reg1,%reg2,8)
- *
- *    This is a fairly uncommon pattern which is new for GCC 6.  As of this
- *    writing, there are 11 occurrences of it in the allmodconfig kernel.
- *
- *    As of GCC 7 there are quite a few more of these and the 'in between' code
- *    is significant. Esp. with KASAN enabled some of the code between the mov
- *    and jmpq uses .rodata itself, which can confuse things.
- *
- *    TODO: Once we have DWARF CFI and smarter instruction decoding logic,
- *    ensure the same register is used in the mov and jump instructions.
- *
- *    NOTE: RETPOLINE made it harder still to decode dynamic jumps.
+ * associated with it.
  */
 static struct rela *find_jump_table(struct objtool_file *file,
 				      struct symbol *func,
 				      struct instruction *insn)
 {
-	struct rela *text_rela, *table_rela;
+	struct rela *table_rela;
 	struct instruction *orig_insn = insn;
-	struct section *table_sec;
-	unsigned long table_offset;
 
 	/*
 	 * Backward search using the @first_jump_src links, these help avoid
@@ -1044,45 +939,10 @@ static struct rela *find_jump_table(struct objtool_file *file,
 		     insn->jump_dest->offset > orig_insn->offset))
 		    break;
 
-		/* look for a relocation which references .rodata */
-		text_rela = find_rela_by_dest_range(insn->sec, insn->offset,
-						    insn->len);
-		if (!text_rela || text_rela->sym->type != STT_SECTION ||
-		    !text_rela->sym->sec->rodata)
-			continue;
-
-		table_offset = text_rela->addend;
-		table_sec = text_rela->sym->sec;
-
-		if (text_rela->type == R_X86_64_PC32)
-			table_offset += 4;
-
-		/*
-		 * Make sure the .rodata address isn't associated with a
-		 * symbol.  GCC jump tables are anonymous data.
-		 *
-		 * Also support C jump tables which are in the same format as
-		 * switch jump tables.  For objtool to recognize them, they
-		 * need to be placed in the C_JUMP_TABLE_SECTION section.  They
-		 * have symbols associated with them.
-		 */
-		if (find_symbol_containing(table_sec, table_offset) &&
-		    strcmp(table_sec->name, C_JUMP_TABLE_SECTION))
-			continue;
-
-		/* Each table entry has a rela associated with it. */
-		table_rela = find_rela_by_dest(table_sec, table_offset);
+		table_rela = arch_find_switch_table(file, insn);
 		if (!table_rela)
 			continue;
 
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
 
@@ -1138,7 +998,7 @@ static int add_func_jump_tables(struct objtool_file *file,
 		if (!insn->jump_table)
 			continue;
 
-		ret = add_jump_table(file, insn, insn->jump_table);
+		ret = arch_add_jump_table_dests(file, insn);
 		if (ret)
 			return ret;
 	}
diff --git a/tools/objtool/check.h b/tools/objtool/check.h
index d13ee02f28a4..843094cbae87 100644
--- a/tools/objtool/check.h
+++ b/tools/objtool/check.h
@@ -49,6 +49,12 @@ struct instruction {
 	bool intra_group_jump;
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
@@ -70,5 +76,6 @@ struct instruction *find_insn(struct objtool_file *file,
 			insn->sec == sec;				\
 	     insn = list_next_entry(insn, list))
 
+#define C_JUMP_TABLE_SECTION ".rodata..c_jump_table"
 
 #endif /* _CHECK_H */
diff --git a/tools/objtool/special.h b/tools/objtool/special.h
index 738a05bc6d3a..7f258d87e9f8 100644
--- a/tools/objtool/special.h
+++ b/tools/objtool/special.h
@@ -7,6 +7,7 @@
 #define _SPECIAL_H
 
 #include <stdbool.h>
+#include "check.h"
 #include "elf.h"
 #include "arch_special.h"
 
@@ -36,4 +37,8 @@ static inline void arch_handle_alternative(unsigned short feature,
 }
 #endif
 
+int arch_add_jump_table_dests(struct objtool_file *file,
+			      struct instruction *insn);
+struct rela *arch_find_switch_table(struct objtool_file *file,
+				    struct instruction *insn);
 #endif /* _SPECIAL_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
