Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA711135DEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:16:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qmk/KcI3wKmF0UBGPuADPjdBDr+lkaQlg4McuC2sTEk=; b=WgpHjCnU/KlJvC
	wySzpw0JTHgFkS7pVD1LzcfWjGvg50nAGiOpqE6YRKhcoqdddeDUChqzAD+lx13WkOzcSNmWBLTqC
	vyPogM1/HSzixNN7sCydiN5aASXW8vrOXUeXU7Vrndt7HtkpXwLusSHSijT6B86FLBhf1Dlklpbfw
	QV9gbDvxCUxqJ6XsZepqLaS/rEz1CDLUu+EP1muOSVVZ6ju+lSnKh+hkJt/H2/Jic/puCcefC+EkP
	0VpgRIXIuSLYcJu7Mibr4qAKWZPw8f3upSdvSJxSmCb58+CnHZUklx3v8tgFMT4n46i/Ul46bUqiH
	kVVJOPumNH3LmVl1F4PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaTp-0002Ta-OH; Thu, 09 Jan 2020 16:16:17 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaLW-0000ge-8C
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:07:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586060;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gF5zGccN6XPj4wdads+TYexD8DaIE0r9gJyUAoloV6U=;
 b=S3Cy4SAQuRJswpJ8VZkMuuoAKy1zTJcXwjZPCi7DSVdiWhlyMNrDs2GpDuiKosB3sFDYzC
 e7vCpNrspdosrugio+vtthe0cKZE6O6UHgOYB7w+ds1lg3stUY8to5wrr/Pz+FHYjuUNMD
 iXZkkNLprp6JgGdOQrGlm6O4dZ6Hb8o=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-262-8N3DI3L_P_mhEDdTqTfHwA-1; Thu, 09 Jan 2020 11:07:39 -0500
Received: by mail-wm1-f70.google.com with SMTP id t4so1104313wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:07:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=V80sKnfPgpuJ2PN6PlqMSnAckHTRWhZvUDB6P0wLWgc=;
 b=kBUti04q8BUjHzMFJRXyC4zbKHC6Lhe3B0lXO3nVPNzvdHNJzqqmOtnkXpticOKWuJ
 OwD/BlKf3STJKI24devQdDv+t35Fv4yQtf6O5IJsDyGRUjuj/eU04gMtDefnxnufnJW5
 dOZeuaCndczey/ZyV72TtVrd7SPnc1V3VKOedVIpOLQsy5JFAWDYjg9CBmZkuDujAJmR
 jM04+eEmMqSpVxdioFG19nLztPKCrJeMhk61zkOB/0NSn4DZsbh3lfrJ0f85Bqtr6nnm
 ceF/W9VgxYl9I6b4yEnM0k2n9n1o8zBiddjDr7dxGtbRXVeVxucl2SOC1kbwb4WPC/7W
 3mtg==
X-Gm-Message-State: APjAAAW5Spatg+t+bBi0DhDhicOkXbN8B38M/6E8OXCV/YemK5D7ZKhD
 9cU6+peeJgrh7aPZTSUcyzpAlH6dxLcY9lafqy3tcYbfe5ZtuPt+k6DiRcfx3817ugSTdAfpPBQ
 YM0bvyrquHpcmAEKH/UQ5ImQ2w4WE/NMYoTE=
X-Received: by 2002:a1c:96c4:: with SMTP id y187mr5972340wmd.112.1578586057203; 
 Thu, 09 Jan 2020 08:07:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqwc4TaEWjCmUkmfkOmwGRLIgB1O+Rz/bvnkIEzkSOYGeyv8HJLRBacELGQ/7+dBBu8TEZebjw==
X-Received: by 2002:a1c:96c4:: with SMTP id y187mr5972312wmd.112.1578586057002; 
 Thu, 09 Jan 2020 08:07:37 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id h2sm8591413wrv.66.2020.01.09.08.07.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:07:36 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 35/57] objtool: arm64: Decode atomic load/store
Date: Thu,  9 Jan 2020 16:02:38 +0000
Message-Id: <20200109160300.26150-36-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: 8N3DI3L_P_mhEDdTqTfHwA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080742_408313_89F8D5F5 
X-CRM114-Status: GOOD (  10.64  )
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

Decode v8.1 atomic load/store instructions.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 86 +++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |  2 +
 2 files changed, 88 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index e3f77d68b282..1897f62987fa 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -875,6 +875,11 @@ static struct aarch64_insn_decoder ld_st_decoder[] = {
 		.value = 0b001100000000011,
 		.decode_func = arm_decode_ld_st_imm_pre,
 	},
+	{
+		.mask = 0b001101010000011,
+		.value = 0b001100010000000,
+		.decode_func = arm_decode_atomic,
+	},
 	{
 		.mask = 0b001101010000011,
 		.value = 0b001100010000010,
@@ -1667,6 +1672,87 @@ int arm_decode_ld_st_imm_unpriv(u32 instr, enum insn_type *type,
 	return 0;
 }
 
+static struct aarch64_insn_decoder atom_unallocs_decoder[] = {
+	{
+		.mask = 0b1001111,
+		.value = 0b0001001,
+	},
+	{
+		.mask = 0b1001110,
+		.value = 0b0001010,
+	},
+	{
+		.mask = 0b1001111,
+		.value = 0b0001101,
+	},
+	{
+		.mask = 0b1001110,
+		.value = 0b0001110,
+	},
+	{
+		.mask = 0b1101111,
+		.value = 0b0001100,
+	},
+	{
+		.mask = 0b1111111,
+		.value = 0b0111100,
+	},
+	{
+		.mask = 0b1000000,
+		.value = 0b1000000,
+	},
+};
+
+int arm_decode_atomic(u32 instr, enum insn_type *type,
+		      unsigned long *immediate,
+		      struct list_head *ops_list)
+{
+	unsigned char V = 0, A = 0, R = 0, o3 = 0, opc = 0;
+	unsigned char rn = 0, rt = 0;
+	unsigned char decode_field = 0;
+	struct stack_op *op;
+	int i = 0;
+
+	V = EXTRACT_BIT(instr, 26);
+	A = EXTRACT_BIT(instr, 23);
+	R = EXTRACT_BIT(instr, 22);
+	o3 = EXTRACT_BIT(instr, 15);
+	opc = (instr >> 12) & ONES(3);
+
+	decode_field = (V << 6) | (A << 5) | (R << 4) | (o3 << 3) | opc;
+
+	for (i = 0; i < ARRAY_SIZE(atom_unallocs_decoder); i++) {
+		if ((decode_field & atom_unallocs_decoder[i].mask) ==
+		    atom_unallocs_decoder[i].value) {
+			return arm_decode_unknown(instr,
+						  type,
+						  immediate,
+						  ops_list);
+		}
+	}
+
+	rn = (instr >> 5) & ONES(5);
+	rt = instr & ONES(5);
+
+	if (!stack_related_reg(rn)) {
+		*type = INSN_OTHER;
+		return 0;
+	}
+	*type = INSN_STACK;
+
+	op = calloc(1, sizeof(*op));
+	list_add_tail(&op->list, ops_list);
+
+	op->src.reg = rn;
+	op->src.type = OP_DEST_REG_INDIRECT;
+	op->src.offset = 0;
+	op->dest.type = OP_DEST_REG;
+	op->dest.reg = rt;
+	op->dest.offset = 0;
+
+	return 0;
+}
+
 int arm_decode_ld_st_regs_off(u32 instr, enum insn_type *type,
 			      unsigned long *immediate,
 			      struct list_head *ops_list)
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index 61152b4aa42a..89488c5df5e9 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -130,6 +130,8 @@ int arm_decode_ld_st_imm_unpriv(u32 instr, enum insn_type *type,
 int arm_decode_ld_st_imm_pre(u32 instr, enum insn_type *type,
 			     unsigned long *immediate,
 			     struct list_head *ops_list);
+int arm_decode_atomic(u32 instr, enum insn_type *type,
+		      unsigned long *immediate, struct list_head *ops_list);
 int arm_decode_ld_st_regs_off(u32 instr, enum insn_type *type,
 			      unsigned long *immediate,
 			      struct list_head *ops_list);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
