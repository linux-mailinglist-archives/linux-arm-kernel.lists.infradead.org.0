Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60683135DE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:13:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=et7yWr5LfG4Te29SAXMdkxdMoVROdRWD7TciuO1zGTY=; b=ipvVO8+WYIoVBg
	LT+57jDesldjFDu+so3lXowAmBGdWU1UowAdVFxWmVfk6qKxcY2UcJABPtAiDtZvkMKJksyJich3j
	hmDhpP0ZnG79akSzJB83wmSk8UFLQWlGswjU52odKQ1Meg9CxVEvQAKKvQe7+fjGYvfN5MFsJWYJg
	B++9MS+sSacmDfjjdbBdo0mZK5zIoAWynFSg/HQ8gI4T3BdJBLndky4TCOkSR+WG3yXWVR1yRT2xE
	IWJbXcaOboBPcEFHhRQzxdwuaCG+ysMLX6XHxzLOcqyC70cvMddgaYkohcqEKlSPE20A8+DKgdihl
	Y9azpPOY6YIF1aLeH6Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaQy-0006sL-3d; Thu, 09 Jan 2020 16:13:20 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaKO-00082N-6S
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:06:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585990;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tlQRkFiwtOzDsnF1EvmrQl/6BVM4mJGyHhan4vNK2JU=;
 b=egMSxT1ojSXQOE3UzrJdRBqE21wPBts+Q0HOZJ4hyw1NfabaCJ3oSjciCj3DmfPnV5+yfY
 q8dmapjLEyvlAjpUt412CwDqwlf84RD22pA4FDK8+fiLjT+u/fsxFd/JLpIzYyR4NBCY2R
 LEq00RwSiJrRhLYK/jRgF5N1FkHfyOY=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-345-vdmisrpVM3qaXn4RHFGepA-1; Thu, 09 Jan 2020 11:06:26 -0500
Received: by mail-wm1-f71.google.com with SMTP id t17so618165wmi.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:06:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J63NkwzczmrLcPGsOIe2c0tfTD5HWt1z/wmViklA3es=;
 b=p+Ss6gTSwwJpM6a15njb7ihs7euNFFPvkPDQa4w64ES9oRfhxuwy1fZ27npF0+bVfP
 9hkL5/UjLAZVrtgFwxAY7bik4Usy9aS7C7DPHUEOBmbRXGTDcwbZV3NkUqc3c9UFYjR9
 6+UOoqmC3ynSGNJtK9On2znZ0jOVeJ12IGFIHdxHLZLzKR5E9Lb3MxSJfqURSXP/Kz1e
 zvaueClzG9TK6go1hsCTlISHyj2Mk35hrbpVmIUDVTlayIKSnGWf/0ZbKXOfVi4EqTEy
 QunAPPi4sWC8P0aldA8G2vTx7sUHtnSrzqgLVZ8u5Fu3Zv4RUGuE2KGzzuOtoQS41eo0
 Vx0Q==
X-Gm-Message-State: APjAAAUAbBBifD3NOcyhPi9RGVEzcCyW2O9/sC42vkjNwwWWY8HX5fqi
 q491Wfoket5MXFh/J35YK5c3etMJUw2omQL2f85htjDmD2P7LsCvLT2U9nLO9RUE8dZNRPzEiFm
 XcqGHy6S04LbCYl459IX4b6jXop+hFwo8lms=
X-Received: by 2002:a5d:4ed0:: with SMTP id s16mr11380323wrv.144.1578585985410; 
 Thu, 09 Jan 2020 08:06:25 -0800 (PST)
X-Google-Smtp-Source: APXvYqxG3LuVTogmg7FJSWlNc329KhrNkP0B6SiHOu3F08s0s+2V12EeNGQmM0ARlcnccvAJXUA4Ew==
X-Received: by 2002:a5d:4ed0:: with SMTP id s16mr11380293wrv.144.1578585985185; 
 Thu, 09 Jan 2020 08:06:25 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id e18sm8643101wrr.95.2020.01.09.08.06.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:06:24 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 28/57] objtool: arm64: Decode branch instructions with PC
 relative immediates
Date: Thu,  9 Jan 2020 16:02:31 +0000
Message-Id: <20200109160300.26150-29-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: vdmisrpVM3qaXn4RHFGepA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080632_425352_4A514D43 
X-CRM114-Status: GOOD (  10.50  )
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

Decode instructions that cause a jump in the execution flow, adding
an immediate value to the current instruction counter.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 79 +++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  | 11 +++
 2 files changed, 90 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 5eba83c5d5bc..7986ded8b622 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -424,6 +424,26 @@ static struct aarch64_insn_decoder br_sys_decoder[] = {
 		.value = 0b1100000000000000000000,
 		.decode_func = arm_decode_except_gen,
 	},
+	{
+		.mask = 0b1111000000000000000000,
+		.value = 0b0100000000000000000000,
+		.decode_func = arm_decode_br_cond_imm,
+	},
+	{
+		.mask = 0b0110000000000000000000,
+		.value = 0b0000000000000000000000,
+		.decode_func = arm_decode_br_uncond_imm,
+	},
+	{
+		.mask = 0b0111000000000000000000,
+		.value = 0b0010000000000000000000,
+		.decode_func = arm_decode_br_comp_imm,
+	},
+	{
+		.mask = 0b0111000000000000000000,
+		.value = 0b0011000000000000000000,
+		.decode_func = arm_decode_br_tst_imm,
+	},
 };
 
 int arm_decode_br_sys(u32 instr, enum insn_type *type,
@@ -575,3 +595,62 @@ int arm_decode_except_gen(u32 instr, enum insn_type *type,
 #undef INSN_DCPS2
 #undef INSN_DCPS3
 }
+
+int arm_decode_br_cond_imm(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
+{
+	unsigned char o0 = 0, o1 = 0;
+	u32 imm19;
+
+	o0 = EXTRACT_BIT(instr, 4);
+	o1 = EXTRACT_BIT(instr, 24);
+	imm19 = (instr >> 5) & ONES(19);
+
+	*immediate = SIGN_EXTEND(imm19 << 2, 19);
+
+	if ((o1 << 1) | o0)
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+
+	*type = INSN_JUMP_CONDITIONAL;
+
+	return 0;
+}
+
+int arm_decode_br_uncond_imm(u32 instr, enum insn_type *type,
+			     unsigned long *immediate,
+			     struct list_head *ops_list)
+{
+	unsigned char decode_field = 0;
+	u32 imm26 = 0;
+
+	decode_field = EXTRACT_BIT(instr, 31);
+	imm26 = instr & ONES(26);
+
+	*immediate = SIGN_EXTEND(imm26 << 2, 28);
+	if (decode_field == 0)
+		*type = INSN_JUMP_UNCONDITIONAL;
+	else
+		*type = INSN_CALL;
+
+	return 0;
+}
+
+int arm_decode_br_comp_imm(u32 instr, enum insn_type *type,
+			   unsigned long *immediate, struct list_head *ops_list)
+{
+	u32 imm19 = (instr >> 5) & ONES(19);
+
+	*immediate = SIGN_EXTEND(imm19 << 2, 21);
+	*type = INSN_JUMP_CONDITIONAL;
+	return 0;
+}
+
+int arm_decode_br_tst_imm(u32 instr, enum insn_type *type,
+			  unsigned long *immediate, struct list_head *ops_list)
+{
+	u32 imm14 = (instr >> 5) & ONES(14);
+
+	*immediate = SIGN_EXTEND(imm14 << 2, 16);
+	*type = INSN_JUMP_CONDITIONAL;
+	return 0;
+}
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index a55dcbfcfed2..ceb80a58c548 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -72,4 +72,15 @@ int arm_decode_system_regs(u32 instr, enum insn_type *type,
 			   struct list_head *ops_list);
 int arm_decode_except_gen(u32 instr, enum insn_type *type,
 			  unsigned long *immediate, struct list_head *ops_list);
+int arm_decode_br_uncond_imm(u32 instr, enum insn_type *type,
+			     unsigned long *immediate,
+			     struct list_head *ops_list);
+int arm_decode_br_comp_imm(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
+int arm_decode_br_tst_imm(u32 instr, enum insn_type *type,
+			  unsigned long *immediate, struct list_head *ops_list);
+int arm_decode_br_cond_imm(u32 instr, enum insn_type *type,
+			   unsigned long *immediate,
+			   struct list_head *ops_list);
 #endif /* _ARM_INSN_DECODE_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
