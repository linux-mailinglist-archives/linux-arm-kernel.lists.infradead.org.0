Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D291150BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 14:01:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0b4nIRn0n2R/35h87S9I6EC4xXvSgoUDpeVzA3L7q8I=; b=fwK
	rLVd81u30OvIhyaNf/w54QY942Nfy48XLNrLO5WJb39m9SMQE5yc7qRIAL5YFfn5GMntkuagkUaQN
	bAK8kTPTwruJJNt+Xc0PPWydaZcGiB07gikGBRLxGs3Z36gSgHgMuBNpjqmJnFvxwk3JrB78rUaO8
	FA3/t6u83k65Hv0+q9oT8E279eeNf6zcDc4mFa25XtWP14MhA8FDT4ASQGw0ArkOHkK7BTT+0za8e
	Et9gzFVDTkU+XkfHXO146feSOzECJNCYcs+3TzE4ViDHNNVWN141FMJFSZOxDCEgjJjvgV1NQBFRJ
	ijfoESbe6bOEra7BqOHFqbK6PXfGQDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idDF1-0008Fu-Lo; Fri, 06 Dec 2019 13:01:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idDEv-0008F8-1o
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 13:01:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14F501FB;
 Fri,  6 Dec 2019 05:01:41 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 11FD63F52E;
 Fri,  6 Dec 2019 05:01:39 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org
Subject: [PATCH] arm64: ftrace: fix ifdeffery
Date: Fri,  6 Dec 2019 13:01:29 +0000
Message-Id: <20191206130129.31357-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_050145_136697_21684DFC 
X-CRM114-Status: GOOD (  12.81  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Torsten Duwe <duwe@lst.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When I tweaked the ftrace entry assembly in commit:

  3b23e4991fb66f6d ("arm64: implement ftrace with regs")

... my ifdeffery tweaks left ftrace_graph_caller undefined for
CONFIG_DYNAMIC_FTRACE && CONFIG_FUNCTION_GRAPH_TRACER when ftrace is
based on mcount.

The kbuild test robot reported that this issue is detected at link time:

| arch/arm64/kernel/entry-ftrace.o: In function `skip_ftrace_call':
| arch/arm64/kernel/entry-ftrace.S:238: undefined reference to `ftrace_graph_caller'
| arch/arm64/kernel/entry-ftrace.S:238:(.text+0x3c): relocation truncated to fit: R_AARCH64_CONDBR19 against undefined symbol
| `ftrace_graph_caller'
| arch/arm64/kernel/entry-ftrace.S:243: undefined reference to `ftrace_graph_caller'
| arch/arm64/kernel/entry-ftrace.S:243:(.text+0x54): relocation truncated to fit: R_AARCH64_CONDBR19 against undefined symbol
| `ftrace_graph_caller'

This patch fixes the ifdeffery so that the mcount version of
ftrace_graph_caller doesn't depend on CONFIG_DYNAMIC_FTRACE. At the same
time, a redundant #else is removed from the ifdeffery for the
patchable-function-entry version of ftrace_graph_caller.

Fixes: 3b23e4991fb66f6d ("arm64: implement ftrace with regs")
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Torsten Duwe <duwe@lst.de>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/entry-ftrace.S | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/entry-ftrace.S b/arch/arm64/kernel/entry-ftrace.S
index 4fe1514fcbfd..7d02f9966d34 100644
--- a/arch/arm64/kernel/entry-ftrace.S
+++ b/arch/arm64/kernel/entry-ftrace.S
@@ -133,7 +133,6 @@ ENTRY(ftrace_graph_caller)
 	bl	prepare_ftrace_return
 	b	ftrace_common_return
 ENDPROC(ftrace_graph_caller)
-#else
 #endif
 
 #else /* CONFIG_DYNAMIC_FTRACE_WITH_REGS */
@@ -287,6 +286,7 @@ GLOBAL(ftrace_graph_call)		// ftrace_graph_caller();
 
 	mcount_exit
 ENDPROC(ftrace_caller)
+#endif /* CONFIG_DYNAMIC_FTRACE */
 
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 /*
@@ -307,7 +307,6 @@ ENTRY(ftrace_graph_caller)
 	mcount_exit
 ENDPROC(ftrace_graph_caller)
 #endif /* CONFIG_FUNCTION_GRAPH_TRACER */
-#endif /* CONFIG_DYNAMIC_FTRACE */
 #endif /* CONFIG_DYNAMIC_FTRACE_WITH_REGS */
 
 ENTRY(ftrace_stub)
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
