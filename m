Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 153671A789D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rJBXbQkcx/Duf1aQ86D1ZPimKvnAxtdXpLkP7yb/zPY=; b=XfXJXx4RCsDidhtTC6eUcZnofw
	t6Zvd4dCig59qOQn50MvS7smGnp4DEKGvXIFx2Kp8YAHTK1b6quFXE+aK+KJH8w/HvM9XS7rUP1d0
	8+wUdifJtpVSO4oNNUXOd5RoFMTJdMwjB3dFM8gEqWSz9zwbRzbzui86yV4zlD7RqyX0fSxFY1fJw
	hRLiEzX+z9Vqv+YEQ+f6x5Y6FeujNbKXfW87pEHLQTshWZJ59ecgFC4CAOaSvScW3ja8L94Zcf18L
	zsun8UYiir5EGFnZ/AdJjpdllXRIag3P/5NWv0guJya8Ek5eUQaWgLRHZJLPIYhFDiZ9CaTdt6o1C
	85Md1Cnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJ2M-0001ba-Gj; Tue, 14 Apr 2020 10:43:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJ1w-0001R4-Aq
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 10:43:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D463331B;
 Tue, 14 Apr 2020 03:42:59 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id ED6E73F6C4;
 Tue, 14 Apr 2020 03:42:58 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/5] arm64: vdso: don't free unallocated pages
Date: Tue, 14 Apr 2020 11:42:48 +0100
Message-Id: <20200414104252.16061-2-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200414104252.16061-1-mark.rutland@arm.com>
References: <20200414104252.16061-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_034300_413707_8DC6A696 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, vincenzo.frascino@arm.com,
 will@kernel.org, stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The aarch32_vdso_pages[] array never has entries allocated in the C_VVAR
or C_VDSO slots, and as the array is zero initialized these contain
NULL.

However in __aarch32_alloc_vdso_pages() when
aarch32_alloc_kuser_vdso_page() fails we attempt to free the page whose
struct page is at NULL, which is obviously nonsensical.

This patch removes the erroneous page freeing.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: stable@vger.kernel.org
---
 arch/arm64/kernel/vdso.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 354b11e27c07..033a48f30dbb 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -260,18 +260,7 @@ static int __aarch32_alloc_vdso_pages(void)
 	if (ret)
 		return ret;
 
-	ret = aarch32_alloc_kuser_vdso_page();
-	if (ret) {
-		unsigned long c_vvar =
-			(unsigned long)page_to_virt(aarch32_vdso_pages[C_VVAR]);
-		unsigned long c_vdso =
-			(unsigned long)page_to_virt(aarch32_vdso_pages[C_VDSO]);
-
-		free_page(c_vvar);
-		free_page(c_vdso);
-	}
-
-	return ret;
+	return aarch32_alloc_kuser_vdso_page();
 }
 #else
 static int __aarch32_alloc_vdso_pages(void)
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
