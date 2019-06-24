Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B18C50666
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 12:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1dIAQsu4ynw9K9UaUNH65NFAMxOOUFdDOTFE01uz4LI=; b=VHTrFA0xNtuwU6/PzVHZ76TwjI
	S/NLVbXguoFBCnHrOUMBoPrfCR0RTFtff1L1xs7nxJgx7Ot/zwZ0WiVoc4zO9Pke9LpskU2pj8g0B
	fcRRCKGGpp5dpRtNMnfmbT6Vdi/fAa8XmXEXP469POY7LYyLuQEHFd4nXrmarxoeKgjAsNIsKeSxb
	7LM/+f/sK+gCtnKzTxjLB0SqZEODq2CVXAr774RH5d5Dv2AzXr1iM91KX650E7qK52jEux5ORDGOg
	xRUvq/6wpfnkRHoZvSGHKiOb56D+M2TAU5ivdJt3OzYjTzv7Q9rX5wJ3jfAMbUTiBoQWBz1lUQVq4
	qEfx+wpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLmQ-0001co-AL; Mon, 24 Jun 2019 10:00:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLi7-0005In-RW
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:56:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 67982152F;
 Mon, 24 Jun 2019 02:56:27 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 493943F71E;
 Mon, 24 Jun 2019 02:56:26 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC V3 12/18] arm64: assembler: Add macro to annotate asm function
 having non standard stack-frame.
Date: Mon, 24 Jun 2019 10:55:42 +0100
Message-Id: <20190624095548.8578-13-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190624095548.8578-1-raphael.gault@arm.com>
References: <20190624095548.8578-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_025627_986944_CC97F654 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
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
Cc: julien.thierry@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, Raphael Gault <raphael.gault@arm.com>,
 jpoimboe@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some functions don't have standard stack-frames but are intended
this way. In order for objtool to ignore those particular cases
we add a macro that enables us to annotate the cases we chose
to mark as particular.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 arch/arm64/include/asm/assembler.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 570d195a184d..969a59c5c276 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -752,4 +752,17 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
 .Lyield_out_\@ :
 	.endm
 
+	/*
+	 * This macro is the arm64 assembler equivalent of the
+	 * macro STACK_FRAME_NON_STANDARD define at
+	 * ~/include/linux/frame.h
+	 */
+	.macro	asm_stack_frame_non_standard	func
+#ifdef	CONFIG_STACK_VALIDATION
+	.pushsection ".discard.func_stack_frame_non_standard"
+	.8byte	\func
+	.popsection
+#endif
+	.endm
+
 #endif	/* __ASM_ASSEMBLER_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
