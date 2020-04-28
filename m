Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733D41BC5C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:50:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WcEbIfTZr9kr8ImayegQP+YitskDZ5tS0XXTD9Rnuts=; b=LXA4pyy8euNxtNQyPq77QPXMRu
	8W+rKQeFrHTzO5uJlISolbIPtvmjg6M3L8vNhX5dZ04uWnCiI2qWGTtBvYG56ICU015Zikiz2+Gb8
	cVVbCxbLpYS9/yD9z6fS5rtaQn0o9eDQdSyHGPF46zRFLYvVvXGKBd6DxTRKDGgPmIqH1VA4MII2G
	Z+Ado75gaBMxQ/lus/RFxMsQpzE5UYoW3hjhDldJjBvIX9+ShGnEb+WB2LHAtkd6xjuwt6QLy+jU9
	dZN6HQtmIYsUqFEHhuLEGCcdDdmHhOs5uv0abXn+K+OMYELaeAZhcybJM5ZWOk+bTiQSohovA/6aV
	jFTNQ4wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTRO-0007XY-8D; Tue, 28 Apr 2020 16:50:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTQI-0004E0-3M
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:49:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71177C14;
 Tue, 28 Apr 2020 09:49:28 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A6DD43F305;
 Tue, 28 Apr 2020 09:49:27 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	will@kernel.org
Subject: [PATCHv2 1/4] arm64: vdso: remove aarch32_vdso_pages[]
Date: Tue, 28 Apr 2020 17:49:18 +0100
Message-Id: <20200428164921.41641-2-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200428164921.41641-1-mark.rutland@arm.com>
References: <20200428164921.41641-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_094930_199953_2194237A 
X-CRM114-Status: GOOD (  14.02  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, vincenzo.frascino@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The aarch32_vdso_pages[] array is unnecessarily confusing. We only ever
use the C_VECTORS and C_SIGPAGE slots, and the other slots are unused
despite having corresponding mappings (sharing pages with the AArch64
vDSO).

Let's make this clearer by using separate variables for the vectors page
and the sigreturn page. A subsequent patch will clean up the C_* naming
and conflation of pages with mappings.

Note that since both the vectors page and sig page are single
pages, and the mapping is a single page long, their pages array do not
need to be NULL-terminated (and this was not the case with the existing
code for the sig page as it was the last entry in the aarch32_vdso_pages
array).

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vdso.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 033a48f30dbb..263bc6084c71 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -206,11 +206,16 @@ static int aarch32_vdso_mremap(const struct vm_special_mapping *sm,
 #define C_SIGPAGE	1
 #define C_PAGES		(C_SIGPAGE + 1)
 #endif /* CONFIG_COMPAT_VDSO */
-static struct page *aarch32_vdso_pages[C_PAGES] __ro_after_init;
+
+static struct page *aarch32_vectors_page __ro_after_init;
+#ifndef CONFIG_COMPAT_VDSO
+static struct page *aarch32_sig_page __ro_after_init;
+#endif
+
 static struct vm_special_mapping aarch32_vdso_spec[C_PAGES] = {
 	{
 		.name	= "[vectors]", /* ABI */
-		.pages	= &aarch32_vdso_pages[C_VECTORS],
+		.pages	= &aarch32_vectors_page,
 	},
 #ifdef CONFIG_COMPAT_VDSO
 	{
@@ -223,7 +228,7 @@ static struct vm_special_mapping aarch32_vdso_spec[C_PAGES] = {
 #else
 	{
 		.name	= "[sigpage]", /* ABI */
-		.pages	= &aarch32_vdso_pages[C_SIGPAGE],
+		.pages	= &aarch32_sig_page,
 	},
 #endif /* CONFIG_COMPAT_VDSO */
 };
@@ -243,8 +248,8 @@ static int aarch32_alloc_kuser_vdso_page(void)
 
 	memcpy((void *)(vdso_page + 0x1000 - kuser_sz), __kuser_helper_start,
 	       kuser_sz);
-	aarch32_vdso_pages[C_VECTORS] = virt_to_page(vdso_page);
-	flush_dcache_page(aarch32_vdso_pages[C_VECTORS]);
+	aarch32_vectors_page = virt_to_page(vdso_page);
+	flush_dcache_page(aarch32_vectors_page);
 	return 0;
 }
 
@@ -275,8 +280,8 @@ static int __aarch32_alloc_vdso_pages(void)
 		return -ENOMEM;
 
 	memcpy((void *)sigpage, __aarch32_sigret_code_start, sigret_sz);
-	aarch32_vdso_pages[C_SIGPAGE] = virt_to_page(sigpage);
-	flush_dcache_page(aarch32_vdso_pages[C_SIGPAGE]);
+	aarch32_sig_page = virt_to_page(sigpage);
+	flush_dcache_page(aarch32_sig_page);
 
 	ret = aarch32_alloc_kuser_vdso_page();
 	if (ret)
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
