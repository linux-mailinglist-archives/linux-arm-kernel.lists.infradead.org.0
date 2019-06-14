Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D029345D97
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JypcI2OKB2UOsqCwuR2r71d31SX0UkWvjYq1GhmH4VU=; b=kFS
	nlTpimIaHYc6TT6zcQ/4nFEv/6AUnnnACjpr5c+WgPUPnUVAzSXLqMiqMNpr9RB5o5VeYqs+N6QnV
	Vs5W7Cm25U/JoV9MuNCX+iwjeiH1ifTCn+A24RPvNxH9jEG75IDV8KsFeDmnWv9/MhKEuEc/ZQu/3
	e1rSxw08TbWszoTSPZkT3xKpKi4Z3vpF5Za46qfBvOYMdEQGUEGXlxDA5KwPYuKNCI8ezH01Bw0R8
	U4ZaLlDu0l6thSMBocwE5FsxqOu26jwWZ77qDUtHW3xrptnex6+96GPpg0Xh4JZXz8EjG+Mt3Z38M
	m95+SQllU2ZccjkUOoKPjHCgZUFC3zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbm1C-00040W-E4; Fri, 14 Jun 2019 13:13:22 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbm0w-0003x9-Ub
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 13:13:08 +0000
Received: by mail-qk1-x743.google.com with SMTP id g18so1614497qkl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 06:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=+tFDksFffEpGXWf74d3vaKdXMAyKwc+2Rp4MyFwCKVQ=;
 b=fiB5wkBVxsKeL5k+KkAGrFlUmSk1byl/GiN2Xo9gy/7cEid5eY0hXmwLwDRizYspa4
 oopJRiJUoBO3mRPxNIL+uwsH37O7Fa8SQLVmSYYd/uE18+Nret8ONqT3S4xaq/6sVxAN
 uhn9N23jWd41HX1joxngZLUZ6P27FDH/hpovd4G11oOn9gkdRuMNDhIa7/4opnT8GGn8
 fF9y9/AW4idvXftY6zMTtrI9fDg8TTQSo6pCrDFHW+Z30Ggi6MuRNvZVwguGP2u4sMnS
 3lD8R+PSQNxpbYIdTWbLpGf0Bzs78+O/M/FTdJJi1FKjsP/7oE9MRWhcf8EN1EdonIn8
 Zn3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+tFDksFffEpGXWf74d3vaKdXMAyKwc+2Rp4MyFwCKVQ=;
 b=gUlbBAwpCOg2yS0Ta4p8bNTVb5wxH7IVtEVtMTSpX+UEepfAG3501BEUgOt6aRlqVd
 tCEm7f4QsLHKDIHT5atR/nAPwqjU39xLN/S4w4wpu23OxGr/Y30IGDnuHnfcVA9FNmYg
 ayS43XRRkHQAsKFWvlskmhMeJH58tAqVfedJLX8VcS21PYwazuh5/9JHRsoL2FxQc6b0
 xJCgJ3t+QSkGRkoz+6WG2q/834YFbqNasSvijcTFOPJFzwXsWDCa8aDY5s1adf/vc+54
 cu94/dL9ocFbVkeTRXldgCm43MR7+OaT1KroucU3Xwg8hlnBOL2yVo2VyAaWHcYZ17OT
 G/Tw==
X-Gm-Message-State: APjAAAVA5sPGOnfQaSw0IZ9Zy4z/cZAw/Sb29wdE/qJTASL87ahSRcHq
 q7blFXMZdhEBKuG622qIkQ==
X-Google-Smtp-Source: APXvYqwCZcVCKo1fyJFmDmeZVjNujYgLtaS2EAtung+hF1kdgQvDNS6dXhUFlZJN2BWHrufFLDkWgg==
X-Received: by 2002:a37:5407:: with SMTP id i7mr3763273qkb.149.1560517985220; 
 Fri, 14 Jun 2019 06:13:05 -0700 (PDT)
Received: from gabell.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id i30sm1563893qtb.18.2019.06.14.06.13.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 06:13:04 -0700 (PDT)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64/mm: Correct the cache line size warning with non
 coherent device
Date: Fri, 14 Jun 2019 09:11:41 -0400
Message-Id: <20190614131141.4428-1-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_061307_014023_D01ADBF3 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>,
 Masayoshi Mizuma <msys.mizuma@gmail.com>, linux-kernel@vger.kernel.org,
 Zhang Lei <zhang.lei@jp.fujitsu.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>

If the cache line size is greater than ARCH_DMA_MINALIGN (128),
the warning shows and it's tainted as TAINT_CPU_OUT_OF_SPEC.

However, it's not good because as discussed in the thread [1], the cpu
cache line size will be problem only on non-coherent devices.

Since the coherent flag is already introduced to struct device,
show the warning only if the device is non-coherent device and
ARCH_DMA_MINALIGN is smaller than the cpu cache size.

[1] https://lore.kernel.org/linux-arm-kernel/20180514145703.celnlobzn3uh5tc2@localhost/

Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
Reviewed-by: Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>
Tested-by: Zhang Lei <zhang.lei@jp.fujitsu.com>
---
 arch/arm64/include/asm/cache.h |  7 +++++++
 arch/arm64/kernel/cacheinfo.c  |  4 +---
 arch/arm64/mm/dma-mapping.c    | 14 ++++++++++----
 3 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
index 758af6340314..d24b7c1ecd9b 100644
--- a/arch/arm64/include/asm/cache.h
+++ b/arch/arm64/include/asm/cache.h
@@ -91,6 +91,13 @@ static inline u32 cache_type_cwg(void)
 
 #define __read_mostly __attribute__((__section__(".data..read_mostly")))
 
+static inline int cache_line_size_of_cpu(void)
+{
+	u32 cwg = cache_type_cwg();
+
+	return cwg ? 4 << cwg : ARCH_DMA_MINALIGN;
+}
+
 int cache_line_size(void);
 
 /*
diff --git a/arch/arm64/kernel/cacheinfo.c b/arch/arm64/kernel/cacheinfo.c
index 6eaf1c07aa4e..7fa6828bb488 100644
--- a/arch/arm64/kernel/cacheinfo.c
+++ b/arch/arm64/kernel/cacheinfo.c
@@ -19,12 +19,10 @@
 
 int cache_line_size(void)
 {
-	u32 cwg = cache_type_cwg();
-
 	if (coherency_max_size != 0)
 		return coherency_max_size;
 
-	return cwg ? 4 << cwg : ARCH_DMA_MINALIGN;
+	return cache_line_size_of_cpu();
 }
 EXPORT_SYMBOL_GPL(cache_line_size);
 
diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
index 1669618db08a..379589dc7113 100644
--- a/arch/arm64/mm/dma-mapping.c
+++ b/arch/arm64/mm/dma-mapping.c
@@ -38,10 +38,6 @@ void arch_dma_prep_coherent(struct page *page, size_t size)
 
 static int __init arm64_dma_init(void)
 {
-	WARN_TAINT(ARCH_DMA_MINALIGN < cache_line_size(),
-		   TAINT_CPU_OUT_OF_SPEC,
-		   "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
-		   ARCH_DMA_MINALIGN, cache_line_size());
 	return dma_atomic_pool_init(GFP_DMA32, __pgprot(PROT_NORMAL_NC));
 }
 arch_initcall(arm64_dma_init);
@@ -56,7 +52,17 @@ void arch_teardown_dma_ops(struct device *dev)
 void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
 			const struct iommu_ops *iommu, bool coherent)
 {
+	int cls = cache_line_size_of_cpu();
+
 	dev->dma_coherent = coherent;
+
+	if (!coherent)
+		WARN_TAINT(cls > ARCH_DMA_MINALIGN,
+			TAINT_CPU_OUT_OF_SPEC,
+			"%s %s: ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
+			dev_driver_string(dev), dev_name(dev),
+			ARCH_DMA_MINALIGN, cls);
+
 	if (iommu)
 		iommu_setup_dma_ops(dev, dma_base, size);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
