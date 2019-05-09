Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5F5184A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 06:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mfpkRrcq0VANAnN0yzQde3wvBTIzw1CH5kaKepiuGf4=; b=oepzxbMS/pXeuPzoZmViBd0/hS
	qMGZLNBNSb2Hgf0xS677A8m5XZnLujouRpkFJVcvDskGpXR9IhRdDYTl4zb36FJen9umlay5R27FU
	T3pYLo+7nJYQwcOsG7r6Ffn2ncN53wfY79A3WoaMfmwG16ArD0AiNGsj/tFuZ4H02/7fdxIOxA4f2
	3B+mLwfFq4z8vcpc+jBX4A3ZOziklNhpidUWBDJPQUruF0z0VZolg/ucMoYePCySuGyTaJXcfEhLl
	XJFgFn52G8HuwAjRoy7l0Jpuq06OnHnT9Fc4+aj9WYTJJF4IyCwl4NzQtVI9wpGTMwzaoY7RFzHjM
	5oUItoIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOaxk-000550-PA; Thu, 09 May 2019 04:47:20 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOaxZ-00051N-MX
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 04:47:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F7BE374;
 Wed,  8 May 2019 21:47:09 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3F0C93F575;
 Wed,  8 May 2019 21:47:03 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 1/2] mm/ioremap: Check virtual address alignment while
 creating huge mappings
Date: Thu,  9 May 2019 10:16:16 +0530
Message-Id: <1557377177-20695-2-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557377177-20695-1-git-send-email-anshuman.khandual@arm.com>
References: <1557377177-20695-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_214709_854533_3848BC1D 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Toshi Kani <toshi.kani@hpe.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Chintan Pandya <cpandya@codeaurora.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Virtual address alignment is essential in ensuring correct clearing for all
intermediate level pgtable entries and freeing associated pgtable pages. An
unaligned address can end up randomly freeing pgtable page that potentially
still contains valid mappings. Hence also check it's alignment along with
existing phys_addr check.

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: Toshi Kani <toshi.kani@hpe.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Chintan Pandya <cpandya@codeaurora.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>
---
 lib/ioremap.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/lib/ioremap.c b/lib/ioremap.c
index 063213685563..8b5c8dda857d 100644
--- a/lib/ioremap.c
+++ b/lib/ioremap.c
@@ -86,6 +86,9 @@ static int ioremap_try_huge_pmd(pmd_t *pmd, unsigned long addr,
 	if ((end - addr) != PMD_SIZE)
 		return 0;
 
+	if (!IS_ALIGNED(addr, PMD_SIZE))
+		return 0;
+
 	if (!IS_ALIGNED(phys_addr, PMD_SIZE))
 		return 0;
 
@@ -126,6 +129,9 @@ static int ioremap_try_huge_pud(pud_t *pud, unsigned long addr,
 	if ((end - addr) != PUD_SIZE)
 		return 0;
 
+	if (!IS_ALIGNED(addr, PUD_SIZE))
+		return 0;
+
 	if (!IS_ALIGNED(phys_addr, PUD_SIZE))
 		return 0;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
