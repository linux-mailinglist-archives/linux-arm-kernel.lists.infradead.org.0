Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8FC135D81
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:05:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ukKVY2HQx4Jsooy/1ebxgFfjh9Xo9QagM9l0AzmDUgo=; b=pOuUxwjp0+o0hA
	z8o2EgnAJ5eopKwgpDjVT2xgGbuIqgS66Nt7YjOWDf3Ci4wpoeKUp8l4rvf+1B/3jbGA8BHFiDK1J
	3BF032+Ekgnyztygq8I22ggb5J9lox/p6I8GGL8qRopEejWHfIscPKMxKyxgVxErixXFjk5Nd7piI
	gZpml0vODrF+TYekvbsjgYg/Ip/b9kdPY7KAe2zgSQfAuqtEaUWJHPuQV8GIezueapEHWe94sDHkw
	LhgYMDqBbxICNiLcewG1h6RuIwaTsBZgD30yjMlIUC3Y/KjOZ4xpPubgfqgUZmrBEy85nFzqbWeOg
	vb+uKYJYxiC8GebflXSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaIx-0005Mh-VW; Thu, 09 Jan 2020 16:05:04 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaII-0004w1-9L
 for linux-arm-kernel@bombadil.infradead.org; Thu, 09 Jan 2020 16:04:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AropSZgrnAEaybp2t3tDQYTQE6YkovgWTRMsWVpUkJE=; b=jWTe7t1r3IrLm11dzJZR9EQpuC
 6yQkii2/mFRPSaDZ45xl7hZfkanEto19M8+ytcWFl9Zvt/0sbaefYiO1yWsEehxXqk+PIjBWKxnV2
 uAVm1/mhZDVyk656slBr2U/IEa9tAM0P/wArVLWR5vX0i/PzYn3gjQlmYSMpAaAlHuCa4X0hXEZgU
 rhZz9jWt5UbJ4PiPeKQnf8B9lZBqnCeYH/UegqQSTdRIdT3bQGJ/RNIwIIOH4nbAIBB0UX41OXO90
 UPr3s/FlG1YNxCq4duyuZv3wonmKSLfcUeLNhQg1zAnt6BaReLv0Fy4NWGbWt6SfloS6NGkFDSONs
 sBFEOXbg==;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaIf-0007jk-NP
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:04:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585833;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AropSZgrnAEaybp2t3tDQYTQE6YkovgWTRMsWVpUkJE=;
 b=Ekhvse7vDm5ggHO0z7bNaPRw1kbC971v4tC/fWZ6u1Qr3zMj4k9egil4umctKvunWK9Ls4
 PpXH5hdKtB8oeKpu3NP1+Edp47Bc8utiQyHUNn5UKXbWAJqY+cMDHBtg300KJd2j5Y3WJs
 /F0fyeEZbIQqRHiVK75amrVoi7nuX7g=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-125-R5YR1PMuPB6i_-kDqOtq6w-1; Thu, 09 Jan 2020 11:03:49 -0500
Received: by mail-wr1-f71.google.com with SMTP id j4so158917wrs.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:03:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XyxUQFf/o75wh5gN7bTB2ZufiMygHr9oF7Ozqff3HFc=;
 b=OeilERwyUCU2LSFUDdYva/afX9/YWx8zhzVmgo/zwOFoTP5+QD3LuY1eiX5OnDsMWG
 YsYQjstCO6STB3S9oU7TtkkNsYiauO6JmZYANNy2kwvUAN1hIIZpcltPeP417Uj+QYc3
 x4mfJcQfWt2d37McDrKSlsvNTEwwzW/eUaS1f07zPXY0WOAKHPoL7MgzoIKEc7b3vgSG
 Km6N9F3ifw2ls6X/2p/uIkTtzXlxmZJE4O6J+wwhMenBl36Gq/lSy7CO5IrlSyvvs5aM
 iunVy0ngPHOfFdGP1zbVqvQwftjKt5snVSUbNWyR3yQpLfzF2YBSuUgiB0wbZFcjlTvZ
 C2bA==
X-Gm-Message-State: APjAAAU9pZ57+SrqdIMJH1OF+t2n+dzkUmFJQQnkNRQf/EmCB00+JWpz
 I1PiroMBagYrN3xoSGyXVmVK3hUxfLQtH3u8CAHnH3Ampmzv5HBqGQja+BB/aeE43lVPCw68t1s
 CfhmwfY+J1+MPDUCZDo31NESzdDbJpH10d5A=
X-Received: by 2002:a05:6000:cb:: with SMTP id
 q11mr11357633wrx.14.1578585828640; 
 Thu, 09 Jan 2020 08:03:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqywh+nDZSYkZ7FzASPCFOYxPUVilYHzJUKHcQ0MT1oOqlc7tokvdArdaYIoBR2/85jfNJvqig==
X-Received: by 2002:a05:6000:cb:: with SMTP id
 q11mr11357604wrx.14.1578585828381; 
 Thu, 09 Jan 2020 08:03:48 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id m126sm3321546wmf.7.2020.01.09.08.03.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:03:47 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 05/57] objtool: Add abstraction for computation of symbols
 offsets
Date: Thu,  9 Jan 2020 16:02:08 +0000
Message-Id: <20200109160300.26150-6-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: R5YR1PMuPB6i_-kDqOtq6w-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_160445_856044_5E834332 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Raphael Gault <raphael.gault@arm.com>

The jump destination and relocation offset used previously are only
reliable on x86_64 architecture. We abstract these computations by calling
arch-dependent implementations.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
[J.T. Remove superfluous comment, replace other addend offsets
      with arch_dest_rela_offset]
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch.h            |  6 ++++++
 tools/objtool/arch/x86/decode.c | 11 +++++++++++
 tools/objtool/check.c           | 18 ++++++++++--------
 3 files changed, 27 insertions(+), 8 deletions(-)

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
index a62e032863a8..79ff33ffa6e0 100644
--- a/tools/objtool/arch/x86/decode.c
+++ b/tools/objtool/arch/x86/decode.c
@@ -11,6 +11,7 @@
 #include "../../../arch/x86/lib/inat.c"
 #include "../../../arch/x86/lib/insn.c"
 
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
index 27e5380e0e0b..6a5f78cca27c 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -564,13 +564,14 @@ static int add_jump_destinations(struct objtool_file *file)
 					       insn->len);
 		if (!rela) {
 			dest_sec = insn->sec;
-			dest_off = insn->offset + insn->len + insn->immediate;
+			dest_off = arch_jump_destination(insn);
 		} else if (rela->sym->type == STT_SECTION) {
 			dest_sec = rela->sym->sec;
-			dest_off = rela->addend + 4;
+			dest_off = arch_dest_rela_offset(rela->addend);
 		} else if (rela->sym->sec->idx) {
 			dest_sec = rela->sym->sec;
-			dest_off = rela->sym->sym.st_value + rela->addend + 4;
+			dest_off = rela->sym->sym.st_value +
+				   arch_dest_rela_offset(rela->addend);
 		} else if (strstr(rela->sym->name, "_indirect_thunk_")) {
 			/*
 			 * Retpoline jumps are really dynamic jumps in
@@ -660,7 +661,7 @@ static int add_call_destinations(struct objtool_file *file)
 		rela = find_rela_by_dest_range(insn->sec, insn->offset,
 					       insn->len);
 		if (!rela) {
-			dest_off = insn->offset + insn->len + insn->immediate;
+			dest_off = arch_jump_destination(insn);
 			insn->call_dest = find_symbol_by_offset(insn->sec,
 								dest_off);
 
@@ -673,14 +674,15 @@ static int add_call_destinations(struct objtool_file *file)
 			}
 
 		} else if (rela->sym->type == STT_SECTION) {
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
@@ -771,7 +773,7 @@ static int handle_group_alt(struct objtool_file *file,
 		if (!insn->immediate)
 			continue;
 
-		dest_off = insn->offset + insn->len + insn->immediate;
+		dest_off = arch_jump_destination(insn);
 		if (dest_off == special_alt->new_off + special_alt->new_len) {
 			if (!fake_jump) {
 				WARN("%s: alternative jump to end of section",
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
