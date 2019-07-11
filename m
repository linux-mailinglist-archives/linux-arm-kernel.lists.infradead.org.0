Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D63D66188
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 00:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JWRaeQAsCPPWwaME1i+BK8mXBsHA2KhhgmI3BAxLcOk=; b=IG3
	8dAKJ6Lzn54f+B35h7lNFkQ0v9YdZfx/wEgupiHyyYy3V4KK140Jc5eY58wIqfwME4KCBc6syeXwt
	LXEsc6TbAlGR/cfk7w/aTezWi/jfFGhs0Nu76UEasocrl2Vfewhotw+noGJSnx55bXBtK8jeXxJr6
	amyFGaBVHw5P9OW8n2219v7TuxjHUXHg0yW3a0IBWALuMixu+aYPvetzL4WKvnHuOVa1U+sJCa/79
	YiZQ0OYpXOMFy6jwt7gVDE7E1vKeWhq1cCnb85S3vjZuuSEHVxYRcyEQHCilEFRjYYbUG3/OqeH10
	9TG2Mez4+U30e1XX7FCBLmEUAg/cHlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlhRw-0006Gl-4m; Thu, 11 Jul 2019 22:22:00 +0000
Received: from smtp-fw-2101.amazon.com ([72.21.196.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlhRj-0006GH-5Y
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 22:21:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1562883707; x=1594419707;
 h=from:to:cc:subject:date:message-id;
 bh=3gnH5RFwGHOCrCZhZO/bJsPHw0TAU3IEAqyti5ky+0M=;
 b=OzfdZJgQvLo4JvbYfcPyASjkf4Uy6b6W7hnDnr66UmHPiF3Pa0ofAA/O
 9YVTLNSi3u3t+W8Y2s8ndpGwnndCvYQqhOY9ZJ3HA4apkGixUXYHkaR0n
 Xkpgs9JSylyttP1Vw88spYtVMe420eMAqNqxZBuAKjWLR2rkKMV4HWuxB c=;
X-IronPort-AV: E=Sophos;i="5.62,480,1554768000"; d="scan'208";a="741422169"
Received: from iad6-co-svc-p1-lb1-vlan2.amazon.com (HELO
 email-inbound-relay-1a-715bee71.us-east-1.amazon.com) ([10.124.125.2])
 by smtp-border-fw-out-2101.iad2.amazon.com with ESMTP;
 11 Jul 2019 22:21:43 +0000
Received: from u54e1ad5160425a4b64ea.ant.amazon.com
 (iad7-ws-svc-lb50-vlan2.amazon.com [10.0.93.210])
 by email-inbound-relay-1a-715bee71.us-east-1.amazon.com (Postfix) with ESMTPS
 id 976E5A17B3; Thu, 11 Jul 2019 22:21:38 +0000 (UTC)
Received: from u54e1ad5160425a4b64ea.ant.amazon.com (localhost [127.0.0.1])
 by u54e1ad5160425a4b64ea.ant.amazon.com (8.15.2/8.15.2/Debian-3) with ESMTP id
 x6BMLYLt019252; Fri, 12 Jul 2019 00:21:34 +0200
Received: (from karahmed@localhost)
 by u54e1ad5160425a4b64ea.ant.amazon.com (8.15.2/8.15.2/Submit) id
 x6BMLWVb019247; Fri, 12 Jul 2019 00:21:32 +0200
From: KarimAllah Ahmed <karahmed@amazon.de>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm: Extend the check for RAM in /dev/mem
Date: Fri, 12 Jul 2019 00:21:21 +0200
Message-Id: <1562883681-18659-1-git-send-email-karahmed@amazon.de>
X-Mailer: git-send-email 2.7.4
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_152147_343965_45E3BFEF 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -12.4 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.196.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Enrico Weigelt <info@metux.net>,
 Anders Roxell <anders.roxell@linaro.org>, Yu Zhao <yuzhao@google.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 KarimAllah Ahmed <karahmed@amazon.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Jun Yao <yaojun8558363@gmail.com>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Robin Murphy <robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some valid RAM can live outside kernel control (e.g. using mem= kernel
command-line). For these regions, pfn_valid would return "false" causing
system RAM to be mapped as uncached. Use memblock instead to identify RAM.

Cc: Russell King <linux@armlinux.org.uk>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mike Rapoport <rppt@linux.ibm.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Anders Roxell <anders.roxell@linaro.org>
Cc: Enrico Weigelt <info@metux.net>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: KarimAllah Ahmed <karahmed@amazon.de>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: Jun Yao <yaojun8558363@gmail.com>
Cc: Yu Zhao <yuzhao@google.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: KarimAllah Ahmed <karahmed@amazon.de>
---
 arch/arm/mm/mmu.c   | 2 +-
 arch/arm64/mm/mmu.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
index 1aa2586..492774b 100644
--- a/arch/arm/mm/mmu.c
+++ b/arch/arm/mm/mmu.c
@@ -705,7 +705,7 @@ static void __init build_mem_type_table(void)
 pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
 			      unsigned long size, pgprot_t vma_prot)
 {
-	if (!pfn_valid(pfn))
+	if (!memblock_is_memory(__pfn_to_phys(pfn)))
 		return pgprot_noncached(vma_prot);
 	else if (file->f_flags & O_SYNC)
 		return pgprot_writecombine(vma_prot);
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 3645f29..cdc3e8e 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -78,7 +78,7 @@ void set_swapper_pgd(pgd_t *pgdp, pgd_t pgd)
 pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
 			      unsigned long size, pgprot_t vma_prot)
 {
-	if (!pfn_valid(pfn))
+	if (!memblock_is_memory(__pfn_to_phys(pfn)))
 		return pgprot_noncached(vma_prot);
 	else if (file->f_flags & O_SYNC)
 		return pgprot_writecombine(vma_prot);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
