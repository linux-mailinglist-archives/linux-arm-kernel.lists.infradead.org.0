Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BBA982FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jipfjPx743UTdMct/ILJYBVoQAMjVqmepJRG6XieiiE=; b=T9hlj83K3vI5mB
	vEhgkzTX4VWN6E5w+sx5CO7dl5AHi3WsZ7jtYHpKzQSNBQ0drhtxV3gbbDIN1c/cSaA2ADnEGXHr+
	IAa3y7hvdtkyck4aQCmA/xmiHWv1o19u9hgg5uRpb2q71awYH+liMgIQilHJa1R6qK4JZexeTmj2j
	gt2S5BuUt8rBbkIDyAdL1xb79LKTGrZpmLA2BI9byiL07OLXqEV1IZ/v850NkVyZU3jHXNPkfIdMB
	QVG2cYGbdPkJkwBKprhaOb6c5cwjlTee0V335ubmcMrz44PlaEDOy7EKRXlOGk8Oq352CcPgbBAKn
	LqjgRQQ3pFz4K9hhYhNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VQB-00056d-2r; Wed, 21 Aug 2019 18:33:23 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VP1-0003zc-Hu
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:32:14 +0000
Received: by mail-qt1-x841.google.com with SMTP id 44so4217104qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 11:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=eQcqgkViU39lFjlil3M8Svf5iGtzpDKWpUSwhlO3OFw=;
 b=VGVxsXxZVLgXe5xWt0w3J/cqZt4mPm3JCoyIMlx5/qCn3/rV+mpLZawysJ4O+rAw6f
 rcWCltuXomYefOmYS9boAk8MlSKZLFLpez1T2eU5UAOqBtCk+eYnrncQN08lpCSdkGyf
 PIsqybRE87/1zUPakM9BVxyUVwgSzcG8e5BR8hciBGCYtpef1hxwksC/bkTpUh63Nu1z
 r0dkWmNaCt6fZ3R/kbEqGqQMcBBJJlmFx2gVi5g4eCZFia+JeGbvB2BJNqBqglpwB9Jf
 fmNp4wajHEt1++t2qwnHfsKFYrMhCXmXUTxxMoR3CJGBHUqEsKoJ+KSJJuoJouAB+CBk
 jgnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eQcqgkViU39lFjlil3M8Svf5iGtzpDKWpUSwhlO3OFw=;
 b=UZCjZhLd3lna9cD6mTw6xyAgK1Ej7RvHCj/CuChBE23C4lzwyd3KmywUVBNUxeNQ7v
 fC4H34y35o9BmUVn1AQ+mSshEWlsLJHI5WFHOKJsCxdzGYLL/BPpMNNg2CQ0jSQBs3Qg
 H5HO/I5xgnr9kfVlwRay6+SZqQp6GNt0xuEqNKvLS8oGomqRVvZXDoP1JSn881ZDqh71
 3PB72nS6SRi2FjDHDGdx5T1xdbCp25peBPjmNnBBz+ySlLn6Swd+4hxC5aAXGGaHoWn0
 6mZ5vOsxR/9QL2JWW39kwXPq/SIcX3fi8XpM8mdyg+kaXTQsoXP7r++fRShnAjyVM+Pp
 Um5g==
X-Gm-Message-State: APjAAAVuAs/HNwsowD4++OnhsL7S+KjGm4LjqnTZokJnGrn0PMTqKmCz
 PGJXZO/pWJmMajGNhsYiqC8Ypg==
X-Google-Smtp-Source: APXvYqyiSUshBCv3Qv8uDRoW17fIP4H2R6mRVwcxyZZdx7O0GxR1GLWG+PqB5n8Xzz5Ldks8Zgr+lA==
X-Received: by 2002:a0c:8910:: with SMTP id 16mr19279920qvp.55.1566412330418; 
 Wed, 21 Aug 2019 11:32:10 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q13sm10443332qkm.120.2019.08.21.11.32.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:32:09 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v3 03/17] arm64,
 hibernate: remove gotos in create_safe_exec_page
Date: Wed, 21 Aug 2019 14:31:50 -0400
Message-Id: <20190821183204.23576-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190821183204.23576-1-pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_113211_588999_8E84540C 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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

Usually, gotos are used to handle cleanup after exception, but
in case of create_safe_exec_page there are no clean-ups. So,
simply return the errors directly.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 28 +++++++++-------------------
 1 file changed, 9 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 4bb4d17a6a7c..c8211108ec11 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -198,17 +198,14 @@ static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
 				 phys_addr_t *phys_dst_addr)
 {
-	int rc = 0;
 	pgd_t *pgdp;
 	pud_t *pudp;
 	pmd_t *pmdp;
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
@@ -216,30 +213,24 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	pgdp = pgd_offset_raw((void *)get_safe_page(GFP_ATOMIC), dst_addr);
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
 
@@ -265,8 +256,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 
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
