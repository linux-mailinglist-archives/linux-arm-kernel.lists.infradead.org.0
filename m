Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4655F94B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 15:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=b6VeGaJljlI7scbqFoK5P6MXzQVrslTxWOjNWHz+sI8=; b=D5J
	ylXJJuVOILQm+zWRX92IGoNMrcQuh3dLX/HtKFmif5z8fsRzhSBtUu7sYqJPHyNz6EqrCqgAoba9P
	3HFFYHMb5VsfO5oxSCMD2+QRzjrs5JKisgACZjbPoN23+QlxbSv5PhFtQN/QgjlAvO1/hSodrLIPA
	IkI5NSD+EGz4DhmhmwpvRuFihCt9A8b0+Ka9P+6xGS9Dx1xJM25WOYvs7UZYamuVg+SztwahRAFAe
	3xA+teOhGaV8vH4g2ck3FXq3/wnZ52lGzBFqNAkxiRd8xeDahCT29yI+keZTut1ViPGAknHJjs3wh
	cDAbKIS1JWe9tg/AVrW8pDdgrFKoOHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj22A-0006Eq-JS; Thu, 04 Jul 2019 13:44:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hj21z-0006EX-R8
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 13:44:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 34B7C28;
 Thu,  4 Jul 2019 06:44:10 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 594EB3F718;
 Thu,  4 Jul 2019 06:44:09 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Remove unused assembly macro
Date: Thu,  4 Jul 2019 14:44:04 +0100
Message-Id: <1562247844-3437-1-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_064411_931059_F703FA21 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 Julien Thierry <julien.thierry@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As of commit 4141c857fd09dbed480f021b3eece4f46c653161 ("arm64: convert
raw syscall invocation to C"), moving syscall handling from assembly to
C, the macro mask_nospec64 is no longer referenced.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
---
 arch/arm64/include/asm/assembler.h | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 570d195..09d5d4a9 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -120,17 +120,6 @@
 	.endm
 
 /*
- * Sanitise a 64-bit bounded index wrt speculation, returning zero if out
- * of bounds.
- */
-	.macro	mask_nospec64, idx, limit, tmp
-	sub	\tmp, \idx, \limit
-	bic	\tmp, \tmp, \idx
-	and	\idx, \idx, \tmp, asr #63
-	csdb
-	.endm
-
-/*
  * NOP sequence
  */
 	.macro	nops, num
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
