Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9806CC317
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 20:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6zeWfnnvQkBUU4ywCrCLPvqaS05YVBp1n+vCHSLsjA=; b=BexMAiDBUyh8xE
	dzfuVVzTHiY7ONYC/gFk1tNUPl/Zss8vzC/S4Eny8VTWEsxlZ/BA0NSGnBl9QZpDy4TjRINV1XFmo
	Z+ONRxWYRk1cXDkBxPLyWKm2NXVAHqEsHwCkc0gsPx3Q+z4BEuK2YSYnjT5XVvAhenXaErHCjWwzF
	stg5AUxtGt5RxBCxWInGzwS11UjQfkhtFwI5tflXp9V96V2PkP1e3lZAe4Azcvb5QSMar5b8Kuruj
	eEHt5ZtPOe7r8V00hBycV+vnwrIUommsG/Yyty82OqT8SseHQJSt7mQc+H1OZEbq0p5HInqMS3ypp
	vo9gyxdbZVPC65iz4ooA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSjo-0005bZ-SQ; Fri, 04 Oct 2019 18:55:36 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSh5-00029D-6H
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 18:52:49 +0000
Received: by mail-qt1-x843.google.com with SMTP id f7so9929379qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 11:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=1SIbn4I8MDCXYckkp2+GPJdKwVMA/7ROubKTL+86cvE=;
 b=GxD/3K/ycCEvxSiCWvnAT0GNjjm+4imYTIocK+9Ckg/Ul4GjTiRsEdFohkCTGhZWTE
 Q6HNlNrd9UIF0e1Q0sd+JIzh4upUqUWud2wKh2EVb8iN9NHOcmLrsww3vf1iUkle/Otr
 zmKTJUGeSpDA2IsVb3ZnIe1nnoUPg4C580BLlFwQjHVRqxLqbk/6KM0Maaf8lDucT/xz
 hudrVssAEfkKzZS3WbJ2jfUyj4rHsOc8Rmp9cWSDeHJt7Kr4zrM2MrlawyA7ePoU6Qe6
 hPq8al3oS07vFdn5m0pCpzE2qghjUSjuwRo7/B6X9+jO2cdUbHwdR6przKlPUgg6xuX/
 5kLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1SIbn4I8MDCXYckkp2+GPJdKwVMA/7ROubKTL+86cvE=;
 b=XZX49Fjplatd2o3zBsxTQrBeW9Y1Ofcljr8acOmGGkOJfBcJYgY5nkGHa3T6h06Mc1
 n8MAb/HJySEsbAyvtMw0VRkLY7GHoAhWKvR5lWZrOdRljymJGSxkGnzfXL+f3UssaTSS
 PsaCOt7xjPS0QAf7NylUOWGLWA92fGV92P43p0+nRYYFT5LsVJjkYmvr9KmSZZHaZXbw
 BS0rImYygaE/Aj/tliKlrfE6pzucxz+gqCS7qDksHd5jvCbkHCdBo98Oj8l1df7eMxUV
 DYiPi/h5tyUQ6UIM0YlTgFG38cfU8pA/Cvab+wK5wN434V/OpvWA/N8Bi0IggANwXrtH
 UokA==
X-Gm-Message-State: APjAAAU8ChzeURr3kZTQDqjG2LE9od9lFWvrCyJ6dmL7I6GTbtRTZyIK
 SzTz/gZqSk28JdgE1uJlw3QmnA==
X-Google-Smtp-Source: APXvYqzBYygrCAyKlflIPQOgQ3QCrC7h+B+qaT3fjkOb6GuMQ0AxS7vIMR6W5MfdOa1zXeNuAEGMWQ==
X-Received: by 2002:a0c:c541:: with SMTP id y1mr15297907qvi.116.1570215165841; 
 Fri, 04 Oct 2019 11:52:45 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id p77sm4042514qke.6.2019.10.04.11.52.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 11:52:45 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v6 06/17] arm64: hibernate: rename dst to page in
 create_safe_exec_page
Date: Fri,  4 Oct 2019 14:52:23 -0400
Message-Id: <20191004185234.31471-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004185234.31471-1-pasha.tatashin@soleen.com>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_115247_284268_7F26E0B0 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index 83c41a2f8400..1ca8af685e96 100644
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
