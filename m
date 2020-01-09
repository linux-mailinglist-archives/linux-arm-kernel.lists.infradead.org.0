Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F4F135DE8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:14:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FXx8Aa/NKl61sOj6FREYWGlZWth9bGrork5vSg4QKD4=; b=qiG1py+SqcA2Gf
	zIrzTwEKOxPTPcn14rRQW7JawZFDnwyRCY8pcg8wz5EIPHG+pOo1hR+65TRNQEbY6GjMbn7UFdxzz
	vXh0S8xyMEMdHNMz7hVbcnzwq44ZfNIBteOWsg2ibA2iGbNUv62yiYfx5yiStOMn1gwSjWdXK68UX
	Gg5GHb1s072vRu9oUs81+eqjXw8Z+HgLydr01x8nzxP92o02DhItowp0ZfTezAOjsvJr2/PHwctxR
	xrx1QvTa2GDTQtbHMSv8BbIuw4tZjgs3poYv2ltCY3fvmIBDE+tDDU3GId9Ddcr2u+QC1xlphYF21
	NxtPeFMS0gGn5qvs7ILg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaSJ-0008Fv-6Q; Thu, 09 Jan 2020 16:14:43 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaKx-0000Bj-3u
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:07:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586025;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RM6BLLMvC70E0rK1309LlWSUO6CZiBbuWyXdyHITSkQ=;
 b=O7TFNl0LdMNGfw0+ZZfUIRdL+mfTA2EfYCsUxOD5zQM++mh7J0CP5S8Td8IZqx7PLOP+R3
 gBREXi2ZhPsff5FW6DrYC6CiYdwps3/no+bC5HYKjkU1hokLhVYWLRCAl8n1Fy/HiJl53F
 tyZYCNtnfFlKT8+g4e43e6CZUylgg2k=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-128-ORe9dzEZPeWW_gp44l0jxQ-1; Thu, 09 Jan 2020 11:07:03 -0500
Received: by mail-wr1-f72.google.com with SMTP id 90so3039554wrq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:07:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y8iVqwlPqx8D0v6wn+sNinncmvzZmA9bOrVw84GrFXg=;
 b=A3jBSCnexzQwgyaPpDJ6YNX6Y3aWs3D/3Ga9Oe4pCBm118FhN2UVKv91Ox1s6WkEOI
 1es5AcDvJHANwK10iUWZLZ2IOlxGNS2zalD01zb8sAmhdXl6997XI/gsFaykdnYlO+2P
 8sIbrI+ez+eS9UW0nqCgyrS2a2j04+WLc3BW+zJToMZkDDS0o3ynq0AEdIhCYg3f03d4
 i7i8hm6DD5E7O3Sv/w3CjRVMfJUdG11y182lIpsYi85TQTmKPav1D8P6swETcNF15o7X
 aMYoDurIb3EbUD221z8zhopycD4ahMlnppxiWtTAUbbk5gW1v4TB3WZ6RoOj6tbr8Xh4
 8oTA==
X-Gm-Message-State: APjAAAV8IBo568q3VIYf/C1qoVHx483XNlF7o4vUH28NbtTVyIwDQrHN
 YvikekV4E+MvrNr4iecTWyEDSOyv+3mZ288UmUgryvVg9GEGKKFICZsdnYT0ZmyZfogwe10rxyX
 K+DyE1B469EO1GsXGD3ZEXH59kbrUpymOGTM=
X-Received: by 2002:adf:fd43:: with SMTP id h3mr11468142wrs.169.1578586022090; 
 Thu, 09 Jan 2020 08:07:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqwUxQHjrf4FRdDbNfOTNXug87kNQAURNGlHTw3u5DPgWcuL7CdH67/0NDbY/vvhci1xsXh2QA==
X-Received: by 2002:adf:fd43:: with SMTP id h3mr11468101wrs.169.1578586021736; 
 Thu, 09 Jan 2020 08:07:01 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id q3sm9123252wrn.33.2020.01.09.08.07.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:07:01 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 32/57] objtool: arm64: Decode load/store register pair
 instructions
Date: Thu,  9 Jan 2020 16:02:35 +0000
Message-Id: <20200109160300.26150-33-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: ORe9dzEZPeWW_gp44l0jxQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080707_257437_5BF29913 
X-CRM114-Status: GOOD (  11.24  )
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

Decode load/store instruction to a pair of registers. Split the
instruction into two stack operations, one for each register.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 220 ++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |  12 +
 2 files changed, 232 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 00d5d627af08..2aaac4e3786c 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -810,6 +810,26 @@ int arm_decode_br_uncond_reg(u32 instr, enum insn_type *type,
 #undef INSN_DRPS_MASK
 
 static struct aarch64_insn_decoder ld_st_decoder[] = {
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
 	{
 		.mask = 0b001101010000011,
 		.value = 0b001100000000000,
@@ -1234,3 +1254,203 @@ int arm_decode_ld_st_regs_off(u32 instr, enum insn_type *type,
 
 	return 0;
 }
+
+int arm_decode_ld_st_noalloc_pair_off(u32 instr, enum insn_type *type,
+				      unsigned long *immediate,
+				      struct list_head *ops_list)
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
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+	}
+	return arm_decode_ld_st_regs_pair_off(instr, type, immediate, ops_list);
+}
+
+int arm_decode_ld_st_regs_pair_off(u32 instr, enum insn_type *type,
+				   unsigned long *immediate,
+				   struct list_head *ops_list)
+{
+	unsigned char opc = 0, V = 0, L = 0, bit = 0;
+	unsigned char imm7 = 0, rt2 = 0, rt = 0, rn = 0;
+	unsigned char decode_field = 0;
+	struct stack_op *op;
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
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+
+	*immediate = (SIGN_EXTEND(imm7, 7)) << scale;
+
+	if (!stack_related_reg(rn)) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+
+	*type = INSN_STACK;
+
+	op = calloc(1, sizeof(*op));
+	list_add_tail(&op->list, ops_list);
+	switch (decode_field) {
+	case 1:
+	case 3:
+	case 5:
+	case 7:
+	case 9:
+	case 11:
+		/* load */
+		op->src.type = OP_SRC_REG_INDIRECT;
+		op->src.reg = rn;
+		op->src.offset = *immediate;
+		op->dest.type = OP_DEST_REG;
+		op->dest.reg = rt;
+		op->dest.offset = 0;
+		{
+			struct stack_op *extra;
+
+			extra = malloc(sizeof(*extra));
+			extra->src.type = OP_SRC_REG_INDIRECT;
+			extra->src.reg = rn;
+			extra->src.offset = (int)*immediate + 8;
+			extra->dest.type = OP_DEST_REG;
+			extra->dest.reg = rt2;
+			extra->dest.offset = 0;
+
+			list_add_tail(&extra->list, ops_list);
+		}
+		break;
+	default:
+		op->dest.type = OP_DEST_REG_INDIRECT;
+		op->dest.reg = rn;
+		op->dest.offset = (int)*immediate + 8;
+		op->src.type = OP_SRC_REG;
+		op->src.reg = rt2;
+		op->src.offset = 0;
+		{
+			struct stack_op *extra;
+
+			extra = malloc(sizeof(*extra));
+			extra->dest.type = OP_DEST_REG_INDIRECT;
+			extra->dest.reg = rn;
+			extra->dest.offset = *immediate;
+			extra->src.type = OP_SRC_REG;
+			extra->src.reg = rt;
+			extra->src.offset = 0;
+
+			list_add_tail(&extra->list, ops_list);
+		}
+		/* store */
+	}
+	return 0;
+}
+
+int arm_decode_ld_st_regs_pair_post(u32 instr, enum insn_type *type,
+				    unsigned long *immediate,
+				    struct list_head *ops_list)
+{
+	int ret = 0;
+	unsigned int base_reg;
+	bool base_is_src;
+	struct stack_op *op;
+	struct stack_op *post_inc;
+
+	ret = arm_decode_ld_st_regs_pair_off(instr, type, immediate, ops_list);
+	if (ret < 0 || *type == INSN_OTHER)
+		return ret;
+
+	op = list_first_entry(ops_list, typeof(*op), list);
+	if (op->dest.type == OP_DEST_REG_INDIRECT) {
+		base_reg = op->dest.reg;
+		base_is_src = false;
+	} else if (op->src.type == OP_SRC_REG_INDIRECT) {
+		base_reg = op->src.reg;
+		base_is_src = true;
+	} else {
+		WARN("Unexpected base type");
+		return -1;
+	}
+
+	post_inc = malloc(sizeof(*post_inc));
+	post_inc->dest.type = OP_DEST_REG;
+	post_inc->dest.reg = base_reg;
+	post_inc->src.reg = base_reg;
+	post_inc->src.type = OP_SRC_ADD;
+	post_inc->src.offset = (int)*immediate;
+
+	/* Adapt offsets */
+	list_for_each_entry(op, ops_list, list) {
+		if (!base_is_src)
+			op->dest.offset -= post_inc->src.offset;
+		else
+			op->src.offset -= post_inc->src.offset;
+	}
+	list_add_tail(&post_inc->list, ops_list);
+
+	return ret;
+}
+
+int arm_decode_ld_st_regs_pair_pre(u32 instr, enum insn_type *type,
+				   unsigned long *immediate,
+				   struct list_head *ops_list)
+{
+	int ret = 0;
+	unsigned int base_reg;
+	bool base_is_src;
+	struct stack_op *op;
+	struct stack_op *pre_inc;
+
+	ret = arm_decode_ld_st_regs_pair_off(instr, type, immediate, ops_list);
+	if (ret < 0 || *type == INSN_OTHER)
+		return ret;
+
+	op = list_first_entry(ops_list, typeof(*op), list);
+	if (op->dest.type == OP_DEST_REG_INDIRECT) {
+		base_reg = op->dest.reg;
+		base_is_src = false;
+	} else if (op->src.type == OP_SRC_REG_INDIRECT) {
+		base_reg = op->src.reg;
+		base_is_src = true;
+	} else {
+		WARN("Unexpected base type");
+		return -1;
+	}
+
+	pre_inc = malloc(sizeof(*pre_inc));
+	pre_inc->dest.type = OP_DEST_REG;
+	pre_inc->dest.reg = base_reg;
+	pre_inc->src.type = OP_SRC_ADD;
+	pre_inc->src.reg = base_reg;
+	pre_inc->src.offset = (int)*immediate;
+
+	/* Adapt offsets */
+	list_for_each_entry(op, ops_list, list) {
+		if (!base_is_src)
+			op->dest.offset -= pre_inc->src.offset;
+		else
+			op->src.offset -= pre_inc->src.offset;
+	}
+	list_add(&pre_inc->list, ops_list);
+
+	return 0;
+}
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index 9043ca6f6708..caeb40942b18 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -94,6 +94,18 @@ int arm_decode_br_uncond_reg(u32 instr, enum insn_type *type,
 			     struct list_head *ops_list);
 
 /* arm64 load/store instructions */
+int arm_decode_ld_st_noalloc_pair_off(u32 instr, enum insn_type *type,
+				      unsigned long *immediate,
+				      struct list_head *ops_list);
+int arm_decode_ld_st_regs_pair_post(u32 instr, enum insn_type *type,
+				    unsigned long *immediate,
+				    struct list_head *ops_list);
+int arm_decode_ld_st_regs_pair_off(u32 instr, enum insn_type *type,
+				   unsigned long *immediate,
+				   struct list_head *ops_list);
+int arm_decode_ld_st_regs_pair_pre(u32 instr, enum insn_type *type,
+				   unsigned long *immediate,
+				   struct list_head *ops_list);
 int arm_decode_ld_st_regs_unsc_imm(u32 instr, enum insn_type *type,
 				   unsigned long *immediate,
 				   struct list_head *ops_list);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
