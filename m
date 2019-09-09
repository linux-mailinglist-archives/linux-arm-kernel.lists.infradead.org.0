Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21841ADE97
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tv3hLtt8j1GPbSWbRO85i6rTEerLiW69VRitzWaAPXA=; b=qXBftiYFg6h3+b
	XcflEs+vf3NBePAgOQLyiHkqWK8ieVwwfsOTfTeB8wCzox19B2vrhmGOpyhN87qKfOH9uXj6mKzMp
	/ayTJdme+EsWNmNzAY0D8XZ7W8SUDYe5DmGBfcHkA4D9+rHGadsKtzPf4OIGBXcgCd39P6y54sMoY
	Q5zQnE6NPEFu/+6gFPKGHoM34S8ftAEvrXvjUC2dh/KJYGfzR3xCYYsOohGkL6Q1fsB55uUh3QcAG
	XBK+2pc7ND8MwL8jE9SWXhQhmlP4SawNrcrbGAG/3EkMZmr1bG9gjMZZQs2wyWkyXrECwBX4kj//G
	xl15/qGr2kP+niaGZYYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OBB-0001jv-5u; Mon, 09 Sep 2019 18:14:21 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9P-0008M8-U8
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:12:33 +0000
Received: by mail-qt1-x844.google.com with SMTP id j10so17239783qtp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Zyn9vu/MXqap+nTmKUuDMqr9t65lKRkBEWPsGRxQJWw=;
 b=UthcQ8kO9S9FCLunJhnz0p5vTTeqpswrs8HKI3djcyn4qVoYH5c1zslsQ8icQsNuPw
 lTHINs8zJxAuS3r7gWwVequPv79z7btg4C4cIvo/Bvv7pMUfe3fuVe+bUmep95QO26L2
 BI+gHcf2ROIyYWP16vdZ+yqFXHBvGWqGqai0v9yIfE//FjF2txzR9RwNq/Ro6no5KKwV
 SKLynI2BWiFTWDKzVEX3Ev6oQFBlSmwcv6iEYGjrpwCBHaXU8FBvmaYyobFXAihr09Sg
 +JDVKpR/sFM89wtVQck3jZCL1jiTauTsbPzPg+yIyOU05PD6RocOP6Ax0DRQKCCIMsDE
 CEUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Zyn9vu/MXqap+nTmKUuDMqr9t65lKRkBEWPsGRxQJWw=;
 b=aGJXTIXaVUnxAeEdN4aJ1kqj295LNtJPTquIokn7qfZEy/IZx6LxIobVgyeNZ83wH6
 VLzV5gDnEkMXv9lnAhkHMAuUAPKSRPcLJuhLR21Q1LEHVlG0uTYbfuW/8o35DsYnGsY+
 VAVg54GreBRme+BRnEexqiHwHq0JNDiPI4J7RHpTZiS9Tfur6QWxigetaN39SB4OtLCQ
 8DUgRZVv9kHLHaIO2a8ZAGMBwejrqoLEmb1x0Z4UrfXmoMJc+godDy2say9Xlykb/9WO
 3TtIzXOr7BE57Qu+JqKUxmLVDKbjgxipeQ/kzJa/gThRDuakRokrUvNvcg2L0ximrI5U
 SDhQ==
X-Gm-Message-State: APjAAAWBePBtnt9h8OU69V1BWjIfqo0rvQvOR5H2qEN0uOrHDDzFUB7a
 mMCQCtg/y0J7cST07lFPS2X48g==
X-Google-Smtp-Source: APXvYqxD+/dgh77RiunjjHz4vq1SlUkRHl7ZhEwgGQCd/ojd17d3Y9qj1SZatp7epiPygaYzVXaPxA==
X-Received: by 2002:a05:6214:451:: with SMTP id
 cc17mr15008123qvb.15.1568052751174; 
 Mon, 09 Sep 2019 11:12:31 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:30 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 05/17] arm64: hibernate: remove gotos in
 create_safe_exec_page
Date: Mon,  9 Sep 2019 14:12:09 -0400
Message-Id: <20190909181221.309510-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111232_065707_22DF9226 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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

Usually, gotos are used to handle cleanup after exception, but
in case of create_safe_exec_page there are no clean-ups. So,
simply return the errors directly.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/hibernate.c | 34 +++++++++++-----------------------
 1 file changed, 11 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 47a861e0cb0c..7bbeb33c700d 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -198,7 +198,6 @@ static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
 				 phys_addr_t *phys_dst_addr)
 {
-	int rc = 0;
 	pgd_t *trans_pgd;
 	pgd_t *pgdp;
 	pud_t *pudp;
@@ -206,47 +205,37 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	pte_t *ptep;
 	unsigned long dst = get_safe_page(GFP_ATOMIC);
 
-	if (!dst) {
-		rc = -ENOMEM;
-		goto out;
-	}
+	if (!dst)
+		return -ENOMEM;
 
 	memcpy((void *)dst, src_start, length);
 	__flush_icache_range(dst, dst + length);
 
 	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
-	if (!trans_pgd) {
-		rc = -ENOMEM;
-		goto out;
-	}
+	if (!trans_pgd)
+		return -ENOMEM;
 
 	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
 		pudp = (void *)get_safe_page(GFP_ATOMIC);
-		if (!pudp) {
-			rc = -ENOMEM;
-			goto out;
-		}
+		if (!pudp)
+			return -ENOMEM;
 		pgd_populate(&init_mm, pgdp, pudp);
 	}
 
 	pudp = pud_offset(pgdp, dst_addr);
 	if (pud_none(READ_ONCE(*pudp))) {
 		pmdp = (void *)get_safe_page(GFP_ATOMIC);
-		if (!pmdp) {
-			rc = -ENOMEM;
-			goto out;
-		}
+		if (!pmdp)
+			return -ENOMEM;
 		pud_populate(&init_mm, pudp, pmdp);
 	}
 
 	pmdp = pmd_offset(pudp, dst_addr);
 	if (pmd_none(READ_ONCE(*pmdp))) {
 		ptep = (void *)get_safe_page(GFP_ATOMIC);
-		if (!ptep) {
-			rc = -ENOMEM;
-			goto out;
-		}
+		if (!ptep)
+			return -ENOMEM;
 		pmd_populate_kernel(&init_mm, pmdp, ptep);
 	}
 
@@ -272,8 +261,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 
 	*phys_dst_addr = virt_to_phys((void *)dst);
 
-out:
-	return rc;
+	return 0;
 }
 
 #define dcache_clean_range(start, end)	__flush_dcache_area(start, (end - start))
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
