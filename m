Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AC2200943
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 15:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7R3ULYO8Mrd8VX5mvVjLS1Vn07gvqQXzYPbX1KWp5A=; b=knf9DjhJqWQT56
	QPnxrXRUacB2Kss3iyG6Cp9r+vsQUMU5i14GBYAu8uh6Ij3XJdJsxqhKLuVYF3m9QXPxmII+BMRN/
	8JnXRolgGbbnDVPPkrE/ohtSyejBefEOGE45noG+MdVOGeXuxUQPrI5DuBpLnUuY2Rcl5WkGlDwff
	QH7w/ZhUaWHSE1jIacP6h/ZEG8D4zq4/7r1B9nLUfdqIeMaYrKis8xLwHWCn0XZaqBUAletXK02iw
	10Ejut6TR/FyZPew34hfe2VbCPaUfqRUoG20obSBCYXMyXKamZKKplF+vOH2rliJhxoX8420C0XDQ
	Afd1tfN7doudnPzLAZCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmGdb-0003V4-Fw; Fri, 19 Jun 2020 13:00:55 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmGbM-00081J-VS
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 12:58:38 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05JCwVfe076871;
 Fri, 19 Jun 2020 07:58:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592571511;
 bh=aJnKA0kudzVvE8QWCNmxRFasKDl7kSmbWoXmdq3ovjY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=u0X/SjdyEzBsGZpN3q+7L6C5HO6Kzh0yj1ImbJGdQrMXTj5m912uYchbK+7mQ69o0
 pTmLJLwBdqnYQwzJ5yqeeROZKYZyOjbKeL3bbQf4vAMs2kHgKbAJGZ9A1ERhR4cfIK
 5RzeUEJzr/IVremsfEDg3uB2pZBC8rj0991a2Yyk=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05JCwVGB105882
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Jun 2020 07:58:31 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 19
 Jun 2020 07:58:31 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 19 Jun 2020 07:58:31 -0500
Received: from a0230074-Latitude-E7470.ent.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05JCw2Hq015675;
 Fri, 19 Jun 2020 07:58:27 -0500
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
 <adrian.hunter@intel.com>, <will@kernel.org>,
 <catalin.marinas@arm.com>, <robh+dt@kernel.org>, <ulf.hansson@linaro.org>
Subject: [PATCH 6/7] mmc: sdhci_am654: Add support for clkbuf_sel property
Date: Fri, 19 Jun 2020 18:28:00 +0530
Message-ID: <20200619125801.9530-7-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619125801.9530-1-faiz_abbas@ti.com>
References: <20200619125801.9530-1-faiz_abbas@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_055837_116825_1097BC72 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.19.142 listed in wl.mailspike.net]
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

Add support for writing new clkbuf_sel property for the J721e 4 bit IP.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
Signed-off-by: Sekhar Nori <nsekhar@ti.com>
---
 drivers/mmc/host/sdhci_am654.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/mmc/host/sdhci_am654.c b/drivers/mmc/host/sdhci_am654.c
index f7535ee3a232..f9d24af12396 100644
--- a/drivers/mmc/host/sdhci_am654.c
+++ b/drivers/mmc/host/sdhci_am654.c
@@ -47,6 +47,8 @@
 #define SEL100_MASK		BIT(SEL100_SHIFT)
 #define FREQSEL_SHIFT		8
 #define FREQSEL_MASK		GENMASK(10, 8)
+#define CLKBUFSEL_SHIFT		0
+#define CLKBUFSEL_MASK		GENMASK(2, 0)
 #define DLL_TRIM_ICP_SHIFT	4
 #define DLL_TRIM_ICP_MASK	GENMASK(7, 4)
 #define DR_TY_SHIFT		20
@@ -86,6 +88,7 @@ struct sdhci_am654_data {
 	struct regmap *base;
 	bool legacy_otapdly;
 	int otap_del_sel[11];
+	int clkbuf_sel;
 	int trm_icp;
 	int drv_strength;
 	bool dll_on;
@@ -238,6 +241,9 @@ static void sdhci_am654_set_clock(struct sdhci_host *host, unsigned int clock)
 		regmap_update_bits(sdhci_am654->base, PHY_CTRL5,
 				   SELDLYTXCLK_MASK, 1 << SELDLYTXCLK_SHIFT);
 	}
+
+	regmap_update_bits(sdhci_am654->base, PHY_CTRL5, CLKBUFSEL_MASK,
+			   sdhci_am654->clkbuf_sel);
 }
 
 static void sdhci_j721e_4bit_set_clock(struct sdhci_host *host,
@@ -260,6 +266,9 @@ static void sdhci_j721e_4bit_set_clock(struct sdhci_host *host,
 	      (otap_del_sel << OTAPDLYSEL_SHIFT);
 	regmap_update_bits(sdhci_am654->base, PHY_CTRL4, mask, val);
 
+	regmap_update_bits(sdhci_am654->base, PHY_CTRL5, CLKBUFSEL_MASK,
+			   sdhci_am654->clkbuf_sel);
+
 	sdhci_set_clock(host, clock);
 }
 
@@ -582,6 +591,8 @@ static int sdhci_am654_get_of_property(struct platform_device *pdev,
 	}
 
 	device_property_read_u32(dev, "ti,strobe-sel", &sdhci_am654->strb_sel);
+	device_property_read_u32(dev, "ti,clkbuf-sel",
+				 &sdhci_am654->clkbuf_sel);
 
 	sdhci_get_of_property(pdev);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
