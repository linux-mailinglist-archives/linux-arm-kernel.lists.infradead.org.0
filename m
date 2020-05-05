Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 487991C5B06
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:25:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wJnhtP44Y7BWpWDDKxQBrbsnYKqr9rnBtDKRNNeBEKo=; b=QVu/Ie+uSkrMk+8wKVhMHFSw31
	cpg6A8RXsJlymc63JCCFEoKyaY4PJN8apVAA3+Pd9wi8hiHzYQRGrCCugpL04dQQmrEqDY+5ZHimW
	/RipedS2eeKGOMwmrQDb7EVU/UOSoTgALfwjMeRXG0VPRGneTejc2B6EBxjiaLATtwkwCvkXbOtbf
	qnBItrI4a0rTMEkLRp29lDTb+yGEif9bFNPWqppKzeLeu7k6LazVvf/9+8y0qrdBD2GN6uJl5FWNE
	kscnHJ+3nRMNQZSsAlFdOi4yRkh0EROFjakjMiuD44zLfFVLjWlBIKq5UnpcVyn7fY1CjzRO/2WO3
	eLwlL+CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzSA-0007ro-Ct; Tue, 05 May 2020 15:25:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzRv-0007o0-IW
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:25:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C7CF31B;
 Tue,  5 May 2020 08:25:34 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AD7E23F68F;
 Tue,  5 May 2020 08:25:28 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH 2/2] syscall.2: arm64: Fix syscall number register size
Date: Tue,  5 May 2020 16:24:40 +0100
Message-Id: <1588692280-15878-3-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_082535_679719_044EF779 
X-CRM114-Status: GOOD (  10.85  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-man@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64 is currently documented as receiving the syscall number in
x8.

While this is the correct register, the syscall number is a 32-bit
integer.  Bits [63:32] are ignored by the kernel.

So it is more correct to say "w8".

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 man2/syscall.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/syscall.2 b/man2/syscall.2
index 53ab40e..d724651 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -203,7 +203,7 @@ alpha	callsys	v0	v0	a4	a3	1, 6
 arc	trap0	r8	r0	-	-
 arm/OABI	swi NR	-	r0	-	-	2
 arm/EABI	swi 0x0	r7	r0	r1	-
-arm64	svc #0	x8	x0	x1	-
+arm64	svc #0	w8	x0	x1	-
 blackfin	excpt 0x0	P0	R0	-	-
 i386	int $0x80	eax	eax	edx	-
 ia64	break 0x100000	r15	r8	r9	r10	1, 6
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
