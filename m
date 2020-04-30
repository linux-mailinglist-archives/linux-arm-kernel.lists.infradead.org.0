Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 688181BFEE7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iumy9/dk74gqZiRcEEOI0pQmTXc2bSLTFYYwFd7/KzM=; b=NrxnJHMbqW88gR
	CGzbampvqxHbh51LEO22VHL2bufxlN3+0NfAaXAkvgR000fFKPDpiJeqJCt31lYzCXK78NLntctbL
	llK+zDVjKxSWib/P1OBOPn7Y64zXG/eWEsuVAhajAKbTvc+li0G0g/9uRsBc4/X1Z0kLM/jRYvGiY
	wOmyH3liCaPfoEB4RdR7jW37bMcTURDyiIca0V9hUfUm/6jM7A69dyj49qX1TnaO37u5WqZEvfJY/
	1jMfJpFtP4N03Oilo89WXHRys+6shXoHZH1ge+nKixNENzAN3b3DpM0DRuFXJRuhvX+H0xab3dNPz
	I1ipH2WmD9PQvS/wZIlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAPE-0004do-KC; Thu, 30 Apr 2020 14:43:16 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMV-0002NT-Mc
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:31 +0000
Received: by mail-wm1-x342.google.com with SMTP id 188so2155011wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oH09lE6EyF+7ddnT7acJ3k+jJHyiqaDtNA7hzb2+sc4=;
 b=DcrvGlQp3aypCcqoN+dkF/d0nkxcpxpMBKeHygdxhq6pA3zd8XZM4QH4aGcjJ/4Tht
 9Tqg6MvR7s2TeMD2dsMqnAePywvLPYenkSK2kqY1aeQ5SP9/rKss1+vPSjAOTqdrBVzC
 3Hk3sNXrPCV4FacRXsy5+JDyySaQuCd99SZEr2yUC/DEQ+NMzYMOHy2AFCct+xzP/4sC
 h8tNesK9eh+4jAyMW+Myo5oIfE7BWYBL5NXT4aV3gr63yJiHIm1CQMdWqcy+2LlMGvC5
 0q2zH9+Bx3SJDZIJOYsGForK5bwlhaFFDJLuGWuknwxC3tkJTHPS6KG3KsC4W4x0HmYe
 /uDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oH09lE6EyF+7ddnT7acJ3k+jJHyiqaDtNA7hzb2+sc4=;
 b=BXRXipixBWCjZ5whjo1LqKTo6ewdWmHbArpYejXpY2Dg34zfbniaFftjK5LtfJ/J75
 ZroRGHJhcHKqto5zTLW+FQqlU/BfVGm3Am9fB3L40JOb4SyAwJjhnbzLDptCuJe5QQ94
 br3klQT+z+h7HrDjv3kmSxH8wiKdmfgNyHbRUVAQuZ3hhVX1GfJUZDUvsS6reXAiGDHB
 8P4/G9LhWxTAAYUhGgiLgtXA2FLYgkGl6fIabYTAvjBbUL8xbc5DWn2lj9qtPttARjzC
 imiYPmKT3tEVrbNzziCoNKJbf6XyY9js1YEyqmDQ6OIRkPLV7NvMQ+WhO2QO/M54Mpd3
 RhqQ==
X-Gm-Message-State: AGi0PuZiaccdiHVQzkHsdLwDtrQMzF2UZFyD2DF32DZtZNn9s/39AUCU
 mcFNc8IBTOTPC15jO8xZgoWYcQ==
X-Google-Smtp-Source: APiQypK39c6e8iviTZ8YwC7ivNBAH/kpcwBHJCtUr7sjyJdgvl1DlUReTsvBACR1UGiEnN8Ql6GmcA==
X-Received: by 2002:a1c:e302:: with SMTP id a2mr3256603wmh.96.1588257625192;
 Thu, 30 Apr 2020 07:40:25 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:24 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 06/25] arm64: mm: Add asid_gen_match() helper
Date: Thu, 30 Apr 2020 16:34:05 +0200
Message-Id: <20200430143424.2787566-7-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074027_833583_9B44822F 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: fenghua.yu@intel.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 jgg@ziepe.ca, catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 hch@infradead.org, zhangfei.gao@linaro.org,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, Jonathan.Cameron@huawei.com,
 felix.kuehling@amd.com, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a macro to check if an ASID is from the current generation, since a
subsequent patch will introduce a third user for this test.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 arch/arm64/mm/context.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index 9b26f9a88724f..d702d60e64dab 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -92,6 +92,9 @@ static void set_reserved_asid_bits(void)
 		bitmap_clear(asid_map, 0, NUM_USER_ASIDS);
 }
 
+#define asid_gen_match(asid) \
+	(!(((asid) ^ atomic64_read(&asid_generation)) >> asid_bits))
+
 static void flush_context(void)
 {
 	int i;
@@ -220,8 +223,7 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 	 *   because atomic RmWs are totally ordered for a given location.
 	 */
 	old_active_asid = atomic64_read(&per_cpu(active_asids, cpu));
-	if (old_active_asid &&
-	    !((asid ^ atomic64_read(&asid_generation)) >> asid_bits) &&
+	if (old_active_asid && asid_gen_match(asid) &&
 	    atomic64_cmpxchg_relaxed(&per_cpu(active_asids, cpu),
 				     old_active_asid, asid))
 		goto switch_mm_fastpath;
@@ -229,7 +231,7 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 	raw_spin_lock_irqsave(&cpu_asid_lock, flags);
 	/* Check that our ASID belongs to the current generation. */
 	asid = atomic64_read(&mm->context.id);
-	if ((asid ^ atomic64_read(&asid_generation)) >> asid_bits) {
+	if (!asid_gen_match(asid)) {
 		asid = new_context(mm);
 		atomic64_set(&mm->context.id, asid);
 	}
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
