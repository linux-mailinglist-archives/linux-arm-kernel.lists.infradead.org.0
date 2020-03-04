Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D87CE178D8B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 10:36:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ox1wPXPoZErH6UtAGlItHH8QO1ZKjSae/Qu1KBj6FnU=; b=vB0ShpHqRStbx4
	qtpbnloMowOH0hlmV1K0/xBzMPfZCkO4da8gBXyROtQCXoLlTWfPcUSva8Jw9tMO8zILDvjf9Aote
	CSWcG7S/uNgHa9gpnoHO/lWd3/IR/6glsJSAyScrFT273TbImPRu0qi7t163K9fivTDuo3K0d5Zta
	0QYzM7BmxwijJRkPNgcfVoYaJa67cryfjPyaLZ/eYep5HTjOR0wzJEcNGOEt7BLrJaPt0T4/q62kS
	MwsSpAPc9d8cvY9vDYhlq/IkoAQMlLpqYB/AZp2Wq5bqiWhH2vTRX0wvPeTgC0gMqV2KkyhwlA3Gy
	sfZjqlc99nqGGsULvCmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9QSM-0007KJ-Lr; Wed, 04 Mar 2020 09:36:46 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9QS8-0007Fq-LM
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 09:36:34 +0000
Received: from basile.remlab.net (ip6-localhost [IPv6:::1])
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTP id D18085FBB0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  4 Mar 2020 10:36:31 +0100 (CET)
From: =?UTF-8?q?R=C3=A9mi=20Denis-Courmont?= <remi@remlab.net>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] arm64: optimize mov_q assembler macro
Date: Wed,  4 Mar 2020 11:36:29 +0200
Message-Id: <20200304093631.191200-1-remi@remlab.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_013632_856717_82C4F63F 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Remi Denis-Courmont <remi.denis.courmont@huawei.com>

This reduces the number of MOVZ and MOVK to expand a constant.
This makes several changes:

1) Save one instruction for exactly 32 or 48 bits unsigned values,
using unsigned MOV rather than signed MOV.

2) Save one instruction for unsigned 16 bits (or less) values, not
treating them as 32-bits values.

3) Skip any redundant MOVK instructions the 16-bits immediate would be
zero.

4) Use MOVN if it saves one or more MOVK over MOVZ.

Note that the assembler uses -1 as truth value (not +1 like C).

Signed-off-by: Remi Denis-Courmont <remi.denis.courmont@huawei.com>
---
 arch/arm64/include/asm/assembler.h | 45 ++++++++++++++++++++++++++----
 1 file changed, 40 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index af03001293c6..2b98e2c5c8a2 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -473,22 +473,57 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
 
 	/*
 	 * mov_q - move an immediate constant into a 64-bit register using
-	 *         between 2 and 4 movz/movk instructions (depending on the
+	 *         between 1 and 4 mov/movk instructions (depending on the
 	 *         magnitude and sign of the operand)
 	 */
 	.macro	mov_q, reg, val
-	.if (((\val) >> 31) == 0 || ((\val) >> 31) == 0x1ffffffff)
-	movz	\reg, :abs_g1_s:\val
+	.if ((((\val) & 0xffff) == 0) + ((((\val) >> 16) & 0xffff) == 0) + ((((\val) >> 32) & 0xffff) == 0) + ((((\val) >> 48) & 0xffff) == 0) <= (((\val) & 0xffff) == 0xffff) + ((((\val) >> 16) & 0xffff) == 0xffff) + ((((\val) >> 32) & 0xffff) == 0xffff) + ((((\val) >> 48) & 0xffff) == 0xffff))
+	.if (((\val) >> 16) == 0)
+	movz	\reg, :abs_g0:\val
 	.else
-	.if (((\val) >> 47) == 0 || ((\val) >> 47) == 0x1ffff)
-	movz	\reg, :abs_g2_s:\val
+	.if (((\val) >> 32) == 0)
+	movz	\reg, :abs_g1:\val
+	.else
+	.if (((\val) >> 48) == 0)
+	movz	\reg, :abs_g2:\val
 	.else
 	movz	\reg, :abs_g3:\val
+	.if ((((\val) >> 32) & 0xffff) != 0)
 	movk	\reg, :abs_g2_nc:\val
 	.endif
+	.endif
+	.if ((((\val) >> 16) & 0xffff) != 0)
 	movk	\reg, :abs_g1_nc:\val
 	.endif
+	.endif
+	.if (((\val) & 0xffff) != 0)
 	movk	\reg, :abs_g0_nc:\val
+	.endif
+	.endif
+	.else
+	.if ((((\val) >> 16) & 0xffffffffffff) == 0xffffffffffff)
+	movn	\reg, :abs_g0:~\val
+	.else
+	.if ((((\val) >> 32) & 0xffffffff) == 0xffffffff)
+	movn	\reg, :abs_g1:~\val
+	.else
+	.if ((((\val) >> 48) & 0xffff) == 0xffff)
+	movn	\reg, :abs_g2:~\val
+	.else
+	movn	\reg, :abs_g3:~\val
+	.if ((((\val) >> 32) & 0xffff) != 0xffff)
+	movk	\reg, :abs_g2_nc:\val
+	.endif
+	.endif
+	.if ((((\val) >> 16) & 0xffff) != 0xffff)
+	movk	\reg, :abs_g1_nc:\val
+	.endif
+	.endif
+	.if (((\val) & 0xffff) != 0xffff)
+	movk	\reg, :abs_g0_nc:\val
+	.endif
+	.endif
+	.endif
 	.endm
 
 /*
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
