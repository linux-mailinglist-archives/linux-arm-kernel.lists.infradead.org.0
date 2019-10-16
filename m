Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 235F4D8ED5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 13:03:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=c+rhJjk/VdPnP1r+VUls2vEhXlMuqTOA8Jy4iqWgoo8=; b=mi1
	zBGlgNcOeRRTE6HzNBwW2KRoaqhRMP1WlSSo3xhe1OxenM0OPEIGsMn5xCOp5dfdMTH2c8ber1f8g
	RKTazRhAnwbVVJK0vCqkTlUnp/mWyM+VCcPJb+cEKQk03drW1iC62mjhrGWBhE4cSxWXOS5X+ofz0
	zCTpT+sM45UUnqkpoT1lJt8WhLdCoiJ4hoY+gdTJ89Ht1VKa8nan/tIMqhStI5MZRnqxKMl/trggD
	B4jR+jzGxXpbpv/xS2mmZM0ad2b3ND+YtHEMiq/koknYzEG/6tcKzuYDOfmoEv+8xwSi6+E2rRT2y
	o71x/98sdQQVPIwl5lJbrgKchhbA2Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKh5M-0003fX-Qw; Wed, 16 Oct 2019 11:03:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKh5D-0003fD-6L
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 11:03:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4E1A28;
 Wed, 16 Oct 2019 04:03:09 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B8EE43F6C4;
 Wed, 16 Oct 2019 04:03:08 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: mm: fix inverted PAR_EL1.F check
Date: Wed, 16 Oct 2019 12:03:04 +0100
Message-Id: <20191016110304.44932-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_040311_282280_73599AA8 
X-CRM114-Status: GOOD (  14.04  )
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
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When detecting a spurious EL1 translation fault, we have the CPU retry
the translation using an AT S1E1R instruction, and inspect PAR_EL1 to
determine if the fault was spurious.

When PAR_EL1.F == 0, the AT instruction successfully translated the
address without a fault, which implies the original fault was spurious.
However, in this case we return false and treat the original fault as if
it was not spurious.

Invert the return value so that we treat such a case as spurious.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/mm/fault.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 855f2a7954e6..9fc6db0bcbad 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -268,8 +268,12 @@ static bool __kprobes is_spurious_el1_translation_fault(unsigned long addr,
 	par = read_sysreg(par_el1);
 	local_irq_restore(flags);
 
+	/*
+	 * If we now have a valid translation, treat the translation fault as
+	 * spurious.
+	 */
 	if (!(par & SYS_PAR_EL1_F))
-		return false;
+		return true;
 
 	/*
 	 * If we got a different type of fault from the AT instruction,
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
