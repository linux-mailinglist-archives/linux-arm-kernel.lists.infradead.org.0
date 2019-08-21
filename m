Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC8B98316
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zFGtMEU9484wEIXsiEYGaemFoiEUSi0IAlVtJPYFpPA=; b=FwsrFr1c6YAd9N
	Jo+3tBV2DpdIWInBdO9aIZiRhKV7/LHMrUPjvyyCGO6CC77c3eCGJ0L28dDGeMvN2XxkKDbuoHSgB
	mZDNgHWNAYp8nWNdwqxddtrNOitYf9p/buD7WRxq9xcv1W8fDjyZ3zZmhlvv0LjQDtlyET9sMAqe0
	nWdd+R055e4bkZGzCyJG8diIBCaaoGIcVQcj/EPcV4uz9Mp0xbXwKLmfi1cJ1UcmmRbzgc33s/Wz9
	gkpIb7yfDzuHY+tqTssSRX0iWWKaNyEByBlucig8AFmkOtE6LB5HsNy37Cha8rM0Wb6JgNgc7NTzf
	Q2ePX/bbG0a5UnvU6QeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VS8-0008OC-Mq; Wed, 21 Aug 2019 18:35:24 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VPB-0004Cb-Jy
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:32:23 +0000
Received: by mail-qt1-x841.google.com with SMTP id q4so4284971qtp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 11:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=zx3wi4rxE69hFoeINMbvlrOQdd3v0rMCcWlwgMe+7ro=;
 b=Z9XdTfPQsqrX+ihCr/4v6ItjEm2fTEBbeWz31i5BDIZiOLzaaHMtsuH2gtjkTF6ELA
 7yXqP1MI/fSXDCZ14zn/alA5HSSTPmUHomhmG+JDDkx1iLsTl7o/Iqcn9rPRE3VmTc/X
 /ox8ZTwPDgqdEsBMlW32tnbBoHwMhgBeTxLUP0uouGygQ/O3Fa5pNUVp9reQpI62FyCX
 R3eJo+7FXskAW2/gAKFmeWDiSo7F5wlSMNy8J29CwUOFu7Obx7iEVrbyGTfDJ4oC7JZx
 oOnvCDR8AxKmVTLp02PdeBuOzlYNu4WasPK9T7Aj8+N3bmKh30clQWsDfamV/Ov+aWlZ
 y0Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zx3wi4rxE69hFoeINMbvlrOQdd3v0rMCcWlwgMe+7ro=;
 b=DdaUJXw3fenmjsQYtOArTNRpMTCIGhdIaex0vI6OXKBaHq225ntIaTi8rM7/QGnYAH
 4Jit+XLq+v9Yo98KVnbCTrJGGA3wFzVlodmJIQcriZKJjIrfkbrtdI1gh06k+Y3eGJ6e
 9AvPhSvNUQ8pC7w2HWDlWjt2DLA8vjCJ0u1h2Sbwfdrhxw+9zwnUXN7ZCxNOHVKm1riH
 b84BWbWAQ04Ohnt2PL0FRhqpQ8II6DNESUL/Y+0Fphj49wPPc5splSy6JWVHX9h5AIbH
 Bcy1gSSQN74Bw61ws9iHGMf4sxlxO0pE4QFdxpWCFjoI+f7g5c8KCYyspmQacl1dNLE9
 gKww==
X-Gm-Message-State: APjAAAVH28i4ekQFXezYbga79jEV/DJvYUUREGuN6pQPar+bpURrvyzO
 +RITa8rN8iEofdDEdt769Wd9Rw==
X-Google-Smtp-Source: APXvYqwWbwptxQVbDLDq/ThfodFBbNa157DjIxH5pnCxaJLPGWLsptjdu2SMPi7VujUE6fDJ2uoQLg==
X-Received: by 2002:ad4:45e3:: with SMTP id q3mr19092758qvu.140.1566412340641; 
 Wed, 21 Aug 2019 11:32:20 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q13sm10443332qkm.120.2019.08.21.11.32.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:32:20 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v3 10/17] arm64,
 trans_pgd: adjust trans_pgd_create_copy interface
Date: Wed, 21 Aug 2019 14:31:57 -0400
Message-Id: <20190821183204.23576-11-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190821183204.23576-1-pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_113221_740525_1B684000 
X-CRM114-Status: GOOD (  16.89  )
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

Make trans_pgd_create_copy inline with the other functions in
trans_pgd: use the trans_pgd_info argument, and also use the
trans_pgd_create_empty.

Note, that the functions that are called by trans_pgd_create_copy are
not yet adjusted to be compliant with trans_pgd: they do not yet use
the provided allocator, do not check for generic errors, and do not yet
use the flags in info argument.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/trans_pgd.h |  7 ++++++-
 arch/arm64/kernel/hibernate.c      | 31 ++++++++++++++++++++++++++++--
 arch/arm64/mm/trans_pgd.c          | 17 ++++++----------
 3 files changed, 41 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/include/asm/trans_pgd.h b/arch/arm64/include/asm/trans_pgd.h
index 26e5a63676b5..f4a5f255d4a7 100644
--- a/arch/arm64/include/asm/trans_pgd.h
+++ b/arch/arm64/include/asm/trans_pgd.h
@@ -43,7 +43,12 @@ struct trans_pgd_info {
 /* Create and empty trans_pgd page table */
 int trans_pgd_create_empty(struct trans_pgd_info *info, pgd_t **trans_pgd);
 
-int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
+/*
+ * Create trans_pgd and copy entries from from_table to trans_pgd in range
+ * [start, end)
+ */
+int trans_pgd_create_copy(struct trans_pgd_info *info, pgd_t **trans_pgd,
+			  pgd_t *from_table, unsigned long start,
 			  unsigned long end);
 
 /*
diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 8c2641a9bb09..8bb602e91065 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -323,15 +323,42 @@ int swsusp_arch_resume(void)
 	phys_addr_t phys_hibernate_exit;
 	void __noreturn (*hibernate_exit)(phys_addr_t, phys_addr_t, void *,
 					  void *, phys_addr_t, phys_addr_t);
+	struct trans_pgd_info trans_info = {
+		.trans_alloc_page	= hibernate_page_alloc,
+		.trans_alloc_arg	= (void *)GFP_ATOMIC,
+		/*
+		 * Resume will overwrite areas that may be marked read only
+		 * (code, rodata). Clear the RDONLY bit from the temporary
+		 * mappings we use during restore.
+		 */
+		.trans_flags		= TRANS_MKWRITE,
+	};
+
+	/*
+	 * debug_pagealloc will removed the PTE_VALID bit if the page isn't in
+	 * use by the resume kernel. It may have been in use by the original
+	 * kernel, in which case we need to put it back in our copy to do the
+	 * restore.
+	 *
+	 * Before marking this entry valid, check the pfn should be mapped.
+	 */
+	if (debug_pagealloc_enabled())
+		trans_info.trans_flags |= (TRANS_MKVALID | TRANS_CHECKPFN);
 
 	/*
 	 * Restoring the memory image will overwrite the ttbr1 page tables.
 	 * Create a second copy of just the linear map, and use this when
 	 * restoring.
 	 */
-	rc = trans_pgd_create_copy(&tmp_pg_dir, PAGE_OFFSET, 0);
-	if (rc)
+	rc = trans_pgd_create_copy(&trans_info, &tmp_pg_dir, init_mm.pgd,
+				   PAGE_OFFSET, 0);
+	if (rc) {
+		if (rc == -ENOMEM)
+			pr_err("Failed to allocate memory for temporary page tables.\n");
+		else if (rc == -ENXIO)
+			pr_err("Tried to set PTE for PFN that does not exist\n");
 		goto out;
+	}
 
 	/*
 	 * We need a zero page that is zero before & after resume in order to
diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
index ece797aa1841..7d8734709b61 100644
--- a/arch/arm64/mm/trans_pgd.c
+++ b/arch/arm64/mm/trans_pgd.c
@@ -176,22 +176,17 @@ int trans_pgd_create_empty(struct trans_pgd_info *info, pgd_t **trans_pgd)
 	return 0;
 }
 
-int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
+int trans_pgd_create_copy(struct trans_pgd_info *info, pgd_t **trans_pgd,
+			  pgd_t *from_table, unsigned long start,
 			  unsigned long end)
 {
 	int rc;
-	pgd_t *trans_pgd = (pgd_t *)get_safe_page(GFP_ATOMIC);
 
-	if (!trans_pgd) {
-		pr_err("Failed to allocate memory for temporary page tables.\n");
-		return -ENOMEM;
-	}
-
-	rc = copy_page_tables(trans_pgd, start, end);
-	if (!rc)
-		*dst_pgdp = trans_pgd;
+	rc = trans_pgd_create_empty(info, trans_pgd);
+	if (rc)
+		return rc;
 
-	return rc;
+	return copy_page_tables(*trans_pgd, start, end);
 }
 
 int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
