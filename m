Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FD9135E03
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:17:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSd6v2XCL7tjAIUpojFe9tj7oEaJSCkG3u8y79n717U=; b=df/zhuUXAYgHtE
	6wC9+Peg/4uJ79If3E40+pquugoSyL17Mv65CunnmiiYSeAiQYrdJizI1t2hTMY4oLmPiFjtHzxjU
	5Iz3NO6QW92ODeYKpjMIVasGmtiz91/Hm3jFl3Vif7STrwZPeHTy2pPBQplaY9ecGW3EKe9FTQMM/
	tByeYYurDoaAl70IJrXu8pZndvxUBBCqUQ/tfuLF138SWeux866e5Kwd4xF/14sYNvIb5C6hToZRk
	s5CdqHc1f9QUyQu2dDaFRnkToD4iToayU0WxGCZYBMeHWxp+3JjffUSPqMMdrAjpQzngnAdVfHKvj
	jgDnNmPsOviyljxAmNGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaV7-0003aQ-Ql; Thu, 09 Jan 2020 16:17:37 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaM9-0001L2-W1
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:08:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586100;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rFm9gf9gb1rpbh9IIFaCN3a2qwtakzanEH8ecK3aAqY=;
 b=h1JHEEcMsF9gx8FbMN2G3hleAqHgfyeg72D4L3ZvCYKBgLpZG+qyxbc/SmnaYFyNOG2O3M
 GZ7ATgwJ8UTXv/nFwy8ZhEC9pprPFI90c9cP5l46avsC5PHB7qOSRnoHv1GpgkrXxRPEhn
 CxOyECCLFpbtBxtw1fhjR1Pj3wEHZM0=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-Qe_-T9s9Oe-BaMHxBUsqxw-1; Thu, 09 Jan 2020 11:08:18 -0500
Received: by mail-wm1-f69.google.com with SMTP id b9so1097526wmj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:08:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ctt7fi/3NhIYPlxgrIxpO4KG6ezkTHoGLojp3YwAvJc=;
 b=qI/lQ+vJDkq2SxAsgOVSyciz4q/JJ+d7jaKJTY5h/gXePw8rGilgesr0XxWjKrZTJe
 75u3F5Q1JW++T2Yywy2bQau1zOZxN7X4/s9TezxnPysEq4WEiZlzZ7lMu9IpJGBaKFx0
 NrPjvez5kSzHBhM0+qB5ySwBd5tYlBRrTzhxnbTQI+Td57s/1I2YHl7T8if2sN1cPQnU
 x483WEdIzxPPJBU0eJlaTlEbwbaaoXzjMdYbEgf23MLoppDGNehKGlu+uxV+DcyPvgDo
 PkerLjpcgKXAPXFzRMAACdNTY8EzHdXuq/fK9Ltga/zJwjY96ik6BlavjPACyhjWBoGG
 7EZg==
X-Gm-Message-State: APjAAAWRXdMNy8lqMYMV2/AbuX274d2dJbFTBfYt5gcdAVXcMLZwreBl
 s74J6qGJvhqUfzs2lpuTOjs+aqKTEZIqlTRKXDH/mKKrF+1/a/S3Qk0GVa7t9cdLzIGnMAsI+tW
 Ax3AclKq41v6OTX5hsDSetPqu8YhlYLjMITI=
X-Received: by 2002:a05:600c:2488:: with SMTP id
 8mr5704793wms.152.1578586097769; 
 Thu, 09 Jan 2020 08:08:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqxjzv/MBj0UUOLxwAZL7QjHdlmjkQxcm6p51hFdYJfwpTI9BGX+m6/4LY2WFg1fDeMR4LNnNQ==
X-Received: by 2002:a05:600c:2488:: with SMTP id
 8mr5704783wms.152.1578586097594; 
 Thu, 09 Jan 2020 08:08:17 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id m10sm8562605wrx.19.2020.01.09.08.08.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:08:16 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 41/57] objtool: arm64: Decode FP/SIMD data processing
 instructions
Date: Thu,  9 Jan 2020 16:02:44 +0000
Message-Id: <20200109160300.26150-42-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: Qe_-T9s9Oe-BaMHxBUsqxw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080822_226362_66DFDD76 
X-CRM114-Status: UNSURE (   9.21  )
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

FP/SIMD data processing instructions cannot modify the stack or frame
pointer.

Simply acknowledge the corresponding opcodes are valid.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c              | 9 +++++++++
 tools/objtool/arch/arm64/include/insn_decode.h | 4 ++++
 2 files changed, 13 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index bb1ba3b0997f..d35c2b58d309 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -130,11 +130,13 @@ static arm_decode_class aarch64_insn_class_decode_table[NR_INSN_CLASS] = {
 	[INSN_LD_ST_4]			= arm_decode_ld_st,
 	[INSN_DP_REG_5]			= arm_decode_dp_reg,
 	[INSN_LD_ST_6]			= arm_decode_ld_st,
+	[INSN_DP_SIMD_7]		= arm_decode_dp_simd,
 	[0b1000 ... INSN_DP_IMM]	= arm_decode_dp_imm,
 	[0b1010 ... INSN_SYS_BRANCH]	= arm_decode_br_sys,
 	[INSN_LD_ST_C]			= arm_decode_ld_st,
 	[INSN_DP_REG_D]			= arm_decode_dp_reg,
 	[INSN_LD_ST_E]			= arm_decode_ld_st,
+	[INSN_DP_SIMD_F]		= arm_decode_dp_simd,
 };
 
 /*
@@ -2746,3 +2748,10 @@ int arm_decode_dp_reg_3src(u32 instr, enum insn_type *type,
 	*type = INSN_OTHER;
 	return 0;
 }
+
+int arm_decode_dp_simd(u32 instr, enum insn_type *type,
+		       unsigned long *immediate, struct list_head *ops_list)
+{
+	*type = INSN_OTHER;
+	return 0;
+}
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index 8fb2f2b7564f..2bff4d7da007 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -16,6 +16,8 @@
 #define INSN_LD_ST_E	0b1110	//0bx1x0
 #define INSN_DP_REG_5	0b0101	//0bx101
 #define INSN_DP_REG_D	0b1101	//0bx101
+#define INSN_DP_SIMD_7	0b0111	//0bx111
+#define INSN_DP_SIMD_F	0b1111	//0bx111
 
 #define NR_INSN_CLASS	16
 #define INSN_CLASS(opcode)	(((opcode) >> 25) & (NR_INSN_CLASS - 1))
@@ -47,6 +49,8 @@ int arm_decode_br_sys(u32 instr, enum insn_type *type,
 		      unsigned long *immediate, struct list_head *ops_list);
 int arm_decode_ld_st(u32 instr, enum insn_type *type,
 		     unsigned long *immediate, struct list_head *ops_list);
+int arm_decode_dp_simd(u32 instr, enum insn_type *type,
+		       unsigned long *immediate, struct list_head *ops_list);
 int arm_decode_unknown(u32 instr, enum insn_type *type,
 		       unsigned long *immediate, struct list_head *ops_list);
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
