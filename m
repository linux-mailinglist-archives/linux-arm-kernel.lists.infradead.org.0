Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 658A813A59
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 15:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eheFu4wazvIksVw0DMKxkPDQqv8g0hJWpS6hupQvslc=; b=HLoGE7IASzOCMmGZe8OYKGFGuq
	2Zp9U/Y0L6kgm2MlIE+TxBPOdi3lBK4MGIaQso5UZiempMKTAFWpkMZkVtI9Q6GyZojIbrWHPgStO
	U6f6fczCwpXRsQt1dLYV7ihz7dTERfXclA9jsN+Ils7PwTf+fFthZgCYheMiz4B/78P3yZuamugwz
	CJXAc6Fu473szsV7GlLMSRWxTLyrHZvTlWNOZMqbpX13sNXp7pI99NcZOfKmv5Gp/6E1dpVPEW5ml
	w8WIQ/dev5Zm3+4s2yUzhyV/uLFQll6iC8xXkwlggfokn838fxZ/9WERCq3KovUppiR4RPd+yxnZ+
	9iOxDP3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMug9-0008Tf-P1; Sat, 04 May 2019 13:26:13 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMuef-0005t5-9h
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 13:24:57 +0000
Received: by mail-ed1-x543.google.com with SMTP id a8so9465522edx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 06:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vManM7fsE1Rfxf4LI9PE09NH5+qz6oMA7YIWPZCw8JA=;
 b=ez50CYZi1A8wSumNLxfFT5fDvjyQSthm2ImcyBgWJZNuWsYYTI+5MV7M6wdd1MdMNN
 pJwutO+Oo2R/OawUn4U/2LtJK66YGTuRSO5Gyp/pIWuGi7PrTA9NdJOUDJc/t78TKc6k
 zw4ACn7/KpWHDA2S3OCEcc88Fql/3lD2sA3zOau9aiDy6BMZx5q945EXSP1U0E8Hh+5R
 lV5GfPeFErApZvps8XsrN2CnAT0KHUS5fBuIvsTtR9oGx/0vCS1Bj+M1C3xvNh3CeDD6
 vh9+citZdv4ijxFwUP40Bdeb9ra4qfEtz9Jpn992AuvkUaU6EdbfafrSRp4lyP7xq95o
 YKbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vManM7fsE1Rfxf4LI9PE09NH5+qz6oMA7YIWPZCw8JA=;
 b=hzZwpI2oWCYbqM7T7sbXCFUjxuuSHVSnw2h4KU4FROxKapoXh755pl0+WMmpKomLXz
 /LMIpIh4JYbUywuO6rEpsqxHwbCUks5OcSz2fJNbL04jQKc/j5M5TTm/7hwFyuiuZ+f2
 fzVPvN4Epiyn1voWa9W7lHnAFGLT1OHz4++FaMynWPMXD7gti0m7mekPEJ0lu7YWxhx0
 oDQZiAXPt2RxagRWVdnSGz1AoosFh+EqnMdW6okxmeVG+oucYGUe15vfRCxsBPbiWyz1
 u5kuIvu0hvAC6Oih4GcQu8CMNMTRCTFkRmITXwF8yuU2mv8AlCezsTvWZZjjMqXmWI9i
 ogRg==
X-Gm-Message-State: APjAAAXWdLztm/EzNP5E78kC1sHufq+cs/YTz62SomiBq9MtME7SM451
 hnMplkOBGojORaDSd9gedRK+hQ==
X-Google-Smtp-Source: APXvYqwVWrOdcYUC7jm/t7viqs/ofzOLuJ/GlF1vnrPFUxe0Q8NSMRSZyeacAEO3a+B70xlEIX1lEQ==
X-Received: by 2002:a50:c201:: with SMTP id n1mr14701766edf.244.1556976279937; 
 Sat, 04 May 2019 06:24:39 -0700 (PDT)
Received: from localhost.localdomain ([79.97.203.116])
 by smtp.gmail.com with ESMTPSA id s53sm1391106edb.20.2019.05.04.06.24.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 06:24:39 -0700 (PDT)
From: Tom Murphy <tmurphy@arista.com>
To: iommu@lists.linux-foundation.org
Subject: [RFC 5/7] iommu/dma-iommu: add wrapper for
 iommu_dma_free_cpu_cached_iovas
Date: Sat,  4 May 2019 14:23:21 +0100
Message-Id: <20190504132327.27041-6-tmurphy@arista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190504132327.27041-1-tmurphy@arista.com>
References: <20190504132327.27041-1-tmurphy@arista.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_062441_614971_77C003E5 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, linux-arm-msm@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tom Murphy <tmurphy@arista.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a wrapper for iommu_dma_free_cpu_cached_iovas in the dma-iommu api
path to help with the intel-iommu driver conversion to the dma-iommu api
path

Signed-off-by: Tom Murphy <tmurphy@arista.com>
---
 drivers/iommu/dma-iommu.c | 9 +++++++++
 include/linux/dma-iommu.h | 3 +++
 2 files changed, 12 insertions(+)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 82ba500886b4..1415b6f068c1 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -49,6 +49,15 @@ struct iommu_dma_cookie {
 	struct iommu_domain		*fq_domain;
 };
 
+void iommu_dma_free_cpu_cached_iovas(unsigned int cpu,
+		struct iommu_domain *domain)
+{
+	struct iommu_dma_cookie *cookie = domain->iova_cookie;
+	struct iova_domain *iovad = &cookie->iovad;
+
+	free_cpu_cached_iovas(cpu, iovad);
+}
+
 static void iommu_dma_entry_dtor(unsigned long data)
 {
 	struct page *freelist = (struct page *)data;
diff --git a/include/linux/dma-iommu.h b/include/linux/dma-iommu.h
index 3fc76918e9bf..1e5bee193feb 100644
--- a/include/linux/dma-iommu.h
+++ b/include/linux/dma-iommu.h
@@ -25,6 +25,9 @@ void iommu_setup_dma_ops(struct device *dev, u64 dma_base, u64 size);
 void iommu_dma_map_msi_msg(int irq, struct msi_msg *msg);
 void iommu_dma_get_resv_regions(struct device *dev, struct list_head *list);
 
+void iommu_dma_free_cpu_cached_iovas(unsigned int cpu,
+		struct iommu_domain *domain);
+
 #else /* CONFIG_IOMMU_DMA */
 
 struct iommu_domain;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
