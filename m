Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7891B2BF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:10:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lIEBHNECMCQ9tTlDHaHttz4VOqqQasg98962NxScgCY=; b=pI/5zpA4p3fFt1
	Qa+j2gLqKBXjVmDm7yXj4SDAKaVfcfluoHknu6cFYDJtZbLOqx9pkpsvaUu8++bD8GHY+HpjUA/dP
	jfyN8gevGQstBwpDLFA429sDdUt8RfbLmk0Mtmo+w9/2HA9FIQ14UT3WE5t16zWK6PeNeVc81+w+5
	+Dr5A8W+XEEIKRqrj+A8wosJwY1jUBR9BKQPL3VhQ6C9zmUNVrgivsCkP//8z+GubSlC0Gt5/Vx4Q
	qy1rT/ZzPKzTG801yOeCCTgM8syDqfsxtSzHXLdrKyJMkBEJcDiSlD7v72pLZ3m4u5Evv9z+Lgh2+
	TmGVXHBcs3W/ClW39GvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvT9-0003c1-Ds; Tue, 21 Apr 2020 16:09:55 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvT0-0003am-JQ
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:09:48 +0000
Received: by mail-wm1-x341.google.com with SMTP id v4so2872818wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 09:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=c5KYJYYVZWjaCwxDwO74zJzw8wEte600mPboCoS5M8Q=;
 b=rL9EGCnDks23VFlrEYYGotlJpwk1uvfVBC5fgQWivos8Ni23QvOXP18QnUHuVcaGs3
 dQJJ8cDne41fya/re0nyXhz1y9IX7PyZ/VTtpxIc39JIojIs6XHqZJ18whpREk5LYSW5
 xUttGOdjbRaoFESgWRigBB1Puaxc8KDBVVyxcWhCosBZV7XOZVPhjjXyI6uA7GCsP76k
 2qvkHg7R8LMhB8nSFVKv5mZ0M9LUzqkgk+RQ2FUhYEzpvUNIwuaR+GWhXFIEKwaP88zV
 4e+hCjGP/Bve3JWeCUnWnr7SFcAVnkl4TDKYgAlcDuh5MujSVhN3cc8egUoLj78/FPe0
 IxgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=c5KYJYYVZWjaCwxDwO74zJzw8wEte600mPboCoS5M8Q=;
 b=RS9h5uXc6jd3X+0seKkq++q63/P76I+sIUrb52gtYnL7J1q+g5vLvlysz5v90I2xfo
 cmj1eoV3Q9M1fPrKwpF42m5Cj8kcdmwQeYo54r/KouowjIIi9EnSm141KfvPBnhwOfgB
 y9x/J0zhEub0Cl/JgPFIitYMPAD4XzsblZUdRQftuNIfgK6sT2ue+oucHtVHLhOa6XxC
 Ik2RMZdLGjDUj+CQoIHlWtCRgLo6rCACAV7OE5L1s0n9G95NwVx7/+68DNGGwhCme99V
 ZugUYixlRyfO9fKcdScstYzMZ9YEa73EQmhXT98MecJE6c2wy1j6YFYe8lw+L9fOl7P6
 0tTw==
X-Gm-Message-State: AGi0PuY0JoPRnyRCXspInUIR0tsPcRoZlpRlEbsaw9/LbKgpL6r8YJKb
 a2zRNrsmFEdJailowk4Yvs8EQQ==
X-Google-Smtp-Source: APiQypIa5Npj9XzlSyuaBswyPsPEsYezdYr8hpfMJKHXSaoJb+F+8lXDQk9AGw64W3s+HTJLDMfYPg==
X-Received: by 2002:a7b:c941:: with SMTP id i1mr5230614wml.132.1587485384639; 
 Tue, 21 Apr 2020 09:09:44 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id q143sm4284618wme.31.2020.04.21.09.09.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 09:09:43 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: will@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH] perf/smmuv3: Allow sharing MMIO registers with the SMMU driver
Date: Tue, 21 Apr 2020 17:57:46 +0200
Message-Id: <20200421155745.19815-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_090947_156959_8B270916 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 iommu@lists.linux-foundation.org, lorenzo.pieralisi@arm.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some Arm SMMUv3 implementations, for example Arm CoreLink MMU-600, embed
the PMCG registers into the SMMU MMIO regions. It currently causes probe
failure because the PMU and SMMU drivers request overlapping resources.

Avoid the conflict by calling devm_ioremap() directly from the PMU
driver. We loose some sanity-checking of the memory map provided by
firmware, which doesn't seem catastrophic.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---

So this is the simplest solution, and I don't think we're missing much
by skipping the resource reservation. I've also been exploring a more
complex approach [1] which has the SMMU driver perform resource
reservation on behalf of the PMU driver, but I'm not sure it's
necessary.

Please test, I've only tried the RevC FastModel using devicetree so far.

[1] https://jpbrucker.net/git/linux/log/?h=smmu/pmu
---
 drivers/perf/arm_smmuv3_pmu.c | 28 +++++++++++++++++++++-------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index ca183a53a7f10..ad63d1e73333f 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -730,8 +730,8 @@ static void smmu_pmu_get_acpi_options(struct smmu_pmu *smmu_pmu)
 
 static int smmu_pmu_probe(struct platform_device *pdev)
 {
+	struct resource *res_0, *res_1;
 	struct smmu_pmu *smmu_pmu;
-	struct resource *res_0;
 	u32 cfgr, reg_size;
 	u64 ceid_64[2];
 	int irq, err;
@@ -759,18 +759,32 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 		.capabilities	= PERF_PMU_CAP_NO_EXCLUDE,
 	};
 
+	/*
+	 * If the PMCG registers are embedded into the SMMU regions, the
+	 * resources have to be shared with the SMMU driver. Use ioremap()
+	 * rather than ioremap_resource() to avoid conflicts.
+	 */
 	res_0 = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	smmu_pmu->reg_base = devm_ioremap_resource(dev, res_0);
-	if (IS_ERR(smmu_pmu->reg_base))
-		return PTR_ERR(smmu_pmu->reg_base);
+	if (!res_0)
+		return -ENXIO;
+
+	smmu_pmu->reg_base = devm_ioremap(dev, res_0->start,
+					  resource_size(res_0));
+	if (!smmu_pmu->reg_base)
+		return -ENOMEM;
 
 	cfgr = readl_relaxed(smmu_pmu->reg_base + SMMU_PMCG_CFGR);
 
 	/* Determine if page 1 is present */
 	if (cfgr & SMMU_PMCG_CFGR_RELOC_CTRS) {
-		smmu_pmu->reloc_base = devm_platform_ioremap_resource(pdev, 1);
-		if (IS_ERR(smmu_pmu->reloc_base))
-			return PTR_ERR(smmu_pmu->reloc_base);
+		res_1 = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+		if (!res_1)
+			return -ENXIO;
+
+		smmu_pmu->reloc_base = devm_ioremap(dev, res_1->start,
+						    resource_size(res_1));
+		if (!smmu_pmu->reloc_base)
+			return -ENOMEM;
 	} else {
 		smmu_pmu->reloc_base = smmu_pmu->reg_base;
 	}
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
