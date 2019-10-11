Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 493D9D3D73
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e1yzT1f6eQRSuPWyeBREb4Mh/bAL4ZpFJ9wSOOmlrdk=; b=HbuEa9kASYP7A0
	cECkhEfoq5xBgkSU3IzIhPeC6DahYlBozc+A6cXrLpg0d+i6/qTT5XGDMSg9Vdmym3Rsy5Pxw2y3r
	/hoVj65fzXoB8FBgLs2MNKVs5m/ZiKIGWmU8k4KLEmAs64kn57bn7EDMI03HOf/DB0iDaFCg6kOip
	mC4Ed0VIDLtqUWa/d9Lq1GQ8/C4kWvoJ2QFhKWQkvgmNTWXnliNti43NxZOi0s88ZwJTx+MX8aZbJ
	peJjcJPfSiTZjIAfPQahoB0R6KqeOFEH4kbS+fc/oKIkjoojbQcXDDEgLdEy0vQIynXyP/wUqrxZs
	LRsqkWnxqsfxO9dC3Zjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsFE-0001IU-RG; Fri, 11 Oct 2019 10:34:00 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsF3-0001HI-Vb
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:33:53 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: rO2BQxBFHlO5VQRODrcZb9MialbYrIkdh+cQcZ9ts4k2/UkIjEJ5xeOrjSSVld0FnlmjCGny2V
 68Vty2OUqEb8YZeciLiHO3qiqujcdIz9QThE+y74XX51aIwsRlHzNmFl0rHwo4omkJylnyfZN/
 A7rtBuC8CjYD0QawsBDo+E0/5GJVx8HQiFh2R3EeXuzGj+cVoydXUt2Jt8kHf9GkZvn81PV0eP
 zjvcqCUUpzzrcxGMgoz9nQtsRL6pib41pRtYB1uJBPMXxDKUBvK/wnEBOYAzzcRzo+l13QTXQH
 CJQ=
X-IronPort-AV: E=Sophos;i="5.67,283,1566889200"; d="scan'208";a="49684539"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Oct 2019 03:33:47 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 11 Oct 2019 03:33:47 -0700
Received: from M43218.corp.atmel.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 11 Oct 2019 03:33:45 -0700
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-mmc@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: [PATCH v2 1/3] dt-bindings: sdhci-of-at91: new compatible string and
 update properties
Date: Fri, 11 Oct 2019 12:33:37 +0200
Message-ID: <20191011103340.26749-1-ludovic.desroches@microchip.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_033350_049936_C6008F7F 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>, robh+dt@kernel.org,
 Eugen.Hristev@microchip.com, adrian.hunter@intel.com,
 claudiu.beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a new compatible string for the SAM9X60 sdhci device. It involves
an update of the properties about the clocks stuff.

Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
---

Changes:
- v2: remove the extra example and fix node label

This patch conflicts with Nicolas' one: "dt-bindings: sdhci-of-at91: add
the microchip,sdcal-inverted property". Let me know which one has to be
rebased or you can handle it.

Ludovic


 .../devicetree/bindings/mmc/sdhci-atmel.txt       | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
index 1b662d7171a0..5d541ad4d4eb 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
+++ b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
@@ -5,17 +5,26 @@ Documentation/devicetree/bindings/mmc/mmc.txt and the properties used by the
 sdhci-of-at91 driver.
 
 Required properties:
-- compatible:		Must be "atmel,sama5d2-sdhci".
+- compatible:		Must be "atmel,sama5d2-sdhci" or "microchip,sam9x60-sdhci".
 - clocks:		Phandlers to the clocks.
-- clock-names:		Must be "hclock", "multclk", "baseclk";
+- clock-names:		Must be "hclock", "multclk", "baseclk" for
+			"atmel,sama5d2-sdhci".
+			Must be "hclock", "multclk" for "microchip,sam9x60-sdhci".
+
+Optional properties:
+- assigned-clocks:	The same with "multclk".
+- assigned-clock-rates	The rate of "multclk" in order to not rely on the
+			gck configuration set by previous components.
 
 
 Example:
 
-sdmmc0: sdio-host@a0000000 {
+mmc0: sdio-host@a0000000 {
 	compatible = "atmel,sama5d2-sdhci";
 	reg = <0xa0000000 0x300>;
 	interrupts = <31 IRQ_TYPE_LEVEL_HIGH 0>;
 	clocks = <&sdmmc0_hclk>, <&sdmmc0_gclk>, <&main>;
 	clock-names = "hclock", "multclk", "baseclk";
+	assigned-clocks = <&sdmmc0_gclk>;
+	assigned-clock-rates = <480000000>;
 };
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
