Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C1D135DDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:12:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVScanfkJi5WidFh/jwqVBW+BtZDTOF/xtgdZ7mSs4Q=; b=t0hVokNLbuVOiz
	s8yOJSWVgxqPizEqqYDSMcPrSIg7MdYrXnD+krpc3Mf1u3+LyYl22vBsuesV2AuCnxifJtyMTu1Ke
	sbo43+HKoUQkCfjo1pTAzFjN3EHyJJD3fGg+1kXuaxjTa6VBO4EskDGzUNFipXFnSUE2We37KPPzM
	6YU5KlmZthaLgUjXTCywZPaJYW3C8zMm6N/3ieDxnbqb3MR/UxXmFKHvHkqYzWK6iQ0ZhoP8zt3IK
	aiY/FfoTu1OOzDJUuZF4jcV3HFS6avSBeozSKEEe0oDOIzR4Of3DOzHcjz/JHVUr07w9VEqD9uDuH
	6bZE9PPCvfFCZJar9mMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaQ6-00064T-JQ; Thu, 09 Jan 2020 16:12:26 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaKG-0007uE-85
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:06:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585982;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Cg04LeivDqCyzx2mah0zKMuO/OHMVXi2xzNv/WSk8HU=;
 b=ehiFB4gOSXsWS8SLZoH9PG9Mrcehow47fAx1iQP6mtC7vvLATn3Eojwrev7ZrAcIMeRfus
 PWUZrFzdhla/D0JwUA5YokO8vagtbXQ7rlUn5fTXuSovkODJ+eLbIKHS1/TUX1kgcMPBkN
 eq8sqxPFgnKbWycq3gye+g3Qa+u4zNY=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-238-XT7vV1PiNzK6TgT5WZy-PQ-1; Thu, 09 Jan 2020 11:06:21 -0500
Received: by mail-wm1-f71.google.com with SMTP id p2so1102488wma.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:06:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=59aS99No1krrXfIWCRAYZAAd//TqWaD8qP5fyW3sdMg=;
 b=Ny83KpQ6hnAIR/zp1rR53dlBi1GKlTZAm3bOYJZTIUDvAl+NCO1v8rWhENBZWQJajM
 /UtArNMzORstkK+4+OBXJTf1FS2DWaWg9LvNnFJBCFiMI7zIjiRRiwvEZojxHli9fJU2
 YMabZDzHWcuyBtaOPjGJkPeYbyehmgH0pQmzwzV8vq0JwkMly5wQzc0yqt90DAB3YV+E
 UZ5zvgvDdty65AVSdO1xtD1sJEr5LIhtalMAEjCmPCTLu7UJM9+8mQM9AsDhHlUgs4b1
 K9dwv8jaBpRI2+Q8WX9cFq7E+/K8GpOiu4wGukvgT8CAeFQRQxNxGb0LINpT/V7EFuMa
 nkhg==
X-Gm-Message-State: APjAAAWu8CdlgPFtPGDN8ADFwINKYnH9SGx7Ky2idLxfloVKvIwb+MUb
 RWpG52u3ZxpCLZ56TDkVlugaDGSnqUucMTeNgn7bDRZu3rI5/bQT3i4S+F8WA6wjZ22p/zMW9eU
 16ZPb4NPmr8o3BKhQRD2QralVGWnvEdMuqXM=
X-Received: by 2002:a1c:4e10:: with SMTP id g16mr5663402wmh.94.1578585980288; 
 Thu, 09 Jan 2020 08:06:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqyjRFkbMIepr4wXf1QqLfVFyAf3vdn/APW9YXTZqFn1HcPM1Jr3zmviIV97H+YUovcevsWwVA==
X-Received: by 2002:a1c:4e10:: with SMTP id g16mr5663373wmh.94.1578585980101; 
 Thu, 09 Jan 2020 08:06:20 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id e18sm8643101wrr.95.2020.01.09.08.06.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:06:19 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 25/57] objtool: arm64: Decode calls to higher EL
Date: Thu,  9 Jan 2020 16:02:28 +0000
Message-Id: <20200109160300.26150-26-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: XT7vV1PiNzK6TgT5WZy-PQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080624_412875_5D03DCEF 
X-CRM114-Status: GOOD (  11.72  )
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

Decode instructions that volontarily trigger exceptions to a higher
exception level.

It is assumed that the higher exception level should service the request
in a sane maner, returning to the caller exception level without
altering its context too much (e.g. not modifying the PC, the stack
pointer or the frame pointer).

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 45 +++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |  2 +
 2 files changed, 47 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index c38d73fb57e1..aa00de725686 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -419,6 +419,11 @@ static struct aarch64_insn_decoder br_sys_decoder[] = {
 		.value = 0b1100100010000000000000,
 		.decode_func = arm_decode_system_regs,
 	},
+	{
+		.mask = 0b1111100000000000000000,
+		.value = 0b1100000000000000000000,
+		.decode_func = arm_decode_except_gen,
+	},
 };
 
 int arm_decode_br_sys(u32 instr, enum insn_type *type,
@@ -486,3 +491,43 @@ int arm_decode_system_regs(u32 instr, enum insn_type *type,
 	*type = INSN_OTHER;
 	return 0;
 }
+
+int arm_decode_except_gen(u32 instr, enum insn_type *type,
+			  unsigned long *immediate, struct list_head *ops_list)
+{
+	u32 imm16 = 0;
+	unsigned char opc = 0, op2 = 0, LL = 0, decode_field = 0;
+
+	imm16 = (instr >> 5) & ONES(16);
+	opc = (instr >> 21) & ONES(3);
+	op2 = (instr >> 2) & ONES(3);
+	LL = instr & ONES(2);
+	decode_field = (opc << 5) | (op2 << 2) | LL;
+
+#define INSN_SVC	0b00000001
+#define INSN_HVC	0b00000010
+#define INSN_SMC	0b00000011
+
+	switch (decode_field) {
+	case INSN_SVC:
+	case INSN_HVC:
+	case INSN_SMC:
+		/*
+		 * We consider that the context will be restored correctly
+		 * with an unchanged sp and the same general registers
+		 */
+		*type = INSN_NOP;
+		return 0;
+	default:
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+	}
+
+#undef INSN_SVC
+#undef INSN_HVC
+#undef INSN_SMC
+#undef INSN_BRK
+#undef INSN_HLT
+#undef INSN_DCPS1
+#undef INSN_DCPS2
+#undef INSN_DCPS3
+}
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index 777a62f1a141..a55dcbfcfed2 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -70,4 +70,6 @@ int arm_decode_system_insn(u32 instr, enum insn_type *type,
 int arm_decode_system_regs(u32 instr, enum insn_type *type,
 			   unsigned long *immediate,
 			   struct list_head *ops_list);
+int arm_decode_except_gen(u32 instr, enum insn_type *type,
+			  unsigned long *immediate, struct list_head *ops_list);
 #endif /* _ARM_INSN_DECODE_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
