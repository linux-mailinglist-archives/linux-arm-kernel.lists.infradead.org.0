Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFCF135DCA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:10:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qwDwLSBBCvOxsJZ4IwcMRhoPHSMinb0dfIKuf5fE2Q=; b=fjnLo0jivkyJ3M
	urCzWXi/euElLBa4JWmno6bF7aRBF29Ip2AsK9HN4qb8P3EYqbUpMYX1iTTjYVNosYaFbsOvBbgmj
	OxZxWwUO4nB/+x+72wnjqHnPbx1sOgn0R5gMgbeWL9pR1JknBI4RaxmO3W5OKDXPi8z3vUi2WFLpv
	Ta/CGkgTZ2O8biP9tbpGFhr+Ga8LUsdQTTTLAXR+kmICHKEH/cJCutX1Mtel9dYNxxvvE+rylQ6XP
	RO+qVCfIUOvJPPbOoCceHf/ErYO5Kc8kcVNuOzXRIocnqN1pGZv+vPvBGJwAXu+3G0V48tv1emItp
	ofX8exqYs4/yqXqikBQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaOP-0004e6-C8; Thu, 09 Jan 2020 16:10:41 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaJi-0007SO-FV
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585949;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bOnboSSDhCNbDvDrRcBVcUTor/1d2iJyZ3x1lH8gG70=;
 b=d6+JTYnZIT1JCXYMcHGDIoszTCvOpFTYnQAPvSMsR2pumptUDaWTk1/imHVY4YvLsElca/
 /qipxJ2ldNJhDe10auPDsUQt3EkONs1HoHSPT66+zgO2eE1sSWZQu0fieBtdkMpPVCiu6n
 FRzy7nE182bkMigqP4H8ard3MFZi4XU=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-215-K22vHRlePwea3mPZL3Jo_Q-1; Thu, 09 Jan 2020 11:05:48 -0500
Received: by mail-wm1-f71.google.com with SMTP id t16so1099251wmt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:05:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dq52D+PjqCb5lmkvaEi43/GUeI+ylqf3UQ4Yjnbg3l0=;
 b=Bw3u4P+SUq/3nhmjH8UJ06+2/kwmJnOfqricNu4o24xfyAXbZlCwNIhrqoEDYoZ+Xs
 dpg2dsgZsF5uHEtHYnDm62WQMvuZxRV40aG4geYBjhRKqXAJ0zVxwLCBPymmw7bcD4c9
 +ixK2TNIaQ0PM+YiJM0TXCeOm7maSBkpW5u59KVZqpZnZXmxv88Y7gJuLe4USMaFNWMc
 zPSvMQ9AwCf6KSRcaorgEMtDFOGdV5DQ4B5eqHa+8TxhEV+UxFa8N2jHN0eDlFuNZE+P
 GA/P0RcM5nN6dJ1m1uwHHnoJ7e6R20KSVjsqe/ST+wHFvOvkDQFFHTnm0fxl1AB7NnDr
 Wkaw==
X-Gm-Message-State: APjAAAW5maIt/fYv4QR2W0N/0DHocmsheipZE//j2MOfJOx6oVzfmfrL
 nTDQM2zIJZT1QG0WC+uEKFM7u8/kEmpqnM0x6wjP07MJLgP6UFkJweRHtzed6ieCh85+v+5dIIR
 /RYoYRh/QbSYq0J4Mlk8C3YGrNp4YRYTmAdU=
X-Received: by 2002:a5d:6b03:: with SMTP id v3mr11849276wrw.289.1578585947048; 
 Thu, 09 Jan 2020 08:05:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqwP9x68/cDeC19G8Csd5FQdYjLlYnXYaw7fp3/2NsvZJnBVV02K8nlocIVVAnRTR5wkU2nCEA==
X-Received: by 2002:a5d:6b03:: with SMTP id v3mr11849244wrw.289.1578585946797; 
 Thu, 09 Jan 2020 08:05:46 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id a16sm8545544wrt.37.2020.01.09.08.05.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:05:46 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 23/57] objtool: arm64: Decode logical data processing
 instructions
Date: Thu,  9 Jan 2020 16:02:26 +0000
Message-Id: <20200109160300.26150-24-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: K22vHRlePwea3mPZL3Jo_Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080550_622103_2D610A18 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
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

Decode instructions performing logical operations with immediate values.
Create a stack operation for and operation targeting the stack pointer.

Since OP_SRC_AND assumes the source and destination register are the same,
add a register assignment operation when the source operand of the logical
instruction is not the stack pointer.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 58 +++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |  3 +
 2 files changed, 61 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index d240f29a2390..a30c3294cc21 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -160,6 +160,7 @@ static arm_decode_class aarch64_insn_dp_imm_decode_table[NR_DP_IMM_SUBCLASS] = {
 	[0 ... INSN_PCREL]	= arm_decode_pcrel,
 	[INSN_ADD_SUB]		= arm_decode_add_sub,
 	[INSN_ADD_TAG]		= arm_decode_add_sub_tags,
+	[INSN_LOGICAL]		= arm_decode_logical,
 	[INSN_MOVE_WIDE]	= arm_decode_move_wide,
 	[INSN_BITFIELD]		= arm_decode_bitfield,
 	[INSN_EXTRACT]		= arm_decode_extract,
@@ -273,6 +274,63 @@ int arm_decode_add_sub_tags(u32 instr, enum insn_type *type,
 	return 0;
 }
 
+int arm_decode_logical(u32 instr, enum insn_type *type,
+		       unsigned long *immediate, struct list_head *ops_list)
+{
+	unsigned char sf = 0, opc = 0, N = 0;
+	unsigned char imms = 0, immr = 0, rn = 0, rd = 0;
+	struct stack_op *op;
+
+	rd = instr & ONES(5);
+	rn = (instr >> 5) & ONES(5);
+
+	imms = (instr >> 10) & ONES(6);
+	immr = (instr >> 16) & ONES(6);
+
+	N = EXTRACT_BIT(instr, 22);
+	opc = (instr >> 29) & ONES(2);
+	sf = EXTRACT_BIT(instr, 31);
+
+	if (N == 1 && sf == 0)
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+
+	*type = INSN_OTHER;
+	*immediate = (decode_bit_masks(N, imms, immr, true) >> 64);
+
+	if (opc & 1)
+		return 0;
+
+	if (rd != CFI_SP)
+		return 0;
+
+	*type = INSN_STACK;
+
+	if (rn != CFI_SP) {
+		op = calloc(1, sizeof(*op));
+		list_add_tail(&op->list, ops_list);
+
+		op->dest.type = OP_DEST_REG;
+		op->dest.offset = 0;
+		op->dest.reg = rd;
+		op->src.type = OP_SRC_REG;
+		op->src.offset = 0;
+		op->src.reg = rn;
+	}
+
+	op = calloc(1, sizeof(*op));
+	list_add_tail(&op->list, ops_list);
+
+	op->dest.type = OP_DEST_REG;
+	op->dest.offset = 0;
+	op->dest.reg = rd;
+
+	op->src.type = OP_SRC_AND;
+	op->src.offset = 0;
+	op->src.reg = rd;
+
+	return 0;
+}
+
 int arm_decode_move_wide(u32 instr, enum insn_type *type,
 			 unsigned long *immediate, struct list_head *ops_list)
 {
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index 65e60b293a07..6f68e8887cdb 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -16,6 +16,7 @@
 #define INSN_PCREL	0b001	//0b00x
 #define INSN_ADD_SUB	0b010
 #define INSN_ADD_TAG	0b011
+#define INSN_LOGICAL	0b100
 #define INSN_MOVE_WIDE	0b101
 #define INSN_BITFIELD	0b110
 #define INSN_EXTRACT	0b111
@@ -38,6 +39,8 @@ int arm_decode_add_sub(u32 instr, enum insn_type *type,
 int arm_decode_add_sub_tags(u32 instr, enum insn_type *type,
 			    unsigned long *immediate,
 			    struct list_head *ops_list);
+int arm_decode_logical(u32 instr, enum insn_type *type,
+		       unsigned long *immediate, struct list_head *ops_list);
 int arm_decode_move_wide(u32 instr, enum insn_type *type,
 			 unsigned long *immediate, struct list_head *ops_list);
 int arm_decode_bitfield(u32 instr, enum insn_type *type,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
