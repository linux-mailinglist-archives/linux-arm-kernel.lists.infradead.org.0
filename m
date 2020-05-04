Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 076771C3B07
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMGeNUF3LRloH86timxdm3QbOS6tPMFL1kqgMKw0Ugo=; b=fOQBkxqIMukgEo
	Fj3FFGlvtQjXCeTFUyQ/2aQCzqsyYM6DiRbbkv9o4NQ7Psg69JQmzdTL3EUOi7DqM82qB/XytfTYB
	QzVFG0dTEZulAoTq2suUfoWjoaqg0zbflZN6moyO/KC6brZwYZ5WvIAd6L10NdjtwRdvAZ8oB9VKL
	C9T2HrWajoyg/XNpPSzoLt1VXmZv9JKSr6BvluWdkLR+dtCSSQWRms3y+604oxl4Oz0Ce05KmtP3c
	cdfCUC1egTOOVy/c1aj0hfdsRVn9mZwwVZyspcOJ2XG9i0EtSFMnSLb1nIkuY961xduIZOC4ZmLMf
	46Z7eyv5IUukRncjRRtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVavO-0006uD-3z; Mon, 04 May 2020 13:14:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVauk-0006SK-DT
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:13:44 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78D832073E;
 Mon,  4 May 2020 13:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588598022;
 bh=p+zIKnwBto/y5X1aPkQKw4fGnTBRb6ihJ2BRXRFvPqE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=p8UNKGUxfV9SliYXTU+O8GC+QUaaGVkpbtHhUgzYjZ+Dfvq0GtW0liH6Cpyz9G6xc
 KqjTTrKgMGvj8wICF1G9uuMhTuIVJUra0vdZvRoUcvC31xVJ0RdFtGNYs3XIgFyLsf
 z9mQ2fw1A1A+L1uwg5Z7y/rTHpHxTlf/qLPiv0Yo=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v4 2/4] arm64: insn: Provide a better name for
 aarch64_insn_is_nop()
Date: Mon,  4 May 2020 14:13:24 +0100
Message-Id: <20200504131326.18290-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200504131326.18290-1-broonie@kernel.org>
References: <20200504131326.18290-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_061342_480606_4273F3ED 
X-CRM114-Status: GOOD (  12.60  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current aarch64_insn_is_nop() has exactly one caller which uses it
solely to identify if the instruction is a HINT that can safely be stepped,
requiring us to list things that aren't NOPs and make things more confusing
than they need to be. Rename the function to reflect the actual usage and
make things more clear.

Suggested-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/insn.h          | 2 +-
 arch/arm64/kernel/insn.c               | 3 +--
 arch/arm64/kernel/probes/decode-insn.c | 2 +-
 3 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
index 575675145fe2..0bc46149e491 100644
--- a/arch/arm64/include/asm/insn.h
+++ b/arch/arm64/include/asm/insn.h
@@ -368,7 +368,7 @@ __AARCH64_INSN_FUNCS(msr_reg,	0xFFF00000, 0xD5100000)
 
 #undef	__AARCH64_INSN_FUNCS
 
-bool aarch64_insn_is_nop(u32 insn);
+bool aarch64_insn_is_steppable_hint(u32 insn);
 bool aarch64_insn_is_branch_imm(u32 insn);
 
 static inline bool aarch64_insn_is_adr_adrp(u32 insn)
diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index d63d9cd8b4a2..0829bb5b45ec 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -51,8 +51,7 @@ enum aarch64_insn_encoding_class __kprobes aarch64_get_insn_class(u32 insn)
 	return aarch64_insn_encoding_class[(insn >> 25) & 0xf];
 }
 
-/* NOP is an alias of HINT */
-bool __kprobes aarch64_insn_is_nop(u32 insn)
+bool __kprobes aarch64_insn_is_steppable_hint(u32 insn)
 {
 	if (!aarch64_insn_is_hint(insn))
 		return false;
diff --git a/arch/arm64/kernel/probes/decode-insn.c b/arch/arm64/kernel/probes/decode-insn.c
index b78fac9e546c..263d5fba4c8a 100644
--- a/arch/arm64/kernel/probes/decode-insn.c
+++ b/arch/arm64/kernel/probes/decode-insn.c
@@ -46,7 +46,7 @@ static bool __kprobes aarch64_insn_is_steppable(u32 insn)
 		 * except for the NOP case.
 		 */
 		if (aarch64_insn_is_hint(insn))
-			return aarch64_insn_is_nop(insn);
+			return aarch64_insn_is_steppable_hint(insn);
 
 		return true;
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
