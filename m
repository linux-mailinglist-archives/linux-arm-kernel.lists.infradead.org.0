Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF22E1C1246
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 14:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbBaaza8cr5C/1k0tZlhk9Xcj7DXouEdYdsI4QzR28M=; b=jpD35KSAefH8mS
	+2GrQP6gMCils74+lR5daW9k7TkCW4VGCxf+ak5zeAQaZ9go48Ap3Sq3EMvmNZJjSbmMlMB1yA6H/
	ROau4cx8R8QA0x+tfPk3m4kZDKp4pxYiMyneiocI4EScU3OFV+MyeopkcGB1C8x9AERiYkYYxCgnS
	ljRFW54XNnTEVsNymMqQBhY8yJ5HfOL3VuMGdvPKm+gSwP+znDcc+L/73z3W6+uh3btTxnshvPicg
	hnpBSDYa3OqXv80K+htVJkF9qjDBF760e854602cKnaO83EG+PZzPoFg/NnDuOg7/O6+Y01nLnVFJ
	Hswo3pgdpeBvSFvRdKvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUUvV-0002iz-DF; Fri, 01 May 2020 12:37:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUUuy-0002MW-8l
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 12:37:25 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4DC85208D6;
 Fri,  1 May 2020 12:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588336643;
 bh=aU63pezTHa4vMriUzARUKzoyvcityNdTc2IEF0t7LK8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sGC0U4MMekBV9H95BhM2KEHkMfrTbBP8rGZ+i9Gw8Z9WIiqDIk+17YrwZfLGGDFDZ
 ++sG9YXOwvesONPDT55K7m2tNPqz5SCUCObrU8WVvG/CWS6dwYeuKMTUBexb5UiYuq
 EPXvSTFXs568nTXY3Qr1UkoB8JtLc249e+v+Ba9w=
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v3 2/3] arm64: insn: Add constants for new HINT instruction
 decode
Date: Fri,  1 May 2020 13:37:08 +0100
Message-Id: <20200501123709.6640-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501123709.6640-1-broonie@kernel.org>
References: <20200501123709.6640-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_053724_364448_9437CE09 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add constants for decoding newer instructions defined in the HINT space.
Since we are now decoding both the op2 and CRm fields rename the enum as
well; this is compatible with what the existing users are doing.

Signed-off-by: Mark Brown <broonie@kernel.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/insn.h | 28 ++++++++++++++++++++++++++--
 arch/arm64/kernel/insn.c      |  2 +-
 2 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
index bb313dde58a4..575675145fe2 100644
--- a/arch/arm64/include/asm/insn.h
+++ b/arch/arm64/include/asm/insn.h
@@ -39,13 +39,37 @@ enum aarch64_insn_encoding_class {
 					 * system instructions */
 };
 
-enum aarch64_insn_hint_op {
+enum aarch64_insn_hint_cr_op {
 	AARCH64_INSN_HINT_NOP	= 0x0 << 5,
 	AARCH64_INSN_HINT_YIELD	= 0x1 << 5,
 	AARCH64_INSN_HINT_WFE	= 0x2 << 5,
 	AARCH64_INSN_HINT_WFI	= 0x3 << 5,
 	AARCH64_INSN_HINT_SEV	= 0x4 << 5,
 	AARCH64_INSN_HINT_SEVL	= 0x5 << 5,
+
+	AARCH64_INSN_HINT_XPACLRI    = 0x07 << 5,
+	AARCH64_INSN_HINT_PACIA_1716 = 0x08 << 5,
+	AARCH64_INSN_HINT_PACIB_1716 = 0x0A << 5,
+	AARCH64_INSN_HINT_AUTIA_1716 = 0x0C << 5,
+	AARCH64_INSN_HINT_AUTIB_1716 = 0x0E << 5,
+	AARCH64_INSN_HINT_PACIAZ     = 0x18 << 5,
+	AARCH64_INSN_HINT_PACIASP    = 0x19 << 5,
+	AARCH64_INSN_HINT_PACIBZ     = 0x1A << 5,
+	AARCH64_INSN_HINT_PACIBSP    = 0x1B << 5,
+	AARCH64_INSN_HINT_AUTIAZ     = 0x1C << 5,
+	AARCH64_INSN_HINT_AUTIASP    = 0x1D << 5,
+	AARCH64_INSN_HINT_AUTIBZ     = 0x1E << 5,
+	AARCH64_INSN_HINT_AUTIBSP    = 0x1F << 5,
+
+	AARCH64_INSN_HINT_ESB  = 0x10 << 5,
+	AARCH64_INSN_HINT_PSB  = 0x11 << 5,
+	AARCH64_INSN_HINT_TSB  = 0x12 << 5,
+	AARCH64_INSN_HINT_CSDB = 0x14 << 5,
+
+	AARCH64_INSN_HINT_BTI   = 0x20 << 5,
+	AARCH64_INSN_HINT_BTIC  = 0x22 << 5,
+	AARCH64_INSN_HINT_BTIJ  = 0x24 << 5,
+	AARCH64_INSN_HINT_BTIJC = 0x26 << 5,
 };
 
 enum aarch64_insn_imm_type {
@@ -370,7 +394,7 @@ u32 aarch64_insn_gen_comp_branch_imm(unsigned long pc, unsigned long addr,
 				     enum aarch64_insn_branch_type type);
 u32 aarch64_insn_gen_cond_branch_imm(unsigned long pc, unsigned long addr,
 				     enum aarch64_insn_condition cond);
-u32 aarch64_insn_gen_hint(enum aarch64_insn_hint_op op);
+u32 aarch64_insn_gen_hint(enum aarch64_insn_hint_cr_op op);
 u32 aarch64_insn_gen_nop(void);
 u32 aarch64_insn_gen_branch_reg(enum aarch64_insn_register reg,
 				enum aarch64_insn_branch_type type);
diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 595c0fddeeb2..d458604a96a3 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -570,7 +570,7 @@ u32 aarch64_insn_gen_cond_branch_imm(unsigned long pc, unsigned long addr,
 					     offset >> 2);
 }
 
-u32 __kprobes aarch64_insn_gen_hint(enum aarch64_insn_hint_op op)
+u32 __kprobes aarch64_insn_gen_hint(enum aarch64_insn_hint_cr_op op)
 {
 	return aarch64_insn_get_hint_value() | op;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
