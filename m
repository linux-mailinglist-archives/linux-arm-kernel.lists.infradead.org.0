Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7D4CA81A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bv3JojaW4sieeY52uXvO0tWIiMre1AstaeHv23+mb0o=; b=lDE2UABzFiMyh9
	8SDSS6UPnPknWv/RTuqWB1ueacDhlZyaGUunC8ksNCb4RixQ7F3o2BY7ssvMTohzn/SZeqIATWTxh
	d41jdPzcysXABFuLGFuqImU7ebo0tWN2sb9gGZodM09Xys91LPqHBhO6zMMntHAYGFfvHX8ACnddF
	fSqxU/8iSnX8dk/34NIjirnf0BQVxweS2agBYj9MnxN0AMeLp2UJX+TJGxvEF57embZi/KA/tyh4j
	PBV0AUMg/HnUS5c3WjonOdkCmSmFdXQ8K9vuY7xiGJox6BYAXIEHIC4bdAQ/+C6NkuFfSRX0862Uz
	63600MXtpOFlBbUwRL6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4k5-0000E4-0a; Thu, 03 Oct 2019 17:18:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4j5-0007ov-Cl
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:17:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 85A741570;
 Thu,  3 Oct 2019 10:17:14 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 833F83F739;
 Thu,  3 Oct 2019 10:17:13 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/8] arm64: add local_daif_inherit()
Date: Thu,  3 Oct 2019 18:16:38 +0100
Message-Id: <20191003171642.135652-5-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191003171642.135652-1-james.morse@arm.com>
References: <20191003171642.135652-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_101715_517603_605F1B1B 
X-CRM114-Status: GOOD (  13.27  )
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
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Rutland <mark.rutland@arm.com>

Some synchronous exceptions can be taken from a number of contexts,
e.g. where IRQs may or may not be masked. In the entry assembly for
these exceptions, we use the inherit_daif assembly macro to ensure
that we only mask those exceptions which were masked when the exception
was taken.

So that we can do the same from C code, this patch adds a new
local_daif_inherit() function, following the existing local_daif_*()
naming scheme.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
[moved away from local_daif_restore()]
Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/daifflags.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/include/asm/daifflags.h b/arch/arm64/include/asm/daifflags.h
index 063c964af705..9207cd5aa39e 100644
--- a/arch/arm64/include/asm/daifflags.h
+++ b/arch/arm64/include/asm/daifflags.h
@@ -9,6 +9,7 @@
 
 #include <asm/arch_gicv3.h>
 #include <asm/cpufeature.h>
+#include <asm/ptrace.h>
 
 #define DAIF_PROCCTX		0
 #define DAIF_PROCCTX_NOIRQ	PSR_I_BIT
@@ -109,4 +110,19 @@ static inline void local_daif_restore(unsigned long flags)
 		trace_hardirqs_off();
 }
 
+/*
+ * Called by synchronous exception handlers to restore the DAIF bits that were
+ * modified by taking an exception.
+ */
+static inline void local_daif_inherit(struct pt_regs *regs)
+{
+	unsigned long flags = regs->pstate & DAIF_MASK;
+
+	/*
+	 * We can't use local_daif_restore(regs->pstate) here as
+	 * system_has_prio_mask_debugging() won't restore the I bit if it can
+	 * use the pmr instead.
+	 */
+	write_sysreg(flags, daif);
+}
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
