Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B391D9EB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j80QVz2lw4idjMpWzZLHO6vC57kjA3tRWmQHXmM4imc=; b=o6W04e7dvfv70H
	+PKejIqhORDPnA9CHZGRYqGRtu37IlqErS5oEdhdtlKSSvS7ITMDthImZJnE4fjKtM4guGJCEVFoJ
	TsmUQkwNdkZRkUZmCH4XYihXDTs4Jo6OznPYrfQ45oLnDTo/O4/ncc3EpSHkqlcuQc2H4Wda2m/oM
	vZa0PcI9hajjC1PRVCybHuLnudJ9MLXCdIF+O4J/nFDd0sMJ0sAT0g8jGmJQCXD+tG6+e24fokveb
	rh9qvOJCiurBjOn6bclqZdvUMoIvl4orLIrP4B1giWbGBZSKQee8gqZykThZ+UrMfAIKnNDGVHiYr
	VcsGxmgxBnEp3yygJtVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6aX-0007hj-7k; Tue, 19 May 2020 18:03:37 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6Ym-0006F2-Uo
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:01:50 +0000
Received: by mail-wr1-x441.google.com with SMTP id l18so404783wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 11:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wblWsf3gxbDp6PSj/ehcYDd+oP1x7SYe4Bh2SWvMsGw=;
 b=SVXeb2Ob4Qkst7O5mL6UJ2iL9TD8FeQw9vSwN576mogif6BcdDk/DVx3V2M7dI6n21
 cDlB4PgyVw/zWEvawRrLAkk8d7OsM7cAfcUCgb++qPIGOWWFGKIqdCOmLwUmcPpIc1DM
 nP4/NYwjGzU0cZQa1VFg9eXlqA5QFsvshmZ8mLhFDLun84zEb+yVsdQt288r7v2A6o14
 TEfy1o2q/7e8nwZFntyVfD0p19BG2lWIz/U0rwseBJSSfNFTvIJaoIbYbNDXz+jUT31H
 RPGF0E7utbNt/zM+SiQI1i5jIw+y8XFEsPo89fPClJIpEvylAxB4p0fHyzmt/juXQ9nx
 X/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wblWsf3gxbDp6PSj/ehcYDd+oP1x7SYe4Bh2SWvMsGw=;
 b=kHx6HGt/kyrdVIyFPAOFg1FSuKbf8j+G7/DZxh5NnxLed42fCrgAwR1nAScWlo+dZa
 23FeTXhPkbtzmHcEXDGQaZ4broaNJtX8r9qWzzZHZaeLbnWWXcPueTa95Sa6pPWvzE4/
 QTwmKTujZF5S36MIGK6d2LNsfikrDT01ddGdsDa7Kw1wHNVRzyPoawUWHIcX52NJgj2B
 mkd1twOdf4vgq73z6Nl4k46acX0oAtceCEPsR1eMSqK+p5iyXaibKCWzNUNSC1AinzUm
 YlmAnCO/DWPzleUZfjVttJsCmeo4AHpJ0DVx2o+RZSN0KBuPfefJa8vK5Tlf/u4BetIz
 r/Iw==
X-Gm-Message-State: AOAM530ikDGwFjNggRhtm8a8WoE5hlm8qh3TmOsqpUwisHmZeA7uZpYF
 eGPTGcfvp9mkHK/c2c6X2wszJw==
X-Google-Smtp-Source: ABdhPJwQ7epxyLS6UnZ7f06nlDOMCJUnPMBSTjmWHDJI9x8Mwvumsd4wHmMVikP6f8C+lMs+dd9rLA==
X-Received: by 2002:a5d:6108:: with SMTP id v8mr107787wrt.286.1589911307392;
 Tue, 19 May 2020 11:01:47 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id 1sm510496wmz.13.2020.05.19.11.01.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 11:01:46 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v7 05/24] arm64: mm: Add asid_gen_match() helper
Date: Tue, 19 May 2020 19:54:43 +0200
Message-Id: <20200519175502.2504091-6-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519175502.2504091-1-jean-philippe@linaro.org>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_110149_042871_C5B1FA73 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index 9b26f9a88724..d702d60e64da 100644
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
