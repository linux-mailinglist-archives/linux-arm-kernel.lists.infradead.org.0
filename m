Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AB4135DBE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:09:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EDvzbzlkrqZ5SZWd+NIlCBHiWy5GwCZKPCy8XNY6fQ=; b=uqRibiU2MZrqf3
	eLvjyBzSinrrcULyYWx6kFH6fOfA5zpsGPJgcu6tPoZ3FFJB5pqtpVOtkDvXRRjjl8hXoJhk3TAbl
	gk8HqIVjERWh+YKe3JlgUry7Qa78ZX3pknIdkWatDt1l0AxTcbyUhc9RwLoBG4Qq6LeHF2xEaT//z
	v4Nueiz9ChrjhXAXC3vziZKwlsGcAqjqgeJJO+NIcH1Y2URbap4hGMdPGERfxx2LqnEeJ+AZrPoQ9
	d9mbiWArcNZYHUTZicqQwVW27+buQffX7WG8JsXj++wflHs2WMc0I9dy6uaxhozLWxRJcGe9Tkt03
	Dp9Fd7PdTShq6UPN7k4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaMm-0001jw-Ej; Thu, 09 Jan 2020 16:09:00 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaJ8-0006Xt-Bb
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:05:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585912;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rqhdowMksK6zee7nOWNFlCyOp/jFquOjYNm+6gMRECs=;
 b=RsD1kbO5ruvhHX7Ff30J7RDJMP+qtbv58GcgLy4KqLkQl78ODeB8YGZvUnfVQh9hXehcDf
 q0eNvLvF9ETEPk9z3/Egn1sL8/VDx06Lcd+a+IjXzQZ+aNTXQ+qJQ6fSXODRMarSTJC9TS
 lEyId4uZRUX7fEYfMVqBDBH01GfW2yc=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-58-aVfcn17MNGq7adq_4N792Q-1; Thu, 09 Jan 2020 11:05:11 -0500
Received: by mail-wm1-f71.google.com with SMTP id b131so1090561wmd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:05:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rUZyYTZTlt6xExXoiyGlyEW363t3TFsZHEPKNeEJgoc=;
 b=egSXDSQg26pQQFb1p1+zIiD+Q26cfqUKLwvyQghGm2HnUxowOEyz/XfBY/ebcNoySI
 aFo7aTL950V3atHYHN7gtXHjRyyJdtTnKPHiK8ZYSkV656XE8et5jJTHgrVRlVH8/PxC
 2HCYb6A4alxaip/FvRwe8EY70BTg541wS/AzQ/l3K+dqtCjcgfdWx3laMgeKw/Gp5Bie
 2La48vKwxlVO8G26vQNVqBUZ5SYi7OW3IGFxYj6Y0mhAWa+ckTnApyuN+jn87wnTv64q
 njVK5bnVV6tzJ8nlDXssS6/d9+3vGyaeUCvk8nGi1MKg9JawGcv4Lke1kzKLpA2oqbRY
 kVCw==
X-Gm-Message-State: APjAAAVpD3WIuEI59IS4YKPNEX8GT9OBACm7LipZxHEvCgjyXCu7bnmw
 764VADhrhT6EGS3RRvIrd2oqX2XTyCextTUYJ74wDllZvDAoSxf3M/51ifipD789KbfG7nJh4nw
 Vm5iGXfjw5/FMLGj9hdL7XkdQ7cKXGg2TiBA=
X-Received: by 2002:a1c:8086:: with SMTP id b128mr5785195wmd.80.1578585909224; 
 Thu, 09 Jan 2020 08:05:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqy4QksIyxHYuyEaR7ATKTXxSgLBn8h9jbGh1vFZzsTsxowKxTbQnjsGE4vrFPLbQBd2CXwocg==
X-Received: by 2002:a1c:8086:: with SMTP id b128mr5785151wmd.80.1578585908897; 
 Thu, 09 Jan 2020 08:05:08 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id d16sm9285303wrg.27.2020.01.09.08.05.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:05:08 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 18/57] objtool: Support multiple stack_op per instruction
Date: Thu,  9 Jan 2020 16:02:21 +0000
Message-Id: <20200109160300.26150-19-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: aVfcn17MNGq7adq_4N792Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080514_525811_1F9D17C6 
X-CRM114-Status: GOOD (  12.15  )
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

Instruction sets can include more or less complex operations which might
not fit the currently defined set of stack_ops.

Combining more than one stack_op provides more flexibility to describe
the behaviour of an instruction. This also reduces the need to define
new stack_ops specific to a single instruction set.

Allow instruction decoders to generate multiple stack_op per
instruction.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch.h            |  4 +-
 tools/objtool/arch/x86/decode.c | 13 +++++-
 tools/objtool/check.c           | 79 +++++++++++++++++++++------------
 tools/objtool/check.h           |  2 +-
 4 files changed, 67 insertions(+), 31 deletions(-)

diff --git a/tools/objtool/arch.h b/tools/objtool/arch.h
index a9a50a25ca66..f9883c431949 100644
--- a/tools/objtool/arch.h
+++ b/tools/objtool/arch.h
@@ -64,6 +64,7 @@ struct op_src {
 struct stack_op {
 	struct op_dest dest;
 	struct op_src src;
+	struct list_head list;
 };
 
 struct instruction;
@@ -73,7 +74,8 @@ void arch_initial_func_cfi_state(struct cfi_state *state);
 int arch_decode_instruction(struct elf *elf, struct section *sec,
 			    unsigned long offset, unsigned int maxlen,
 			    unsigned int *len, enum insn_type *type,
-			    unsigned long *immediate, struct stack_op *op);
+			    unsigned long *immediate,
+			    struct list_head *ops_list);
 
 bool arch_callee_saved_reg(unsigned char reg);
 
diff --git a/tools/objtool/arch/x86/decode.c b/tools/objtool/arch/x86/decode.c
index 79ff33ffa6e0..650e5d021486 100644
--- a/tools/objtool/arch/x86/decode.c
+++ b/tools/objtool/arch/x86/decode.c
@@ -75,13 +75,15 @@ unsigned long arch_dest_rela_offset(int addend)
 int arch_decode_instruction(struct elf *elf, struct section *sec,
 			    unsigned long offset, unsigned int maxlen,
 			    unsigned int *len, enum insn_type *type,
-			    unsigned long *immediate, struct stack_op *op)
+			    unsigned long *immediate,
+			    struct list_head *ops_list)
 {
 	struct insn insn;
 	int x86_64, sign;
 	unsigned char op1, op2, rex = 0, rex_b = 0, rex_r = 0, rex_w = 0,
 		      rex_x = 0, modrm = 0, modrm_mod = 0, modrm_rm = 0,
 		      modrm_reg = 0, sib = 0;
+	struct stack_op *op;
 
 	x86_64 = is_x86_64(elf);
 	if (x86_64 == -1)
@@ -122,6 +124,10 @@ int arch_decode_instruction(struct elf *elf, struct section *sec,
 	if (insn.sib.nbytes)
 		sib = insn.sib.bytes[0];
 
+	op = calloc(1, sizeof(*op));
+	if (!op)
+		return -1;
+
 	switch (op1) {
 
 	case 0x1:
@@ -483,6 +489,11 @@ int arch_decode_instruction(struct elf *elf, struct section *sec,
 
 	*immediate = insn.immediate.nbytes ? insn.immediate.value : 0;
 
+	if (*type == INSN_STACK)
+		list_add_tail(&op->list, ops_list);
+	else
+		free(op);
+
 	return 0;
 }
 
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 04434cdbdab6..48aec56a7760 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -246,6 +246,7 @@ static int decode_instructions(struct objtool_file *file)
 			}
 			memset(insn, 0, sizeof(*insn));
 			INIT_LIST_HEAD(&insn->alts);
+			INIT_LIST_HEAD(&insn->stack_ops);
 			clear_insn_state(&insn->state);
 
 			insn->sec = sec;
@@ -255,7 +256,7 @@ static int decode_instructions(struct objtool_file *file)
 						      sec->len - offset,
 						      &insn->len, &insn->type,
 						      &insn->immediate,
-						      &insn->stack_op);
+						      &insn->stack_ops);
 			if (ret)
 				goto err;
 
@@ -735,6 +736,7 @@ static int handle_group_alt(struct objtool_file *file,
 		}
 		memset(fake_jump, 0, sizeof(*fake_jump));
 		INIT_LIST_HEAD(&fake_jump->alts);
+		INIT_LIST_HEAD(&fake_jump->stack_ops);
 		clear_insn_state(&fake_jump->state);
 
 		fake_jump->sec = special_alt->new_sec;
@@ -1186,10 +1188,11 @@ static bool has_valid_stack_frame(struct insn_state *state)
 }
 
 #ifdef OBJTOOL_ORC
-static int update_insn_state_regs(struct instruction *insn, struct insn_state *state)
+static int update_insn_state_regs(struct instruction *insn,
+				  struct insn_state *state,
+				  struct stack_op *op)
 {
 	struct cfi_reg *cfa = &state->cfa;
-	struct stack_op *op = &insn->stack_op;
 
 	if (cfa->base != CFI_SP)
 		return 0;
@@ -1280,9 +1283,9 @@ static void restore_reg(struct insn_state *state, unsigned char reg)
  *   41 5d			pop    %r13
  *   c3				retq
  */
-static int update_insn_state(struct instruction *insn, struct insn_state *state)
+static int update_insn_state(struct instruction *insn, struct insn_state *state,
+			     struct stack_op *op)
 {
-	struct stack_op *op = &insn->stack_op;
 	struct cfi_reg *cfa = &state->cfa;
 	struct cfi_reg *regs = state->regs;
 
@@ -1297,7 +1300,7 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
 
 #ifdef OBJTOOL_ORC
 	if (state->type == ORC_TYPE_REGS || state->type == ORC_TYPE_REGS_IRET)
-		return update_insn_state_regs(insn, state);
+		return update_insn_state_regs(insn, state, op);
 #endif
 
 	switch (op->dest.type) {
@@ -1653,6 +1656,42 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
 	return 0;
 }
 
+static int handle_insn_ops(struct instruction *insn, struct insn_state *state)
+{
+	struct stack_op *op;
+
+	list_for_each_entry(op, &insn->stack_ops, list) {
+		int res;
+
+		res = update_insn_state(insn, state, op);
+		if (res)
+			return res;
+
+		if (op->dest.type == OP_DEST_PUSHF) {
+			if (!state->uaccess_stack) {
+				state->uaccess_stack = 1;
+			} else if (state->uaccess_stack >> 31) {
+				WARN_FUNC("PUSHF stack exhausted",
+					  insn->sec, insn->offset);
+				return 1;
+			}
+			state->uaccess_stack <<= 1;
+			state->uaccess_stack  |= state->uaccess;
+		}
+
+		if (op->src.type == OP_SRC_POPF) {
+			if (state->uaccess_stack) {
+				state->uaccess = state->uaccess_stack & 1;
+				state->uaccess_stack >>= 1;
+				if (state->uaccess_stack == 1)
+					state->uaccess_stack = 0;
+			}
+		}
+	}
+
+	return 0;
+}
+
 static bool insn_state_match(struct instruction *insn, struct insn_state *state)
 {
 	struct insn_state *state1 = &insn->state, *state2 = state;
@@ -1965,29 +2004,8 @@ static int validate_branch_alt_safe(struct objtool_file *file,
 			return 0;
 
 		case INSN_STACK:
-			if (update_insn_state(insn, &state))
+			if (handle_insn_ops(insn, &state))
 				return 1;
-
-			if (insn->stack_op.dest.type == OP_DEST_PUSHF) {
-				if (!state.uaccess_stack) {
-					state.uaccess_stack = 1;
-				} else if (state.uaccess_stack >> 31) {
-					WARN_FUNC("PUSHF stack exhausted", sec, insn->offset);
-					return 1;
-				}
-				state.uaccess_stack <<= 1;
-				state.uaccess_stack  |= state.uaccess;
-			}
-
-			if (insn->stack_op.src.type == OP_SRC_POPF) {
-				if (state.uaccess_stack) {
-					state.uaccess = state.uaccess_stack & 1;
-					state.uaccess_stack >>= 1;
-					if (state.uaccess_stack == 1)
-						state.uaccess_stack = 0;
-				}
-			}
-
 			break;
 
 		case INSN_STAC:
@@ -2232,12 +2250,17 @@ static void cleanup(struct objtool_file *file)
 {
 	struct instruction *insn, *tmpinsn;
 	struct alternative *alt, *tmpalt;
+	struct stack_op *op, *tmpop;
 
 	list_for_each_entry_safe(insn, tmpinsn, &file->insn_list, list) {
 		list_for_each_entry_safe(alt, tmpalt, &insn->alts, list) {
 			list_del(&alt->list);
 			free(alt);
 		}
+		list_for_each_entry_safe(op, tmpop, &insn->stack_ops, list) {
+			list_del(&op->list);
+			free(op);
+		}
 		list_del(&insn->list);
 		hash_del(&insn->hash);
 		free(insn);
diff --git a/tools/objtool/check.h b/tools/objtool/check.h
index 843094cbae87..91adec42782c 100644
--- a/tools/objtool/check.h
+++ b/tools/objtool/check.h
@@ -43,7 +43,7 @@ struct instruction {
 	struct rela *jump_table;
 	struct list_head alts;
 	struct symbol *func;
-	struct stack_op stack_op;
+	struct list_head stack_ops;
 	struct insn_state state;
 	struct orc_entry orc;
 	bool intra_group_jump;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
