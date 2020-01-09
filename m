Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CF2135DEB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:15:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRcO5rjY9e897WoH5WTrSGboqT+4b03HZATSOU9TW+A=; b=tW2pkMdnTRtXt+
	lCfgZ84habzD/XE8axGbAW/38SIMbIQlXl/yLjJgm32aQspWCLB/n4A+WpsYP3Ucyg0RSm+Lc3zbR
	MUhY4GLV8bKQzReLlGVpHYRYWZV+mDG2HXIZ3RCcD3Q5J+blsFJroyFQ5Lvsonesy6nbpYDH/MGPj
	Q8eWtmQbxzf4j4U7lKbwa003xsEsA++uolPxPY/ecQhCk+x2asZO6Y2FF2SCchJpnZxXm5pKDA0ab
	PJduwvpcdt6lxJTHfjQ6UnSqI6fiPQ0xKsl7lQkvpne9XIEYSfLJl7Wvthbwg6ab7YGC/bJy4DET+
	UUpFlsk88upTjRRH3uYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaSZ-00007a-42; Thu, 09 Jan 2020 16:14:59 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaKx-0000D7-OE
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:07:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586026;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZrHIGMfa1ezX1wLKOejBrnNEGuBrWXKv+McP9/MFns4=;
 b=PBKIZFPBNqnh0nJ4tadqJgv9F0qaaR+3rEHJFt8PkCREstJSOQ8hSSUrla2MJYiHLKx5Yq
 XAV4WbMcoaVD9uxwo/s6ElkAm0MiLjrAaC03U3teiCA7Sc0q4mpytY7JrQ+7nfNf+Rd+DB
 NRfprbpzjBQQ+SGmdun5sJm2LB/bJyk=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-VfZw8porNpexTRH4-_cr5g-1; Thu, 09 Jan 2020 11:07:05 -0500
Received: by mail-wr1-f71.google.com with SMTP id c6so3028623wrm.18
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:07:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=674vedoaHlOK+sohBzVeKsD1bt4H4p7wzQDNyJHcuUU=;
 b=UletLu8ZxcBvppRzXmLgPr6R9Xe2UjoyQ5XmRYDiaB4vQEGR96bYQpVuPUA9spkKal
 ZOu7aAskd7Nv/5rq6yE94MDbPtNAk/1Hf5tnQAKgExOiuGRrd3gPxHWAiAh/W/Aq76Nk
 iVME5qdIN0TWL1AQM45pIPYXLXtOyu1frjajgXNDAgr34mgVzRvTFIaOgWvissng2z1v
 8HAKl8Yga+wisDkFZXfot50CBvB/W14z0BtiruYYnyO6bRvw4wwq8an4D2jXaEyWCJZu
 7N6VKAmwPoFqX5vybRzk6cBfK4hes2dmFDoWoicO3sWIeBkDV3vNF/rPYTR7f2B+ZBnX
 GEWQ==
X-Gm-Message-State: APjAAAUyMX0xalT/dFOuDoYh2mjIHJZ3CXz/5tdYR0Ql/AFAJi7rd9lG
 y8ekCMJGWM6n7X+yUO3tYWrrNPc4QPf7xG30a4HvYd+F+m8vyMkuZWzh4XvozNK14VyrNB/qLHq
 +TDr0Nk+b2eqp8Pe3SczKsbdu+f4qsTb+r6U=
X-Received: by 2002:a7b:cbcd:: with SMTP id n13mr5750920wmi.104.1578586023795; 
 Thu, 09 Jan 2020 08:07:03 -0800 (PST)
X-Google-Smtp-Source: APXvYqyYyTRISBUXfTdMjMVF0DyWCzXa8gRzRagckK39rZstNu1/RnqpteCWutzTgpkE45cGgf1BEw==
X-Received: by 2002:a7b:cbcd:: with SMTP id n13mr5750895wmi.104.1578586023548; 
 Thu, 09 Jan 2020 08:07:03 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id q3sm9123252wrn.33.2020.01.09.08.07.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:07:03 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 33/57] objtool: arm64: Decode FP/SIMD load/store instructions
Date: Thu,  9 Jan 2020 16:02:36 +0000
Message-Id: <20200109160300.26150-34-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: VfZw8porNpexTRH4-_cr5g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080707_925771_A09CB705 
X-CRM114-Status: GOOD (  11.23  )
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

Decode load/store instruction acting on floating point and SIMD
registers.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 301 ++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |  12 +
 2 files changed, 313 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 2aaac4e3786c..7d480efe0bc2 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -810,6 +810,26 @@ int arm_decode_br_uncond_reg(u32 instr, enum insn_type *type,
 #undef INSN_DRPS_MASK
 
 static struct aarch64_insn_decoder ld_st_decoder[] = {
+	{
+		.mask = 0b101111111111100,
+		.value = 0b000010000000000,
+		.decode_func = arm_decode_adv_simd_mult,
+	},
+	{
+		.mask = 0b101111110000000,
+		.value = 0b000010100000000,
+		.decode_func = arm_decode_adv_simd_mult_post,
+	},
+	{
+		.mask = 0b101111101111100,
+		.value = 0b000011000000000,
+		.decode_func = arm_decode_adv_simd_single,
+	},
+	{
+		.mask = 0b101111100000000,
+		.value = 0b000011100000000,
+		.decode_func = arm_decode_adv_simd_single_post,
+	},
 	{
 		.mask = 0b001101100000000,
 		.value = 0b001000000000000,
@@ -889,6 +909,287 @@ int arm_decode_ld_st(u32 instr, enum insn_type *type,
 	return arm_decode_unknown(instr, type, immediate, ops_list);
 }
 
+static int adv_simd_mult_fields[] = {
+	0b00000,
+	0b00010,
+	0b00100,
+	0b00110,
+	0b00111,
+	0b01000,
+	0b01010,
+	0b10000,
+	0b10010,
+	0b10100,
+	0b10110,
+	0b10111,
+	0b11000,
+	0b11010,
+};
+
+int arm_decode_adv_simd_mult(u32 instr, enum insn_type *type,
+			     unsigned long *immediate,
+			     struct list_head *ops_list)
+{
+	unsigned char L = 0, opcode = 0, rn = 0;
+	unsigned char decode_field = 0;
+	int i = 0;
+
+	L = EXTRACT_BIT(instr, 22);
+	opcode = (instr >> 12) & ONES(4);
+
+	decode_field = (L << 4) | opcode;
+	rn = (instr >> 5) & ONES(5);
+	*type = INSN_OTHER;
+
+	for (i = 0; i < ARRAY_SIZE(adv_simd_mult_fields); i++) {
+		if ((decode_field & 0b11111) == adv_simd_mult_fields[i]) {
+			if (!stack_related_reg(rn))
+				return 0;
+		}
+	}
+
+	return arm_decode_unknown(instr, type, immediate, ops_list);
+}
+
+int arm_decode_adv_simd_mult_post(u32 instr, enum insn_type *type,
+				  unsigned long *immediate,
+				  struct list_head *ops_list)
+{
+	/* same opcode as for the no offset variant */
+	int ret = 0;
+
+	ret = arm_decode_adv_simd_mult(instr, type, immediate, ops_list);
+
+	/* TODO: Create stack_op for post increment with immediate */
+	return ret;
+}
+
+static struct aarch64_insn_decoder simd_single_decoder[] = {
+	{
+		.mask = 0b11111000,
+		.value = 0b00000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111000,
+		.value = 0b00001000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b00010000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b00011000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b00100000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b00100001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b00101000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b00101001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111000,
+		.value = 0b01000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111000,
+		.value = 0b01001000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b01010000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b01011000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b01100000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b01100001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b01101000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b01101001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111000,
+		.value = 0b10000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111000,
+		.value = 0b10001000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b10010000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b10011000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b10100000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b10100001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b10101000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b10101001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111100,
+		.value = 0b10110000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111100,
+		.value = 0b10111000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11000000,
+		.value = 0b11111000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111000,
+		.value = 0b11001000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b11010000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111001,
+		.value = 0b11011000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b11100000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b11100001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111011,
+		.value = 0b11101000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111111,
+		.value = 0b11101001,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111100,
+		.value = 0b11110000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b11111100,
+		.value = 0b11111000,
+		.decode_func = NULL,
+	},
+};
+
+int arm_decode_adv_simd_single(u32 instr, enum insn_type *type,
+			       unsigned long *immediate,
+			       struct list_head *ops_list)
+{
+	unsigned char L = 0, R = 0, S = 0, opcode = 0, size = 0;
+	unsigned char rn = 0, dfield = 0;
+	int i = 0;
+
+	L = EXTRACT_BIT(instr, 22);
+	R = EXTRACT_BIT(instr, 21);
+	S = EXTRACT_BIT(instr, 12);
+	opcode = (instr >> 13) & ONES(3);
+	size = (instr >> 10) & ONES(2);
+
+	dfield = (L << 7) | (R << 6) | (opcode << 3) | (S << 2) | size;
+
+	*type = INSN_OTHER;
+	rn = (instr << 5) & ONES(5);
+
+	for (i = 0; i < ARRAY_SIZE(simd_single_decoder); i++) {
+		if ((dfield & simd_single_decoder[i].mask) ==
+		    simd_single_decoder[i].value) {
+			if (!stack_related_reg(rn))
+				return 0;
+		}
+	}
+
+	return arm_decode_unknown(instr, type, immediate, ops_list);
+}
+
+int arm_decode_adv_simd_single_post(u32 instr, enum insn_type *type,
+				    unsigned long *immediate,
+				    struct list_head *ops_list)
+{
+	/* same opcode as for the no offset variant */
+	int ret = 0;
+
+	ret = arm_decode_adv_simd_single(instr, type, immediate, ops_list);
+
+	/* TODO: Create stack_op for post increment with immediate */
+	return ret;
+}
+
 int arm_decode_ld_st_regs_unsc_imm(u32 instr, enum insn_type *type,
 				   unsigned long *immediate,
 				   struct list_head *ops_list)
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index caeb40942b18..7fd333f88612 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -94,6 +94,18 @@ int arm_decode_br_uncond_reg(u32 instr, enum insn_type *type,
 			     struct list_head *ops_list);
 
 /* arm64 load/store instructions */
+int arm_decode_adv_simd_mult(u32 instr, enum insn_type *type,
+			     unsigned long *immediate,
+			     struct list_head *ops_list);
+int arm_decode_adv_simd_mult_post(u32 instr, enum insn_type *type,
+				  unsigned long *immediate,
+				  struct list_head *ops_list);
+int arm_decode_adv_simd_single(u32 instr, enum insn_type *type,
+			       unsigned long *immediate,
+			       struct list_head *ops_list);
+int arm_decode_adv_simd_single_post(u32 instr, enum insn_type *type,
+				    unsigned long *immediate,
+				    struct list_head *ops_list);
 int arm_decode_ld_st_noalloc_pair_off(u32 instr, enum insn_type *type,
 				      unsigned long *immediate,
 				      struct list_head *ops_list);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
