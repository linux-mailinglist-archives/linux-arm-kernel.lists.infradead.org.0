Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F291F695F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:50:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXjGuG32DFmE/6/lW+6zPw0zOBfqr4D/JzI0JH976AA=; b=d+RV/I+4JaQQj3
	+eXCwQpV9Vxut10hqJ4tsTtLPj4Hdpvcz5DwyOLOT3xVcukZCIvbPdCHBusvT6cUPs2S9SBprQ3v5
	y/ZU1vmSuv2GLRvxQs9nh+2XmFRWu8BsG/QiCPITO/tRCtNRDZQVzhyuJm0YO+OZba6HpCBwKlrbu
	qaPoxIbsEbyr865cSWFRsxkLzap4Eg9DScdXh1y/HPKNsteLBf5/S66QmsWJ63EEB7XadmuJKbucz
	Uy8v81AiCQldBSsreVqGLhT9a3SPa7IxyUNN+aAa5vUfidGk3Fdh/RXpdomzEJbRLCDIJVcwsOs5Z
	I4Ji+iltgjfIBM9GdHoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNbL-0006Y5-IC; Thu, 11 Jun 2020 13:50:39 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNaH-0003U0-V3
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:49:36 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 38EDBFF81A;
 Thu, 11 Jun 2020 13:49:32 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 4/6] ARM: mm: Aligned pte allocation to one page
Date: Thu, 11 Jun 2020 15:49:12 +0200
Message-Id: <20200611134914.765827-5-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200611134914.765827-1-gregory.clement@bootlin.com>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_064934_128163_5BD5277D 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In pte_offset_kernel() the pte_index macro is used. This macro makes
the assumption that the address is aligned to a page size.

In arm_pte_allocation, the size allocated is the size needed for 512
entries. Actually this size was calculated to fit in a 4K page. When
using larger page, the size of the table allocated is no more
aligned which end to give a wrong physical address.

The solution is to round up the allocation to a page size instead of
the exact size of the tables (which is 4KB). It allows to comply with
the assumption of pte_index() but the drawback is a waste of memory
for the early allocation if page size is bigger than 4KB.

This is inspired from fa0ca2726ea9 ("DSMP 64K support") and
4ef803e12baf ("mmu: large-page: Added support for multiple kernel page
sizes") from
https://github.com/MarvellEmbeddedProcessors/linux-marvell.git

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 arch/arm/mm/mmu.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
index ec8d0008bfa1..b7fdea7e0cbe 100644
--- a/arch/arm/mm/mmu.c
+++ b/arch/arm/mm/mmu.c
@@ -715,7 +715,9 @@ static pte_t * __init arm_pte_alloc(pmd_t *pmd, unsigned long addr,
 				void *(*alloc)(unsigned long sz))
 {
 	if (pmd_none(*pmd)) {
-		pte_t *pte = alloc(PTE_HWTABLE_OFF + PTE_HWTABLE_SIZE);
+		/* The PTE needs to be page to be page aligned	 */
+		pte_t *pte = alloc(round_up(PTE_HWTABLE_OFF + PTE_HWTABLE_SIZE,
+					    PAGE_SIZE));
 		__pmd_populate(pmd, __pa(pte), prot);
 	}
 	BUG_ON(pmd_bad(*pmd));
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
