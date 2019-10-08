Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28B5D0033
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 19:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cypY3m7nMsdxf59bQrSKmZTO9QJcA8GquHr1fThc51c=; b=U5MOHBBW4Ebf/F
	5n5A/DGBWGRd/FzdrOEO5/Oqn7udyJxce5eDI9IhGxrTukVa0WsGVUw14L/wCI55HHC7BZw/QrmSK
	9S/wqx1vY220kq1OJ9xOSdaQfkEW9kHQSjnpvaNuQUmgiIpkMbFMJRuAHW1O8EdwVtOxhBtkJxoJi
	VIZ4KtBJqhNjh6ozC/V4BZtqpX7ewdiO0dUnWIhQS4mdb4J9IUHfBA37HBvxQkgSNJ7s3fLc1vrC6
	W5mp7o573XxmSwoyJWeD6+2bQZ1VP+dbLVGK9rjS/jr4B/BS12hFBS3xMPXyF5QI/Zk53MwlgiHIm
	OCsqJwc6PWlmADY4ju5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHth8-00015f-Mj; Tue, 08 Oct 2019 17:54:46 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHth0-00015H-5r
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 17:54:39 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4F45318CB90B;
 Tue,  8 Oct 2019 17:54:36 +0000 (UTC)
Received: from crecklin.bos.com (ovpn-125-78.rdu2.redhat.com [10.10.125.78])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BEF5E600CE;
 Tue,  8 Oct 2019 17:54:35 +0000 (UTC)
From: Chris von Recklinghausen <crecklin@redhat.com>
To: linux-arm-kernel@lists.infradead.org,
	steve.capper@arm.com
Subject: [PATCH] arm64: remove arm64 definitions of kc_vaddr_to_offset and
 kc_offset_to_vaddr.
Date: Tue,  8 Oct 2019 13:54:34 -0400
Message-Id: <20191008175434.27434-1-crecklin@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Tue, 08 Oct 2019 17:54:36 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_105438_236159_5964E433 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the reshuffling of kernel VA space to support 52 bits, the
kc_vaddr_to_offset and kc_offset_to_vaddr macros are broken, since they are
based on VA_START, but VA_START no longer points to the base of the kernel
virtual address space, (PAGE_OFFSET does now). fs/proc/kcore.c already has
default definitions of kc_vaddr_to_offset and kc_offset_to_vaddr based on
PAGE_OFFSET, so simply remove the arm64 definitions of them.

Fixes: 14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
---
 arch/arm64/include/asm/pgtable.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 7576df00eb50..8330810f699e 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -876,9 +876,6 @@ static inline void update_mmu_cache(struct vm_area_struct *vma,
 
 #define update_mmu_cache_pmd(vma, address, pmd) do { } while (0)
 
-#define kc_vaddr_to_offset(v)	((v) & ~PAGE_END)
-#define kc_offset_to_vaddr(o)	((o) | PAGE_END)
-
 #ifdef CONFIG_ARM64_PA_BITS_52
 #define phys_to_ttbr(addr)	(((addr) | ((addr) >> 46)) & TTBR_BADDR_MASK_52)
 #else
-- 
2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
