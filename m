Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 067ED135DEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:16:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mkoMjpifis8nbNY7lHYnxpUQZpnXD/8Zj0W81uJgsc=; b=OOcbx7ExdvSzRV
	Wu3pKrzV8o+XD72fMkWO+a2w4ALU4QlbLIHpXWJGpyT8+5rcmdp52oIQyF88CAxxeXFbFJOxKOPog
	GnAJvirXKbgaD1X6soHRATTDUPVokamCUD0sqBV5LnvCOE+IF30+phjEVATf1qlHRenNyokGj42cR
	j11kGVtceWiWpFYdd1agV6QRAvaC6g+o6b5Oc6DLplsz7L6P1oepKoGCDKbsG70X2iiy8DWPXe5XX
	DuL/EgAYn56ET734q6I14o4Gto4wMeQj/af1DT9wqywY0EAjRAE7zKK1Er8UuPKQKMSjr9XySkHU/
	YeKL2B4HMkaipaGlo8aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaTY-0002Dj-EW; Thu, 09 Jan 2020 16:16:00 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaLW-0000gj-1q
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:07:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586060;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=093JoFjWWkSe13bupL/8/jGT/P9IkM6eHbU8krItibg=;
 b=XReg23jxsIKBR8sicjh2C3qO7w//T/J6mSRzmOBpVVOYt7uI7b4b1rCJYXkCZYHfoAStkW
 4cX3tfSQxIzK+ADy3bqXh8h8Oh1kERggscUicYPJ5c/CLc3TGtCwIlJDyP6DKgiqjOa7LV
 19SINWxJ5UvKwaacCgxHhZs+tUhJr5s=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-151-NrE9aRtIPJK_A7FMZetIjQ-1; Thu, 09 Jan 2020 11:07:39 -0500
Received: by mail-wr1-f71.google.com with SMTP id 90so3040115wrq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:07:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gehBuZsWTyS5GusQuL5RiDnS9qnv2i+e7pvi+x7gJHA=;
 b=nZs1S8ckVYxv3y0CjaChY9cjLOh1PBBK90WPDiuB1219ye+HNJeWPaH1bJc41O94v9
 WOwiZ+rUCV2CHIddfj9eOgCQgq8knVRP7oe3chv/JhuCFyn1FrliEd+TBzSlDMIQnhHl
 y4jjcSp+bbR0170iEg5BHIHNI1L0lzV1QaFXT2zjGyj+CLcIKMwC+CguKiqYoStTJ8pI
 fgAc2/m3rAnU05uwJBLoMeDXz5gfy4U5I+U/K0Ehe7MIIRmynpWc84iQu8dlS4JB40SV
 nn3sFHSq3YO9YO0PlD1bp2QhpCyuQcOY3FxM5lNKGhGQdSEfhl3o+kdUoKL22DCCNJa7
 ulWw==
X-Gm-Message-State: APjAAAXln2FYv17Jyr0J9EdjHnLbbOzvZqTqsj0xMhCQ4RnpU7ma+V5x
 nAT7EQXa1Tipt/ekLUyYJMv5/k9nfNalglrmyhFE2CD7dF+4rNkYJsGPyEpGVAVqW+jS+6+a9/n
 7BS7aYwwV++q519TrLCLPB0L0Rtw7qeOMJfc=
X-Received: by 2002:a1c:f001:: with SMTP id a1mr5483533wmb.76.1578586058550;
 Thu, 09 Jan 2020 08:07:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqwjD64xWcH+OF87TPinIqmOaTnoguN09GymLeZun31rI/KZftrppzQP03Apb2IWiqX3F1kkTA==
X-Received: by 2002:a1c:f001:: with SMTP id a1mr5483512wmb.76.1578586058385;
 Thu, 09 Jan 2020 08:07:38 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id h2sm8591413wrv.66.2020.01.09.08.07.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:07:37 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 36/57] objtool: arm64: Decode pointer auth load instructions
Date: Thu,  9 Jan 2020 16:02:39 +0000
Message-Id: <20200109160300.26150-37-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: NrE9aRtIPJK_A7FMZetIjQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080742_202460_517DC811 
X-CRM114-Status: GOOD (  10.14  )
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

Decode load/store instruction provided by the v8.3 pointer
authentication architecture extension.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 51 +++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |  3 ++
 2 files changed, 54 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 1897f62987fa..0bbbacd74e48 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -885,6 +885,11 @@ static struct aarch64_insn_decoder ld_st_decoder[] = {
 		.value = 0b001100010000010,
 		.decode_func = arm_decode_ld_st_regs_off,
 	},
+	{
+		.mask = 0b001101010000001,
+		.value = 0b001100010000001,
+		.decode_func = arm_decode_ld_st_regs_pac,
+	},
 	{
 		.mask = 0b001101000000000,
 		.value = 0b001101000000000,
@@ -1981,3 +1986,49 @@ int arm_decode_ld_st_regs_pair_pre(u32 instr, enum insn_type *type,
 
 	return 0;
 }
+
+int arm_decode_ld_st_regs_pac(u32 instr, enum insn_type *type,
+			      unsigned long *immediate,
+			      struct list_head *ops_list)
+{
+	unsigned char size = 0, V = 0, W = 0, S = 0;
+	unsigned char rn = 0, rt = 0;
+	struct stack_op *op;
+	u32 imm9 = 0, s10 = 0;
+
+	size = (instr >> 30) & ONES(2);
+	V = EXTRACT_BIT(instr, 26);
+	W = EXTRACT_BIT(instr, 11);
+
+	if (size != 3 || V == 1)
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+
+	rn = (instr >> 5) & ONES(5);
+
+	if (!stack_related_reg(rn)) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+
+	S = EXTRACT_BIT(instr, 22);
+	s10 = (S << 9) | imm9;
+
+	*type = INSN_STACK;
+
+	op = calloc(1, sizeof(*op));
+	list_add_tail(&op->list, ops_list);
+
+	op->dest.reg = rt;
+	op->dest.type = OP_DEST_REG;
+	op->dest.offset = 0;
+	op->src.offset = (SIGN_EXTEND(s10, 9) << 3);
+	if (W) { /* pre-indexed/writeback */
+		op->src.type = OP_SRC_POP;
+		op->src.reg = rn;
+	} else {
+		op->src.type = OP_SRC_REG_INDIRECT;
+		op->src.reg = rn;
+	}
+
+	return 0;
+}
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index 89488c5df5e9..d819d2e795a3 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -135,6 +135,9 @@ int arm_decode_atomic(u32 instr, enum insn_type *type,
 int arm_decode_ld_st_regs_off(u32 instr, enum insn_type *type,
 			      unsigned long *immediate,
 			      struct list_head *ops_list);
+int arm_decode_ld_st_regs_pac(u32 instr, enum insn_type *type,
+			      unsigned long *immediate,
+			      struct list_head *ops_list);
 int arm_decode_ld_st_regs_unsigned(u32 instr, enum insn_type *type,
 				   unsigned long *immediate,
 				   struct list_head *ops_list);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
