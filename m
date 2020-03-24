Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C791A191A4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 20:49:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPsoR9t+WWgYJG1KKQdxo3vz7+ADmhwJCpHpFhwXmck=; b=QohlF8txcmmYVX
	Emg54m4aJ1vOsJoYzf0EU3pWr8ofdUTTulxDpxGstMrhqFlnf20l9rHmXOkkNbiuvrFq/fkjiEOvI
	QEtDZcnVFfU1KtVT0yLi/G7/X0HADQmmoW5YmSIz9OScT/7eWkEmS8fxm7DK+G2+go7vEDyXGQHD1
	rXs3Ox8B/LANFAI7qQslN/ymNelTS5C+pey5stBZOXBzrv7MLXe08STFocm8XDnp2rmVD2yKfvC6C
	Rf0tNMtGGbxqPhDa5k6LbiPZV0hJ3ZfB+RHJNLI+nA6UUCIGxS2mpptMcN32t6gUNwZv1Lg7GWizD
	Z9LKN4Qhod1f/qRa0jVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGpY1-0005Qv-UD; Tue, 24 Mar 2020 19:49:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGpXK-0004tL-Uu
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 19:48:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0DD9F1045;
 Tue, 24 Mar 2020 12:48:30 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 871433F71F;
 Tue, 24 Mar 2020 12:48:29 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 2/3] arm64: insn: Add constants for PAC and BTI instruction
 decode
Date: Tue, 24 Mar 2020 19:48:21 +0000
Message-Id: <20200324194822.15682-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200324194822.15682-1-broonie@kernel.org>
References: <20200324194822.15682-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_124831_032626_F1AC8BCB 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add constants for decoding the various PAC and BTI instructions defined
in the HINT space. Since we are now decoding both the op2 and CRm fields
rename the enum as well; this is compatible with what the existing users
are doing.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/insn.h | 22 ++++++++++++++++++++--
 arch/arm64/kernel/insn.c      |  2 +-
 2 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
index bb313dde58a4..e88309ba06d9 100644
--- a/arch/arm64/include/asm/insn.h
+++ b/arch/arm64/include/asm/insn.h
@@ -39,13 +39,31 @@ enum aarch64_insn_encoding_class {
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
+	AARCH64_INSN_HINT_PACIA_1716 = 0x08 << 5,
+	AARCH64_INSN_HINT_PACIB_1716 = 0x0A << 5,
+	AARCH64_INSN_HINT_AUTIA_1716 = 0x0B << 5,
+	AARCH64_INSN_HINT_AUTIB_1716 = 0x0C << 5,
+	AARCH64_INSN_HINT_PACIAZ     = 0x18 << 5,
+	AARCH64_INSN_HINT_PACIASP    = 0x19 << 5,
+	AARCH64_INSN_HINT_PACIBZ     = 0x1A << 5,
+	AARCH64_INSN_HINT_PACIBSP    = 0x1B << 5,
+	AARCH64_INSN_HINT_AUTIAZ     = 0x1C << 5,
+	AARCH64_INSN_HINT_AUTIASP    = 0x1D << 5,
+	AARCH64_INSN_HINT_AUTIBZ     = 0x1E << 5,
+	AARCH64_INSN_HINT_AUTIBSP    = 0x1F << 5,
+
+	AARCH64_INSN_HINT_BTI   = 0x40 << 5,
+	AARCH64_INSN_HINT_BTIC  = 0x42 << 5,
+	AARCH64_INSN_HINT_BTIJ  = 0x44 << 5,
+	AARCH64_INSN_HINT_BTIJC = 0x4C << 5,
 };
 
 enum aarch64_insn_imm_type {
@@ -370,7 +388,7 @@ u32 aarch64_insn_gen_comp_branch_imm(unsigned long pc, unsigned long addr,
 				     enum aarch64_insn_branch_type type);
 u32 aarch64_insn_gen_cond_branch_imm(unsigned long pc, unsigned long addr,
 				     enum aarch64_insn_condition cond);
-u32 aarch64_insn_gen_hint(enum aarch64_insn_hint_op op);
+u32 aarch64_insn_gen_hint(enum aarch64_insn_hint_cr_op op);
 u32 aarch64_insn_gen_nop(void);
 u32 aarch64_insn_gen_branch_reg(enum aarch64_insn_register reg,
 				enum aarch64_insn_branch_type type);
diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 535a3a7a053e..fd77cdd87c47 100644
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
