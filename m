Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CC820093E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 15:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NYhsLu3sOGOrcPCOGSE1WUViZNNqgi7bZrKYeU5ghU=; b=XmxcBpuDS7P1f5
	ZYi4mQpOrncIlv+pmZtbCxwULvILayXdSqCtWyVSKNyBk1/F041J6WluexUJzyEarWypEOdcHMI95
	0wIatYOa+zpyYVnFt7m9vTGarfGLsL1mHPuYNbx7KSwW9mFuwIbFq/LdQxjtpxU6rIFg/7nRV1gCS
	ux1iDGGdtuLUXYwDyYy6ZyxSC37n5CRzK3zo7YkrjdTfHVILaVasYSAXqe5NMuYYQGarV4PalndL3
	SYbAryyGZ/mwT35t4Q/XKxaqvBodzCm1T1O7TclRcs+EkLlR2CEvgFf2yc4MuIqRte8rC+f/ZopWO
	kqTMhBqZwS/jJPW+u9Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmGd8-0003I0-2v; Fri, 19 Jun 2020 13:00:26 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmGbK-0007xK-6D
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 12:58:35 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05JCwRex082673;
 Fri, 19 Jun 2020 07:58:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592571507;
 bh=gGgeNDrwJZDmhTBHIA/rEns/YYGEnKJCgBn0VXHZTQg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=VCEh6ZraffXfp5+42J0kt9MPgGJyWtMrXIQr6UBcA4kXsJy/r1QMxUoq/04fBOgoS
 aBEYk65lorUnsMSG8M+Upns3K3IewUPkFw8OM//PUUB0H0RqJcNGYi44y+4qLe+NiN
 gzc9e2cJXeeVwVfI2wGRJW+kRLEx6OPIBTiVwS7w=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05JCwRbB105835
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Jun 2020 07:58:27 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 19
 Jun 2020 07:58:27 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 19 Jun 2020 07:58:26 -0500
Received: from a0230074-Latitude-E7470.ent.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05JCw2Hp015675;
 Fri, 19 Jun 2020 07:58:23 -0500
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
 <adrian.hunter@intel.com>, <will@kernel.org>,
 <catalin.marinas@arm.com>, <robh+dt@kernel.org>, <ulf.hansson@linaro.org>
Subject: [PATCH 5/7] mmc: sdhci_am654: Update delay chain configuration
Date: Fri, 19 Jun 2020 18:27:59 +0530
Message-ID: <20200619125801.9530-6-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619125801.9530-1-faiz_abbas@ti.com>
References: <20200619125801.9530-1-faiz_abbas@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_055834_333595_77A92E8D 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.23.249 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

For speed modes where DLL is not enabled write to TXDLYCLK to enable
transmitter delay chain mode.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
---
 drivers/mmc/host/sdhci_am654.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci_am654.c b/drivers/mmc/host/sdhci_am654.c
index 8b0f69012d09..f7535ee3a232 100644
--- a/drivers/mmc/host/sdhci_am654.c
+++ b/drivers/mmc/host/sdhci_am654.c
@@ -61,6 +61,8 @@
 #define CALDONE_MASK		BIT(CALDONE_SHIFT)
 #define RETRIM_SHIFT		17
 #define RETRIM_MASK		BIT(RETRIM_SHIFT)
+#define SELDLYTXCLK_SHIFT	17
+#define SELDLYTXCLK_MASK	BIT(SELDLYTXCLK_SHIFT)
 
 #define DRIVER_STRENGTH_50_OHM	0x0
 #define DRIVER_STRENGTH_33_OHM	0x1
@@ -228,8 +230,14 @@ static void sdhci_am654_set_clock(struct sdhci_host *host, unsigned int clock)
 
 	regmap_update_bits(sdhci_am654->base, PHY_CTRL4, mask, val);
 
-	if (timing > MMC_TIMING_UHS_SDR25 && clock > CLOCK_TOO_SLOW_HZ)
+	if (timing > MMC_TIMING_UHS_SDR25 && clock > CLOCK_TOO_SLOW_HZ) {
+		regmap_update_bits(sdhci_am654->base, PHY_CTRL5,
+				   SELDLYTXCLK_MASK, 0);
 		sdhci_am654_setup_dll(host, clock);
+	} else {
+		regmap_update_bits(sdhci_am654->base, PHY_CTRL5,
+				   SELDLYTXCLK_MASK, 1 << SELDLYTXCLK_SHIFT);
+	}
 }
 
 static void sdhci_j721e_4bit_set_clock(struct sdhci_host *host,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
