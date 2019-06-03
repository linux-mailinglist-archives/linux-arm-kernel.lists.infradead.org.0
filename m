Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F1B3338C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 17:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=m40A0EC2L1Kvm+7o12KOPwnzohjU7UCOdLn1i4+cTxY=; b=f6I
	f+A3vA1QBZXvUAsFlUjDtVSJ1Qyqiwka54WG94CX/MPJT7D8llhf2whPAyhN8Dr3siauMswAQ8kIm
	ZFFU+2Go95udWU/bj6D7i8ygNzMDTbkQOfL2sMktNPqdXLLC+s4/RfLs5VpEL4hIRKDotDFhxfsNx
	aowM6XGF3CR8d7sYnBjUO0hr39AfoCgrCjabHUgrwOrZfpdxogKAolJgUhjnteWq/CcanZrEDzXB0
	lpciA1qXWRowAONiELxWtmL7UXCKG4Ugdw6IkhEvRcu8gMjCMBti3gwev/+LZzqISk5NIocf/Z1Vb
	w1obrdkZ36NoB7iVmVeSR+HvaJrzYyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXov7-0007R4-9s; Mon, 03 Jun 2019 15:30:45 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXov0-0007QA-Nv
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 15:30:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DFF1A80D;
 Mon,  3 Jun 2019 08:30:37 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EA1123F246;
 Mon,  3 Jun 2019 08:30:36 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Silence gcc warnings about arch ABI drift
Date: Mon,  3 Jun 2019 16:30:30 +0100
Message-Id: <1559575830-11941-1-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_083038_792975_5F07346A 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Will Deacon <will.deacon@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Linus Torvalds <torvalds@linux-foundation.org>

Since GCC 9, the compiler warns about evolution of the
platform-specific ABI, in particular relating for the marshaling of
certain structures involving bitfields.

The kernel is a standalone binary, and of course nobody would be
so stupid as to expose structs containing bitfields as function
arguments in ABI.  (Passing a pointer to such a struct, however
inadvisable, should be unaffected by this change.  perf and various
drivers rely on that.)

So these warnings do more harm than good: turn them off.

We may miss warnings about future ABI drift, but that's too bad.
Future ABI breaks of this class will have to be debugged and fixed
the traditional way unless the compiler evolves finer-grained
diagnostics.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 arch/arm64/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index b025304..8fbd583 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -51,6 +51,7 @@ endif
 
 KBUILD_CFLAGS	+= -mgeneral-regs-only $(lseinstr) $(brokengasinst)
 KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
+KBUILD_CFLAGS	+= -Wno-psabi
 KBUILD_AFLAGS	+= $(lseinstr) $(brokengasinst)
 
 KBUILD_CFLAGS	+= $(call cc-option,-mabi=lp64)
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
