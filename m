Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0288117F2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 05:48:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQ40ppTpNrzNIr/s6I8gYJAyD03Zc+QcCNlKsOKyLz0=; b=KpFGH6iZ71UDvW
	AWDhLBE2I1fYeh/THqEQruN/aq6qR1TO9AXrpeK5yg3aAX+jznImn0g9C/mNdxk9ZH+rs1KA/HIu/
	m1U2osB0LmlkJe3x+JbYvSLxsVgg7PVeeYjlwH/M1DY1jupIGfOkRslWBUjUBEeEjb/xF7z5VqCEU
	HMExPVJEmsJoSoU2VVtn2IfMSS/raSrVIWLCj8JBEpbwODmADCDXxFX0QZ0ZGLWYGUqSm0t5tPiSB
	KvZRLzTGXu75jF3efvcGT420TLv/brPcMllQe39E33bBuAZjSNtRp4vckMtYUBwHIWOmALNdm+4fb
	ftQSDky/OILVhyyGyjjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieXRZ-0004ZM-Qg; Tue, 10 Dec 2019 04:48:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieXQx-0004Cm-D3
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 04:47:41 +0000
Received: by mail-pf1-x441.google.com with SMTP id b19so8409405pfo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 20:47:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axtens.net; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=txq3LAFK3wOGlutPVrH/f5MoWKzx5UG/2rHrSgg8Ef0=;
 b=Twub/7dfkfSLtOLxrE276ihuEuvporLf72DEUs3hin3WvhA/s1IXbcI8fgn6bYfEap
 gu6iY9yK9ZBPgRRsp2Dndk9mrhs3BC8P/iXi7D2zWdBwrEIU3AYdLX3FjoTgwxeJb6n1
 dheXIk9ucGRFhy5Zr5/DR0A350BnDT96IS57E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=txq3LAFK3wOGlutPVrH/f5MoWKzx5UG/2rHrSgg8Ef0=;
 b=K0ZMhxIr7Uqq+hM27KEUf9cnycH/gjq+936ZC/W1GsXVQdI8/g1/VwdtfT7fDYAugV
 c3amBo/ByzzSy43F2HH8fXItmPJam+HotSBTzdF3r/s5YL1Lv15nfMZpbrAHz2Rv4SC9
 ZAd3Pvwpqi2pMnx0oNsu6zDNItTGgJw/PwkdjX+uFcUgXTBPkgBciJiO+KV1RJNH7Y9t
 L+3Elm7RhTYC8B03FoFkNtCDgh67Um/rrCpvixPykzNU5OnWHGqPwgaj7ffuRXgZklxG
 hE3T2dtBmccwRtpNngzqkNQ85GtTaugrQoY9YwT1IorL+Uu3FxCjrOqL4bmfyb1gG8Jl
 XPcQ==
X-Gm-Message-State: APjAAAWBI8OaRfys5URO1vxwyO2AwDEnUktTdCVvhLndeeLDwAVwahbb
 aRdcAeR8OPnB+1QFlL2ZWRZwqg==
X-Google-Smtp-Source: APXvYqwo4BmaQbSIu9CGUWSB47DJ4jc+UUxqneRNCNhT2QgM4Y9U0WXwRELaH6aJYlTs5Hvw2Ghozg==
X-Received: by 2002:aa7:8f16:: with SMTP id x22mr33786940pfr.120.1575953258528; 
 Mon, 09 Dec 2019 20:47:38 -0800 (PST)
Received: from localhost
 (2001-44b8-1113-6700-e460-0b66-7007-c654.static.ipv6.internode.on.net.
 [2001:44b8:1113:6700:e460:b66:7007:c654])
 by smtp.gmail.com with ESMTPSA id c184sm1185254pfa.39.2019.12.09.20.47.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 20:47:37 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linuxppc-dev@lists.ozlabs.org, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kasan-dev@googlegroups.com,
 christophe.leroy@c-s.fr, aneesh.kumar@linux.ibm.com, bsingharora@gmail.com
Subject: [PATCH v2 2/4] kasan: use MAX_PTRS_PER_* for early shadow
Date: Tue, 10 Dec 2019 15:47:12 +1100
Message-Id: <20191210044714.27265-3-dja@axtens.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210044714.27265-1-dja@axtens.net>
References: <20191210044714.27265-1-dja@axtens.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_204739_459459_6B2C66A8 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Axtens <dja@axtens.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This helps with powerpc support, and should have no effect on
anything else.

Suggested-by: Christophe Leroy <christophe.leroy@c-s.fr>
Signed-off-by: Daniel Axtens <dja@axtens.net>
---
 include/linux/kasan.h | 6 +++---
 mm/kasan/init.c       | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/include/linux/kasan.h b/include/linux/kasan.h
index e18fe54969e9..d2f2a4ffcb12 100644
--- a/include/linux/kasan.h
+++ b/include/linux/kasan.h
@@ -15,9 +15,9 @@ struct task_struct;
 #include <asm/pgtable.h>
 
 extern unsigned char kasan_early_shadow_page[PAGE_SIZE];
-extern pte_t kasan_early_shadow_pte[PTRS_PER_PTE];
-extern pmd_t kasan_early_shadow_pmd[PTRS_PER_PMD];
-extern pud_t kasan_early_shadow_pud[PTRS_PER_PUD];
+extern pte_t kasan_early_shadow_pte[MAX_PTRS_PER_PTE];
+extern pmd_t kasan_early_shadow_pmd[MAX_PTRS_PER_PMD];
+extern pud_t kasan_early_shadow_pud[MAX_PTRS_PER_PUD];
 extern p4d_t kasan_early_shadow_p4d[MAX_PTRS_PER_P4D];
 
 int kasan_populate_early_shadow(const void *shadow_start,
diff --git a/mm/kasan/init.c b/mm/kasan/init.c
index ce45c491ebcd..8b54a96d3b3e 100644
--- a/mm/kasan/init.c
+++ b/mm/kasan/init.c
@@ -46,7 +46,7 @@ static inline bool kasan_p4d_table(pgd_t pgd)
 }
 #endif
 #if CONFIG_PGTABLE_LEVELS > 3
-pud_t kasan_early_shadow_pud[PTRS_PER_PUD] __page_aligned_bss;
+pud_t kasan_early_shadow_pud[MAX_PTRS_PER_PUD] __page_aligned_bss;
 static inline bool kasan_pud_table(p4d_t p4d)
 {
 	return p4d_page(p4d) == virt_to_page(lm_alias(kasan_early_shadow_pud));
@@ -58,7 +58,7 @@ static inline bool kasan_pud_table(p4d_t p4d)
 }
 #endif
 #if CONFIG_PGTABLE_LEVELS > 2
-pmd_t kasan_early_shadow_pmd[PTRS_PER_PMD] __page_aligned_bss;
+pmd_t kasan_early_shadow_pmd[MAX_PTRS_PER_PMD] __page_aligned_bss;
 static inline bool kasan_pmd_table(pud_t pud)
 {
 	return pud_page(pud) == virt_to_page(lm_alias(kasan_early_shadow_pmd));
@@ -69,7 +69,7 @@ static inline bool kasan_pmd_table(pud_t pud)
 	return false;
 }
 #endif
-pte_t kasan_early_shadow_pte[PTRS_PER_PTE] __page_aligned_bss;
+pte_t kasan_early_shadow_pte[MAX_PTRS_PER_PTE] __page_aligned_bss;
 
 static inline bool kasan_pte_table(pmd_t pmd)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
