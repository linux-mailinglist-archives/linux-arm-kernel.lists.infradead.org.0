Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80435173A87
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:00:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KkVzUyITuYOuL9Fib3TDkk0AFIb5dMEppG3VWQlwHRY=; b=oYE
	iL5Ixp3CscbMvsDw2h9YIvIt6l+YkGEu4Bw6g5+vRr8j9rIxwEjJaHfXRT5qVdOVAAdNp+ej91vzC
	HL5tshWWkohlNt7/HNliZIeLSfMTT8n03Am5db/vGNffCKwG1pyuzN5LNJDbvk5ZI70bDJkE3+RLV
	B5A07Q6FEAiWTZmrG9R9mFRuscpmzIC9fjDpsCX4arMRxPRm9YkxHxh+nCa1j2Bz2BZQm83fLLF3z
	d3/jjgz39NKmrtIOooxZ5jsQgddCTJfxPxgoHgsOzgoDNLm4A/2JwrfokY6x6EbRGK7RBoX51sKMZ
	yZ9BdHvMirPAvYgKPLGM9Xra+huJPJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7h7l-0000ns-Kt; Fri, 28 Feb 2020 15:00:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7h7E-0000af-Db
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 14:59:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E37431B;
 Fri, 28 Feb 2020 06:59:47 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 536EE3F73B;
 Fri, 28 Feb 2020 06:59:46 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH] arm64: entry: unmask IRQ in el0_sp()
Date: Fri, 28 Feb 2020 14:59:42 +0000
Message-Id: <20200228145942.10675-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_065948_502307_053FFE95 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, the EL0 SP alignment handler masks IRQs unnecessarily. It
does so due to historic code sharing of the EL0 SP and PC alignment
handlers, and branch predictor hardening applicable to the EL0 SP
handler.

We began masking IRQs in the EL0 SP alignment handler in commit:

  5dfc6ed27710c42c ("arm64: entry: Apply BP hardening for high-priority synchronous exception")

... as this shared code with the EL0 PC alignment handler, and branch
predictor hardening made it necessary to disable IRQs for early parts of
the EL0 PC alignment handler. It was not necessary to mask IRQs during
EL0 SP alignment exceptions, but it was not considered harmful to do so.

This masking was carried forward into C code in commit:

  582f95835a8fc812 ("arm64: entry: convert el0_sync to C")

... where the SP/PC cases were split into separate handlers, and the
masking duplicated.

Subsequently the EL0 PC alignment handler was refactored to perform
branch predictor hardening before unmasking IRQs, in commit:

  bfe298745afc9548 ("arm64: entry-common: don't touch daif before bp-hardening")

... but the redundant masking of IRQs was not removed from the EL0 SP
alignment handler.

Let's do so now, and make it interruptible as with most other
synchronous exception handlers.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/entry-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index fde59981445c..c839b5bf1904 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -175,7 +175,7 @@ NOKPROBE_SYMBOL(el0_pc);
 static void notrace el0_sp(struct pt_regs *regs, unsigned long esr)
 {
 	user_exit_irqoff();
-	local_daif_restore(DAIF_PROCCTX_NOIRQ);
+	local_daif_restore(DAIF_PROCCTX);
 	do_sp_pc_abort(regs->sp, esr, regs);
 }
 NOKPROBE_SYMBOL(el0_sp);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
