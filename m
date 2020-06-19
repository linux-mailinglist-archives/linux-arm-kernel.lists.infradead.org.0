Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CF2200933
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 14:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BRUShwPedHo8zrKP01Bse01pQbmvSTocZWbQiur8Qk=; b=ZQaioeQalBYLDe
	4YCBXCT0Acuci96nXoU+PFMBmQ1J18vseBVkmKjBafMKvEdqNuMv09kT96qVwRK/SXONyN8k/JqoW
	zZqMCOZHBjCoB2VI0E1dEMXZxMImpmWfJjsVZF4kEDwM/+38oHEQsqrWHDkfM2x9Mp1iZWIs1y4pJ
	Gnqcgm3z/EA+ljPLLHnIwyKPshEuMZEJcePmlWOnUnv9q7+Vfw6EpA/vGbZ4OV1hBLpPBWYH9a/Rm
	pOnQzxFyF4CFY8lqOUQhWzbEAupSPNuFaq1U+qFFqhNs98ANkL7Fuw6DoKyHX6hdaQ7ak8qoDDC2u
	jbbzNscrDKj4bNVkXEag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmGcX-0000H1-1y; Fri, 19 Jun 2020 12:59:49 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmGbF-0007sE-12
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 12:58:30 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05JCwNCf058282;
 Fri, 19 Jun 2020 07:58:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592571503;
 bh=11o/+hzZiiuyAsd9CjfzVDPRofsNTTdesYF9PK407RU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ebdgNmPH1qhWL0pCp7rhGRpbu//q/7JB32Bk5EbImZmRA4nh2ry6MYRipgq78vJxP
 BSnMgCSMIoSqLkirR/gjWyS8Y+OO4/qluVRG97oSQdDisbBS6FgaSbioCYGcIIwwmP
 Jc79crKk/pXKlK+Lal65q+Wvluyl/CV928Ba63yw=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05JCwNnP007298;
 Fri, 19 Jun 2020 07:58:23 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 19
 Jun 2020 07:58:22 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 19 Jun 2020 07:58:22 -0500
Received: from a0230074-Latitude-E7470.ent.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05JCw2Ho015675;
 Fri, 19 Jun 2020 07:58:19 -0500
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
 <adrian.hunter@intel.com>, <will@kernel.org>,
 <catalin.marinas@arm.com>, <robh+dt@kernel.org>, <ulf.hansson@linaro.org>
Subject: [PATCH 4/7] mmc: sdhci_am654: Fix conditions for enabling dll
Date: Fri, 19 Jun 2020 18:27:58 +0530
Message-ID: <20200619125801.9530-5-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619125801.9530-1-faiz_abbas@ti.com>
References: <20200619125801.9530-1-faiz_abbas@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_055829_143108_BED20336 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: faiz_abbas@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clock > CLOCK_TOO_SLOW_HZ condition gating phy configuration
is only required because dll should not be enabled at too low a
clock frequency or too low timing. Make sure that this condition
only gates dll enablement.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
---
 drivers/mmc/host/sdhci_am654.c | 42 ++++++++++++++++------------------
 1 file changed, 20 insertions(+), 22 deletions(-)

diff --git a/drivers/mmc/host/sdhci_am654.c b/drivers/mmc/host/sdhci_am654.c
index 365eb2819dd9..8b0f69012d09 100644
--- a/drivers/mmc/host/sdhci_am654.c
+++ b/drivers/mmc/host/sdhci_am654.c
@@ -204,34 +204,32 @@ static void sdhci_am654_set_clock(struct sdhci_host *host, unsigned int clock)
 
 	sdhci_set_clock(host, clock);
 
-	if (clock > CLOCK_TOO_SLOW_HZ) {
-		/* Setup DLL Output TAP delay */
-		if (sdhci_am654->legacy_otapdly)
-			otap_del_sel = sdhci_am654->otap_del_sel[0];
-		else
-			otap_del_sel = sdhci_am654->otap_del_sel[timing];
+	/* Setup DLL Output TAP delay */
+	if (sdhci_am654->legacy_otapdly)
+		otap_del_sel = sdhci_am654->otap_del_sel[0];
+	else
+		otap_del_sel = sdhci_am654->otap_del_sel[timing];
 
-		otap_del_ena = (timing > MMC_TIMING_UHS_SDR25) ? 1 : 0;
+	otap_del_ena = (timing > MMC_TIMING_UHS_SDR25) ? 1 : 0;
 
-		mask = OTAPDLYENA_MASK | OTAPDLYSEL_MASK;
-		val = (otap_del_ena << OTAPDLYENA_SHIFT) |
-		      (otap_del_sel << OTAPDLYSEL_SHIFT);
+	mask = OTAPDLYENA_MASK | OTAPDLYSEL_MASK;
+	val = (otap_del_ena << OTAPDLYENA_SHIFT) |
+	      (otap_del_sel << OTAPDLYSEL_SHIFT);
 
-		/* Write to STRBSEL for HS400 speed mode */
-		if (timing == MMC_TIMING_MMC_HS400) {
-			if (sdhci_am654->flags & STRBSEL_4_BIT)
-				mask |= STRBSEL_4BIT_MASK;
-			else
-				mask |= STRBSEL_8BIT_MASK;
+	/* Write to STRBSEL for HS400 speed mode */
+	if (timing == MMC_TIMING_MMC_HS400) {
+		if (sdhci_am654->flags & STRBSEL_4_BIT)
+			mask |= STRBSEL_4BIT_MASK;
+		else
+			mask |= STRBSEL_8BIT_MASK;
 
-			val |= sdhci_am654->strb_sel << STRBSEL_SHIFT;
-		}
+		val |= sdhci_am654->strb_sel << STRBSEL_SHIFT;
+	}
 
-		regmap_update_bits(sdhci_am654->base, PHY_CTRL4, mask, val);
+	regmap_update_bits(sdhci_am654->base, PHY_CTRL4, mask, val);
 
-		if (timing > MMC_TIMING_UHS_SDR25)
-			sdhci_am654_setup_dll(host, clock);
-	}
+	if (timing > MMC_TIMING_UHS_SDR25 && clock > CLOCK_TOO_SLOW_HZ)
+		sdhci_am654_setup_dll(host, clock);
 }
 
 static void sdhci_j721e_4bit_set_clock(struct sdhci_host *host,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
