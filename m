Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11455135DFC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:16:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iscGxTjNmnE9rUzirZS8JGB58WG2+5c2MU+JtDiAink=; b=uRkXIRLG9mDTRx
	+MIfJp61nxYbOwPn8e0pHi5VvtcJIOtHpkM96nJLwymvNfd7lP7+NCziM2Lco72mi/fxJXN0RUUhz
	PNShSgeZykr1lV81WK94wy04uSXQpj7eF6n6jNSXv1bXN2Eu7BGaRqNg+fvjQYWgvRP1nokeJBlfM
	Bsr27wi5J0Qx6aLiQHzD/pzTWuwU3de3lLGlfQboaFAhFBb9GM3w5gHhQG9/xe4NRnh+OqbWH9k7H
	s8EGHPt9Cjl4ztnVQ97BZ1pVdfVnf1/8Bpf11LZRXJR8GrLCZQboWfhstQadjr1/JNOBkvMfjNDMd
	21ZpsyK3c4DcnjwG6NzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaUG-0002m9-0y; Thu, 09 Jan 2020 16:16:44 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaLa-0000ji-Mq
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:07:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586064;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x6lOb3lmB+zuso09zwhfVFsGQAh043Ip/hnDkUCWcy0=;
 b=EdBGelacP3aloKvTx9KfiYcQnslrbubpQERCfKDtzlAKRAByiTe+R2woOzlWV4f1CbpTIS
 GVK1Qd4d1WV7du/8Lx0OAUa0GspJ/Q36QN7m+Jj4Z0xgephmTBiMsoGfEmUG1jyoAsGpUV
 eFKfBcUkSHoXD3Tv1+4rdB03VpJQ3m8=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-63-drUov8bPNRecLXgXu-NaUQ-1; Thu, 09 Jan 2020 11:07:43 -0500
Received: by mail-wr1-f69.google.com with SMTP id t3so3023203wrm.23
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:07:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YSzXbc/iliStE7cNjDlAGjV3g1ZUU8qfPQMgIaRdVVc=;
 b=ArhoBErdZcY8J38w/tjGAF6ZdqSKvV0xztLXwZveYqMGKMf8KSdq6PkGMq27lfVagS
 sP6ARFFO/xWl8EnTtPuDXiyJbGjuDlT48/ovAwaVrjWQCS2iGLyjxtZDth9fyAM4wsh3
 QPotppBIQPXXXM7UotH9Tq1s0SCR+Da+YEmS3NObk9VDn7sD45nCWWOLHxjn35ZMzV55
 HfLyYIDAyiOfNjHxgGCIW0Uiz20NsJ22B1Qq/Enq7navXfZWwkfJAT0UGpcHSFK/lSqe
 dt9JQ2RcCPA217e7rNridD9heXYnOrD+RxE4sv3O4GUi6OOsGnNsjNTbba/rlzOtM+hc
 aZYg==
X-Gm-Message-State: APjAAAX5slz7JiUdUbxz0/gt9a1R6LxjcPXyD2IVWF9osKF0ChttWupW
 TS/LOdV3AzZqJDd/+qOXx+rqw1zWvaTLrxq45z7W38UbTElf7KUM+A9PdPpijrfkJkL660Elt1N
 PLUbCylDcyTcfBUUmJMaFJEZ2Y01Jbg3r0nM=
X-Received: by 2002:a7b:c759:: with SMTP id w25mr6009338wmk.15.1578586061490; 
 Thu, 09 Jan 2020 08:07:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqwXR+O6Irjgn/GaJkOXCpnf30KgGD1FiNm0sUHMqw1/wbVxO2aGMcymgxoFGZ08UHSYH/a03w==
X-Received: by 2002:a7b:c759:: with SMTP id w25mr6009322wmk.15.1578586061280; 
 Thu, 09 Jan 2020 08:07:41 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id h2sm8591413wrv.66.2020.01.09.08.07.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:07:40 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 38/57] objtool: arm64: Decode load/store with memory tag
Date: Thu,  9 Jan 2020 16:02:41 +0000
Message-Id: <20200109160300.26150-39-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: drUov8bPNRecLXgXu-NaUQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080746_848950_EA1A0BAF 
X-CRM114-Status: GOOD (  10.89  )
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

Decode load/store instructions provided by the v8.5 memorty tagging
architecture extension.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 87 +++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |  3 +
 2 files changed, 90 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index becc563345dd..bc4c62401012 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -830,6 +830,11 @@ static struct aarch64_insn_decoder ld_st_decoder[] = {
 		.value = 0b000011100000000,
 		.decode_func = arm_decode_adv_simd_single_post,
 	},
+	{
+		.mask = 0b111111010000000,
+		.value = 0b110101010000000,
+		.decode_func = arm_decode_ld_st_mem_tags,
+	},
 	{
 		.mask = 0b001111000000000,
 		.value = 0b000000000000000,
@@ -2100,3 +2105,85 @@ int arm_decode_ldapr_stlr_unsc_imm(u32 instr, enum insn_type *type,
 
 	return 0;
 }
+
+int arm_decode_ld_st_mem_tags(u32 instr, enum insn_type *type,
+			      unsigned long *immediate,
+			      struct list_head *ops_list)
+{
+	u32 imm9 = 0;
+	unsigned char opc = 0, op2 = 0, rn = 0, rt = 0, decode_field = 0;
+	struct stack_op *op;
+
+	imm9 = (instr >> 12) & ONES(9);
+	opc = (instr >> 22) & ONES(2);
+	op2 = (instr >> 10) & ONES(2);
+	rn = (instr >> 5) & ONES(5);
+	rt = instr & ONES(6);
+
+	decode_field = (opc << 2) | op2;
+
+	if (decode_field == 0x0 ||
+	    (decode_field == 0x8 && imm9 != 0) ||
+	    (decode_field == 0xC && imm9 != 0)) {
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
+	/*
+	 * Offset should normally be shifted to the
+	 * left of LOG2_TAG_GRANULE
+	 */
+	switch (decode_field) {
+	case 1:
+	case 5:
+	case 9:
+	case 13:
+		/* post index */
+	case 3:
+	case 7:
+	case 8:
+	case 11:
+	case 15:
+		/* pre index */
+		op->dest.reg = rn;
+		op->dest.type = OP_DEST_PUSH;
+		op->dest.offset = SIGN_EXTEND(imm9, 9);
+		op->src.reg = rt;
+		op->src.type = OP_SRC_REG;
+		op->src.offset = 0;
+		return 0;
+	case 2:
+	case 6:
+	case 10:
+	case 14:
+		/* store */
+		op->dest.reg = rn;
+		op->dest.type = OP_DEST_REG_INDIRECT;
+		op->dest.offset = SIGN_EXTEND(imm9, 9);
+		op->src.reg = rt;
+		op->src.type = OP_SRC_REG;
+		op->src.offset = 0;
+		return 0;
+	case 4:
+	case 12:
+		/* load */
+		op->src.reg = rn;
+		op->src.type = OP_SRC_REG_INDIRECT;
+		op->src.offset = SIGN_EXTEND(imm9, 9);
+		op->dest.reg = rt;
+		op->dest.type = OP_DEST_REG;
+		op->dest.offset = 0;
+		return 0;
+	}
+
+	return -1;
+}
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index 1721d9c487d0..e6a62691b487 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -106,6 +106,9 @@ int arm_decode_adv_simd_single(u32 instr, enum insn_type *type,
 int arm_decode_adv_simd_single_post(u32 instr, enum insn_type *type,
 				    unsigned long *immediate,
 				    struct list_head *ops_list);
+int arm_decode_ld_st_mem_tags(u32 instr, enum insn_type *type,
+			      unsigned long *immediate,
+			      struct list_head *ops_list);
 int arm_decode_ldapr_stlr_unsc_imm(u32 instr, enum insn_type *type,
 				   unsigned long *immediate,
 				   struct list_head *ops_list);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
