Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3A61C6942
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hPPr5IToMeY4OnwG19+3V7giJyXUkWxn7vKuAe8XOzY=; b=VEEtmLis39LCpU
	IYHEFaIER4pHa3OjYSSpoKRmyH/CkOINfa/gK35AmaeB54hO7I9Pp7oB7NhU0vD99Ex9pKKhVmaqq
	U5/jQCCPcvyF0QSPO7+rrQdrtHGhUS8CvY15W3Iwa3+zS5d/tHN4WBz6Vr0/D9Ma7qY9OuQ5tLbui
	+rOQjGFpjdtyMYBDKrC0IyDvEo2q0JkzIldTFl5EgVVk5qkhiU6mTvaYI+TURTRuTrGkAlOgkgjUo
	M16p/3AqGLKdEOiQfBkxYlRUtq/il8wjlU1Enk+CEl1zGqNyLayvze984G0M26p7Pd5+kv8cTcvyI
	VgFiejGFXeLbWf3hjAJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDpd-0008UF-Cf; Wed, 06 May 2020 06:47:01 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDpR-0008TQ-IA
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 06:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588747607;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=dylOKlOOkcmqnOmlxPIhLIeCImPfi8HZqhDsGTLntD8=;
 b=CyB6u5iZ0ZP0ZCF39MNhoG7gZyNBSo9PE7J20OMUbdXZ8g8yf2Bommze9bbBDVLGoBXK/u
 EYrJRRQ/hQh+F1qM/zcS+kRrUWJCFpbJcbcKsgCBeBT/ZIzORBuww0taeFsIBESqhRbz+5
 gqgJNUev04aDZbzyeKq4Qym1SKHD3AU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-172-E0L-RSu4McSJCbfgZLbRDA-1; Wed, 06 May 2020 02:46:45 -0400
X-MC-Unique: E0L-RSu4McSJCbfgZLbRDA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE27245F;
 Wed,  6 May 2020 06:46:43 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-103.bne.redhat.com
 [10.64.54.103])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F112A605DF;
 Wed,  6 May 2020 06:46:41 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/mm: Remove add_huge_page_size()
Date: Wed,  6 May 2020 16:46:35 +1000
Message-Id: <20200506064635.20114-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_234649_679405_80BDA6D8 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-kernel@vger.kernel.org, shan.gavin@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function add_huge_page_size(), wrapper of hugetlb_add_hstate(),
avoids to register duplicated huge page states for same size. However,
the same logic has been included in hugetlb_add_hstate(). So it seems
unnecessary to keep add_huge_page_size() and this just removes it.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/mm/hugetlbpage.c | 18 +++++-------------
 1 file changed, 5 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
index bbeb6a5a6ba6..ed7530413941 100644
--- a/arch/arm64/mm/hugetlbpage.c
+++ b/arch/arm64/mm/hugetlbpage.c
@@ -441,22 +441,14 @@ void huge_ptep_clear_flush(struct vm_area_struct *vma,
 	clear_flush(vma->vm_mm, addr, ptep, pgsize, ncontig);
 }
 
-static void __init add_huge_page_size(unsigned long size)
-{
-	if (size_to_hstate(size))
-		return;
-
-	hugetlb_add_hstate(ilog2(size) - PAGE_SHIFT);
-}
-
 static int __init hugetlbpage_init(void)
 {
 #ifdef CONFIG_ARM64_4K_PAGES
-	add_huge_page_size(PUD_SIZE);
+	hugetlb_add_hstate(PUD_SHIFT - PAGE_SHIFT);
 #endif
-	add_huge_page_size(CONT_PMD_SIZE);
-	add_huge_page_size(PMD_SIZE);
-	add_huge_page_size(CONT_PTE_SIZE);
+	hugetlb_add_hstate(CONT_PMD_SHIFT + PMD_SHIFT - PAGE_SHIFT);
+	hugetlb_add_hstate(PMD_SHIFT - PAGE_SHIFT);
+	hugetlb_add_hstate(CONT_PTE_SHIFT);
 
 	return 0;
 }
@@ -473,7 +465,7 @@ static __init int setup_hugepagesz(char *opt)
 	case CONT_PMD_SIZE:
 	case PMD_SIZE:
 	case CONT_PTE_SIZE:
-		add_huge_page_size(ps);
+		hugetlb_add_hstate(ilog2(ps) - PAGE_SHIFT);
 		return 1;
 	}
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
