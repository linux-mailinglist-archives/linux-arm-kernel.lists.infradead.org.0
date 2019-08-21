Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D220698303
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:33:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=op/hmlaWaQjBVvewjI+y+07OxREwfYctf6shd6h5jtQ=; b=YMrZRl2Feh6Sdg
	GDRLLdO771ZxfJZzi+siD2QYCVwYXtAdMontZaSvMqPlFo0XszgzaoFJhug0KX8HfFeSZcX3+4EaN
	dFmJx6yfw3+jpNABKA63fntdlggtZOiPye+EhVdjz5uLFH0FHvUsd2GErkyPKF4tZUxWZNfcH0axQ
	ZcinmlgHhcLplKAlANGFMCwkj3R3iOp3O/iFQLNyFaAFjH/HaewgGdq7MaLlNy166QyxBBEC4R3T7
	uA5TNo7cQxFGXzZRAGxQLIxhNfDd/YJdaulwMfPnaBSrqabXShiE5MpzjEK9laJsjT+FRkToyJ66K
	F4t9ZO8WOAMyxrnNeFGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VQT-0005RT-2d; Wed, 21 Aug 2019 18:33:41 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VP2-00040I-J4
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:32:14 +0000
Received: by mail-qk1-x743.google.com with SMTP id d79so2695435qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 11:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=bQvsgscqpy4gJx0RSAZHmPdNixt0ATCDS0WU9XTwyb8=;
 b=ILjJA4n/giE8JmPiexv7Bw1nwvbRl2Z+YSLoE4FuqVk0Cy9Y8l0Z/Oi043el4txkPI
 biHES+QyYLZFcNUoZPuckwwgZ/ZXoRyQ8rxMSMLPx468ECFak95S7bHRA5hE7sgYwLo1
 ERLOIgzIGS0X8aQ1hin4TNUKMPvt4jZ8F71XOY2yF9JNx+98bKfh5WdXq2GAL7Nq6Uo3
 KfLn8Kp0O5dqjYZeCaQSMuaUmJE3xMJ+Hjjv8je7GShbQFFNY8YKqG+42V9uOpm21DqX
 2cavH9DsopJFxHmz518GX7AOejraE2dw00Ly+gcqnjNxEU861osit10n9wkODkePQq2J
 VOJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bQvsgscqpy4gJx0RSAZHmPdNixt0ATCDS0WU9XTwyb8=;
 b=JLAxb5NYDLIczaFT6FL0WENwA+0Vuqt6gdjh7F0eEU7IdLF8JGh+6yvbXHnprmuUlo
 80/XZ2W1sNJN90+Qt00rpFCXpLPL1LdAhaAC3VMhs6mx2soofixED+CaaEs6SHI0jBlb
 xnD6IQXX+iZDifW+63IXVO8LIrr3DEsV0GvOI9liDnaOV1vZdOzbb8hKYrlciL82+uWc
 WeJdhoPkGDGfrKxACGt833T780ta9QghYUOfH96QetEYaCwFlcbse3f60QebY6JjwXix
 lb6PCATMTBOzPynFREzP+g61R5+YI56y61mNMSNFxnydBYrvuraelvHtJevAks0zII01
 kH9g==
X-Gm-Message-State: APjAAAU4/ZWbcJ45guus18bkm0ufBQpJJQjwUELptGFSUbf8qhKtvbwZ
 uGiVauOAkJDzGJFmn58fqD5DMg==
X-Google-Smtp-Source: APXvYqzfJ8BXdrEH0K8CKkw4fBwWFDafodl10SDkUCPN4bBIEhI2MWQI353Halx8ux+skSlbJLzXYQ==
X-Received: by 2002:ae9:ec1a:: with SMTP id h26mr17120619qkg.80.1566412331857; 
 Wed, 21 Aug 2019 11:32:11 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q13sm10443332qkm.120.2019.08.21.11.32.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:32:11 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v3 04/17] arm64,
 hibernate: rename dst to page in create_safe_exec_page
Date: Wed, 21 Aug 2019 14:31:51 -0400
Message-Id: <20190821183204.23576-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190821183204.23576-1-pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_113212_651491_DD3F1494 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
---
 arch/arm64/kernel/hibernate.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index c8211108ec11..ee34a06d8a35 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -198,17 +198,17 @@ static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
 				 phys_addr_t *phys_dst_addr)
 {
+	void *page = (void *)get_safe_page(GFP_ATOMIC);
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
 
 	pgdp = pgd_offset_raw((void *)get_safe_page(GFP_ATOMIC), dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
@@ -235,7 +235,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	}
 
 	ptep = pte_offset_kernel(pmdp, dst_addr);
-	set_pte(ptep, pfn_pte(virt_to_pfn(dst), PAGE_KERNEL_EXEC));
+	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
 
 	/*
 	 * Load our new page tables. A strict BBM approach requires that we
@@ -254,7 +254,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	write_sysreg(phys_to_ttbr(virt_to_phys(pgdp)), ttbr0_el1);
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
