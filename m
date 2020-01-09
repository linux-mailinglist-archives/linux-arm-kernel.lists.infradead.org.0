Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA621135E07
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:18:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mdt4QxHcNOEW/OSzdVq4rufUaYb2EyV9aMQQQGj37Q8=; b=V0DpIuPo9zaW5T
	XmDh7tk7pXlkYohY07urutrArI/2pR6/HbwGpqOF+rHTTawHiwqVvL0/sbd/rYNJaJhRGArhUnXzU
	7+aegEZQb073UlpjfSUIpi8jN4mxkGXoKFeCVRjwgKtipLFCtVDa/ONMV6iUqDoMRDSh2Mz0Ekk7j
	0MXbQ8NFTjhWGuPVIyiLfMa7oX2zZkruTpvJ5xB2tW/jr9U8tCk0uM2LjfeNzpCXoA5cDTODFPwWv
	x0wH/CWoNsjARPVH5xl+eZEbCERUibm67qEIqY1z36ThNLLRbkpDNNfEbbQF4I/VsVBqWMrZfiQGn
	aoCgspzDRWspnv4+o0yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaVR-0003l1-Cq; Thu, 09 Jan 2020 16:17:57 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaMB-0001Ma-LJ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:08:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586102;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1QGQugkWC7aDIoxdwItWbSkyE3m0lRZkaG/Q9hC66PQ=;
 b=OpUk9eYjMCAGgbx7RNqzN0L9vemgK3seiIr99qfa6VAH6OxqVPaTCwA8tqjAOdSfbm0cAe
 3kvIp9eshEOQJhiz9qvYZavm2n0UMNSC7ZctxhZWqX3DM78ZjVx3kHwlEUbk02i92CTN8Z
 hDvYdryldblKS5W2YIVqyr4pKKcj9/c=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-183-ZKrD1rYYM86AG6VkD5IjAA-1; Thu, 09 Jan 2020 11:08:20 -0500
Received: by mail-wm1-f71.google.com with SMTP id b9so1097549wmj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:08:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TNAXbPtYol4IFhdKQN1YW+us8aGhYHcAVGnDfkl/GLg=;
 b=kJGbI18cdSZOG/kvOdqhyjamD7hhrosyO6giBAxv2aNzjHNW5CKYrPqoPosT+RMgV7
 eKovVIolfb4fc59/0UKXNaMQBeme1KmIy42M6EcxVykn9kqnCFq2exLNyDqX/bwKUNHR
 OfEbMKPdbGJfPzbaj8/7kmqEir2a1M0chzbShgLp/Q1fgNKe+cAjwMBTGJAPhcTW7pqF
 JQxnuIkH/zQjOmvd9Bo8ZKs/A/w9WGgMRWQqq4/ca56YD6IVIKdNSLWnd7le2FXoqEuu
 HQMTqSZpgvwPnC/kGu5I38nc4f7UlH9TI9uRfCRIwODzbV8Y3QqWkOyirboGNoCWF8u2
 tAZg==
X-Gm-Message-State: APjAAAUO5uvWAJIsPjpxLoVshK3Jd4H8cgiVyVdiAweg8dubLpLwSOLx
 X489AOAOXFZzTmMKv7OKY7RtQXlwKT12Qwl+rEgifyl1WlpT9GqlmX9ZbWtlaWTbEPzEMOODsCf
 UFLBeR/FNi8eB8uqQxJTmZQFtz3/iUGSedAA=
X-Received: by 2002:a7b:c957:: with SMTP id i23mr5784655wml.49.1578586099469; 
 Thu, 09 Jan 2020 08:08:19 -0800 (PST)
X-Google-Smtp-Source: APXvYqwVETqaEKCmXpHz5yplDHZ/sfX5dJd+AzP3YinwYC57N0IL5r0ZPXWJGPR5IniwcSWePRIULw==
X-Received: by 2002:a7b:c957:: with SMTP id i23mr5784636wml.49.1578586099286; 
 Thu, 09 Jan 2020 08:08:19 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id m10sm8562605wrx.19.2020.01.09.08.08.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:08:18 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 42/57] objtool: arm64: Decode SVE instructions
Date: Thu,  9 Jan 2020 16:02:45 +0000
Message-Id: <20200109160300.26150-43-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: ZKrD1rYYM86AG6VkD5IjAA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080823_820815_8648B3BE 
X-CRM114-Status: GOOD (  11.41  )
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

Decode instructions from the SVE architecture extension.

These instructions do not modify the stack or frame pointer. Simply
acknowledge the corresponding opcodes are valid.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 109 ++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |   4 +
 2 files changed, 113 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index d35c2b58d309..5a5f82b5cb81 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -126,6 +126,7 @@ static int is_arm64(struct elf *elf)
 static arm_decode_class aarch64_insn_class_decode_table[NR_INSN_CLASS] = {
 	[INSN_RESERVED]			= arm_decode_unknown,
 	[INSN_UNKNOWN]			= arm_decode_unknown,
+	[INSN_SVE_ENC]			= arm_decode_sve_encoding,
 	[INSN_UNALLOC]			= arm_decode_unknown,
 	[INSN_LD_ST_4]			= arm_decode_ld_st,
 	[INSN_DP_REG_5]			= arm_decode_dp_reg,
@@ -2755,3 +2756,111 @@ int arm_decode_dp_simd(u32 instr, enum insn_type *type,
 	*type = INSN_OTHER;
 	return 0;
 }
+
+static struct aarch64_insn_decoder sve_enc_decoder[] = {
+	{
+		.mask = 0b1111010000111000,
+		.value = 0b0000010000011000,
+	},
+	{
+		.mask = 0b1111110000111000,
+		.value = 0b0001110000000000,
+	},
+	{
+		.mask = 0b1111010000110000,
+		.value = 0b0011010000010000,
+	},
+	{
+		.mask = 0b1111011100111000,
+		.value = 0b0011010100101000,
+	},
+	{
+		.mask = 0b1111011000110000,
+		.value = 0b0011011000100000,
+	},
+	{
+		.mask = 0b1111010000100000,
+		.value = 0b0100000000100000,
+	},
+	{
+		.mask = 0b1111000000000000,
+		.value = 0b0101000000000000,
+	},
+	{
+		.mask = 0b1111011111111000,
+		.value = 0b0110000000101000,
+	},
+	{
+		.mask = 0b1111011111110000,
+		.value = 0b0110000000110000,
+	},
+	{
+		.mask = 0b1111011111100000,
+		.value = 0b0110000001100000,
+	},
+	{
+		.mask = 0b1111011110100000,
+		.value = 0b0110000010100000,
+	},
+	{
+		.mask = 0b1111011100100000,
+		.value = 0b0110000100100000,
+	},
+	{
+		.mask = 0b1111011000100000,
+		.value = 0b0110001000100000,
+	},
+	{
+		.mask = 0b1111010000110110,
+		.value = 0b0110010000000010,
+	},
+	{
+		.mask = 0b1111010000111111,
+		.value = 0b0110010000001001,
+	},
+	{
+		.mask = 0b1111010000111100,
+		.value = 0b0110010000001100,
+	},
+	{
+		.mask = 0b1111010000110000,
+		.value = 0b0110010000010000,
+	},
+	{
+		.mask = 0b1111010000100000,
+		.value = 0b0110010000100000,
+	},
+	{
+		.mask = 0b1111011100111100,
+		.value = 0b0111000100001000,
+	},
+};
+
+int arm_decode_sve_encoding(u32 instr, enum insn_type *type,
+			    unsigned long *immediate,
+			    struct list_head *ops_list)
+{
+	int i = 0;
+	unsigned char op0 = 0, op1 = 0, op2 = 0, op3 = 0;
+	u32 decode_field = 0;
+
+	op0 = (instr >> 29) & ONES(3);
+	op1 = (instr >> 23) & ONES(2);
+	op2 = (instr >> 17) & ONES(5);
+	op3 = (instr >> 10) & ONES(6);
+
+	decode_field = (op0 << 2) | op1;
+	decode_field = (decode_field << 5) | op2;
+	decode_field = (decode_field << 6) | op3;
+
+	for (i = 0; i < ARRAY_SIZE(sve_enc_decoder); i++) {
+		if ((decode_field & sve_enc_decoder[i].mask) ==
+		    sve_enc_decoder[i].value)
+			return arm_decode_unknown(instr, type, immediate,
+						  ops_list);
+	}
+
+	*type = INSN_OTHER;
+
+	return 0;
+}
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index 2bff4d7da007..89cff8791c0b 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -7,6 +7,7 @@
 
 #define INSN_RESERVED	0b0000
 #define INSN_UNKNOWN	0b0001
+#define INSN_SVE_ENC	0b0010
 #define INSN_UNALLOC	0b0011
 #define INSN_DP_IMM	0b1001	//0x100x
 #define INSN_SYS_BRANCH	0b1011	//0x101x
@@ -41,6 +42,9 @@ struct aarch64_insn_decoder {
 };
 
 /* arm64 instruction classes */
+int arm_decode_sve_encoding(u32 instr, enum insn_type *type,
+			    unsigned long *immediate,
+			    struct list_head *ops_list);
 int arm_decode_dp_imm(u32 instr, enum insn_type *type,
 		      unsigned long *immediate, struct list_head *ops_list);
 int arm_decode_dp_reg(u32 instr, enum insn_type *type,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
