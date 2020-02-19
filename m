Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF541644E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 14:02:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bOhg6aeHTgqUr2yk8AcN0t2IS9oG62PGQVNgck97PxQ=; b=e1PQgXIwYiGEDscnUAxIR2LoI2
	t2RYjodvjvierSCsY8s0iaIhYCPkODg3AylYwe6NHRGbwNTC75NIrM5ct0NUeyJUz2Y3rr6kDhGe9
	A/8piGGjRzgr+cVSBP3iIq8OtntVGrw611QydEwRlMuPFo6N8gmYmaT3Vr1h5NZ8nEHPeh6Ph5QN5
	GWFdEqdK4qf2vlm6BOypVWDqY8mZlLh1cpuiVFmxWu3Y5XgHA2q49jLF2oHwD/PeyfgZenJT9CKJ/
	FGMk5nOEnIe36r3RymPTdN0YYQGRUy2Y2oGV7q+Dr92xd3Sl5TsXdVOTBAa3dtoOlDqlRIiRJualV
	tl4DX23w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Ozt-0002Zc-3o; Wed, 19 Feb 2020 13:02:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4OyS-0001Jv-Gu
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 13:01:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73FD81FB;
 Wed, 19 Feb 2020 05:01:07 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2DE153F68F;
 Wed, 19 Feb 2020 05:01:03 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: kprobe: disable probe of fault prone ptrauth
 instruction
Date: Wed, 19 Feb 2020 18:30:40 +0530
Message-Id: <1582117240-15330-3-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582117240-15330-1-git-send-email-amit.kachhap@arm.com>
References: <1582117240-15330-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_050108_621567_349815F8 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch disables the probing of authenticate ptrauth instruction
(AUTIASP) which falls under the hint instructions region. This is done
to disallow probe of authenticate instruction in the kernel which may
lead to ptrauth faults with the addition of Armv8.6 enhanced ptrauth
features.

The corresponding append pac ptrauth instruction (PACIASP) is not disabled
and they can still be probed.

Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
 arch/arm64/include/asm/insn.h          | 13 +++++++------
 arch/arm64/kernel/insn.c               |  1 +
 arch/arm64/kernel/probes/decode-insn.c |  2 +-
 3 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
index bb313dd..2e01db0 100644
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
index 4a9e773..87f7c8a 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -63,6 +63,7 @@ bool __kprobes aarch64_insn_is_nop(u32 insn)
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
