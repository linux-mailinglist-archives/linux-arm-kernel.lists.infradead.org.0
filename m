Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E95128A10
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 16:08:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUckOw1RWD7G3/gpIo/gdL6v70MhYNjxWUUYyunSS+w=; b=d3/vQGHRSlGXYR
	L2xW7kmY2yYsz0WT1XOs25qpaSgFwMomFDAEHHBtH5lwkF9insq8gAiQ29jVxep1pxoHEWI1tw5YV
	8QpVqt14aimQnUIHEzLz54SZn1nbkKi7mYwXql760m7Hkl2OymnZy0b2Zp8/vjjDnM0AprOdS9i/7
	AMmjnl3nQ0spEDXIeBHlWSUehKw7oK2ewvFnvMy1AotrZMQt+T/haqy7ejPy+foMzOTkx2vVsyzm3
	HaWIWpWzK9v4q8gl4qQlJphvwCMHZA26PLbU/tIp/ATDOOeO39nQqSuXaYwmobbcIxSGqk9aGlcyx
	7c2yNORyJPjfVYgLy1rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iigMN-0003ay-O8; Sat, 21 Dec 2019 15:08:03 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iigJc-0000Fl-MD
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 15:05:16 +0000
Received: by mail-ed1-x544.google.com with SMTP id cy15so11402274edb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 07:05:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0N+893Qfq6YLP1OvUkum1ZO1qWJ01GUT6Ih8V2c80Vk=;
 b=Ukw6PoNAZjf5krJJRS06xPvTLavrof9Akn4Pak+RjVdM62j1/NqPdGsYUU6ngGpNzI
 ZHRA+faVKygYXpBoHQBzzSrMhFuDjDM3rPT8thlw7ti3Ya7E/2Ia2hgJGmjOkpCbhcKi
 fWFJ41yTlMvsKGf/oqAM1MkQf60LS0RKrqZ8loUGznkUimWWsqYUsRHeSebLKMi4vBlg
 XuhtpVGYw4uTiieNAiV6TEl+/HFnxAfvR6qkWvowyMkkJ9p39r4oe6DrrFdOAOaTjRHK
 ZuOahTLph0HLpnOdVRH8cOKfXQ7P8kaiwem0m0P3CTEBJSk0wQflsk31c0yoR6ujnQx5
 TqqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0N+893Qfq6YLP1OvUkum1ZO1qWJ01GUT6Ih8V2c80Vk=;
 b=baxHL8+I+IFzJMWMruhq0lzSWCv8uhidrkWWH7X1/goKZQLH9yKtLEEIoCav8Ga4yX
 p7cSRzWel78Vzgkp6bN+3PVnlHgOiPpKa46GmnROZY4VGjgwSXfIe//UjK1ZK4SnNOyY
 MNC7v6leUA7l9iX3hhR2LZvHG2otf/Ryrp7HliMe27BaqfJTCiE6xeb4xdCBzYWsR9ce
 h8uBivquk5zCQhbFAbCQFHDOSkse45/Ggn1dUx9pmVxaWfg0lMzlQdsjSENo1oJ92X6W
 FHQA4IVCKbqcMTmkYpKmHXJyqr/8vm8WFgkP/+XvLyJRTtVaLe9sFVteF/Qaaqo4Yzdl
 CXTg==
X-Gm-Message-State: APjAAAWWZBOTtkVaDywZlpo8wPp9un+JgIMCSzBBdPwwNyeNZNADioZU
 0c0snGdDc2FZBqxKtMFoUL15sg==
X-Google-Smtp-Source: APXvYqzYBtLgHyu41wW+pu/pR134HwMgfABxCFG7SFTaKHnLsnkRqp9tkFJSv1iaSEoyl+LQ52YyaQ==
X-Received: by 2002:a17:906:2649:: with SMTP id
 i9mr22633139ejc.120.1576940711107; 
 Sat, 21 Dec 2019 07:05:11 -0800 (PST)
Received: from localhost.localdomain ([80.233.37.20])
 by smtp.googlemail.com with ESMTPSA id u13sm1517639ejz.69.2019.12.21.07.05.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Dec 2019 07:05:10 -0800 (PST)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 8/8] DO NOT MERGE: iommu: disable list appending in dma-iommu
Date: Sat, 21 Dec 2019 15:04:00 +0000
Message-Id: <20191221150402.13868-9-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191221150402.13868-1-murphyt7@tcd.ie>
References: <20191221150402.13868-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_070512_766379_64110E06 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra@vger.kernel.org, Julien Grall <julien.grall@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ops __finalise_sg

Disable combining sg segments in the dma-iommu api.
Combining the sg segments exposes a bug in the intel i915 driver which
causes visual artifacts and the screen to freeze. This is most likely
because of how the i915 handles the returned list. It probably doesn't
respect the returned value specifying the number of elements in the list
and instead depends on the previous behaviour of the intel iommu driver
which would return the same number of elements in the output list as in
the input list.

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
---
 drivers/iommu/dma-iommu.c | 38 +++++++-------------------------------
 1 file changed, 7 insertions(+), 31 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index cf778db7d84d..d7547b912c87 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -853,8 +853,7 @@ static int __finalise_sg(struct device *dev, struct scatterlist *sg, int nents,
 {
 	struct scatterlist *s, *cur = sg;
 	unsigned long seg_mask = dma_get_seg_boundary(dev);
-	unsigned int cur_len = 0, max_len = dma_get_max_seg_size(dev);
-	int i, count = 0;
+	int i;
 
 	for_each_sg(sg, s, nents, i) {
 		/* Restore this segment's original unaligned fields first */
@@ -862,39 +861,16 @@ static int __finalise_sg(struct device *dev, struct scatterlist *sg, int nents,
 		unsigned int s_length = sg_dma_len(s);
 		unsigned int s_iova_len = s->length;
 
+		if (i > 0)
+			cur = sg_next(cur);
+
 		s->offset += s_iova_off;
 		s->length = s_length;
-		sg_dma_address(s) = DMA_MAPPING_ERROR;
-		sg_dma_len(s) = 0;
-
-		/*
-		 * Now fill in the real DMA data. If...
-		 * - there is a valid output segment to append to
-		 * - and this segment starts on an IOVA page boundary
-		 * - but doesn't fall at a segment boundary
-		 * - and wouldn't make the resulting output segment too long
-		 */
-		if (cur_len && !s_iova_off && (dma_addr & seg_mask) &&
-		    (max_len - cur_len >= s_length)) {
-			/* ...then concatenate it with the previous one */
-			cur_len += s_length;
-		} else {
-			/* Otherwise start the next output segment */
-			if (i > 0)
-				cur = sg_next(cur);
-			cur_len = s_length;
-			count++;
-
-			sg_dma_address(cur) = dma_addr + s_iova_off;
-		}
-
-		sg_dma_len(cur) = cur_len;
+		sg_dma_address(cur) = dma_addr + s_iova_off;
+		sg_dma_len(cur) = s_length;
 		dma_addr += s_iova_len;
-
-		if (s_length + s_iova_off < s_iova_len)
-			cur_len = 0;
 	}
-	return count;
+	return nents;
 }
 
 /*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
