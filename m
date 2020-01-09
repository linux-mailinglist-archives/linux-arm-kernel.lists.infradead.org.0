Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4C2135DC8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:10:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3eiD49MmNov9sCwgzTe6qIX2JEorHsY8yTiyoisLRg=; b=oKRCoB0uIggeTS
	JsDSGd4tORGDMTpZNt98sKtVvItwFjbpgURyBeTptNi3+lgcPvZFnfLN+S1Nk3lfRuz2jtS8FtQ41
	lMp9sVubhgboLH/lAoM9xad32yv9EcmC3x2o0ignWDXbRNc7fY7ydiqwJaQEOYhUDqgru8G9Va5nV
	pgI6GX+KPeTSuiGybsCZwKTZqFeJX9rJ0FIbnL2G0joyaNi/pDL7BR+pG8ga/48akKtGwmCuBvOCf
	4LHirs+TkspB39Gf9DtWLOERq2WHa5yy1cPuW3Ei5sqU7CGnj0uNFiB8q4XfntY6KZh0riLVBJg36
	EAPCD1SrvKmehxk1nifw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaNe-0002cw-If; Thu, 09 Jan 2020 16:09:54 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaJe-0007Nr-OD
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:05:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585945;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uShC0TzvILfcSqwBAvApf38hhifFMlGiqOYN9FsIsRQ=;
 b=N+Gu22daIO8XtatQUJC+XzDb55vyTl0ypzXjANWqYAHryxBobu/JPx75W7HcDkje9u760e
 FFsTU0Vu5XODYkD7xNq/v+GKRs5MqH27k52NXSIAKCrTwtVVW6pKG7oMnm4twsA6+huWvu
 UjXHGoqRmsKStkcP3ydebMOMArlty2U=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-319-rPg8Z3-UMoOcS4N5SVcghg-1; Thu, 09 Jan 2020 11:05:44 -0500
Received: by mail-wr1-f69.google.com with SMTP id t3so3021212wrm.23
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:05:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Mml1mzhjK5wtC17nLrEN5fR+Z9py7ETGWVYItyxd8Hw=;
 b=FZcvbUu4+3ZVWPP75aiO/N5e5FIZITYfglxczQ75xJ4v4FW/57KXCoDdkSkqrVBoaQ
 OiB/ZP5B1+PJxJ8szyKLcTR0qDoiywV5On1XqwPnnbgUkghXr9NPI2CuDyCw95lFU3+Z
 CKsDIcfk0GWR60thIa+0b0h5n8aV/m5eHP/wRo+Mv2aL/AezMXGkheBntxQiTtOnHEto
 d6PPKfmvNjNvZPTp/Ng7X5Mp99wwgz2H6smkwQQyVWgGdZqY9BF0T51siSsNCOYaVKg1
 yOePtqbvsNmE06dRhlzXVmz78SYcRqRkKa3uKZzZqk3JKtkynxi9I2i5ttwi/ClURxKf
 31Xw==
X-Gm-Message-State: APjAAAUtKCFQDkrs5xpoyM1fCabqUYfueUaU2Rxa3bC/Cp1cvutNpWtM
 kWPxKrjA4PNRUFjUz6PcgB6X4XVI/Ba/2QJjsdjIBeDa+eGuezixTVQkqWao6M3bWoIrNmDvJGt
 hufjP2QmqRCSM/nTGSzr66fQH+D8d2WeSCrA=
X-Received: by 2002:a1c:2089:: with SMTP id g131mr5957477wmg.63.1578585943126; 
 Thu, 09 Jan 2020 08:05:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqyw4kwWJhsfey2tGM6eLUUWESwCEkAPg51xba9MD4w398rYCfFbg3NiYZBgdd7WT6pDYqRluw==
X-Received: by 2002:a1c:2089:: with SMTP id g131mr5957442wmg.63.1578585942891; 
 Thu, 09 Jan 2020 08:05:42 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id a16sm8545544wrt.37.2020.01.09.08.05.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:05:42 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 20/57] objtool: arm64: Decode unknown instructions
Date: Thu,  9 Jan 2020 16:02:23 +0000
Message-Id: <20200109160300.26150-21-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: rPg8Z3-UMoOcS4N5SVcghg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080546_905141_F3188191 
X-CRM114-Status: GOOD (  12.10  )
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

For aarch64, it is possible to have byte sequences that aren't valid
opcodes in the code sections. Do not report an error when the decoder
finds such a sequence, but make sure that those bytes cannot be reached
in the execution flow.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch.h                          |  1 +
 tools/objtool/arch/arm64/decode.c             | 22 ++++++++++++++++++-
 .../objtool/arch/arm64/include/insn_decode.h  |  7 ++++++
 tools/objtool/check.c                         | 10 ++++++++-
 4 files changed, 38 insertions(+), 2 deletions(-)

diff --git a/tools/objtool/arch.h b/tools/objtool/arch.h
index f9883c431949..0336efecb9d9 100644
--- a/tools/objtool/arch.h
+++ b/tools/objtool/arch.h
@@ -28,6 +28,7 @@ enum insn_type {
 	INSN_STD,
 	INSN_CLD,
 	INSN_OTHER,
+	INSN_INVALID,
 };
 
 enum op_dest_type {
diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 4d0ab2acca27..04358f41ef1d 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -78,7 +78,9 @@ static int is_arm64(struct elf *elf)
  *				 struct list_head *ops_list);
  */
 static arm_decode_class aarch64_insn_class_decode_table[NR_INSN_CLASS] = {
-	NULL,
+	[INSN_RESERVED]			= arm_decode_unknown,
+	[INSN_UNKNOWN]			= arm_decode_unknown,
+	[INSN_UNALLOC]			= arm_decode_unknown,
 };
 
 /*
@@ -125,3 +127,21 @@ int arch_decode_instruction(struct elf *elf, struct section *sec,
 		WARN_FUNC("Unsupported instruction", sec, offset);
 	return res;
 }
+
+int arm_decode_unknown(u32 instr, enum insn_type *type,
+		       unsigned long *immediate, struct list_head *ops_list)
+{
+	/*
+	 * There are a few reasons we might have non-valid opcodes in
+	 * code sections:
+	 * - For load literal, assembler can generate the data to be loaded in
+	 *   the code section
+	 * - Compiler/assembler can generate zeroes to pad function that do not
+	 *   end on 8-byte alignment
+	 * - Hand written assembly code might contain constants in the code
+	 *   section
+	 */
+	*type = INSN_INVALID;
+
+	return 0;
+}
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index c56b72ac4633..16066f8fca0d 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -5,6 +5,10 @@
 
 #include "../../../arch.h"
 
+#define INSN_RESERVED	0b0000
+#define INSN_UNKNOWN	0b0001
+#define INSN_UNALLOC	0b0011
+
 #define NR_INSN_CLASS	16
 #define INSN_CLASS(opcode)	(((opcode) >> 25) & (NR_INSN_CLASS - 1))
 
@@ -12,4 +16,7 @@ typedef int (*arm_decode_class)(u32 instr, enum insn_type *type,
 				unsigned long *immediate,
 				struct list_head *ops_list);
 
+/* arm64 instruction classes */
+int arm_decode_unknown(u32 instr, enum insn_type *type,
+		       unsigned long *immediate, struct list_head *ops_list);
 #endif /* _ARM_INSN_DECODE_H */
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 48aec56a7760..52a8e64e15ca 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1818,6 +1818,13 @@ static int validate_branch_alt_safe(struct objtool_file *file,
 	while (1) {
 		next_insn = next_insn_same_sec(file, insn);
 
+		if (insn->type == INSN_INVALID) {
+			WARN("%s+0x%lx non-executable instruction, should never be reached",
+			     insn->sec->name,
+			     insn->offset);
+			return 1;
+		}
+
 		if (file->c_file && func && insn->func && func != insn->func->pfunc) {
 			WARN("%s() falls through to next function %s()",
 			     func->name, insn->func->name);
@@ -2137,7 +2144,8 @@ static bool ignore_unreachable_insn(struct instruction *insn)
 {
 	int i;
 
-	if (insn->ignore || insn->type == INSN_NOP)
+	if (insn->ignore || insn->type == INSN_NOP ||
+	    insn->type == INSN_INVALID)
 		return true;
 
 	/*
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
