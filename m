Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B02D1B6CC9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 06:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yurK2tGgLqawvTCN9gSwatrx8QHdVizavfEQRPcDb3A=; b=qbMUj3v92WBXts
	9BImy99TwK9EAmB1TdS+/zBwH50m+4MiYMbeaXRDOnqrEQlj3sWTS0JYLfs31Ptg9ONuM6yRR0Jwk
	6h2/MlruCnqhoqUaI6RsgNPTm9GXI+hxcwiXSjMFjKgZataW9Jov2PVQVc8jHadQH0Gr6C3079uM4
	2+6uk+Grx0ebumop2PO85lg0bSqRn3VxA3NN0yQIu8iGGaI4FFN3T94DTLa44k2B2AHjjcNVYXo7X
	z4Xn1sVjx9WmeAF4KZ5U0yq/2bx5ZU0jkjzH/E4u9dtKCxwjlYsnloUGI7U3EL9c2bR5S54ip6jVC
	/wTG/xaBE2mf1orsDgzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRqH8-0006vA-5w; Fri, 24 Apr 2020 04:49:18 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRqGz-0006tE-V4
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 04:49:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587703747;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=64G9GahoE1R2oI2BMnZEz8XNw5xsvmzLezAX8Z3VN+g=;
 b=E3CtHLejdXSZmbkYuU+VR+K83ApDJlk1m4KysMJwcA6BV3ROOJmpuW+d4DgwIMvH41B3m8
 lSN31Jpj3/6sybuwVWGmnki+kEj4FoYgCVV4Xsci463NcqJmH/+fMS/fBt5KowSalSKdZG
 IS7m2XrwOO6syswHpMupSBWu0YMjWeA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-423-3TwUM8z4Pue688Km7TtidA-1; Fri, 24 Apr 2020 00:49:03 -0400
X-MC-Unique: 3TwUM8z4Pue688Km7TtidA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E7BA6835B4A;
 Fri, 24 Apr 2020 04:49:01 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-127.bne.redhat.com
 [10.64.54.127])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 97D3F5C1C8;
 Fri, 24 Apr 2020 04:48:59 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/mm: Use phys_to_page() to access pgtable memory
Date: Fri, 24 Apr 2020 14:48:54 +1000
Message-Id: <20200424044854.15760-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_214910_082681_044F5B21 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
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

The macros {pgd, pud, pmd}_page() retrieves the page struct of the
corresponding page frame, which is reserved as page table. There
is already a macro (phys_to_page), defined in memory.h, to convert
the physical address to the page struct. So it's reasonable to
use that in pgtable.h.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/include/asm/pgtable.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 538c85e62f86..8c20e2bd6287 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -508,7 +508,7 @@ static inline void pte_unmap(pte_t *pte) { }
 #define pte_set_fixmap_offset(pmd, addr)	pte_set_fixmap(pte_offset_phys(pmd, addr))
 #define pte_clear_fixmap()		clear_fixmap(FIX_PTE)
 
-#define pmd_page(pmd)		pfn_to_page(__phys_to_pfn(__pmd_to_phys(pmd)))
+#define pmd_page(pmd)			phys_to_page(__pmd_to_phys(pmd))
 
 /* use ONLY for statically allocated translation tables */
 #define pte_offset_kimg(dir,addr)	((pte_t *)__phys_to_kimg(pte_offset_phys((dir), (addr))))
@@ -566,7 +566,7 @@ static inline phys_addr_t pud_page_paddr(pud_t pud)
 #define pmd_set_fixmap_offset(pud, addr)	pmd_set_fixmap(pmd_offset_phys(pud, addr))
 #define pmd_clear_fixmap()		clear_fixmap(FIX_PMD)
 
-#define pud_page(pud)		pfn_to_page(__phys_to_pfn(__pud_to_phys(pud)))
+#define pud_page(pud)			phys_to_page(__pud_to_phys(pud))
 
 /* use ONLY for statically allocated translation tables */
 #define pmd_offset_kimg(dir,addr)	((pmd_t *)__phys_to_kimg(pmd_offset_phys((dir), (addr))))
@@ -624,7 +624,7 @@ static inline phys_addr_t pgd_page_paddr(pgd_t pgd)
 #define pud_set_fixmap_offset(pgd, addr)	pud_set_fixmap(pud_offset_phys(pgd, addr))
 #define pud_clear_fixmap()		clear_fixmap(FIX_PUD)
 
-#define pgd_page(pgd)		pfn_to_page(__phys_to_pfn(__pgd_to_phys(pgd)))
+#define pgd_page(pgd)			phys_to_page(__pgd_to_phys(pgd))
 
 /* use ONLY for statically allocated translation tables */
 #define pud_offset_kimg(dir,addr)	((pud_t *)__phys_to_kimg(pud_offset_phys((dir), (addr))))
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
