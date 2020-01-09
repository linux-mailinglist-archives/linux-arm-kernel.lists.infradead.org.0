Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FF5135D79
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:04:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2DPYRDaMgIdK4FPLN2+k9Uravftvo4RVhmYfdQ5SKMo=; b=osSddVkXxIywbP
	68oUE2UUZJ7380ZLvghzRnY+BgygEvY9DYmTpghufHKieh+h0q9ZhJurf4XSKP2DOwfwpGQz1WqZn
	unkiweA6OKz9+D100hXkVPRIEtYKRDe1DdBAT8arf+U3svtu5uTCse8TFRqG8CO3PQd0pj60QVbG8
	2DM02UsM40irDT6DG9yvlPrSMYxgKbz9ocFBlOuG1S9fEkRXaDxbOgT0GdP1QL6E8VcGuiTwIR/et
	I1RR1UUb9oDOYouZ4/5dzwYHeQYqqdBm9FwTBzjjoZdwZMMJ14TX7dWBG067hSUXhIjl3Vu12TAuW
	LXLY+QGrPMLQO4B8iqVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaIO-0004wM-Cc; Thu, 09 Jan 2020 16:04:28 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaID-0004rl-PI
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:04:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585834;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oRbC/g6ssOZ1j6q/GsrbqDwzai6KH95AMo3rMRqU9sY=;
 b=N4NzKcJF27QWsuR4HtPYI97muUIyQ5YWQSn9w7aEsnf0UIR6JF41H+dr8DHQLeQSPqvA5H
 giE+tpIyu5XQnt3twnznq/T++defioD9cb7eqkNZdnz7s4/ThMGmfxcCbZMEt6ufZJffSC
 6t/cGIXKcXVlhlIByK8pvzzEm3i3WAM=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-296-eMcsJ1JUM8CwNfwLTj_npA-1; Thu, 09 Jan 2020 11:03:53 -0500
Received: by mail-wm1-f72.google.com with SMTP id p5so616354wmc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:03:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PUQsxLHZdxOzSqZcrip37lVsIDHbyPZSVWhfrajhS7w=;
 b=bNkemZ3LE4stZLnnUb2fGFNytJHuTDxpp2dZy0zvMK2ZhuOJhRsJHp0JJm+0knZICR
 aKNoIqxJlDNnIBJAEiRYkGduzR06jPA1uTWyd2xvHMInLVuiTbxNEwouKLXqggtbknYR
 0L7W8S48ZHIWVBaADywdpIB+NVvhlGgXxI5FCt8oQRnaacver5zrbIrJUH/pJmPsKrmH
 KuxjduFkgr+iUreJJJimpx1c+ybxLh5aUfUa7rX1fqq6Y7g3o4HnQuvz/91YCYVC1Wn5
 NmcjPpkWKjP7gF2vJ0wANTAT0yYN4mSusKOgLXhR/Ogdmlrmb5OZVoGRxbluX15foLDQ
 T0/Q==
X-Gm-Message-State: APjAAAWFTQQHdeimQ0tIRWSWfCyyLv7MSd+r2Xy7o8pZeCafIjhQ3q5M
 I3hub3qecRVDdJoE7Q3lhnB2YJmE/mHb58I3POPefCBh/2BBtFas/zdnX15aL68UjqQ/gS3Rda6
 P4As+dH4xaqg9klnTwr5pFH29tIz2SdqRA1k=
X-Received: by 2002:a1c:730d:: with SMTP id d13mr5646585wmb.126.1578585832062; 
 Thu, 09 Jan 2020 08:03:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqy3yDnYzwz4QZqxuPmNwe/gs/CcDoWlTDjZeGXTzwLU8hTdjO+MTW0olGHnh14bqNw8fn6M5w==
X-Received: by 2002:a1c:730d:: with SMTP id d13mr5646471wmb.126.1578585831111; 
 Thu, 09 Jan 2020 08:03:51 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id m126sm3321546wmf.7.2020.01.09.08.03.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:03:50 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 07/57] objtool: orc: Refactor ORC API for other architectures
 to implement.
Date: Thu,  9 Jan 2020 16:02:10 +0000
Message-Id: <20200109160300.26150-8-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: eMcsJ1JUM8CwNfwLTj_npA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080417_892763_9CC1F371 
X-CRM114-Status: GOOD (  12.64  )
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

The ORC unwinder is only supported on x86 at the moment and should thus be
in the x86 architecture code. In order not to break the whole structure in
case another architecture decides to support the ORC unwinder via objtool,
move the implementation be done in the architecture dependent code.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
[J.T. Rebase on orc name changes,
      Move arch_orc_read_unwind_hints() to orc.h,
      Reword commit message to use imperative language]
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/Build                     |   2 -
 tools/objtool/arch/x86/Build            |   2 +
 tools/objtool/{ => arch/x86}/orc_dump.c |   4 +-
 tools/objtool/{ => arch/x86}/orc_gen.c  | 104 ++++++++++++++++++++++--
 tools/objtool/check.c                   |  99 +---------------------
 tools/objtool/orc.h                     |   5 +-
 6 files changed, 109 insertions(+), 107 deletions(-)
 rename tools/objtool/{ => arch/x86}/orc_dump.c (98%)
 rename tools/objtool/{ => arch/x86}/orc_gen.c (66%)

diff --git a/tools/objtool/Build b/tools/objtool/Build
index 8dc4f0848362..d069d26d97fa 100644
--- a/tools/objtool/Build
+++ b/tools/objtool/Build
@@ -2,8 +2,6 @@ objtool-y += arch/$(SRCARCH)/
 objtool-y += builtin-check.o
 objtool-y += builtin-orc.o
 objtool-y += check.o
-objtool-y += orc_gen.o
-objtool-y += orc_dump.o
 objtool-y += elf.o
 objtool-y += special.o
 objtool-y += objtool.o
diff --git a/tools/objtool/arch/x86/Build b/tools/objtool/arch/x86/Build
index 7c5004008e97..e43fd6fa0ee1 100644
--- a/tools/objtool/arch/x86/Build
+++ b/tools/objtool/arch/x86/Build
@@ -1,4 +1,6 @@
 objtool-y += decode.o
+objtool-y += orc_dump.o
+objtool-y += orc_gen.o
 
 inat_tables_script = ../arch/x86/tools/gen-insn-attr-x86.awk
 inat_tables_maps = ../arch/x86/lib/x86-opcode-map.txt
diff --git a/tools/objtool/orc_dump.c b/tools/objtool/arch/x86/orc_dump.c
similarity index 98%
rename from tools/objtool/orc_dump.c
rename to tools/objtool/arch/x86/orc_dump.c
index 13ccf775a83a..cfe8f96bdd68 100644
--- a/tools/objtool/orc_dump.c
+++ b/tools/objtool/arch/x86/orc_dump.c
@@ -4,8 +4,8 @@
  */
 
 #include <unistd.h>
-#include "orc.h"
-#include "warn.h"
+#include "../../orc.h"
+#include "../../warn.h"
 
 static const char *reg_name(unsigned int reg)
 {
diff --git a/tools/objtool/orc_gen.c b/tools/objtool/arch/x86/orc_gen.c
similarity index 66%
rename from tools/objtool/orc_gen.c
rename to tools/objtool/arch/x86/orc_gen.c
index 29bee7bd212a..e8be41a1bf94 100644
--- a/tools/objtool/orc_gen.c
+++ b/tools/objtool/arch/x86/orc_gen.c
@@ -6,11 +6,11 @@
 #include <stdlib.h>
 #include <string.h>
 
-#include "orc.h"
-#include "check.h"
-#include "warn.h"
+#include "../../orc.h"
+#include "../../check.h"
+#include "../../warn.h"
 
-int orc_init(struct objtool_file *file)
+int arch_orc_init(struct objtool_file *file)
 {
 	struct instruction *insn;
 
@@ -116,7 +116,7 @@ static int orc_create_entry(struct section *u_sec, struct section *ip_relasec,
 	return 0;
 }
 
-int orc_create_sections(struct objtool_file *file)
+int arch_orc_create_sections(struct objtool_file *file)
 {
 	struct instruction *insn, *prev_insn;
 	struct section *sec, *u_sec, *ip_relasec;
@@ -209,3 +209,97 @@ int orc_create_sections(struct objtool_file *file)
 
 	return 0;
 }
+
+int arch_orc_read_unwind_hints(struct objtool_file *file)
+{
+	struct section *sec, *relasec;
+	struct rela *rela;
+	struct unwind_hint *hint;
+	struct instruction *insn;
+	struct cfi_reg *cfa;
+	int i;
+
+	sec = find_section_by_name(file->elf, ".discard.unwind_hints");
+	if (!sec)
+		return 0;
+
+	relasec = sec->rela;
+	if (!relasec) {
+		WARN("missing .rela.discard.unwind_hints section");
+		return -1;
+	}
+
+	if (sec->len % sizeof(struct unwind_hint)) {
+		WARN("struct unwind_hint size mismatch");
+		return -1;
+	}
+
+	file->hints = true;
+
+	for (i = 0; i < sec->len / sizeof(struct unwind_hint); i++) {
+		hint = (struct unwind_hint *)sec->data->d_buf + i;
+
+		rela = find_rela_by_dest(sec, i * sizeof(*hint));
+		if (!rela) {
+			WARN("can't find rela for unwind_hints[%d]", i);
+			return -1;
+		}
+
+		insn = find_insn(file, rela->sym->sec, rela->addend);
+		if (!insn) {
+			WARN("can't find insn for unwind_hints[%d]", i);
+			return -1;
+		}
+
+		cfa = &insn->state.cfa;
+
+		if (hint->type == UNWIND_HINT_TYPE_SAVE) {
+			insn->save = true;
+			continue;
+
+		} else if (hint->type == UNWIND_HINT_TYPE_RESTORE) {
+			insn->restore = true;
+			insn->hint = true;
+			continue;
+		}
+
+		insn->hint = true;
+
+		switch (hint->sp_reg) {
+		case ORC_REG_UNDEFINED:
+			cfa->base = CFI_UNDEFINED;
+			break;
+		case ORC_REG_SP:
+			cfa->base = CFI_SP;
+			break;
+		case ORC_REG_BP:
+			cfa->base = CFI_BP;
+			break;
+		case ORC_REG_SP_INDIRECT:
+			cfa->base = CFI_SP_INDIRECT;
+			break;
+		case ORC_REG_R10:
+			cfa->base = CFI_R10;
+			break;
+		case ORC_REG_R13:
+			cfa->base = CFI_R13;
+			break;
+		case ORC_REG_DI:
+			cfa->base = CFI_DI;
+			break;
+		case ORC_REG_DX:
+			cfa->base = CFI_DX;
+			break;
+		default:
+			WARN_FUNC("unsupported unwind_hint sp base reg %d",
+				  insn->sec, insn->offset, hint->sp_reg);
+			return -1;
+		}
+
+		cfa->offset = hint->sp_offset;
+		insn->state.type = hint->type;
+		insn->state.end = hint->end;
+	}
+
+	return 0;
+}
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index dd155095251c..2c5ccf61510a 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1167,99 +1167,6 @@ static int add_jump_table_alts(struct objtool_file *file)
 	return 0;
 }
 
-static int read_unwind_hints(struct objtool_file *file)
-{
-	struct section *sec, *relasec;
-	struct rela *rela;
-	struct unwind_hint *hint;
-	struct instruction *insn;
-	struct cfi_reg *cfa;
-	int i;
-
-	sec = find_section_by_name(file->elf, ".discard.unwind_hints");
-	if (!sec)
-		return 0;
-
-	relasec = sec->rela;
-	if (!relasec) {
-		WARN("missing .rela.discard.unwind_hints section");
-		return -1;
-	}
-
-	if (sec->len % sizeof(struct unwind_hint)) {
-		WARN("struct unwind_hint size mismatch");
-		return -1;
-	}
-
-	file->hints = true;
-
-	for (i = 0; i < sec->len / sizeof(struct unwind_hint); i++) {
-		hint = (struct unwind_hint *)sec->data->d_buf + i;
-
-		rela = find_rela_by_dest(sec, i * sizeof(*hint));
-		if (!rela) {
-			WARN("can't find rela for unwind_hints[%d]", i);
-			return -1;
-		}
-
-		insn = find_insn(file, rela->sym->sec, rela->addend);
-		if (!insn) {
-			WARN("can't find insn for unwind_hints[%d]", i);
-			return -1;
-		}
-
-		cfa = &insn->state.cfa;
-
-		if (hint->type == UNWIND_HINT_TYPE_SAVE) {
-			insn->save = true;
-			continue;
-
-		} else if (hint->type == UNWIND_HINT_TYPE_RESTORE) {
-			insn->restore = true;
-			insn->hint = true;
-			continue;
-		}
-
-		insn->hint = true;
-
-		switch (hint->sp_reg) {
-		case ORC_REG_UNDEFINED:
-			cfa->base = CFI_UNDEFINED;
-			break;
-		case ORC_REG_SP:
-			cfa->base = CFI_SP;
-			break;
-		case ORC_REG_BP:
-			cfa->base = CFI_BP;
-			break;
-		case ORC_REG_SP_INDIRECT:
-			cfa->base = CFI_SP_INDIRECT;
-			break;
-		case ORC_REG_R10:
-			cfa->base = CFI_R10;
-			break;
-		case ORC_REG_R13:
-			cfa->base = CFI_R13;
-			break;
-		case ORC_REG_DI:
-			cfa->base = CFI_DI;
-			break;
-		case ORC_REG_DX:
-			cfa->base = CFI_DX;
-			break;
-		default:
-			WARN_FUNC("unsupported unwind_hint sp base reg %d",
-				  insn->sec, insn->offset, hint->sp_reg);
-			return -1;
-		}
-
-		cfa->offset = hint->sp_offset;
-		insn->state.type = hint->type;
-		insn->state.end = hint->end;
-	}
-
-	return 0;
-}
 
 static int read_retpoline_hints(struct objtool_file *file)
 {
@@ -1359,7 +1266,7 @@ static int decode_sections(struct objtool_file *file)
 	if (ret)
 		return ret;
 
-	ret = read_unwind_hints(file);
+	ret = arch_orc_read_unwind_hints(file);
 	if (ret)
 		return ret;
 
@@ -2481,11 +2388,11 @@ int check(const char *_objname, bool orc)
 	}
 
 	if (orc) {
-		ret = orc_init(&file);
+		ret = arch_orc_init(&file);
 		if (ret < 0)
 			goto out;
 
-		ret = orc_create_sections(&file);
+		ret = arch_orc_create_sections(&file);
 		if (ret < 0)
 			goto out;
 
diff --git a/tools/objtool/orc.h b/tools/objtool/orc.h
index cd44417487e4..ffda072cf4ad 100644
--- a/tools/objtool/orc.h
+++ b/tools/objtool/orc.h
@@ -10,8 +10,9 @@
 
 struct objtool_file;
 
-int orc_init(struct objtool_file *file);
-int orc_create_sections(struct objtool_file *file);
+int arch_orc_init(struct objtool_file *file);
+int arch_orc_create_sections(struct objtool_file *file);
+int arch_orc_read_unwind_hints(struct objtool_file *file);
 
 int orc_dump(const char *objname);
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
