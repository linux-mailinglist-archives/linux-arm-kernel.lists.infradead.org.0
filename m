Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3474112F74
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:04:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jhy2b/7cvIL87LBAK+7qvhatTOnJ4kcF8AQBLqFuV1g=; b=RPKCeCKxEA4dLv
	8GTHIlZWeJSW0A+SyvC0WmtPtKDfsOVG+hCTVpPVasMIX3D8M/17axSWziLRhyd8M3dBM5ggL1RoH
	adFC8abk4+PEZmozQASHWZOA8XocFdvp7n209bXHo4jajg55UwfKIiY0S8cD8AUGF7GMD8KR3PgMY
	yCqSD2z7OY2IsgVhopJHIOvh5zuQx1f5HGPjj/LXEif2WunEyM3UQk1+TBcxQlZ6oq+yynPWOSn20
	jQhYNm6QvIW4JK1gytOF4svwPqO8ca3vVOrYVJ5kQhiOC3dmKMRgjDcRJX9XwFDu06wrgJEaUKjXO
	6zlw6daUwbbgFzjwI6+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX8N-0003eE-Lh; Wed, 04 Dec 2019 16:04:11 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4G-0007Rs-Dv
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 16:00:01 +0000
Received: by mail-qk1-x743.google.com with SMTP id d124so355084qke.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 07:59:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=4v2ls0lyos9MZGs+//3x7zxDKOqLDJgg7MnUzIGC47I=;
 b=PpcLyfVPM+0RjLkhUEpRdReq0hjBlr6u5zYaco/FGk0jDM7rg+tZSyHitbMvg+dM77
 nn+F020fK6oQ7+Y/CBChin10OmfODTipj0Mpd0CqrrXZpXwFXUPB+CZqSsdx85czOVTl
 ou+byKkWXclpkh+f5TL2zch+sRXFnpsj3ZTv42FQ8AycoVbReGHsKEYrX6y3FF27SeBg
 UY9XBnrMv/9mlnlDCzQrxtaERvYwvxviobKQHW49yiF6jwJ8NPJrfoQDdyXaIk/bOyzc
 BcVzhhDAFOeSSU+44AK7nBKs7NoAFkIC41nAOk0LtqRskjLvYcMv3cF7mR7Snf/2NW5i
 vzaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4v2ls0lyos9MZGs+//3x7zxDKOqLDJgg7MnUzIGC47I=;
 b=e5yUg9g4YVGO1Rly+KbjKLWoY+vJjq7F5yB39FgM1OKQATQfUBc+HeG702BYwCeM6q
 0htwGY0w5USF7gi68fms+nUfae1/1SgUJrcYW4YrCxlIwN2M0DLxxJrmUFoIY5F4kL6v
 vP0SJg0bAE0H2ss2mDr4MVxK6PGCSS3/ca07E50SQwLpogQzcVRHVPXdPVW2bB0yLsdL
 Xzl7AQAN04cRPV3SDNUMM7HTURI1OIqsCcSjo1wD8nY/vdmobp1C6bbeRh0/yKRbFbmw
 i3zDLxe4Ijn8EzwMV8sU6BWK5AoUrI7kC3SKkzecxkMUh1k1Z/+uMhsEwyfNxexXDa4j
 5nBQ==
X-Gm-Message-State: APjAAAVvU0QER2lIY1N5ztuN7dyVDnkD1JTOiHDIZJ4r4MjZE/GcSECv
 HJUEVeRWTTYd4ldsHwQ5B503UA==
X-Google-Smtp-Source: APXvYqwbIZH2Pw6NCDLNA8Nh4oH03q5E8aWmq1ENaNGNkYabuHhdPEYYGggkf/SKqVVDwqr5I2fwww==
X-Received: by 2002:a37:411:: with SMTP id 17mr3875404qke.40.1575475195526;
 Wed, 04 Dec 2019 07:59:55 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.07.59.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 07:59:54 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 10/25] arm64: hibernate: add trans_pgd public functions
Date: Wed,  4 Dec 2019 10:59:23 -0500
Message-Id: <20191204155938.2279686-11-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075956_606867_7165600D 
X-CRM114-Status: GOOD (  16.70  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

trans_pgd_create_copy() and trans_pgd_map_page() are going to be
the basis for new shared code that handles page tables for cases
which are between kernels: kexec, and hibernate.

Note: Eventually, get_safe_page() will be moved into a function pointer
passed via argument, but for now keep it as is.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/hibernate.c | 93 ++++++++++++++++++++++-------------
 1 file changed, 60 insertions(+), 33 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index ce60bceed357..ee1442a60945 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -182,39 +182,15 @@ int arch_hibernation_header_restore(void *addr)
 }
 EXPORT_SYMBOL(arch_hibernation_header_restore);
 
-/*
- * Copies length bytes, starting at src_start into an new page,
- * perform cache maintentance, then maps it at the specified address low
- * address as executable.
- *
- * This is used by hibernate to copy the code it needs to execute when
- * overwriting the kernel text. This function generates a new set of page
- * tables, which it loads into ttbr0.
- *
- * Length is provided as we probably only want 4K of data, even on a 64K
- * page system.
- */
-static int create_safe_exec_page(void *src_start, size_t length,
-				 unsigned long dst_addr,
-				 phys_addr_t *phys_dst_addr)
+int trans_pgd_map_page(pgd_t *trans_pgd, void *page,
+		       unsigned long dst_addr,
+		       pgprot_t pgprot)
 {
-	void *page = (void *)get_safe_page(GFP_ATOMIC);
-	pgd_t *trans_pgd;
 	pgd_t *pgdp;
 	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
 
-	if (!page)
-		return -ENOMEM;
-
-	memcpy(page, src_start, length);
-	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
-
-	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
-	if (!trans_pgd)
-		return -ENOMEM;
-
 	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
 		pudp = (void *)get_safe_page(GFP_ATOMIC);
@@ -242,6 +218,44 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	ptep = pte_offset_kernel(pmdp, dst_addr);
 	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
 
+	return 0;
+}
+
+/*
+ * Copies length bytes, starting at src_start into an new page,
+ * perform cache maintenance, then maps it at the specified address low
+ * address as executable.
+ *
+ * This is used by hibernate to copy the code it needs to execute when
+ * overwriting the kernel text. This function generates a new set of page
+ * tables, which it loads into ttbr0.
+ *
+ * Length is provided as we probably only want 4K of data, even on a 64K
+ * page system.
+ */
+static int create_safe_exec_page(void *src_start, size_t length,
+				 unsigned long dst_addr,
+				 phys_addr_t *phys_dst_addr)
+{
+	void *page = (void *)get_safe_page(GFP_ATOMIC);
+	pgd_t *trans_pgd;
+	int rc;
+
+	if (!page)
+		return -ENOMEM;
+
+	memcpy(page, src_start, length);
+	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
+
+	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
+	if (!trans_pgd)
+		return -ENOMEM;
+
+	rc = trans_pgd_map_page(trans_pgd, page, dst_addr,
+				PAGE_KERNEL_EXEC);
+	if (rc)
+		return rc;
+
 	/*
 	 * Load our new page tables. A strict BBM approach requires that we
 	 * ensure that TLBs are free of any entries that may overlap with the
@@ -462,6 +476,24 @@ static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,
 	return 0;
 }
 
+int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
+			  unsigned long end)
+{
+	int rc;
+	pgd_t *trans_pgd = (pgd_t *)get_safe_page(GFP_ATOMIC);
+
+	if (!trans_pgd) {
+		pr_err("Failed to allocate memory for temporary page tables.\n");
+		return -ENOMEM;
+	}
+
+	rc = copy_page_tables(trans_pgd, start, end);
+	if (!rc)
+		*dst_pgdp = trans_pgd;
+
+	return rc;
+}
+
 /*
  * Setup then Resume from the hibernate image using swsusp_arch_suspend_exit().
  *
@@ -483,12 +515,7 @@ int swsusp_arch_resume(void)
 	 * Create a second copy of just the linear map, and use this when
 	 * restoring.
 	 */
-	tmp_pg_dir = (pgd_t *)get_safe_page(GFP_ATOMIC);
-	if (!tmp_pg_dir) {
-		pr_err("Failed to allocate memory for temporary page tables.\n");
-		return -ENOMEM;
-	}
-	rc = copy_page_tables(tmp_pg_dir, PAGE_OFFSET, PAGE_END);
+	rc = trans_pgd_create_copy(&tmp_pg_dir, PAGE_OFFSET, PAGE_END);
 	if (rc)
 		return rc;
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
