Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A7C135DD6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:11:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJwvbOcFi2iOOsgKPfggBVX7FKiCiYrKrmWr+doXXs0=; b=Iqv5zs+OAxLmte
	JlBVPVkPHehoufK5wN+iWH2+jrmnMXvoeDzfZg5RsesDXetxO5uIH7/LLVGgyuvZFF5sDBbW2CWYx
	+kmIdfVlF2FEzS8Qygxn4eacI10TJsQOs/RdW6fWCLtlABqFL41GZOlQ1ETzTwDMaVP1JiREXTj43
	RXuYaf7O8gEBPWsPS6QdoYjm5e1TtndInSmrUaiausIVYqoVfGW6a3NOW11tGjDR1i0Kh5TSmLQB5
	eFAvRUjOGphkgY/8f0bCqkdZrJdgXb0EkMW2bAhRJuOshhW2VQzyitJ++2+1k+t30h9mkwsIS1+KR
	SEVESuSS9/f0UaCDMyqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaOi-0004pe-Ss; Thu, 09 Jan 2020 16:11:00 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaJh-0007Q3-Be
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:05:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585947;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SK6heBwfqxiTCLT9bS4AgsWzBnwRSJTG6nXoFuN+nRY=;
 b=VhhpwX7icNHDqE75pTuFbxwrfgw9zUaX90gXtIoTS6UXuLESY1FC1LuhRd/MKtgHw9sxPw
 3W5Ctk72TqATaQXfd5IJUviT0uE4nNCCq/2XqFmFqpSAYDxZxuGyeDpsp9a+ZSI+j7e/ko
 3Po7Up3eH6ilJvx34bV2yh+aEsMc3VQ=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-146-w4X6DTFePiq_DRXfqcc6mA-1; Thu, 09 Jan 2020 11:05:45 -0500
Received: by mail-wr1-f70.google.com with SMTP id z10so3023107wrt.21
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:05:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5AHYV2UMb6QFH2KrZdQF90S4dwnJAUXmqxV2bgFAoj4=;
 b=mSOc/877dWao8zHRkzKqyCuH0I3Z1lGQ4BOA77FZ3t6WOMZfeix0C3AFJWf9RDZMe/
 e+grXzwi+hN7UiTVpT5+EeTKbv9ntlEOttbV6/8U7E4n435rzK6NpamEebF521FQvUVk
 I1tx7K+9V9gXyBYl1dNMjIEloqp+cd5kDxssA1WwBtM8g7wzqcpjXqeCzc5cKQw/42qi
 2RdUwOSDOB/LD3h8UDfPbGEc1SpaJutIMe7OswmiP7lhm3weiWgSodvGzda37Bv+3nvi
 o4NmHTfV8KSUkpNJR2iiViWy/yOA5h5p3LWQjcAxbYfKOxdmxLiDBrr9mnDxb7oODAV/
 3rCw==
X-Gm-Message-State: APjAAAVMSVhKY7O67j98+E/q97J90qfbiWnOPjfswhaGt7Ml064D60ir
 3MUUeL82GN4LbbZHQ24PVYYvoxvgc8IJnt5RKx3uW8jxpEIF7tfRhQWZ0EfzC1qrk6ZbIWcM7QO
 okswlThv9X0TM1+ffvY6Y2E0fVZysfTnMLGI=
X-Received: by 2002:adf:ee88:: with SMTP id b8mr12352660wro.249.1578585944487; 
 Thu, 09 Jan 2020 08:05:44 -0800 (PST)
X-Google-Smtp-Source: APXvYqziyrPjjwc6jFBPwhewcMunWuDhPtWfMzeeejSLNUTdBAiUMf1lRurJ4PQYCUI/+LBPOsBfYw==
X-Received: by 2002:adf:ee88:: with SMTP id b8mr12352633wro.249.1578585944225; 
 Thu, 09 Jan 2020 08:05:44 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id a16sm8545544wrt.37.2020.01.09.08.05.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:05:43 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 21/57] objtool: arm64: Decode simple data processing
 instructions
Date: Thu,  9 Jan 2020 16:02:24 +0000
Message-Id: <20200109160300.26150-22-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: w4X6DTFePiq_DRXfqcc6mA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080549_480342_D169290B 
X-CRM114-Status: GOOD (  10.20  )
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

Decode data processing instructions that do not constitute stack
operations.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 104 ++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |  18 +++
 2 files changed, 122 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 04358f41ef1d..6c8db9335fc9 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -81,6 +81,7 @@ static arm_decode_class aarch64_insn_class_decode_table[NR_INSN_CLASS] = {
 	[INSN_RESERVED]			= arm_decode_unknown,
 	[INSN_UNKNOWN]			= arm_decode_unknown,
 	[INSN_UNALLOC]			= arm_decode_unknown,
+	[0b1000 ... INSN_DP_IMM]	= arm_decode_dp_imm,
 };
 
 /*
@@ -145,3 +146,106 @@ int arm_decode_unknown(u32 instr, enum insn_type *type,
 
 	return 0;
 }
+
+#define NR_DP_IMM_SUBCLASS	8
+#define INSN_DP_IMM_SUBCLASS(opcode)			\
+	(((opcode) >> 23) & (NR_DP_IMM_SUBCLASS - 1))
+
+static arm_decode_class aarch64_insn_dp_imm_decode_table[NR_DP_IMM_SUBCLASS] = {
+	[0 ... INSN_PCREL]	= arm_decode_pcrel,
+	[INSN_MOVE_WIDE]	= arm_decode_move_wide,
+	[INSN_BITFIELD]		= arm_decode_bitfield,
+	[INSN_EXTRACT]		= arm_decode_extract,
+};
+
+int arm_decode_dp_imm(u32 instr, enum insn_type *type,
+		      unsigned long *immediate, struct list_head *ops_list)
+{
+	arm_decode_class decode_fun;
+
+	decode_fun = aarch64_insn_dp_imm_decode_table[INSN_DP_IMM_SUBCLASS(instr)];
+	if (!decode_fun)
+		return -1;
+	return decode_fun(instr, type, immediate, ops_list);
+}
+
+int arm_decode_pcrel(u32 instr, enum insn_type *type,
+		     unsigned long *immediate, struct list_head *ops_list)
+{
+	unsigned char page = 0;
+	u32 immhi = 0, immlo = 0;
+
+	page = EXTRACT_BIT(instr, 31);
+	immhi = (instr >> 5) & ONES(19);
+	immlo = (instr >> 29) & ONES(2);
+
+	*immediate = SIGN_EXTEND((immhi << 2) | immlo, 21);
+
+	if (page)
+		*immediate = SIGN_EXTEND(*immediate << 12, 33);
+
+	*type = INSN_OTHER;
+
+	return 0;
+}
+
+int arm_decode_move_wide(u32 instr, enum insn_type *type,
+			 unsigned long *immediate, struct list_head *ops_list)
+{
+	u32 imm16 = 0;
+	unsigned char hw = 0, opc = 0, sf = 0;
+
+	sf = EXTRACT_BIT(instr, 31);
+	opc = (instr >> 29) & ONES(2);
+	hw = (instr >> 21) & ONES(2);
+	imm16 = (instr >> 5) & ONES(16);
+
+	if ((sf == 0 && (hw & 0x2)) || opc == 0x1)
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+
+	*type = INSN_OTHER;
+	*immediate = imm16;
+
+	return 0;
+}
+
+int arm_decode_bitfield(u32 instr, enum insn_type *type,
+			unsigned long *immediate, struct list_head *ops_list)
+{
+	unsigned char sf = 0, opc = 0, N = 0;
+
+	sf = EXTRACT_BIT(instr, 31);
+	opc = (instr >> 29) & ONES(2);
+	N = EXTRACT_BIT(instr, 22);
+
+	if (opc == 0x3 || sf != N)
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+
+	*type = INSN_OTHER;
+
+	return 0;
+}
+
+int arm_decode_extract(u32 instr, enum insn_type *type,
+		       unsigned long *immediate, struct list_head *ops_list)
+{
+	unsigned char sf = 0, op21 = 0, N = 0, o0 = 0;
+	unsigned char imms = 0;
+	unsigned char decode_field = 0;
+
+	sf = EXTRACT_BIT(instr, 31);
+	op21 = (instr >> 29) & ONES(2);
+	N = EXTRACT_BIT(instr, 22);
+	o0 = EXTRACT_BIT(instr, 21);
+	imms = (instr >> 10) & ONES(6);
+
+	decode_field = (sf << 4) | (op21 << 2) | (N << 1) | o0;
+	*type = INSN_OTHER;
+	*immediate = imms;
+
+	if ((decode_field == 0 && !EXTRACT_BIT(imms, 5)) ||
+	    decode_field == 0b10010)
+		return 0;
+
+	return arm_decode_unknown(instr, type, immediate, ops_list);
+}
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index 16066f8fca0d..06235d81300c 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -8,15 +8,33 @@
 #define INSN_RESERVED	0b0000
 #define INSN_UNKNOWN	0b0001
 #define INSN_UNALLOC	0b0011
+#define INSN_DP_IMM	0b1001	//0x100x
 
 #define NR_INSN_CLASS	16
 #define INSN_CLASS(opcode)	(((opcode) >> 25) & (NR_INSN_CLASS - 1))
 
+#define INSN_PCREL	0b001	//0b00x
+#define INSN_MOVE_WIDE	0b101
+#define INSN_BITFIELD	0b110
+#define INSN_EXTRACT	0b111
+
 typedef int (*arm_decode_class)(u32 instr, enum insn_type *type,
 				unsigned long *immediate,
 				struct list_head *ops_list);
 
 /* arm64 instruction classes */
+int arm_decode_dp_imm(u32 instr, enum insn_type *type,
+		      unsigned long *immediate, struct list_head *ops_list);
 int arm_decode_unknown(u32 instr, enum insn_type *type,
 		       unsigned long *immediate, struct list_head *ops_list);
+
+/* arm64 data processing -- immediate subclasses */
+int arm_decode_pcrel(u32 instr, enum insn_type *type,
+		     unsigned long *immediate, struct list_head *ops_list);
+int arm_decode_move_wide(u32 instr, enum insn_type *type,
+			 unsigned long *immediate, struct list_head *ops_list);
+int arm_decode_bitfield(u32 instr, enum insn_type *type,
+			unsigned long *immediate, struct list_head *ops_list);
+int arm_decode_extract(u32 instr, enum insn_type *type,
+		       unsigned long *immediate, struct list_head *ops_list);
 #endif /* _ARM_INSN_DECODE_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
