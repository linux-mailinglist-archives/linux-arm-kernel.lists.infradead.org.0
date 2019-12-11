Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6516F11BC0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:43:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAZ9sn4TCEWSr928VDJW6vYmjWbrT0oClprNJxeQIGQ=; b=DUrAThUqPpXHRi
	ls3booHMNqlamdKTNQLN8fKYxJdGrLbZ+y+scCnKU7Yn6U3cdobgdOrqRKGjdklPBUAbVAUJpAYys
	A2gVKH90H2/MQwiEpuRMPRt410fJGt1cgfHSHKPx+bnXBh4K0luNjxefJncwIFsKojAAbw99jOphV
	a0wEtP8tPMUqAaFmZBWBFWpKUUEVnzd4zUt2iL5IAOxX3KIpa3bXO36KcpUrRPm0yG7mqNXmwlwXD
	JSH/H88BdFQVkXyY8U1RkHlM6dMNis1f4YfvsiOghqzh5Hu6ufyXzC3FuABlK6rJ/B+mScGYYgE5a
	1OxDB8pmrFp++rCR5ypQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6xi-0005sV-0Q; Wed, 11 Dec 2019 18:43:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6ur-0003HM-0N
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:40:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9467A1435;
 Wed, 11 Dec 2019 10:40:52 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 218BA3F6CF;
 Wed, 11 Dec 2019 10:40:51 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 09/22] arm64: mte: Tags-aware clear_page() implementation
Date: Wed, 11 Dec 2019 18:40:14 +0000
Message-Id: <20191211184027.20130-10-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191211184027.20130-1-catalin.marinas@arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_104053_139806_579B08B7 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
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
index 78a9ef66288a..575cea03f68a 100644
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
@@ -19,8 +21,9 @@ ENTRY(clear_page)
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
