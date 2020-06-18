Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D1F1FEAAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 07:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pUfhvPCfFgUxgCdz9lcgntoF/oKNVECEQLxiF/hJhoc=; b=lQWHswN55phQ5ruhF/24sKEGje
	r4lVTUnalmQOSLP//zM8d3XiVOKHji0u9hdB083uBI5EHbyG6i2LbJlgdSL0u5d0pq7SDGTAxFE5A
	KP936ueqRCy3JcrxGh9RqER3ZTnsfdX7p0mCNaMo3/dZcOhQykPnnDHbAAaF8gH5xrMl0ROTe37KI
	bxRlwN5RN+zqqRu1jHwo7ybd9Fw0pqOXhTEyZD6JnmjmWeBfKrrn8yveLuqPk1dz4mwQrYOo7Hfa+
	i6PKnz05eX2nAYH1lHbQrQEvDRmCZgrSW9H6fuy5ovaVeh1hJs2AOsCZ3xtxlcWilzNjDj93R/Rqx
	SuZj3oAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlmq5-00016Z-67; Thu, 18 Jun 2020 05:11:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlmpC-0000Ya-Pi
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 05:10:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AFA2F31B;
 Wed, 17 Jun 2020 22:10:53 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.24])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 665F33F71F;
 Wed, 17 Jun 2020 22:10:50 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/3] arm64: kprobe: disable probe of fault prone ptrauth
 instruction
Date: Thu, 18 Jun 2020 10:40:29 +0530
Message-Id: <1592457029-18547-4-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592457029-18547-1-git-send-email-amit.kachhap@arm.com>
References: <1592457029-18547-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_221054_881296_E65C925B 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

This patch disables the probing of authenticate ptrauth instruction (AUT*)
which falls under the hint instructions region. This is done to disallow
probe of authenticate instruction which may lead to ptrauth faults with the
addition of Armv8.6 enhanced ptrauth features.

The corresponding append pac ptrauth instruction (PAC*) is not disabled
and they can still be probed.

Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Change since v2:
 * Modified this patch to consider the merged changes for whitelisting
  of nops by commit 47d67e4d19184e ("arm64: insn: Report PAC and BTI").

 arch/arm64/kernel/insn.c               | 6 ------
 arch/arm64/kernel/probes/decode-insn.c | 2 +-
 2 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 684d871ae38d..9cd10edefc96 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -60,16 +60,10 @@ bool __kprobes aarch64_insn_is_steppable_hint(u32 insn)
 	case AARCH64_INSN_HINT_XPACLRI:
 	case AARCH64_INSN_HINT_PACIA_1716:
 	case AARCH64_INSN_HINT_PACIB_1716:
-	case AARCH64_INSN_HINT_AUTIA_1716:
-	case AARCH64_INSN_HINT_AUTIB_1716:
 	case AARCH64_INSN_HINT_PACIAZ:
 	case AARCH64_INSN_HINT_PACIASP:
 	case AARCH64_INSN_HINT_PACIBZ:
 	case AARCH64_INSN_HINT_PACIBSP:
-	case AARCH64_INSN_HINT_AUTIAZ:
-	case AARCH64_INSN_HINT_AUTIASP:
-	case AARCH64_INSN_HINT_AUTIBZ:
-	case AARCH64_INSN_HINT_AUTIBSP:
 	case AARCH64_INSN_HINT_BTI:
 	case AARCH64_INSN_HINT_BTIC:
 	case AARCH64_INSN_HINT_BTIJ:
diff --git a/arch/arm64/kernel/probes/decode-insn.c b/arch/arm64/kernel/probes/decode-insn.c
index 263d5fba4c8a..c26c638b260e 100644
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
