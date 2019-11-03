Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D91ED35B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 13:37:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WI2k1kmgR6NOPd8JQXcJvaVasc0rCtl+uppBGv36/5Q=; b=dS+
	6a/74Q4ES0abZnwY6TDZeSHxLvEbbwABu931tZYt4XC3htF6rVhC+esu3HwGCuxDMwuO3gwfTWX/L
	DCBdQC4hE3ecdPvYtnas6p13DVyHBQRCJ2lhr3GbG0SE5f6VO44lzCRU1abB0MMx9eLRDnxQPAc+m
	QY5D9coJbX+FD2VTx3UeoocV5+b/vbMaTrwYAsjb+f6u2Pedlzpwtjo0KmfMARbiTjm12X53Btay1
	5D6Ua2CBhWpv/xG/3JTozIkK8f5snk8sGwGYtlIiEtrVTe/ilbY4boDxjc0LAIao+sfATXsjqAmT7
	iZRuPXzBTu/JdHtDIFy3H95D0lQv+Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRF8B-0008LZ-QA; Sun, 03 Nov 2019 12:37:19 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRF83-0008LD-Ub
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 12:37:13 +0000
Received: from grover.flets-west.jp (softbank126021098169.bbtec.net
 [126.21.98.169]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id xA3CaIVC018623;
 Sun, 3 Nov 2019 21:36:18 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com xA3CaIVC018623
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1572784579;
 bh=iCIrgjy/jBJIf7jd88C0TplYGpd505IJ9u3iionPOJc=;
 h=From:To:Cc:Subject:Date:From;
 b=k94a7PKgsuhGwzrYW+HBq+d1x8NxPSysqFdJPm243dZ4BqqhP0dVDEZ0UtIFzcnqT
 xEqRRE3szsW3yOb82Kc+ne5P2W+rFpq3a6uLw0feK2WsLlWZmoa/3s/M1QMgWUmbSX
 f+w8mATLjKjscOy0aV6inAfVfJcsM7vlfUobBihxLdvtK2M6eKM4Rau8UcGqq/vHhc
 sZeS5Elo3QaFRcvLNxyfzLMmBQSdlOCUpMbUZx36H0y5XD12krQKATfIbyZxlbgMVp
 DsQfTYH2QMzY2WQZDEsovfM9aYvaAdoaV6VlWpQ8cLG+1nvWqsbaDONTDVTtSb/KwF
 c93WuDR7Jvt2w==
X-Nifty-SrcIP: [126.21.98.169]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: mm: simplify the page end calculation in
 __create_pgd_mapping()
Date: Sun,  3 Nov 2019 21:35:58 +0900
Message-Id: <20191103123559.8866-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_043712_333867_6937A6E3 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Yu Zhao <yuzhao@google.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Andrew Morton <akpm@linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Steve Capper <steve.capper@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Calculate the page-aligned end address more simply.

The local variable, "length" is unneeded.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm64/mm/mmu.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 60c929f3683b..a9f541912289 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -338,7 +338,7 @@ static void __create_pgd_mapping(pgd_t *pgdir, phys_addr_t phys,
 				 phys_addr_t (*pgtable_alloc)(int),
 				 int flags)
 {
-	unsigned long addr, length, end, next;
+	unsigned long addr, end, next;
 	pgd_t *pgdp = pgd_offset_raw(pgdir, virt);
 
 	/*
@@ -350,9 +350,8 @@ static void __create_pgd_mapping(pgd_t *pgdir, phys_addr_t phys,
 
 	phys &= PAGE_MASK;
 	addr = virt & PAGE_MASK;
-	length = PAGE_ALIGN(size + (virt & ~PAGE_MASK));
+	end = PAGE_ALIGN(virt + size);
 
-	end = addr + length;
 	do {
 		next = pgd_addr_end(addr, end);
 		alloc_init_pud(pgdp, addr, next, phys, prot, pgtable_alloc,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
