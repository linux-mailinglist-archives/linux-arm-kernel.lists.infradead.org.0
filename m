Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D51146590
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 11:22:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2DAaawnu7a818pmJ9v/lp0Ag01mEuAiF2kjfFI8Ke98=; b=oTvmys9rLIxvs49+bg99Ya8tGN
	ajLSQ9UVquq5kWYwYbGLHn4wc7Jjw+Qe7iTAJPUgitcNdo5OW559ax8uyloq9fZ1ELBQaqRs/Njjs
	G6160E0kBXvErqAmMBRzsEeVWv0rhMp6b6LSQimXrYuwfkF9VCN4YsLw4curlDfFOtLzv7UeAjs+E
	d/zSKp5txTO6fd0erDP5vQuBBw2T4VOozuXPz6pcZdjyKjfvxTkrLmJjuQKy/XHs1JG+N1ytY2LMR
	hjP0iQ1PJeG6/2FKzZZJp95QyepB2r1QyGx3nLRdQ1Zcy+mqumnPXb7cvUh2T+fprqVfwuKPkFJx5
	N6UwF9bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZcY-0006Dh-0e; Thu, 23 Jan 2020 10:21:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZbk-0005z4-US
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 10:21:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 62191FEC;
 Thu, 23 Jan 2020 02:21:04 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.79])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AF67D3F6C4;
 Thu, 23 Jan 2020 02:21:00 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 01/17] arm64: cpufeature: Fix meta-capability cpufeature
 check
Date: Thu, 23 Jan 2020 15:50:23 +0530
Message-Id: <1579774839-19562-2-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579774839-19562-1-git-send-email-amit.kachhap@arm.com>
References: <1579774839-19562-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_022105_021892_9340B1BC 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some existing meta cpucaps match needs the presence of individual
cpucaps. Currently the individual cpucaps checks it via an array
based flag and this introduces dependency on the array entry order.
This limitation exists only for system scope cpufeature.

This patch introduces a helper function (system_has_cap) to invoke
the matching handler for system scope. This is similar to the
existing helper function (this_cpu_has_cap) for local cpu scope.

Use this new helper function for an existing meta cpucaps.

Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since v3:
 * New patch.
 * This is added as suggested by Catalin [1] to avoid the array entry order
   dependency.
 * A new helper system_has_cap is added.

[1]: http://lists.infradead.org/pipermail/linux-arm-kernel/2020-January/705845.html

 arch/arm64/include/asm/cpufeature.h |  1 +
 arch/arm64/kernel/cpufeature.c      | 13 ++++++++++++-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 4261d55..695e538 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -382,6 +382,7 @@ extern DECLARE_BITMAP(boot_capabilities, ARM64_NPATCHABLE);
 	for_each_set_bit(cap, cpu_hwcaps, ARM64_NCAPS)
 
 bool this_cpu_has_cap(unsigned int cap);
+bool system_has_cap(unsigned int cap);
 void cpu_set_feature(unsigned int num);
 bool cpu_have_feature(unsigned int num);
 unsigned long cpu_get_elf_hwcap(void);
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 04cf64e..74d6c13 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -2008,6 +2008,17 @@ bool this_cpu_has_cap(unsigned int n)
 	return false;
 }
 
+bool system_has_cap(unsigned int n)
+{
+	if (n < ARM64_NCAPS) {
+		const struct arm64_cpu_capabilities *cap = cpu_hwcaps_ptrs[n];
+
+		if (cap)
+			return cap->matches(cap, SCOPE_SYSTEM);
+	}
+	return false;
+}
+
 void cpu_set_feature(unsigned int num)
 {
 	WARN_ON(num >= MAX_CPU_FEATURES);
@@ -2081,7 +2092,7 @@ void __init setup_cpu_features(void)
 static bool __maybe_unused
 cpufeature_pan_not_uao(const struct arm64_cpu_capabilities *entry, int __unused)
 {
-	return (cpus_have_const_cap(ARM64_HAS_PAN) && !cpus_have_const_cap(ARM64_HAS_UAO));
+	return (system_has_cap(ARM64_HAS_PAN) && !system_has_cap(ARM64_HAS_UAO));
 }
 
 static void __maybe_unused cpu_enable_cnp(struct arm64_cpu_capabilities const *cap)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
