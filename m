Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1617135DD7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:11:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGCMVRL8vAacCeCSASerl+LhloFb0ySx/5yCEicv5TA=; b=pPMgwz4tnJyVzv
	hipVJaL4e2/PwWmtL0Yh2VNYgNaKV3TXiXS62UuuZLVJmJoZYq30AhisyoTR2hRMTuuA8xnP+CnmQ
	kRu527MsRZ4fX2SYoIgnoP5RzpBCaaICi6ZxrrdBVoqQVBPs4BXgL75jXvoC/fwFGG1+XgvLqaP5R
	iNYY9rqvEctOnXEaghYpKtJcDw+GYGfm9+tOz1o+YNSg3vHnfEo1qY6PVk89CF8R8rx0wcjsgnVlK
	dFgoUck2+vD9oYBomNgGq9OwVQKeYJLStOLHHzXQpd0nwb1mGLj0Jb4CmVOMUmTqdRJvTyDMO+yNm
	/KYgCpeH/LY7b6JQuXJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaOw-00057s-V1; Thu, 09 Jan 2020 16:11:14 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaJk-0007UT-Rc
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:06:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585951;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3+FheDq2ZplLWH7Hscjh46HZP3eUOL/7yenw4GWEIA8=;
 b=ak9Cvc9Qp1WYhNAZNziScwJfCFiAWdGntUttazsik8LVSyAxZB0kQ1sINtG9ee3/V2zwCA
 RnZC6jamYOVKC3MAlF56ufERQzw3oJcDeX+RzZsjDALD9o/STWKel1RFImiOeIlIaEZB1n
 rl3VvpBXQ8WvrtAzonbN7d6jFbEnPIk=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-263-NEEQEME-Ou6gzzIReLDJEA-1; Thu, 09 Jan 2020 11:05:49 -0500
Received: by mail-wm1-f72.google.com with SMTP id g26so618819wmk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:05:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yq+5KLGG8C3/es7UmF0OP8vHzerZYbNFdNiyqCT1ebc=;
 b=TVO0ouBb/g+LMxiCRzfmr3FFOKvuzzq/df4TVMntvGSfJUQ9KeCSbsmQFDm6b6prEz
 ylApNXCWyuF4PhN0jmIFIMoo08yvBXXA7lSVLCfDo0q9mdf1oZYRo586RoOJMjP1LqDX
 nxCtmNW871Fd1FTO3fy6MwnuJrj3eLCglwA0XUPVQftS5Bjt+O9MNghxxPgoBapSLmSL
 j3Kox1KE50arCSGgRmed5T7+Kji5/zkMglc34LSI02cB1yXyTSob2JlxWzXDfv1XgY1R
 GK63bttk0Y03vAkINfh9Rq+Hn1YuOAANF+8vyig02TgcjyXpWpJMeec6XtoljcggcE3j
 zAJA==
X-Gm-Message-State: APjAAAVnzy5Y7yFR1TpJwsTXMLokzfrffpIKoo5BmHofkdM8abS97GB+
 2aIp/aFGCuFovuX3LKh6rgDx9rTtxcNJQ6wx5us8Q5zQAfGPLo8U5y85NRssOnqFnOa0IDmeBpP
 W0/PGpjkXhsC6wrvG46xQlC3KiZeoDx1c5ow=
X-Received: by 2002:a5d:4e0a:: with SMTP id p10mr11575566wrt.229.1578585948471; 
 Thu, 09 Jan 2020 08:05:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqwLZVgpVj1PcTS0z5J40QUs6nyfbe/27huXPUr91QfNm91o6qPV2F2jQlHKmgq8A7M+M38/7A==
X-Received: by 2002:a5d:4e0a:: with SMTP id p10mr11575528wrt.229.1578585948045; 
 Thu, 09 Jan 2020 08:05:48 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id a16sm8545544wrt.37.2020.01.09.08.05.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:05:47 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 24/57] objtool: arm64: Decode system instructions not
 affecting the flow
Date: Thu,  9 Jan 2020 16:02:27 +0000
Message-Id: <20200109160300.26150-25-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: NEEQEME-Ou6gzzIReLDJEA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080552_999312_7D019244 
X-CRM114-Status: GOOD (  10.91  )
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

Decode basic system instructions that do not cause jumps or stack
pointer modifications.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 95 +++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  | 23 +++++
 2 files changed, 118 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index a30c3294cc21..c38d73fb57e1 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -87,6 +87,7 @@ static arm_decode_class aarch64_insn_class_decode_table[NR_INSN_CLASS] = {
 	[INSN_UNKNOWN]			= arm_decode_unknown,
 	[INSN_UNALLOC]			= arm_decode_unknown,
 	[0b1000 ... INSN_DP_IMM]	= arm_decode_dp_imm,
+	[0b1010 ... INSN_SYS_BRANCH]	= arm_decode_br_sys,
 };
 
 /*
@@ -391,3 +392,97 @@ int arm_decode_extract(u32 instr, enum insn_type *type,
 
 	return arm_decode_unknown(instr, type, immediate, ops_list);
 }
+
+static struct aarch64_insn_decoder br_sys_decoder[] = {
+	{
+		.mask = 0b1111111111111111111111,
+		.value = 0b1100100000011001011111,
+		.decode_func = arm_decode_hints,
+	},
+	{
+		.mask = 0b1111111111111111100000,
+		.value = 0b1100100000011001100000,
+		.decode_func = arm_decode_barriers,
+	},
+	{
+		.mask = 0b1111111111000111100000,
+		.value = 0b1100100000000010000000,
+		.decode_func = arm_decode_pstate,
+	},
+	{
+		.mask = 0b1111111011000000000000,
+		.value = 0b1100100001000000000000,
+		.decode_func = arm_decode_system_insn,
+	},
+	{
+		.mask = 0b1111111010000000000000,
+		.value = 0b1100100010000000000000,
+		.decode_func = arm_decode_system_regs,
+	},
+};
+
+int arm_decode_br_sys(u32 instr, enum insn_type *type,
+		      unsigned long *immediate, struct list_head *ops_list)
+{
+	u32 decode_field = 0, op1 = 0;
+	unsigned char op0 = 0, op2 = 0;
+	int i = 0;
+
+	op0 = (instr >> 29) & ONES(3);
+	op1 = (instr >> 12) & ONES(14);
+	op2 = instr & ONES(5);
+
+	decode_field = op0;
+	decode_field = (decode_field << 19) | (op1 << 5) | op2;
+
+	for (i = 0; i < ARRAY_SIZE(br_sys_decoder); i++) {
+		if ((decode_field & br_sys_decoder[i].mask) ==
+		    br_sys_decoder[i].value) {
+			return br_sys_decoder[i].decode_func(instr,
+							     type,
+							     immediate,
+							     ops_list);
+		}
+	}
+
+	return arm_decode_unknown(instr, type, immediate, ops_list);
+}
+
+int arm_decode_hints(u32 instr, enum insn_type *type,
+		     unsigned long *immediate, struct list_head *ops_list)
+{
+	*type = INSN_NOP;
+	return 0;
+}
+
+int arm_decode_barriers(u32 instr, enum insn_type *type,
+			unsigned long *immediate, struct list_head *ops_list)
+{
+	/* TODO:check unallocated */
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_pstate(u32 instr, enum insn_type *type,
+		      unsigned long *immediate, struct list_head *ops_list)
+{
+	/* TODO:check unallocated */
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_system_insn(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
+{
+	/* TODO:check unallocated */
+	*type = INSN_OTHER;
+	return 0;
+}
+
+int arm_decode_system_regs(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
+{
+	/* TODO:check unallocated */
+	*type = INSN_OTHER;
+	return 0;
+}
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index 6f68e8887cdb..777a62f1a141 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -9,6 +9,7 @@
 #define INSN_UNKNOWN	0b0001
 #define INSN_UNALLOC	0b0011
 #define INSN_DP_IMM	0b1001	//0x100x
+#define INSN_SYS_BRANCH	0b1011	//0x101x
 
 #define NR_INSN_CLASS	16
 #define INSN_CLASS(opcode)	(((opcode) >> 25) & (NR_INSN_CLASS - 1))
@@ -25,9 +26,17 @@ typedef int (*arm_decode_class)(u32 instr, enum insn_type *type,
 				unsigned long *immediate,
 				struct list_head *ops_list);
 
+struct aarch64_insn_decoder {
+	u32 mask;
+	u32 value;
+	arm_decode_class decode_func;
+};
+
 /* arm64 instruction classes */
 int arm_decode_dp_imm(u32 instr, enum insn_type *type,
 		      unsigned long *immediate, struct list_head *ops_list);
+int arm_decode_br_sys(u32 instr, enum insn_type *type,
+		      unsigned long *immediate, struct list_head *ops_list);
 int arm_decode_unknown(u32 instr, enum insn_type *type,
 		       unsigned long *immediate, struct list_head *ops_list);
 
@@ -47,4 +56,18 @@ int arm_decode_bitfield(u32 instr, enum insn_type *type,
 			unsigned long *immediate, struct list_head *ops_list);
 int arm_decode_extract(u32 instr, enum insn_type *type,
 		       unsigned long *immediate, struct list_head *ops_list);
+
+/* arm64 branch, exception generation, system insn subclasses */
+int arm_decode_hints(u32 instr, enum insn_type *type,
+		     unsigned long *immediate, struct list_head *ops_list);
+int arm_decode_barriers(u32 instr, enum insn_type *type,
+			unsigned long *immediate, struct list_head *ops_list);
+int arm_decode_pstate(u32 instr, enum insn_type *type,
+		      unsigned long *immediate, struct list_head *ops_list);
+int arm_decode_system_insn(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
+int arm_decode_system_regs(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
 #endif /* _ARM_INSN_DECODE_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
