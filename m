Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 184BB170717
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:08:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRGiKKYLCDxqrJJ8gq7GDRV6WVkDGGfyj0q5ZjfZWfw=; b=G+eofBZYOT1wNh
	c5AKDwRCN0lL8anzXFNBv8RJH6nEbw2IIAqyH0cmdFDmAz7EPiWWM5Gwvn6cTWL61U9UCit0ioO6Y
	4wNvgRlTZ3AGSJJBIO7AKnjpVKBqtJ2BfX32vjPCIvPZGCe3ZSqE+ppM9vjxEmuEjLixttq5D7BQo
	xSIT71Qu9HJhsF5Pl3NR4PS9oGRxZBn26WjOOQQdXbb2VAVkAS7AOXZPYMcVqyI/h/czX06VWyNs9
	ixKM9w2L7tVMnMYaV+bEe4eyAnYgCI1Te/uCu6wk2VJGyJX9Qlpcmfiryntmc9cewyZt8ZiIhSEcp
	Dh3QAcsLM0mIyiNyo/Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7166-0000QX-DS; Wed, 26 Feb 2020 18:07:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7147-0007Hd-4l
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:05:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 202874B2;
 Wed, 26 Feb 2020 10:05:46 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A226C3F881;
 Wed, 26 Feb 2020 10:05:44 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 06/19] arm64: mte: Tags-aware clear_page() implementation
Date: Wed, 26 Feb 2020 18:05:13 +0000
Message-Id: <20200226180526.3272848-7-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226180526.3272848-1-catalin.marinas@arm.com>
References: <20200226180526.3272848-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_100547_280371_E050B437 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vincenzo Frascino <vincenzo.frascino@arm.com>

When the Memory Tagging Extension is enabled, the tags need to be set to
zero a page is cleared as they are visible to the user.

Introduce an MTE-aware clear_page() which clears the tags in addition to
data.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Co-developed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/lib/clear_page.S | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/lib/clear_page.S b/arch/arm64/lib/clear_page.S
index 073acbf02a7c..9f85a4cf9568 100644
--- a/arch/arm64/lib/clear_page.S
+++ b/arch/arm64/lib/clear_page.S
@@ -5,7 +5,9 @@
 
 #include <linux/linkage.h>
 #include <linux/const.h>
+#include <asm/alternative.h>
 #include <asm/assembler.h>
+#include <asm/cpufeature.h>
 #include <asm/page.h>
 
 /*
@@ -19,8 +21,9 @@ SYM_FUNC_START(clear_page)
 	and	w1, w1, #0xf
 	mov	x2, #4
 	lsl	x1, x2, x1
-
-1:	dc	zva, x0
+1:
+alternative_insn "dc zva, x0", "stzgm xzr, [x0]", \
+			 ARM64_MTE, IS_ENABLED(CONFIG_ARM64_MTE), 1
 	add	x0, x0, x1
 	tst	x0, #(PAGE_SIZE - 1)
 	b.ne	1b

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
