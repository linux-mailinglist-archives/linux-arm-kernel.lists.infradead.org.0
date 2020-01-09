Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE03135DEC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VV1gYYPmZ4Hd77h3Y0ZxlUnJ6Dp2x2qK0N50DnY1wdo=; b=sk5ETX7QPmKy5f
	64WXApEtcDEGE4N6YS5jfHDEYouG7OukG8Je/4Th5XEanN3oiDKTTOrSecmim63aOU4PxTLSDg3XP
	nB9LCgjPqjuy3UPixvCQRwE1/Rx9jSjMJvpiHKRMkQBfqx7X/B0DjG6lLTk3tK/Y0PTX7n76PCbc4
	hiLjIxI9hsqKgtRwq7FIwOM54wZQtFGqujW/JYVe/+bpui6ajsa2t4nvwPDlAggsDlc46/uPVyQ5G
	FFk+2ON4aaz1+8CABKWiNbBLq7gqLyyYurhhtbgglwOx2WsyGsNMmhGRRKnxJNDH941Px3x4XqVAB
	JNZ1voC9VvyAajXEpXfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaSv-0000Lf-K0; Thu, 09 Jan 2020 16:15:21 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaKz-0000F9-FQ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:07:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586028;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mL32uzZtS4A4WxOY9naPKxSGCWugpIBuatEE3CXVbYc=;
 b=AvSHZEUyn5C4i33XWzqADuIj6Upln0mn+jukacjxXvR/mrHzg9BbwR9B8yI1y3wYFhNMHd
 NClAg3TzIq3LoTWueX5FZyjBBHEq8ufQikpLK2oBllokYzKCEgM8pgHQn/MaWj4umWgmAu
 g/36K6ozYYxhp6jpTw0D8VWIst+y1YI=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-105-pDVe2TogPXyv4TYlsnqgVA-1; Thu, 09 Jan 2020 11:07:06 -0500
Received: by mail-wm1-f72.google.com with SMTP id c4so1094283wmb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:07:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Io3pe+yXhkH0XtVt81FPsOl3c54xtZQ9M8pNFcB3Jec=;
 b=T/GcxlfzPLyxZZXXR1DciDrtSeEVri5F9o2jlSmD2I2htiIv8gvTeKyEbqQUWfkp9d
 xGXGX+ihtDksfqJ6wGXn5qrZ+ChrurdWfsoC0KQXjYw8AFcOu71Eo7fqiCH2K4FBnkn1
 cIU2nF/TQIa1eX+H/mJxw2pvbEkXQ83VfDbkrYkfOMWjoFMD8ZLlu2QNo2W9DKfi9j0A
 ZtCMRWpcMdochkOdw/o0nqextJLBiyou6KWJ6cnGblOfh48t3lBVBSn1cUlRaEEsSVpT
 4OKq5D85SYmPjUGzondM2IAap/4of+xJ2wJiy7Grj0+YabMWbc0BiT0tZk9WNnnw8STq
 h7jQ==
X-Gm-Message-State: APjAAAWuyPx41g8nN3DCyGkMTuDl8lTPDDYmZ/U+MQhHgjpvZ1/Lfo+O
 BkBRZ5hXCkyBbfHFTsnoMB51kGtbip5+Diytk+/eq5IeTFablTfKUckZOznP/H1tDQ7V581HSlj
 bVpW9yW/eRL262F78BKvBNCj5CZ4CZjPQGOA=
X-Received: by 2002:a5d:5273:: with SMTP id l19mr12042235wrc.175.1578586024905; 
 Thu, 09 Jan 2020 08:07:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqyhV2DNPneDJ3INZRmEMT5LfpnDkTy4hQ+cTQKOs/UrhpfRFlyh+43dh8pZyrUb2ibu33ow8w==
X-Received: by 2002:a5d:5273:: with SMTP id l19mr12042205wrc.175.1578586024671; 
 Thu, 09 Jan 2020 08:07:04 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id q3sm9123252wrn.33.2020.01.09.08.07.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:07:04 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 34/57] objtool: arm64: Decode load/store exclusive
Date: Thu,  9 Jan 2020 16:02:37 +0000
Message-Id: <20200109160300.26150-35-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: pDVe2TogPXyv4TYlsnqgVA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080709_624058_A60612D6 
X-CRM114-Status: GOOD (  10.88  )
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

Decode load/store exclusive instructions. From objtool's point
of view there aren't particular semantics to these operations.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 140 ++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |   3 +
 2 files changed, 143 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 7d480efe0bc2..e3f77d68b282 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -830,6 +830,11 @@ static struct aarch64_insn_decoder ld_st_decoder[] = {
 		.value = 0b000011100000000,
 		.decode_func = arm_decode_adv_simd_single_post,
 	},
+	{
+		.mask = 0b001111000000000,
+		.value = 0b000000000000000,
+		.decode_func = arm_decode_ld_st_exclusive,
+	},
 	{
 		.mask = 0b001101100000000,
 		.value = 0b001000000000000,
@@ -1190,6 +1195,141 @@ int arm_decode_adv_simd_single_post(u32 instr, enum insn_type *type,
 	return ret;
 }
 
+#define ST_EXCL_UNALLOC_1 0b001010
+#define ST_EXCL_UNALLOC_2 0b000010
+
+#define LDXRB		0b000100
+#define LDAXRB		0b000101
+#define LDLARB		0b001100
+#define LDARB		0b001101
+#define LDXRH		0b010100
+#define LDAXRH		0b010101
+#define LDLARH		0b011100
+#define LDARH		0b011101
+#define LDXR		0b100100
+#define LDAXR		0b100101
+#define LDXP		0b100110
+#define LDAXP		0b100111
+#define LDLAR		0b101100
+#define LDAR		0b101101
+#define LDXR_64		0b110100
+#define LDAXR_64	0b110101
+#define LDXP_64		0b110110
+#define LDAXP_64	0b110111
+#define LDLAR_64	0b111100
+#define LDAR_64		0b111101
+
+#define LD_EXCL_NUMBER	20
+
+static int ld_excl_masks[] = {
+	LDXRB,
+	LDAXRB,
+	LDLARB,
+	LDARB,
+	LDXRH,
+	LDAXRH,
+	LDLARH,
+	LDARH,
+	LDXR,
+	LDAXR,
+	LDXP,
+	LDAXP,
+	LDLAR,
+	LDAR,
+	LDXR_64,
+	LDAXR_64,
+	LDXP_64,
+	LDAXP_64,
+	LDLAR_64,
+	LDAR_64,
+};
+
+int arm_decode_ld_st_exclusive(u32 instr, enum insn_type *type,
+			       unsigned long *immediate,
+			       struct list_head *ops_list)
+{
+	unsigned char size = 0, o2 = 0, L = 0, o1 = 0, o0 = 0;
+	unsigned char rt = 0, rt2 = 0, rn = 0;
+	unsigned char decode_field = 0;
+	struct stack_op *op;
+	int i = 0;
+
+	size = (instr >> 30) & ONES(2);
+	o2 = EXTRACT_BIT(instr, 23);
+	L = EXTRACT_BIT(instr, 22);
+	o1 = EXTRACT_BIT(instr, 21);
+	o0 = EXTRACT_BIT(instr, 15);
+
+	rt2 = (instr >> 10) & ONES(5);
+	rn = (instr >> 5) & ONES(5);
+	rt = instr & ONES(5);
+
+	decode_field = (size << 4) | (o2 << 3) | (L << 2) | (o1 << 1) | o0;
+
+	if ((decode_field & ST_EXCL_UNALLOC_1) == ST_EXCL_UNALLOC_1 ||
+	    (decode_field & 0b101010) == ST_EXCL_UNALLOC_2) {
+		if (rt2 != 31)
+			return arm_decode_unknown(instr, type, immediate,
+						  ops_list);
+	}
+
+	if (!stack_related_reg(rn)) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+
+	*type = INSN_STACK;
+	op = calloc(1, sizeof(*op));
+	list_add_tail(&op->list, ops_list);
+
+	for (i = 0; i < LD_EXCL_NUMBER; i++) {
+		if ((decode_field & 0b111111) == ld_excl_masks[i]) {
+			op->src.type = OP_SRC_REG_INDIRECT;
+			op->src.reg = rn;
+			op->src.offset = 0;
+			op->dest.type = OP_DEST_REG;
+			op->dest.reg = rt;
+			op->dest.offset = 0;
+			return 0;
+		}
+	}
+
+	op->dest.type = OP_DEST_REG_INDIRECT;
+	op->dest.reg = rn;
+	op->dest.offset = 0;
+	op->src.type = OP_SRC_REG;
+	op->src.reg = rt;
+	op->src.offset = 0;
+
+	return 0;
+}
+
+#undef ST_EXCL_UNALLOC_1
+#undef ST_EXCL_UNALLOC_2
+
+#undef LD_EXCL_NUMBER
+
+#undef LDXRB
+#undef LDAXRB
+#undef LDLARB
+#undef LDARB
+#undef LDXRH
+#undef LDAXRH
+#undef LDLARH
+#undef LDARH
+#undef LDXR
+#undef LDAXR
+#undef LDXP
+#undef LDAXP
+#undef LDLAR
+#undef LDAR
+#undef LDXR_64
+#undef LDAXR_64
+#undef LDXP_64
+#undef LDAXP_64
+#undef LDLAR_64
+#undef LDAR_64
+
 int arm_decode_ld_st_regs_unsc_imm(u32 instr, enum insn_type *type,
 				   unsigned long *immediate,
 				   struct list_head *ops_list)
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index 7fd333f88612..61152b4aa42a 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -136,4 +136,7 @@ int arm_decode_ld_st_regs_off(u32 instr, enum insn_type *type,
 int arm_decode_ld_st_regs_unsigned(u32 instr, enum insn_type *type,
 				   unsigned long *immediate,
 				   struct list_head *ops_list);
+int arm_decode_ld_st_exclusive(u32 instr, enum insn_type *type,
+			       unsigned long *immediate,
+			       struct list_head *ops_list);
 #endif /* _ARM_INSN_DECODE_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
