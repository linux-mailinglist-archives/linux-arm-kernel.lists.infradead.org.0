Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A8490186
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 14:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7rpS6MYXrAtKFSB0Esx3MK61wtQfdWJsEoHSDH+60b8=; b=iJaDh9rrDHAAN09Pn7gJIMR9R1
	D4jGmZAC72muE23NaaeKXBeeJPhO6m1WQnZBwzxM4pQmHGEA8jHEISUyu1wTpGTp9EzVYI4xZp007
	PaXrCIi49iaFtTgcerN6V+xLRd6Dl/1lbD5s8qd21XxZmGrMsgvn4Tsivd++kLarZUMoryH0hVWft
	kmoXnuC6/WCjb71orjJsH8phQeZo1w9FNgqAqt7/7Nv8Ji6sQboiQi4szethvLODJNUgOjmPHw+vt
	UzGDqxeNrJM4qrBkFbp7g2BK0CUmldB4OXrCVhUdex91IeV61V2wJ3hVy2AYhTG9l7JGezyWEUTcU
	d6stWVZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybLd-0000aZ-En; Fri, 16 Aug 2019 12:28:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hybHt-0004U6-SQ
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 12:24:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E38B360;
 Fri, 16 Aug 2019 05:24:57 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 051553F706;
 Fri, 16 Aug 2019 05:24:55 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jpoimboe@redhat.com
Subject: [RFC v4 12/18] arm64: assembler: Add macro to annotate asm function
 having non standard stack-frame.
Date: Fri, 16 Aug 2019 13:23:57 +0100
Message-Id: <20190816122403.14994-13-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816122403.14994-1-raphael.gault@arm.com>
References: <20190816122403.14994-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_052458_001338_7A874F9B 
X-CRM114-Status: UNSURE (   9.89  )
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, Raphael Gault <raphael.gault@arm.com>,
 julien.thierry.kdev@gmail.com
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
 include/linux/frame.h | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/include/linux/frame.h b/include/linux/frame.h
index 02d3ca2d9598..1e35e58ab259 100644
--- a/include/linux/frame.h
+++ b/include/linux/frame.h
@@ -11,14 +11,31 @@
  *
  * For more information, see tools/objtool/Documentation/stack-validation.txt.
  */
+#ifndef __ASSEMBLY__
 #define STACK_FRAME_NON_STANDARD(func) \
 	static void __used __section(.discard.func_stack_frame_non_standard) \
 		*__func_stack_frame_non_standard_##func = func
+#else
+	/*
+	 * This macro is the arm64 assembler equivalent of the
+	 * macro STACK_FRAME_NON_STANDARD define at
+	 * ~/include/linux/frame.h
+	 */
+	.macro	asm_stack_frame_non_standard	func
+	.pushsection ".discard.func_stack_frame_non_standard"
+	.quad	\func
+	.popsection
+	.endm
 
+#endif /* __ASSEMBLY__ */
 #else /* !CONFIG_STACK_VALIDATION */
 
+#ifndef __ASSEMBLY__
 #define STACK_FRAME_NON_STANDARD(func)
-
+#else
+	.macro	asm_stack_frame_non_standard	func
+	.endm
+#endif /* __ASSEMBLY__ */
 #endif /* CONFIG_STACK_VALIDATION */
 
 #endif /* _LINUX_FRAME_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
