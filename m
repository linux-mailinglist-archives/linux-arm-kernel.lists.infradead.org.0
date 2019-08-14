Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7CA8D4B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:30:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C5wcanl/54Bm219BjDxqj0lqc1USD9uEbsL7tUW0/qs=; b=s+0esBeHQAkQ9iv8BM1glFwNO8
	+eCLxeb3xm2UuxDUIXrGej5yV8RiKIhZwAbn1Yo4SwcrCiYsB96nFva0Vwy3SKjhqyWBRKMFEhSVo
	pSDyZCUYQDftWqnfK3la4610krIPFUR0yKWFG3KdNEkmBUNx+QMLhaDsf9tPv6lLo4FdzpM2OInUv
	kFVyPgzSYpnLWhO+c/3UkmrRCZFKvCYfNU8V3DBx32nnhtfpUX8hwZQNiBuoJqlF0T7Jh3xMOcQFd
	WYnbLiHaq4vJDbf/lz3LNSedBD21NaJ3rr5xhx4m0ZFaug7LhWXUNCRynmfPUpa0C/dt3fmj0F5kN
	2scIgqIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxtLn-0004b1-KT; Wed, 14 Aug 2019 13:30:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxtKy-0004Dc-W3
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 13:29:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 86EE0360;
 Wed, 14 Aug 2019 06:29:12 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BAB043F706;
 Wed, 14 Aug 2019 06:29:11 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64: memory: fix flipped VA space fallout
Date: Wed, 14 Aug 2019 14:28:47 +0100
Message-Id: <20190814132848.24295-2-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190814132848.24295-1-mark.rutland@arm.com>
References: <20190814132848.24295-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_062913_247199_1CEC5F43 
X-CRM114-Status: GOOD (  12.22  )
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
 steve.capper@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VA_START used to be the start of the TTBR1 address space, but now it's a
point midway though. In a couple of places we still use VA_START to get
the start of the TTBR1 address space, so let's fix these up to use
PAGE_OFFSET instead.

Fixes: 14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/mm/dump.c  | 2 +-
 arch/arm64/mm/fault.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index 6ec75305828e..8e10b4ba215a 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -400,7 +400,7 @@ void ptdump_check_wx(void)
 		.check_wx = true,
 	};
 
-	walk_pgd(&st, &init_mm, VA_START);
+	walk_pgd(&st, &init_mm, PAGE_OFFSET);
 	note_page(&st, 0, 0, 0);
 	if (st.wx_pages || st.uxn_pages)
 		pr_warn("Checked W+X mappings: FAILED, %lu W+X pages found, %lu non-UXN pages found\n",
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 75eff57bd9ef..bb4e4f3fffd8 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -109,7 +109,7 @@ static inline bool is_ttbr0_addr(unsigned long addr)
 static inline bool is_ttbr1_addr(unsigned long addr)
 {
 	/* TTBR1 addresses may have a tag if KASAN_SW_TAGS is in use */
-	return arch_kasan_reset_tag(addr) >= VA_START;
+	return arch_kasan_reset_tag(addr) >= PAGE_OFFSET;
 }
 
 /*
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
