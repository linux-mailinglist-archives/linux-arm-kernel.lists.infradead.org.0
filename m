Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCBA10248E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 13:36:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1KvC2fe+l1jPj8I//rLEnv17935E3+bUh1Ork9MHeVE=; b=h6hTSK99F0rKJQH4yZYQwhHl8r
	KUiXftCASYYE4t0/nBSfIfWKGVrA3bdQdAM+sR5Ex/buWSvs/oeLKEiqFrbFlAHpEihnGpkJtWm6c
	PmbyrMlm29YJtJ6+u9DowaUXjhq/sr5jwNrqwjQxgpsjMHynOJa9czdnX7ZhkHAlcLeVfGQWkAn6j
	//Qk4f+jqxB0FUkCAFgkyT0/Go7mp0ov1B4zcOn27Ve6nV5xqQucE5p/NDEtc6n3D5UAhG/QvvaXc
	DQWSlFSThkjudWwKjhBC5wTmwnAOJfTFe6rrWz2dY342ESljL0PIKwZBXeZ/DGwlk2LxlQS7eCXAv
	hb424xpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX2kP-0002cm-8B; Tue, 19 Nov 2019 12:36:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX2hW-0007Pz-RL
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 12:33:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A44630E;
 Tue, 19 Nov 2019 04:33:46 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A0F103F703;
 Tue, 19 Nov 2019 04:33:42 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 12/14] arm64: kprobe: disable probe of ptrauth instruction
Date: Tue, 19 Nov 2019 18:02:24 +0530
Message-Id: <1574166746-27197-13-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_043346_981857_CA16401F 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch disables the probing of authenticate ptrauth
instruction which falls under the hint instructions region.
This is done to disallow probe of instruction which may lead
to ptrauth faults.

The corresponding append pac ptrauth instruction is not
disabled as they are typically the first instruction in the
function so disabling them will be disabling the function
probe itself. Also, appending pac do not cause any exception
in itself.

Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Change since last version:
 * New patch

 arch/arm64/include/asm/insn.h          | 13 +++++++------
 arch/arm64/kernel/insn.c               |  1 +
 arch/arm64/kernel/probes/decode-insn.c |  2 +-
 3 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
index 39e7780..d055694 100644
--- a/arch/arm64/include/asm/insn.h
+++ b/arch/arm64/include/asm/insn.h
@@ -40,12 +40,13 @@ enum aarch64_insn_encoding_class {
 };
 
 enum aarch64_insn_hint_op {
-	AARCH64_INSN_HINT_NOP	= 0x0 << 5,
-	AARCH64_INSN_HINT_YIELD	= 0x1 << 5,
-	AARCH64_INSN_HINT_WFE	= 0x2 << 5,
-	AARCH64_INSN_HINT_WFI	= 0x3 << 5,
-	AARCH64_INSN_HINT_SEV	= 0x4 << 5,
-	AARCH64_INSN_HINT_SEVL	= 0x5 << 5,
+	AARCH64_INSN_HINT_NOP		= 0x0 << 5,
+	AARCH64_INSN_HINT_YIELD		= 0x1 << 5,
+	AARCH64_INSN_HINT_WFE		= 0x2 << 5,
+	AARCH64_INSN_HINT_WFI		= 0x3 << 5,
+	AARCH64_INSN_HINT_SEV		= 0x4 << 5,
+	AARCH64_INSN_HINT_SEVL		= 0x5 << 5,
+	AARCH64_INSN_HINT_AUTIASP	= (0x3 << 8) | (0x5 << 5),
 };
 
 enum aarch64_insn_imm_type {
diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index d801a70..d172386 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -62,6 +62,7 @@ bool __kprobes aarch64_insn_is_nop(u32 insn)
 	case AARCH64_INSN_HINT_WFI:
 	case AARCH64_INSN_HINT_SEV:
 	case AARCH64_INSN_HINT_SEVL:
+	case AARCH64_INSN_HINT_AUTIASP:
 		return false;
 	default:
 		return true;
diff --git a/arch/arm64/kernel/probes/decode-insn.c b/arch/arm64/kernel/probes/decode-insn.c
index b78fac9..a7caf84 100644
--- a/arch/arm64/kernel/probes/decode-insn.c
+++ b/arch/arm64/kernel/probes/decode-insn.c
@@ -42,7 +42,7 @@ static bool __kprobes aarch64_insn_is_steppable(u32 insn)
 			     != AARCH64_INSN_SPCLREG_DAIF;
 
 		/*
-		 * The HINT instruction is is problematic when single-stepping,
+		 * The HINT instruction is problematic when single-stepping,
 		 * except for the NOP case.
 		 */
 		if (aarch64_insn_is_hint(insn))
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
