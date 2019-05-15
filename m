Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFBF1E6F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 04:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m9O3YBAw+a9zWpIQQXxc4DkOmQS/M3IhN3I9nGGcp0U=; b=qUm0wwD0So6Lh3HMfommT1T9ym
	5xQLRP7i/W6UMH1A523oEz83BQNzDVDZMxrwAg06L4/pT0q5w++P8JBNWQ2SZ/PBAJXMHzGY+vJth
	AvWnFSMEBSaTfgj1GBEmBE8wvuqhukPeXW+0RLilqOVAcUlKI2+Yw3b7l0ikh7PAzpT9j9UJiZ6k5
	knZrBTjd50AwJ4VG2K3vONlbGQPwmhERM20Qy/ml8crAfIyEuGWaik4M+beMaK50mC99iaAtoWfo3
	ejc0oRakX/1pM09b/La3ai8/7GQ0TqzhjjTh3l7QuB03Oe22EtJ8DAm7DE5hyBoJw5l2HM9fa778q
	CvXpRkfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQk2Z-0007NJ-Hr; Wed, 15 May 2019 02:53:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQk2T-0007Md-Rx
 for linux-arm-kernel@bombadil.infradead.org; Wed, 15 May 2019 02:53:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k+4pG7s5PhgweA8Ds6zH7Qo1tN5HR4wog5SSw+qvavA=; b=Jl3oHqzgEwLs42dPJH4tY8DZN
 XG0PWPSPoV6l2+O841qbCPnh8voFY8L69xPohq+WcX6E15eWnyt3hF0Z435yuGb6uQAmBdy3iN2aW
 9zZ2OShKdzr3usd2muYCKz7FeYAwlACtBv9XA06IYTC/7pf5xuEeE7Gcyc2Kyrw0oxOIcuDSaEPUN
 UN/yj+N0+sdtcmbUpxeRtuDf/UGD0bXYza9SOrpCS12Se/CRZoN4socdA9xiDPnrC3s2e59WShH23
 dMcmtSx56+LnAABVK5kMJEIoxqXwblYL4W8ZVRXvxsI4oNsdrwQewROHyBl3hs2ed9dLzr0QZM/SM
 b0Yqh2jrA==;
Received: from foss.arm.com ([217.140.101.70])
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQjmY-0002iE-9c
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 02:36:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4A0CF341;
 Tue, 14 May 2019 19:36:05 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7A45C3F703;
 Tue, 14 May 2019 19:35:58 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-mm@kvack.org
Subject: [PATCH V4] mm/ioremap: Check virtual address alignment while creating
 huge mappings
Date: Wed, 15 May 2019 08:05:16 +0530
Message-Id: <1557887716-17918-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <a893db51-c89a-b061-d308-2a3a1f6cc0eb@arm.com>
References: <a893db51-c89a-b061-d308-2a3a1f6cc0eb@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_033638_484646_2B29DF9F 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.0 points, 5.0 required)
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
Changes in V4:

- Added similar check for ioremap_try_huge_p4d() as per Toshi Kani

 lib/ioremap.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/lib/ioremap.c b/lib/ioremap.c
index 063213685563..a95161d9c883 100644
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
 
@@ -166,6 +172,9 @@ static int ioremap_try_huge_p4d(p4d_t *p4d, unsigned long addr,
 	if ((end - addr) != P4D_SIZE)
 		return 0;
 
+	if (!IS_ALIGNED(addr, P4D_SIZE))
+		return 0;
+
 	if (!IS_ALIGNED(phys_addr, P4D_SIZE))
 		return 0;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
