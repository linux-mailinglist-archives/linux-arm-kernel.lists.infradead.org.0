Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83677CF9EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cLKb6ZQg0vldfZnLQ/H0o1sP9YNRcZ2mDu6T0tv1AUg=; b=VdL6y82F4q2PA2
	Iy+jjaTTvTOqG+wc/NkjXw89X0d+/5Gsr7Q52ohWo6EabrLiP4ysUTA0UjnXN4OnLk55b2DA50pPw
	Pnq7g3F7MRP3V9SWyqJ5hHL/S4//2SMq//5Fi7j0ooCfmOIFyGf6hHbJ+C8R9vpsr5K/pesTHjVvI
	7zzZHyGvi7fIPtefQWbGrgcPiQVaFOzVDovDqVkpSFDNTE+70+O5QnFZCxQ+TdSDVGGfocwlLNyUB
	bR3j4hw0LmZLlurrQtnXE8qN/m8DJDmXzvba68bI/Dau8eE4pAW6jdqGx/wnRXVMLmqXGfhViXtbN
	lcTddLWDQYm8DW77j7SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHoi9-0000qw-HL; Tue, 08 Oct 2019 12:35:29 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHohZ-0007no-Qb
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:34:55 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: WhkBNvq3jsOp2cyfmV0+lPJQ1VKmrmpaIiaKSptI7W1Ff6RnMsBmfbNQpUBAPc+ovIn+vQnxBS
 41+4SHKSC6OZwlXR+uw3XZsEMODm3QfSQLtApT7ReFe290q99kHpMn0NhuIFtEI8bBNYVTA9J1
 HEXvSo6HnQinu8CGN5E1jZ006EdJmtpdfoxIk4bPoBhW1Ce+wVZ9UtX6QjHcRPJUH7eyMPRe0l
 1nPJgLo72x6qtYQMDV+D/CAYpHOJYwlo82+ziBVupWT+hFBW5J1KzoN4XaFSjoivSuYlB3zAEh
 4uc=
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="49212609"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Oct 2019 05:34:46 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Oct 2019 05:34:46 -0700
Received: from tenerife.corp.atmel.com (10.10.85.251) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 8 Oct 2019 05:34:44 -0700
From: Nicolas Ferre <nicolas.ferre@microchip.com>
To: Ludovic Desroches <ludovic.desroches@microchip.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mmc@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 1/2] dt-bindings: sdhci-of-at91: add the microchip,
 sdcal-inverted property
Date: Tue, 8 Oct 2019 14:34:31 +0200
Message-ID: <4d269f30b1122487a2b5c8b48e24f78f2b75a509.1570537903.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_053453_905248_5D32AA48 
X-CRM114-Status: UNSURE (   8.35  )
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, ulf.hansson@linaro.org, adrian.hunter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the specific microchip,sdcal-inverted property to at91 sdhci
device binding.
This optional property describes how the SoC SDCAL pin is connected.
It could be handled at SiP, SoM or board level.

This property read by at91 sdhci driver will allow to put in place a
software workaround that would reduce power consumption.

Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 Documentation/devicetree/bindings/mmc/sdhci-atmel.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
index 1b662d7171a0..503c6dbac1b2 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
+++ b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
@@ -9,6 +9,11 @@ Required properties:
 - clocks:		Phandlers to the clocks.
 - clock-names:		Must be "hclock", "multclk", "baseclk";
 
+Optional properties:
+- microchip,sdcal-inverted: when present, polarity on the SDCAL SoC pin is
+  inverted. The default polarity for this signal is described in the datasheet.
+  For instance on SAMA5D2, the pin is usually tied to the GND with a resistor
+  and a capacitor (see "SDMMC I/O Calibration" chapter).
 
 Example:
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
