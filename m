Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D79E8BF2B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j2Mt6rtvxvRTa+EL0GP4wXRk8WwlPNt1nIg4O/mxMQ4=; b=sQfmAvDaT8xPp2vkFzffxQ5NOC
	Cqpnnx8u2nmvLC3gtW2FEplRw8yOEAQC9cUhlwoOdtJmKELMraJHSa/DL8XzdiP1NDQkj3cfpvY4p
	XkUX7sdX/XJCXicV5n3PGByHMgmL1pqrw9vfm5/9Ke4Wh4hejLscwZyiUjgJ6+XF0SqE+Laz7IjPj
	MrMelyr8VXkjx1Y4CCEUt9oABfNXL+2UgrrT0fRKZtVVmGUU+U+2By4KcDDS/HaobUVDhCOXOQJEH
	pU5jt5Pl6c6uO79qetjk9HZAIpS0CuYkuQCs7fhNCUvGqXEzOn/UVleOklijQZ7xTIiplApTUHJWz
	OtRGkq3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaCq-00019a-4A; Tue, 13 Aug 2019 17:03:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaBN-0008Pm-CS
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:02:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F9CF15AB;
 Tue, 13 Aug 2019 10:02:01 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DCDD13F706;
 Tue, 13 Aug 2019 10:01:59 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/8] arm64: memory: Simplify _VA_START and _PAGE_OFFSET
 definitions
Date: Tue, 13 Aug 2019 18:01:46 +0100
Message-Id: <20190813170149.26037-6-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190813170149.26037-1-will@kernel.org>
References: <20190813170149.26037-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100201_492663_AAA880CD 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rather than subtracting from -1 and then adding 1, we can simply
subtract from 0.

Cc: Steve Capper <steve.capper@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/memory.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 56be462c69ce..5552c8cba1e2 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -44,8 +44,7 @@
  * VA_START - the first kernel virtual address.
  */
 #define VA_BITS			(CONFIG_ARM64_VA_BITS)
-#define _PAGE_OFFSET(va)	(UL(0xffffffffffffffff) - \
-					(UL(1) << (va)) + 1)
+#define _PAGE_OFFSET(va)	(-(UL(1) << (va)))
 #define PAGE_OFFSET		(_PAGE_OFFSET(VA_BITS))
 #define KIMAGE_VADDR		(MODULES_END)
 #define BPF_JIT_REGION_START	(KASAN_SHADOW_END)
@@ -63,8 +62,7 @@
 #else
 #define VA_BITS_MIN		(VA_BITS)
 #endif
-#define _VA_START(va)		(UL(0xffffffffffffffff) - \
-				(UL(1) << ((va) - 1)) + 1)
+#define _VA_START(va)		(-(UL(1) << ((va) - 1)))
 
 #define KERNEL_START      _text
 #define KERNEL_END        _end
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
