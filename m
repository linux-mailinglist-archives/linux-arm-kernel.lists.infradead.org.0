Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47665175975
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 12:22:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbGNFcyhifs1ZBaZ0fF8vKreOnrVvT0suRh5/8kt+dY=; b=mO20I7vFytFAVi
	xNQELH1gZkSatez8dnOz0028IDTNP2W2AuDgLGxwl/J8KJflLy8PEniErseLtimVPPkoy7nqJz8uy
	cV+Jbk48pER1teEOArdO4DKI16Q9YrB7plgUr5pcKz/NrM12wOco5MByifNYlzmgbeNXcR4dUOVQg
	mF+gz95/7Y5ve8l8TiU1htHSNvqyJjBznAJSvEnxTEbQuO9FPBNppdt+4E/YmUXRuurLERG10zMUf
	0OU13Vy/b3goffrQmFOr45VSVbR11MsZBeEJ4uNhv9uQgkhNeCG5zdKzXjnF9C36T1c7gAbWsChNe
	csdR8Kw5t8lr9AlKNfBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8j9e-0008IZ-JX; Mon, 02 Mar 2020 11:22:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8j9R-0008FH-O8
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 11:22:26 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so12095795wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 03:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4twAZzpqE7OZHthVARi42fhoM9wMIzUTa1b3XIbc4u0=;
 b=HrqcWs/tM1UMeqgqQDpvy3jpqRSAaC9KOUedVpPAAvQXG3RKGJEGAKffHVNPColesQ
 XmJC8gVr91n0yVRfBh5hJIgxN9YGBInf8dxyQV9MOR+vauyVfx/rs1trGy5WKr+ppnSY
 xPNcptl/HEFg1e2S8eAWVFv4Q5y9PVMn9NqIV3MYzpRlBTcz8yFMsOTa1HGbIGY1K7Gt
 GsFLln6giCDJ1dDj49uhcLCoEnMDB4qd9U0rI0iX9KSIwHGJNAc03zON9tAvUnNuiZdQ
 xeZEus/ihesqcBQ/4+ERXw6UkZGG0pE7kquuOyrm+1jE6cQq8pWiEkXWYx+nD0T4SWzN
 oCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4twAZzpqE7OZHthVARi42fhoM9wMIzUTa1b3XIbc4u0=;
 b=nQoZQrgvumuPqO2gta1GllGshJ+3Hg+O0o/kr6P374ygfr4iJXqSA63UuX7xXmstXu
 wWKFN9v6eDcowDX4Ut2JqvA4MpgiTPjsoJEkDcC4joOcTBIANeqzB4xMbfdepsDG7eu1
 K3ZtkOiylBOiSGihGrBTOr3oc16ax51TFvL2TJExIFkIkjcNopqlQhT2WCs9A/7p3a2C
 OV4dDr04JdY02i33NIP5cjJ09DmBV+j2ZCYYZhuzETeWnt9jXn6RpN7C3p5mzCMU1Wuc
 jvB3fmV1EgN2BfJUer4kcZKmcKaVtKCzK/mYXmZUM9ioTLLSRrVHcUUPZfnP/MMUskZR
 eAFA==
X-Gm-Message-State: APjAAAVoGCbbPIBKgRSmpdyk+08yTHBgcf/Cz52YW7Z+GXkSx98+CfAu
 K9rMDR3E7xUZhh85c6+Irq66PQ==
X-Google-Smtp-Source: APXvYqwoftzxlJ69VQL0xqAKsfOX0Z+thgz1rFA+uNAT/dQGnLIN+PHomnMXJLjLb67L3CQ3sbGx9g==
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr21399020wrn.209.1583148140211; 
 Mon, 02 Mar 2020 03:22:20 -0800 (PST)
Received: from localhost.localdomain ([2a01:e34:ecba:5540:6f5c:582a:cc84:32f5])
 by smtp.gmail.com with ESMTPSA id j14sm28398441wrn.32.2020.03.02.03.22.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 03:22:19 -0800 (PST)
From: Fabien Parent <fparent@baylibre.com>
To: linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v2 2/3] iommu/mediatek: add pdata member for legacy ivrp paddr
Date: Mon,  2 Mar 2020 12:21:51 +0100
Message-Id: <20200302112152.2887131-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200302112152.2887131-1-fparent@baylibre.com>
References: <20200302112152.2887131-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_032221_850377_AE765517 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: matthias.bgg@gmail.com, ck.hu@mediatek.com, joro@8bytes.org,
 yong.wu@mediatek.com, Fabien Parent <fparent@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new platform data member in order to select which IVRP_PADDR
format is used by an SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

v2: new patch

---
 drivers/iommu/mtk_iommu.c | 3 ++-
 drivers/iommu/mtk_iommu.h | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 95945f467c03..78cb14ab7dd0 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -569,7 +569,7 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
 		F_INT_PRETETCH_TRANSATION_FIFO_FAULT;
 	writel_relaxed(regval, data->base + REG_MMU_INT_MAIN_CONTROL);
 
-	if (data->plat_data->m4u_plat == M4U_MT8173)
+	if (data->plat_data->has_legacy_ivrp_paddr)
 		regval = (data->protect_base >> 1) | (data->enable_4GB << 31);
 	else
 		regval = lower_32_bits(data->protect_base) |
@@ -786,6 +786,7 @@ static const struct mtk_iommu_plat_data mt8173_data = {
 	.m4u_plat     = M4U_MT8173,
 	.has_4gb_mode = true,
 	.has_bclk     = true,
+	.has_legacy_ivrp_paddr = true;
 	.reset_axi    = true,
 	.larbid_remap = {0, 1, 2, 3, 4, 5}, /* Linear mapping. */
 };
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index ea949a324e33..4696ba027a71 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -42,6 +42,7 @@ struct mtk_iommu_plat_data {
 	bool                has_bclk;
 	bool                has_vld_pa_rng;
 	bool                reset_axi;
+	bool                has_legacy_ivrp_paddr;
 	unsigned char       larbid_remap[MTK_LARB_NR_MAX];
 };
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
