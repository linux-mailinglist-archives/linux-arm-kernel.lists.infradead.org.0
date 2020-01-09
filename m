Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2956A135DC9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N47q+7ScfY6PzdDZi1JFAi6LCHbDCZgAArvE8akYjUc=; b=aZNmzKfYc+6yh7
	GjSnA088QCJedC5OD1YxwKZlbliXAr89rAy9Od+do/vzSUY9J7OW3UrPNSSd5/c1Wo/K85pMTBE2v
	u9seh5Sw5yLsDifyCLPZcmXcTi311pGAFnl7LrFyzpb75dxFX8Scy9qSdZkXqIouDUJOMaxTsN7Cz
	n7QBVCboq0mm6s8PWbjydAWm0uLctvEwmrpjrQdBvfXb8K49ZBchVlYVGn7L1stCzs9aANhMgog0i
	gbtJFHBOYASrUZPYJDHVT00q8b6mSnlnUtezJgTjdg4+LDg+gaEYwRCEkI35Ht6pfe5maiWxjtFMJ
	MQrHAbPC89+HeMOMvUiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaO4-0002wo-IM; Thu, 09 Jan 2020 16:10:20 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaJh-0007QV-9O
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:05:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585948;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fwhd4eMW5xT1uOj12IsTbmrRU4eJvKckHGPYXpmJi9M=;
 b=JGuMHDsSklT0F+ECo5L4uDtcHhkGmRgB5B8vtziTcP+aQ7iiSRV7fPAiuhEEAyXl0QwNJF
 VMRZ6Qn/48w1g5yMa/pgfXnpP5WBOcs7p6Wkg0IwEgDPec4KYLEdJrdb4yt6c2MY9gERTJ
 /0A32mNKBVNM084ZUvGhVk0S3B5ioqs=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-MnW3eAR1MZ6ldr5I44v7uw-1; Thu, 09 Jan 2020 11:05:46 -0500
Received: by mail-wm1-f71.google.com with SMTP id t16so1099222wmt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:05:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XV84s1d1LXARfGRI5XvwgmL153zgl5bEcSpec4trBAU=;
 b=O+upgnFmYGV4xfpxBnaBDYCuzD3QRuWzaNx7Wv2MigZNgk9djn7pIajJh1eTKayJeb
 Gik3jC4z+0z5vM4UWaylEixDoGrBughlBY+X/smidDFRdWq0BCo2R8aH9pAktElnHWfG
 MljDWoC+uD8KRNBqiuV0qAFY5/t7yxUAR7HDRp9rVxk5flQMPlBWTEBSCJSg64T4o0R4
 vQ4k5uUb1K01nsih8UiVnL7AEJVH16OKhNpL27rosq2jkK/0YDI/siM78hMeo+0ARkZy
 kUUALe/igAFZncIuCxRJH5Ope1GU7htG2gKa1+kr3Iyp420e6indQzLtcEw3QhXbvlW1
 1moA==
X-Gm-Message-State: APjAAAWhqZXJPDPguSA3oSElwJoWT6XmVYG+hqybsV5g/eNvfwjgFJDr
 H9ANRyw5/1QWp2YM/y06N0n859VYl3b9MYSQyvPEoZa3Hah3arJAK9vv7viC5E0pwhEegV9oMRU
 WA8ApGFDMMQTwfRvkvRP90au9frcLmPKTWvg=
X-Received: by 2002:adf:ef92:: with SMTP id d18mr11387507wro.234.1578585945685; 
 Thu, 09 Jan 2020 08:05:45 -0800 (PST)
X-Google-Smtp-Source: APXvYqyzfegkeI1UxER55TgVqDuAMftZI6GF0dVFGZz86ZmeW75YjI/CiYezeaVwYmkistCPIOFlkQ==
X-Received: by 2002:adf:ef92:: with SMTP id d18mr11387478wro.234.1578585945448; 
 Thu, 09 Jan 2020 08:05:45 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id a16sm8545544wrt.37.2020.01.09.08.05.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:05:44 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 22/57] objtool: arm64: Decode add/sub immediate instructions
Date: Thu,  9 Jan 2020 16:02:25 +0000
Message-Id: <20200109160300.26150-23-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: MnW3eAR1MZ6ldr5I44v7uw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080549_411464_BA409952 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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

Decode instruction adding immediates to registers. Create stack
operation for instructions interacting with the stack pointer or the
frame pointer.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 84 +++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |  7 ++
 2 files changed, 91 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 6c8db9335fc9..d240f29a2390 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -13,6 +13,11 @@
 #include "../../elf.h"
 #include "../../warn.h"
 
+static bool stack_related_reg(int reg)
+{
+	return reg == CFI_SP || reg == CFI_BP;
+}
+
 bool arch_callee_saved_reg(unsigned char reg)
 {
 	switch (reg) {
@@ -153,6 +158,8 @@ int arm_decode_unknown(u32 instr, enum insn_type *type,
 
 static arm_decode_class aarch64_insn_dp_imm_decode_table[NR_DP_IMM_SUBCLASS] = {
 	[0 ... INSN_PCREL]	= arm_decode_pcrel,
+	[INSN_ADD_SUB]		= arm_decode_add_sub,
+	[INSN_ADD_TAG]		= arm_decode_add_sub_tags,
 	[INSN_MOVE_WIDE]	= arm_decode_move_wide,
 	[INSN_BITFIELD]		= arm_decode_bitfield,
 	[INSN_EXTRACT]		= arm_decode_extract,
@@ -189,6 +196,83 @@ int arm_decode_pcrel(u32 instr, enum insn_type *type,
 	return 0;
 }
 
+int arm_decode_add_sub(u32 instr, enum insn_type *type,
+		       unsigned long *immediate, struct list_head *ops_list)
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
+	if (rd == CFI_BP || (!S && rd == CFI_SP) || stack_related_reg(rn)) {
+		struct stack_op *op;
+
+		*type = INSN_STACK;
+
+		op = calloc(1, sizeof(*op));
+		list_add_tail(&op->list, ops_list);
+
+		op->dest.type = OP_DEST_REG;
+		op->dest.offset = 0;
+		op->dest.reg = rd;
+		op->src.type = OP_SRC_ADD;
+		op->src.offset = op_bit ? -1 * imm : imm;
+		op->src.reg = rn;
+	}
+	return 0;
+}
+
+int arm_decode_add_sub_tags(u32 instr, enum insn_type *type,
+			    unsigned long *immediate,
+			    struct list_head *ops_list)
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
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+
+#undef ADDG_DECODE
+#undef SUBG_DECODE
+
+	if (stack_related_reg(rd)) {
+		struct stack_op *op;
+
+		*type = INSN_STACK;
+
+		op = calloc(1, sizeof(*op));
+		list_add_tail(&op->list, ops_list);
+
+		op->dest.type = OP_DEST_REG;
+		op->dest.offset = 0;
+		op->dest.reg = rd;
+		op->src.type = OP_SRC_ADD;
+		op->src.offset = 0;
+		op->src.reg = rn;
+	}
+
+	return 0;
+}
+
 int arm_decode_move_wide(u32 instr, enum insn_type *type,
 			 unsigned long *immediate, struct list_head *ops_list)
 {
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index 06235d81300c..65e60b293a07 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -14,6 +14,8 @@
 #define INSN_CLASS(opcode)	(((opcode) >> 25) & (NR_INSN_CLASS - 1))
 
 #define INSN_PCREL	0b001	//0b00x
+#define INSN_ADD_SUB	0b010
+#define INSN_ADD_TAG	0b011
 #define INSN_MOVE_WIDE	0b101
 #define INSN_BITFIELD	0b110
 #define INSN_EXTRACT	0b111
@@ -31,6 +33,11 @@ int arm_decode_unknown(u32 instr, enum insn_type *type,
 /* arm64 data processing -- immediate subclasses */
 int arm_decode_pcrel(u32 instr, enum insn_type *type,
 		     unsigned long *immediate, struct list_head *ops_list);
+int arm_decode_add_sub(u32 instr, enum insn_type *type,
+		       unsigned long *immediate, struct list_head *ops_list);
+int arm_decode_add_sub_tags(u32 instr, enum insn_type *type,
+			    unsigned long *immediate,
+			    struct list_head *ops_list);
 int arm_decode_move_wide(u32 instr, enum insn_type *type,
 			 unsigned long *immediate, struct list_head *ops_list);
 int arm_decode_bitfield(u32 instr, enum insn_type *type,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
