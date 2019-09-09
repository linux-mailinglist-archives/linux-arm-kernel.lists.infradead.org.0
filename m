Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 213D7ADE99
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Ap78Av70YdCsqgpG3TeWn2ZLD9zWG39V2XhxOBaXRM=; b=CKebto2kbwWNJ1
	hxNgpOSguw6np4QIlOEanZ7mzahoxRFJx3uFkuM4UCN/yu8LHNGZMHCvljJ+keiyR2yy+xoWIUhIZ
	iUgU2vPWJQNTE81PZIclg1dNSYTLJCYJ+pyhuJtURq1UoxTp1IrRZ/3wgeD3e0/o2J1nITPFpDzcb
	V9VmMf2V4WRKcLJ4PlVb7SSGK8mj6YqAK8KN6mWMdt78ShQ0x3X3PxXY6Wpv4m6EYK2IrQBcwpN6B
	b4sLQUcgVcAkE0D/vuqTvkIZ+va0RNqQgyrPPIulJ8/zdJEfB/8FUC9/8mq/EugvKfqiCub60yC1n
	Eov65XijVqJILLnC4MSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OBU-00024Z-5c; Mon, 09 Sep 2019 18:14:40 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9R-0008OI-Cg
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:12:35 +0000
Received: by mail-qt1-x841.google.com with SMTP id j10so17239863qtp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=nvbvJVLr4nkLYl4WcL+kdWRjmAFlh6tLMOt4xIPRheI=;
 b=RzzD8B3mcShO+xNiGkp9aYsaF8e5zs36M3yyRXQYZQsScGZadM3wetxdkkMKDwZhAs
 5GJzlnrTMY4MJPkNtxbp/8WWx+DniOE48TA3hKJcCE6INrqeo1R08BOXvZt5dLSWHWsB
 zOvgEgPACr2i4FOe/q+JTl8q1peE4qF6QCX7UoHhJk9RqfV39j8BwniCkwiq49X91qPP
 UJcdsAaV3a8kcF6lg6PpmHzsZP1kspVO4+RTIrnIljy78YcmyNiwhasJjzN4jnpIhnnz
 /wi4yGG6fcN+WwBP4w09/RJqegG5DBYoT4wMjYrFfF+Xj0OaXW86QPLztqCz4NlUf/SC
 3XGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nvbvJVLr4nkLYl4WcL+kdWRjmAFlh6tLMOt4xIPRheI=;
 b=VWLgj2svBn3eS67JsXZCcWe5CXUjeiCkal/lkKUutY23USZ5TemuVyDqaAOAHlXnL7
 Xt/cwJk7ybbk/+Oaz31W9K9PUOD8cs5S7XBO4SDvCtip8i5jBOTjHtmCaz8wiwFSSKP1
 nZpGDf1Xk6jUvgxUTS5IKu3U8Z11c+KXsShnBHNmGaYziudd2pNJcWMwOuZZ4sOKxkwj
 L5Prjz/JWsqs+G51ybz84Ud5w/ScLgxxMGEYMqnB2PW8QCe5EsgHlAy/B/YZBgLGyXkQ
 aACoQ0X0Jvl85qCgTtchBZ3hDWpW29of5/UXfhRFbw2w4dBF7YfQtgqSSas0TE7Bf0CD
 RNOw==
X-Gm-Message-State: APjAAAXLhpm5f31TuzTUqyFCktUfjvGuhzikgNcwyzKzSvaZ6jjzORRX
 Aiq2oRnB9Js7pRDvMTEPDkRT7g==
X-Google-Smtp-Source: APXvYqxCUUwIn8Crj99uq610NweqGHwoS2Q66TNJxTfkDd8LzzPyrQkWbGkKYuRh3YqV+VdDq9stmg==
X-Received: by 2002:a0c:fc05:: with SMTP id z5mr8555882qvo.128.1568052752590; 
 Mon, 09 Sep 2019 11:12:32 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:32 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 06/17] arm64: hibernate: rename dst to page in
 create_safe_exec_page
Date: Mon,  9 Sep 2019 14:12:10 -0400
Message-Id: <20190909181221.309510-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111233_503380_D9BE4F7C 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

create_safe_exec_page() allocates a safe page and maps it at a
specific location, also this function returns the physical address
of newly allocated page.

The destination VA, and PA are specified in arguments: dst_addr,
phys_dst_addr

However, within the function it uses "dst" which has unsigned long
type, but is actually a pointers in the current virtual space. This
is confusing to read.

Rename dst to more appropriate page (page that is created), and also
change its time to "void *"

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/hibernate.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 7bbeb33c700d..750ecc7f2cbe 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -198,18 +198,18 @@ static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
 				 phys_addr_t *phys_dst_addr)
 {
+	void *page = (void *)get_safe_page(GFP_ATOMIC);
 	pgd_t *trans_pgd;
 	pgd_t *pgdp;
 	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
-	unsigned long dst = get_safe_page(GFP_ATOMIC);
 
-	if (!dst)
+	if (!page)
 		return -ENOMEM;
 
-	memcpy((void *)dst, src_start, length);
-	__flush_icache_range(dst, dst + length);
+	memcpy(page, src_start, length);
+	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
 
 	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
 	if (!trans_pgd)
@@ -240,7 +240,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	}
 
 	ptep = pte_offset_kernel(pmdp, dst_addr);
-	set_pte(ptep, pfn_pte(virt_to_pfn(dst), PAGE_KERNEL_EXEC));
+	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
 
 	/*
 	 * Load our new page tables. A strict BBM approach requires that we
@@ -259,7 +259,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	write_sysreg(phys_to_ttbr(virt_to_phys(trans_pgd)), ttbr0_el1);
 	isb();
 
-	*phys_dst_addr = virt_to_phys((void *)dst);
+	*phys_dst_addr = virt_to_phys(page);
 
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
