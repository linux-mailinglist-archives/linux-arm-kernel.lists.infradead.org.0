Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2282C4ACE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 11:51:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9k5zZwmby/nk2QRwQF+5BLxcZYd86Kv8DCEmJxsp3lU=; b=t/pwLJS45/QYum
	grLom81p4JXqoh3VDktB+qIJjkgxV1i9lLiqGcGaIun9G8vEOKj9psBZBnKHGE/CLliIXbRsmMqZw
	6thOeTDKZdphzhL5NfAZ+o/6/HrkaSFKYkAPBcv8Ewr+hkQ3zb0uMBl2mAV+JT3qHBoKCNJTOjQyr
	TJG+nXklOkHaVPkOMwnsS6CYo3UVOLRQjeczOfR/2+SwdqaEh4kN53FGliIJ34pbFHNHgVAm9ROpU
	XdKl876wTTcSlqsAEvzrOScJxH1uSv7NLj7Jmvyu3+Yv4ak4nDx+2a8sCNAmgAfsx68AkgbtQmoXZ
	4G+bQ5sh16NFFmcuLSwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFbHq-0004DK-RU; Wed, 02 Oct 2019 09:51:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFbGd-0003ON-ST
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 09:49:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 68E2115AD;
 Wed,  2 Oct 2019 02:49:55 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D22CD3F739;
 Wed,  2 Oct 2019 02:49:54 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] arm64: ftrace: Ensure synchronisation in PLT setup for
 Neoverse-N1 #1542419
Date: Wed,  2 Oct 2019 10:49:35 +0100
Message-Id: <20191002094935.48848-5-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191002094935.48848-1-james.morse@arm.com>
References: <20191002094935.48848-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_024955_982429_0E410E43 
X-CRM114-Status: GOOD (  13.16  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CPUs affected by Neoverse-N1 #1542419 may execute a stale instruction if
it was recently modified. The affected sequence requires freshly written
instructions to be executable before a branch to them is updated.

There are very few places in the kernel that modify executable text,
all but one come with sufficient synchronisation:
 * The module loader's flush_module_icache() calls flush_icache_range(),
   which does a kick_all_cpus_sync()
 * bpf_int_jit_compile() calls flush_icache_range().
 * Kprobes calls aarch64_insn_patch_text(), which does its work in
   stop_machine().
 * static keys and ftrace both patch between nops and branches to
   existing kernel code (not generated code).

The affected sequence is the interaction between ftrace and modules.
The module PLT is cleaned using __flush_icache_range() as the trampoline
shouldn't be executable until we update the branch to it.

Drop the double-underscore so that this path runs kick_all_cpus_sync()
too.

Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/ftrace.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/ftrace.c b/arch/arm64/kernel/ftrace.c
index 171773257974..06e56b470315 100644
--- a/arch/arm64/kernel/ftrace.c
+++ b/arch/arm64/kernel/ftrace.c
@@ -121,10 +121,16 @@ int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 
 			/*
 			 * Ensure updated trampoline is visible to instruction
-			 * fetch before we patch in the branch.
+			 * fetch before we patch in the branch. Although the
+			 * architecture doesn't require an IPI in this case,
+			 * Neoverse-N1 erratum #1542419 does require one
+			 * if the TLB maintenance in module_enable_ro() is
+			 * skipped due to rodata_enabled. It doesn't seem worth
+			 * it to make it conditional given that this is
+			 * certainly not a fast-path.
 			 */
-			__flush_icache_range((unsigned long)&dst[0],
-					     (unsigned long)&dst[1]);
+			flush_icache_range((unsigned long)&dst[0],
+					   (unsigned long)&dst[1]);
 		}
 		addr = (unsigned long)dst;
 #else /* CONFIG_ARM64_MODULE_PLTS */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
