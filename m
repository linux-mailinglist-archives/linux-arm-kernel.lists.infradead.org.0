Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC80C135E00
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:17:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9heOj4oHI84OnqQdvC9+Vxowqd/65nsy56fOUSxaE0=; b=o9zIpUx4JMhIKh
	cSdYwL3q+HUFaLIq1pko7TBlYK0pnUn7t3n8qHCJaoE/0Il96/0t03iQD2LgClrwHqEA1r1iTvrqB
	XtB2lhMCZUVDH9RmZ+ZRiwJwxiaq6e89xYxsaWOzK9pmfxCxM0HyIWI9L3NXwwHVeaWpteU4eLObZ
	CginzLIzy3Mp5jC+jd+sJt5NX15ylSsVtByILvzFb0TFHD2VVkl8fokr6sV4r2UX716oe6op8Qyi7
	fRRkuelw6KmC5JQI2wkbnl+GQ2asF+7GIcKkDJjDwRSOkGXlyBOFCidQGxaS9LoRWqlyMqJlAW1fQ
	YP9g60mJYXO1fOe1lyOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaUq-0003Gp-Cq; Thu, 09 Jan 2020 16:17:20 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaLd-0000oX-M2
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:07:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586068;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8TcsSF8KRJ3cP4NXTpnMB/PJvDV7qxosAjn0EsJkqoI=;
 b=ZuYBp5vg4j3X985JuEG402s3b0ysm+aKzbPS3paTdIDquRyuNVHTdsjo+Tbi32pi/PCo7v
 1toCV5cH0Ws4FYbNvRegLuzNSId+SXRPcJSLb3esFadMYdhmPQfiZl1KqldKLT9QM49Ae4
 aQsjgtQWbsJTDzgIulN25Hkkx5IjRH8=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-17-MX486d2MOwKvD3-7GwLfmw-1; Thu, 09 Jan 2020 11:07:44 -0500
Received: by mail-wm1-f71.google.com with SMTP id z2so620338wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:07:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xG6sElk1TWaSPfOVhfzeE5hLeD/94IftIcvZ9UXhm3w=;
 b=msn/ZEs2D3g8Tv3c1OwTJYtJ51RfyqDdW1hLi/pevoVvwsMTMJf+KU+mm4wLdbsyR8
 SVlB5zFKQhToNmO4pDW7otHo/J9svZ/WPPqBDZisGT9vfxFvd4LPngD9huzsJbUaZ9V8
 ICK3tZYGMMhG9jvBQWotXK9buklGR2QrSgMN0s6gGk//VAbnm1Phwp3E1DOzMtCXZ9Sz
 nXrGUmqrN8VUjrYeyEExQ2cYHb3wfav8qrFgvyubRdnUSu95Lm9rmxlIlULfmIVUj7Yi
 9vyke1yD749wnY/RvXMuwUrXBTi/INO+m2ZPS9DKClFyFlNniCryvVE1majoWit9bFER
 zRew==
X-Gm-Message-State: APjAAAWbehsCqdd8Oi9UVekgMV6LO+EFTCE4k/joPriyFhMJiw4qKve7
 d4xV7dBffuHqjE00LD82YQsusO7CL/WyNp5NtM8Gs1CIukVKZywlMUgk8shYgyZCvxJeYjIpd9y
 Yy3zxmLDiYHqbIBLMTJb1o4pqds6nD2hXK1c=
X-Received: by 2002:a7b:c750:: with SMTP id w16mr6085416wmk.46.1578586063348; 
 Thu, 09 Jan 2020 08:07:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqwWrOqLS9+8+0m7ijSmLbqAeygM5PyihSPgaHJWkEuiZnRqKxhbclKLJ2IbV39zii6sYZGEFQ==
X-Received: by 2002:a7b:c750:: with SMTP id w16mr6085384wmk.46.1578586063095; 
 Thu, 09 Jan 2020 08:07:43 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id h2sm8591413wrv.66.2020.01.09.08.07.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:07:42 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 39/57] objtool: arm64: Decode load literal
Date: Thu,  9 Jan 2020 16:02:42 +0000
Message-Id: <20200109160300.26150-40-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: MX486d2MOwKvD3-7GwLfmw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080749_815174_E82307E9 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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

Decode load literal instruction.

Aarch64 load literal is a pseudo-instruction (part of the instruction
set) that allows to load literal values may cannot be encoded within
a single instruction. The GNU assembler implementation of the pseudo
instruction generates constant data within the same section as the
pseudo-instruction itself.

That data could very well be a valid opcode (e.g. jump, return,
stack operation, etc) which confuses objtool.

Mark the "instructions" corresponding to load literal offsets as
invalid as they should never be reach by the execution flow.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch.h                          |  3 +
 tools/objtool/arch/arm64/decode.c             | 88 +++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |  3 +
 tools/objtool/arch/x86/decode.c               |  5 ++
 tools/objtool/check.c                         |  3 +
 5 files changed, 102 insertions(+)

diff --git a/tools/objtool/arch.h b/tools/objtool/arch.h
index 0336efecb9d9..829d6d73aec6 100644
--- a/tools/objtool/arch.h
+++ b/tools/objtool/arch.h
@@ -68,6 +68,7 @@ struct stack_op {
 	struct list_head list;
 };
 
+struct objtool_file;
 struct instruction;
 
 void arch_initial_func_cfi_state(struct cfi_state *state);
@@ -78,6 +79,8 @@ int arch_decode_instruction(struct elf *elf, struct section *sec,
 			    unsigned long *immediate,
 			    struct list_head *ops_list);
 
+int arch_post_process_file(struct objtool_file *file);
+
 bool arch_callee_saved_reg(unsigned char reg);
 
 unsigned long arch_jump_destination(struct instruction *insn);
diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index bc4c62401012..aed8ba0f812e 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -18,6 +18,47 @@ static bool stack_related_reg(int reg)
 	return reg == CFI_SP || reg == CFI_BP;
 }
 
+struct insn_loc {
+	struct section *sec;
+	unsigned long offset;
+	struct hlist_node hnode;
+};
+
+DEFINE_HASHTABLE(text_constants, 16);
+
+int arch_post_process_file(struct objtool_file *file)
+{
+	struct hlist_node *tmp;
+	struct insn_loc *loc;
+	unsigned int bkt;
+	int res = 0;
+
+	/*
+	 * Data placed in code sections could turn out to be a valid aarch64
+	 * opcode.
+	 * If that is the case, change the insn type to invalid as it should
+	 * never be reached by the execution flow.
+	 */
+	hash_for_each_safe(text_constants, bkt, tmp, loc, hnode) {
+		struct instruction *insn;
+
+		insn = find_insn(file, loc->sec, loc->offset);
+		if (insn) {
+			insn->type = INSN_INVALID;
+		} else {
+			WARN("failed to find constant at %s+0x%lx",
+			     loc->sec->name, loc->offset);
+			res = -1;
+		}
+		hash_del(&loc->hnode);
+		free(loc);
+	}
+
+	return res;
+}
+
+static struct insn_loc current_location;
+
 bool arch_callee_saved_reg(unsigned char reg)
 {
 	switch (reg) {
@@ -127,6 +168,8 @@ int arch_decode_instruction(struct elf *elf, struct section *sec,
 	//retrieve instruction (from sec->data->offset)
 	insn = *(u32 *)(sec->data->d_buf + offset);
 
+	current_location.sec = sec;
+	current_location.offset = offset;
 	//dispatch according to encoding classes
 	decode_fun = aarch64_insn_class_decode_table[INSN_CLASS(insn)];
 	if (decode_fun)
@@ -136,6 +179,9 @@ int arch_decode_instruction(struct elf *elf, struct section *sec,
 
 	if (res)
 		WARN_FUNC("Unsupported instruction", sec, offset);
+
+	memset(&current_location, 0, sizeof(current_location));
+
 	return res;
 }
 
@@ -845,6 +891,11 @@ static struct aarch64_insn_decoder ld_st_decoder[] = {
 		.value = 0b000101000000000,
 		.decode_func = arm_decode_ldapr_stlr_unsc_imm,
 	},
+	{
+		.mask = 0b001101000000000,
+		.value = 0b000100000000000,
+		.decode_func = arm_decode_ld_regs_literal,
+	},
 	{
 		.mask = 0b001101100000000,
 		.value = 0b001000000000000,
@@ -1350,6 +1401,43 @@ int arm_decode_ld_st_exclusive(u32 instr, enum insn_type *type,
 #undef LDLAR_64
 #undef LDAR_64
 
+int arm_decode_ld_regs_literal(u32 instr, enum insn_type *type,
+			       unsigned long *immediate,
+			       struct list_head *ops_list)
+{
+	unsigned char opc = 0, V = 0;
+	long pc_offset;
+	struct insn_loc *loc;
+
+	opc = (instr >> 30) & ONES(2);
+	V = EXTRACT_BIT(instr, 26);
+
+	if (((opc << 1) | V) == 0x7)
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+
+	pc_offset = instr & GENMASK(23, 5);
+
+	/* Sign extend and multiply by 4 */
+	pc_offset = (pc_offset << (64 - 23));
+	pc_offset = ((pc_offset >> (64 - 23)) >> 5) << 2;
+
+	loc = malloc(sizeof(*loc));
+	loc->sec = current_location.sec;
+	loc->offset = current_location.offset + pc_offset;
+	hash_add(text_constants, &loc->hnode, loc->offset);
+
+	/* 64-bit literal */
+	if (opc & 1) {
+		loc = malloc(sizeof(*loc));
+		loc->sec = current_location.sec;
+		loc->offset = current_location.offset + pc_offset + 4;
+		hash_add(text_constants, &loc->hnode, loc->offset);
+	}
+
+	*type = INSN_OTHER;
+	return 0;
+}
+
 int arm_decode_ld_st_regs_unsc_imm(u32 instr, enum insn_type *type,
 				   unsigned long *immediate,
 				   struct list_head *ops_list)
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index e6a62691b487..3ec4c69547ac 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -112,6 +112,9 @@ int arm_decode_ld_st_mem_tags(u32 instr, enum insn_type *type,
 int arm_decode_ldapr_stlr_unsc_imm(u32 instr, enum insn_type *type,
 				   unsigned long *immediate,
 				   struct list_head *ops_list);
+int arm_decode_ld_regs_literal(u32 instr, enum insn_type *type,
+			       unsigned long *immediate,
+			       struct list_head *ops_list);
 int arm_decode_ld_st_noalloc_pair_off(u32 instr, enum insn_type *type,
 				      unsigned long *immediate,
 				      struct list_head *ops_list);
diff --git a/tools/objtool/arch/x86/decode.c b/tools/objtool/arch/x86/decode.c
index 650e5d021486..57a5f817a63c 100644
--- a/tools/objtool/arch/x86/decode.c
+++ b/tools/objtool/arch/x86/decode.c
@@ -497,6 +497,11 @@ int arch_decode_instruction(struct elf *elf, struct section *sec,
 	return 0;
 }
 
+int arch_post_process_file(struct objtool_file *file)
+{
+	return 0;
+}
+
 void arch_initial_func_cfi_state(struct cfi_state *state)
 {
 	int i;
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 52a8e64e15ca..e0c6bda261c8 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -279,6 +279,9 @@ static int decode_instructions(struct objtool_file *file)
 		}
 	}
 
+	if (arch_post_process_file(file))
+		return -1;
+
 	return 0;
 
 err:
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
