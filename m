Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8AA135E08
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:18:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xli3ncsd5B+z1Xx9iWDNwqGz/eMb/QX3yCGSHpQ61tI=; b=DrMMZqRkj5g/NY
	Je2CXDIeM52oRa6gJLex0aL+kI6nzyVOJhO2cLkI7Q757Euw2eu+/hv738+MWwhtTMzJw/+KkbEHE
	lbJOvLcREUZMh+2E3WrwdvS5YGZ77PEpCIpQSHMHqyytwljJvOgrZRbaQPkaY672xTT3XTD52GIm3
	8lKrGr38RHTCfm8SJX5WhvvbPqR+a7Ii2zaRPArnUbVOlRcmzB4+DovOSV8yZ9U16PkrSf3GGi3s+
	ScRltNR7LRkcH9y7fk/QXrp9Ejq4SUQ4AhiW51nGcImmS7syOiaRe08eUWjtwyRIcyvnZXhY1YUQ0
	QmAGSEeWz9rDZ2o7reYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaVf-00043D-1d; Thu, 09 Jan 2020 16:18:11 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaMB-0001Lk-1t
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:08:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586101;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LYNlKLmqsbZC/fAq3Wq7DT2fo1/NaEEPL9lYjtLxQgw=;
 b=QajPWRSggc3IT4+RY/YyjvuAjndalagEtT1LftR51lhQHXIWMiOOYN61BCstD6D5e2o1cY
 e6SQLu5ph6RvWcCYtOugqDJZ6OyIxBtEmh/BERpbjja6IUYJeLqcLHSo8avWHqW2C1FRuK
 9WGjB+MZqE7HX8RLYlgVOLypzD1Ug88=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-382-sg9u4Zg_MxafI5dIkpLfuQ-1; Thu, 09 Jan 2020 11:08:17 -0500
Received: by mail-wr1-f71.google.com with SMTP id d8so3037436wrq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:08:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZBv8vu7vm5b/St4SQhnQrbm+mPlTxzkdMK/VqAAC9ps=;
 b=LSgNxv485meHfU70kL793IzcAANH9SIX30DLjuupVbOMtS16A1CBPH9aFvW4wMuHXZ
 XB/KxKzjcFI+vrCFRX6QoDLdJDVVarUcD/B9Pya1ockuPCW7fbTbSyr1f9plQ0w27RlX
 tMEsNiUnFfIFJvBVM9fSbS9fr2G/O88AFE2qBPUkI6umAzJ63VCLVB9K4820m2vJ6UUO
 j6tX2iEO9nhSKG9XhyxK+F/bVCVSKOBvB791UmGYVFclCgTHlZFsZIuFTgwIB6OqhsRg
 YHJn+bl0n3zkX77Mb07XRgZrEWMU1aGmAGnoQdBYDE/TOC/AokeVOd5Y59+dbY52uUE4
 VJ7Q==
X-Gm-Message-State: APjAAAXQ/6IZMiEzonXrMzYzUxhtl3VuysDHLdC0dGcYHgl26EOwDn40
 SVF/mOBZRTAKvCv3ND1DHX5Ha7d7wb2uhCfvqh9Z93jCX6UWIroZRu/00Rcg7BK6VQssub6w4xh
 F+h2f+98ANZ36g+wRX5iUS3VZAxm5uiBc7rE=
X-Received: by 2002:a1c:7d8b:: with SMTP id y133mr5553858wmc.165.1578586096235; 
 Thu, 09 Jan 2020 08:08:16 -0800 (PST)
X-Google-Smtp-Source: APXvYqzEpPRHZehtfPC+YY7nOMjooKnEIZisD06WTX2HlS6iQAPTRamE7Xul8iV+xsBwYHmGFnVQRw==
X-Received: by 2002:a1c:7d8b:: with SMTP id y133mr5553822wmc.165.1578586095790; 
 Thu, 09 Jan 2020 08:08:15 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id m10sm8562605wrx.19.2020.01.09.08.08.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:08:15 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 40/57] objtool: arm64: Decode register data processing
 instructions
Date: Thu,  9 Jan 2020 16:02:43 +0000
Message-Id: <20200109160300.26150-41-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: sg9u4Zg_MxafI5dIkpLfuQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080823_305972_2A63CEC0 
X-CRM114-Status: GOOD (  10.17  )
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

Decode data processing instructions with more than one register as
input operand.
Due to these multiple register inputs, objtool cannot rely on those
instructions to track the CFA state. Luckily, the compiler does not tend
to generate these instructions to modify the stack or frame pointer.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 471 ++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |  42 ++
 2 files changed, 513 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index aed8ba0f812e..bb1ba3b0997f 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -128,10 +128,12 @@ static arm_decode_class aarch64_insn_class_decode_table[NR_INSN_CLASS] = {
 	[INSN_UNKNOWN]			= arm_decode_unknown,
 	[INSN_UNALLOC]			= arm_decode_unknown,
 	[INSN_LD_ST_4]			= arm_decode_ld_st,
+	[INSN_DP_REG_5]			= arm_decode_dp_reg,
 	[INSN_LD_ST_6]			= arm_decode_ld_st,
 	[0b1000 ... INSN_DP_IMM]	= arm_decode_dp_imm,
 	[0b1010 ... INSN_SYS_BRANCH]	= arm_decode_br_sys,
 	[INSN_LD_ST_C]			= arm_decode_ld_st,
+	[INSN_DP_REG_D]			= arm_decode_dp_reg,
 	[INSN_LD_ST_E]			= arm_decode_ld_st,
 };
 
@@ -2275,3 +2277,472 @@ int arm_decode_ld_st_mem_tags(u32 instr, enum insn_type *type,
 
 	return -1;
 }
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
+int arm_decode_dp_reg(u32 instr, enum insn_type *type,
+		      unsigned long *immediate, struct list_head *ops_list)
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
+							immediate, ops_list);
+		}
+	}
+	return arm_decode_unknown(instr, type, immediate, ops_list);
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
+int arm_decode_dp_reg_2src(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
+{
+	unsigned char sf = 0, S = 0, opcode = 0;
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
+			return arm_decode_unknown(instr, type, immediate,
+						  ops_list);
+		}
+	}
+
+	*type = INSN_OTHER;
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
+int arm_decode_dp_reg_1src(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
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
+			return arm_decode_unknown(instr, type, immediate,
+						  ops_list);
+		}
+	}
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_logi(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
+{
+	unsigned char sf = 0, imm6 = 0;
+
+	sf = EXTRACT_BIT(instr, 31);
+	imm6 = (instr >> 10) & ONES(6);
+
+	if (imm6 >= 0b100000 && !sf)
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_adds(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
+{
+	unsigned char sf = 0, shift = 0, imm6 = 0;
+
+	sf = EXTRACT_BIT(instr, 31);
+	shift = (instr >> 22) & ONES(2);
+	imm6 = (instr >> 10) & ONES(6);
+
+	if ((imm6 >= 0b100000 && !sf) || shift == 0b11)
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_adde(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
+{
+	unsigned char opt = 0, imm3 = 0;
+
+	opt = (instr >> 22) & ONES(2);
+	imm3 = (instr >> 10) & ONES(3);
+
+	if (opt != 0 || imm3 >= 0b101)
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_addc(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
+{
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_rota(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
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
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_eval(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
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
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+	}
+
+	*type = INSN_OTHER;
+	return 0;
+#undef DP_EVAL_SETF_1
+#undef DP_EVAL_SETF_2
+}
+
+int arm_decode_dp_reg_cmpr(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
+{
+	unsigned char S = 0, o2 = 0, o3 = 0;
+
+	S = EXTRACT_BIT(instr, 29);
+	o2 = EXTRACT_BIT(instr, 10);
+	o3 = EXTRACT_BIT(instr, 4);
+
+	if (!S || o2 || o3)
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_csel(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
+{
+	unsigned char S = 0, op2 = 0;
+
+	S = EXTRACT_BIT(instr, 29);
+	op2 = (instr >> 10) & ONES(2);
+
+	if (S || op2 >= 0b10)
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_dp_reg_cmpi(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
+{
+	return arm_decode_dp_reg_cmpr(instr, type, immediate, ops_list);
+}
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
+int arm_decode_dp_reg_3src(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
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
+	for (i = 0; i < ARRAY_SIZE(dp_reg_3src_decoder); i++) {
+		if ((decode_field & dp_reg_3src_decoder[i].mask) ==
+		    dp_reg_3src_decoder[i].value) {
+			return arm_decode_unknown(instr, type, immediate,
+						  ops_list);
+		}
+	}
+
+	*type = INSN_OTHER;
+	return 0;
+}
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index 3ec4c69547ac..8fb2f2b7564f 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -14,6 +14,8 @@
 #define INSN_LD_ST_6	0b0110	//0bx1x0
 #define INSN_LD_ST_C	0b1100	//0bx1x0
 #define INSN_LD_ST_E	0b1110	//0bx1x0
+#define INSN_DP_REG_5	0b0101	//0bx101
+#define INSN_DP_REG_D	0b1101	//0bx101
 
 #define NR_INSN_CLASS	16
 #define INSN_CLASS(opcode)	(((opcode) >> 25) & (NR_INSN_CLASS - 1))
@@ -39,6 +41,8 @@ struct aarch64_insn_decoder {
 /* arm64 instruction classes */
 int arm_decode_dp_imm(u32 instr, enum insn_type *type,
 		      unsigned long *immediate, struct list_head *ops_list);
+int arm_decode_dp_reg(u32 instr, enum insn_type *type,
+		      unsigned long *immediate, struct list_head *ops_list);
 int arm_decode_br_sys(u32 instr, enum insn_type *type,
 		      unsigned long *immediate, struct list_head *ops_list);
 int arm_decode_ld_st(u32 instr, enum insn_type *type,
@@ -153,4 +157,42 @@ int arm_decode_ld_st_regs_unsigned(u32 instr, enum insn_type *type,
 int arm_decode_ld_st_exclusive(u32 instr, enum insn_type *type,
 			       unsigned long *immediate,
 			       struct list_head *ops_list);
+
+/* arm64 data processing -- registers instructions */
+int arm_decode_dp_reg_1src(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
+int arm_decode_dp_reg_2src(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
+int arm_decode_dp_reg_3src(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
+int arm_decode_dp_reg_adde(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
+int arm_decode_dp_reg_cmpi(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
+int arm_decode_dp_reg_eval(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
+int arm_decode_dp_reg_cmpr(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
+int arm_decode_dp_reg_rota(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
+int arm_decode_dp_reg_csel(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
+int arm_decode_dp_reg_addc(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
+int arm_decode_dp_reg_adds(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
+int arm_decode_dp_reg_logi(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
 #endif /* _ARM_INSN_DECODE_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
