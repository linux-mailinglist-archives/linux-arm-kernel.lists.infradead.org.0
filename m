Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 005AFE86D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:28:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6VouX9CeoItWFK/E2TxCPy/C6gbL0IZTG6/9U9i9JoI=; b=OD2H8oG59IaJ51
	9+ZmPNhx/ESgP1WY6tKhZiezQXSLg1Dt360Ko5Px3+kjXubxvgx88NS42oJIS7xBJrkrm8CvyUbC2
	lLXqWbzQp1M6Kckrt9xhzm9n04IrdIc1+fqBCiCuvuz70dTAh3juNpwYOcjbCuZ/RYfj0yajyrpP5
	/9TPSNdnGxcTJsnsrI+MwCAkxO3LCG9prgEnT789iS1I8vEdD6rvQ02JT8f67asFprXtENsJOF6o5
	m4rNZJVpr8EusezXYbK4bBkPTWlqlrtHIOsP9f4s7/XyxaWSxfMWUaej61NMd0fo+eEsrI3ATpQbx
	9SwELYnK0sJp5NEBD64Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPfP-0006In-Dg; Tue, 29 Oct 2019 11:28:03 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPfA-0006GW-Hv
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:27:50 +0000
Received: from sntmail12r.snt-is.com (unknown [10.203.32.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 5344973EDAA;
 Tue, 29 Oct 2019 12:27:42 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail12r.snt-is.com
 (10.203.32.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 29 Oct
 2019 12:27:41 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Tue, 29 Oct 2019 12:27:41 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
 Schrempf Frieder <frieder.schrempf@kontron.de>, Mark Rutland
 <mark.rutland@arm.com>, NXP Linux Team <linux-imx@nxp.com>, "Pengutronix
 Kernel Team" <kernel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 "Sascha Hauer" <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 00/11] Add support for more Kontron i.MX6UL/ULL SoMs and
 boards
Thread-Topic: [PATCH v2 00/11] Add support for more Kontron i.MX6UL/ULL SoMs
 and boards
Thread-Index: AQHVjkvgv+OzoO1lV0Wm0deDH9rFjA==
Date: Tue, 29 Oct 2019 11:27:41 +0000
Message-ID: <20191029112655.15058-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 5344973EDAA.A0E07
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_042748_919974_B2163184 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

In order to support more of the i.MX6UL/ULL-based SoMs and boards by
Kontron Electronics GmbH, we restructure the devicetrees to share common
parts and add new devicetrees for the missing boards.

Currently there are the following SoM flavors:
  * N6310: SoM with i.MX6UL-2, 256MB RAM, 256MB SPI NAND
  * N6311: SoM with i.MX6UL-2, 512MB RAM, 512MB SPI NAND (new)
  * N6411: SoM with i.MX6ULL, 512MB RAM, 512MB SPI NAND (new)

Each of the SoMs also features 1MB SPI NOR and an Ethernet PHY. The carrier
board for the evalkit is the same for all SoMs.
---
Changes for v2:
===============
* Patch 1: Move the spi-flash node instead of duplicating it
* Patch 3: Add a missing include for dt-bindings/gpio/gpio.h
* Patch 11: Add patch to add missing includes for gpio.h and irq.h
* Add Reviewed-by tags from Krzysztof and Rob

Frieder Schrempf (11):
  ARM: dts: imx6ul-kontron-n6310: Move common SoM nodes to a separate
    file
  ARM: dts: Add support for two more Kontron SoMs N6311 and N6411
  ARM: dts: imx6ul-kontron-n6310-s: Move common nodes to a separate file
  ARM: dts: Add support for two more Kontron evalkit boards 'N6311 S'
    and 'N6411 S'
  ARM: dts: imx6ul-kontron-n6x1x: Add 'chosen' node with 'stdout-path'
  ARM: dts: imx6ul-kontron-n6x1x-s: Specify bus-width for SD card and
    eMMC
  ARM: dts: imx6ul-kontron-n6x1x-s: Add vbus-supply and overcurrent
    polarity to usb nodes
  ARM: dts: imx6ul-kontron-n6x1x-s: Remove an obsolete comment and fix
    indentation
  dt-bindings: arm: fsl: Add more Kontron i.MX6UL/ULL compatibles
  MAINTAINERS: Add an entry for Kontron Electronics ARM board support
  ARM: dts: imx6ul-kontron-n6310-s-43: Add missing includes for GPIOs
    and IRQs

 .../devicetree/bindings/arm/fsl.yaml          |  14 +
 MAINTAINERS                                   |   6 +
 .../boot/dts/imx6ul-kontron-n6310-s-43.dts    |   3 +
 arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts  | 405 +----------------
 .../boot/dts/imx6ul-kontron-n6310-som.dtsi    |  95 +---
 arch/arm/boot/dts/imx6ul-kontron-n6311-s.dts  |  16 +
 .../boot/dts/imx6ul-kontron-n6311-som.dtsi    |  40 ++
 arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi | 424 ++++++++++++++++++
 .../dts/imx6ul-kontron-n6x1x-som-common.dtsi  | 109 +++++
 arch/arm/boot/dts/imx6ull-kontron-n6411-s.dts |  16 +
 .../boot/dts/imx6ull-kontron-n6411-som.dtsi   |  40 ++
 11 files changed, 670 insertions(+), 498 deletions(-)
 create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6311-s.dts
 create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6311-som.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6x1x-som-common.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ull-kontron-n6411-s.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-kontron-n6411-som.dtsi

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
