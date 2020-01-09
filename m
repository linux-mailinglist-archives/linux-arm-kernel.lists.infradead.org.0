Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF79135DFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:17:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzT9VLArV2t3Z5q1AY+dqpxd+MKvwTZpDptFBVo1OAc=; b=XHfy/hbL+qPuwf
	sO8lt7+BM3jWgY5MnRaA28enE5ishlIFtfrNbE8jQYIfbQlStRZK7nltRBxAH24Og0BEn3rSi+ch4
	xxhllzBiXS0joOwGfZGzxknamVjmkBD73DbK2RZjSr+/URlnZ8PWietgjNE/GPU1/h+ZCROJA8EyX
	AN6hv9G+eHI5WKkqb2BWoYzFgQy7Q0yeLLSyeWc5PsirhICSEMRUmHCF1OSXAwAqv81RFDIU3K7x7
	sAbgvHBre/y0vtjrJUOK26NMisU8XvrZsMYnyIjZFnon9Wj4G2LHrv9hehHCTuPGEw4pQp9OR/pqs
	C9fUSwXonXe4Fgel8jzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaUZ-00032I-G8; Thu, 09 Jan 2020 16:17:03 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaLa-0000k8-Nt
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:07:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586064;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IeEJuhyOdraSaiW7XLYyhApDC86GgE1TadUQ1aO6tfU=;
 b=Vw48jusCgThln4w6Sh4LiPA8PL5rE0sy7RJ+3nu/Ix78yzyoLrdL4bt3ydCi/eXCC7vTm2
 N8yNS+DHgveJ8Wxm535DnLoLGoDaM3IfbtuFYVEZ//flHhY+D3wbJRAajylJzQleY6BFcH
 ABZr2PuH5Da47wII2KJ4QGzcY9UYYQg=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-386-WTBlUoB5NDOm-E4fvwTmVQ-1; Thu, 09 Jan 2020 11:07:41 -0500
Received: by mail-wr1-f71.google.com with SMTP id f17so3052314wrt.19
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:07:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6MXSkudn70UtEbMzCHfdquKWnGc9F4q7hjxMMx1IdM8=;
 b=YXrjcQ5w+5YLOveYs/hgLAkjdwxbDo8KBuT+nY66gUuRW5ihJ4EdIM5n3hJMOtNIPF
 hKfiJR1qC7NTztetT0rnW0CVjUz13SiD2sjZsC3ZY1URVmpCrJ/8+lURCeiWBRMHMH+M
 C3kEg2qK9Cl98sCs+brVD0VTG9e49UEpYwne+bK1Cc2uoHrQcvl2/pGEZWo07wpttr1u
 YQp32ZcBZC5fmFi+HTSaHba6Dv5Nd3OsxGEkhjehiy6t+RwUTIu3UKLt7IDKHdWkp//X
 ccdT68pBG5CMQzUHVGQtqU3whBUJOZVM0najciKuH6p17qy4am3qYA+EJaiYNI+PYVFF
 vL4g==
X-Gm-Message-State: APjAAAW0oJ00+jJuL9PIiQgNFjoCMjXxOpUrnTLatzQjmBNg5RUzXUe+
 Cn12xS2Y3I304ADZAdmAn3aNlN6NljfDwJTNeFadgk/nGJQ0HLU7z/zdfCLj/K9aIjfdFZsNu8F
 FVJ6azaENyZhPmkWI9hMkcPWEdHqGfKc3tmY=
X-Received: by 2002:a1c:7d92:: with SMTP id y140mr5326756wmc.145.1578586059937; 
 Thu, 09 Jan 2020 08:07:39 -0800 (PST)
X-Google-Smtp-Source: APXvYqwO98wUDEIRDRIYLKdIbYyjOEf2GJMH63VpDj9P6FrGkNnf7bEr0cdtCq9CGHTRBKqwcrGGfw==
X-Received: by 2002:a1c:7d92:: with SMTP id y140mr5326736wmc.145.1578586059741; 
 Thu, 09 Jan 2020 08:07:39 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id h2sm8591413wrv.66.2020.01.09.08.07.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:07:39 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 37/57] objtool: arm64: Decode load acquire/store release
Date: Thu,  9 Jan 2020 16:02:40 +0000
Message-Id: <20200109160300.26150-38-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: WTBlUoB5NDOm-E4fvwTmVQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080746_909527_2E0FA88A 
X-CRM114-Status: GOOD (  10.50  )
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

Decode load/store instructions provided by the v8.4 RCPC architecture
extension.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 68 +++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |  3 +
 2 files changed, 71 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 0bbbacd74e48..becc563345dd 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -835,6 +835,11 @@ static struct aarch64_insn_decoder ld_st_decoder[] = {
 		.value = 0b000000000000000,
 		.decode_func = arm_decode_ld_st_exclusive,
 	},
+	{
+		.mask = 0b001111010000011,
+		.value = 0b000101000000000,
+		.decode_func = arm_decode_ldapr_stlr_unsc_imm,
+	},
 	{
 		.mask = 0b001101100000000,
 		.value = 0b001000000000000,
@@ -2032,3 +2037,66 @@ int arm_decode_ld_st_regs_pac(u32 instr, enum insn_type *type,
 
 	return 0;
 }
+
+int arm_decode_ldapr_stlr_unsc_imm(u32 instr, enum insn_type *type,
+				   unsigned long *immediate,
+				   struct list_head *ops_list)
+{
+	u32 imm9 = 0;
+	unsigned char size = 0, opc = 0, rn = 0, rt = 0, decode_field = 0;
+	struct stack_op *op;
+
+	imm9 = (instr >> 12) & ONES(9);
+	size = (instr >> 30) & ONES(2);
+	opc = (instr >> 22) & ONES(2);
+	rn = (instr >> 5) & ONES(5);
+	rt = instr & ONES(5);
+
+	decode_field = (size << 2) | opc;
+	if (decode_field == 0xB ||
+	    decode_field == 0xE ||
+	    decode_field == 0xF) {
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+	}
+
+	if (!stack_related_reg(rn)) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+	*type = INSN_STACK;
+	*immediate = imm9;
+
+	op = calloc(1, sizeof(*op));
+	list_add_tail(&op->list, ops_list);
+
+	switch (decode_field) {
+	case 1:
+	case 2:
+	case 3:
+	case 5:
+	case 6:
+	case 7:
+	case 9:
+	case 10:
+	case 13:
+		/* load */
+		op->src.type = OP_SRC_REG_INDIRECT;
+		op->src.reg = rn;
+		op->src.offset = SIGN_EXTEND(imm9, 9);
+		op->dest.type = OP_DEST_REG;
+		op->dest.reg = rt;
+		op->dest.offset = 0;
+		break;
+	default:
+		/* store */
+		op->dest.type = OP_SRC_REG_INDIRECT;
+		op->dest.reg = rn;
+		op->dest.offset = SIGN_EXTEND(imm9, 9);
+		op->src.type = OP_SRC_REG;
+		op->src.reg = rt;
+		op->src.offset = 0;
+		break;
+	}
+
+	return 0;
+}
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index d819d2e795a3..1721d9c487d0 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -106,6 +106,9 @@ int arm_decode_adv_simd_single(u32 instr, enum insn_type *type,
 int arm_decode_adv_simd_single_post(u32 instr, enum insn_type *type,
 				    unsigned long *immediate,
 				    struct list_head *ops_list);
+int arm_decode_ldapr_stlr_unsc_imm(u32 instr, enum insn_type *type,
+				   unsigned long *immediate,
+				   struct list_head *ops_list);
 int arm_decode_ld_st_noalloc_pair_off(u32 instr, enum insn_type *type,
 				      unsigned long *immediate,
 				      struct list_head *ops_list);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
