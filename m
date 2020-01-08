Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176F9134302
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 13:58:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LC2LEUPvyZQfo//zwYdXlTEl//Z6zQOz2tTGpGZeQk0=; b=jGe2+5THPXe6Dx
	sp9OBj+wmr+tZga4c84FYJqUb0GsKb4Q6WtxiMR/V/15YndTN3ko1+39nlxJnJ2ItK7/60Y7YXh0F
	NXpoXXPnoX3YqsFJ8x+ZqklFTkgoYAW5fJT+2+NtGRP+iPHLkVa6pPeOTqczSgkGK/76Q5SWNirwi
	VwVrc8g4nHIZtbIIspWNNMpU4f1dUfecrf3hDCdKJV6M0la5G4HacrZk3qgxiA6GLtYZ/12ZfycNS
	4UzPam9s0z8k6ZXftWfnRuEhOqdI8lRQ8k+iQFji3VpwdpZpSAIqGfa8By8Qg/qofJBrznNGc3MFF
	VqRv0XSVQHOcZiU3RJLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipAuo-0004lt-BF; Wed, 08 Jan 2020 12:58:26 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipAss-0002uG-0L; Wed, 08 Jan 2020 12:56:27 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: pp7k0hFfraxLH7GRrbKcvLB62V7OKDzFQAbbTszuTREgbtrKtQG2efZaWCtG+h2PO8hK/EivfH
 IJL6/7NIVlYpZRq96Yx3CqBOfW8RPodB36nvsyOnX17mi+I3VIBPeg2azXNHXrJSpGKi9CM9Ie
 C3drzPfgFaVOxk7gTNMZfvrwdSGVrZ8jyfgMCghreO7w6SZHhVBjVAexg2CPBaYfpV72DZ/SBI
 65jrPiwsbHVU3CVER1V1p04PngAdk+kC9uAvfdTmd2PqD5V5SQ4GYHfKvxdlxO0v/kbQoWEYYu
 U5I=
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="62569013"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Jan 2020 05:56:22 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 8 Jan 2020 05:56:10 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 8 Jan 2020 05:56:03 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <vkoul@kernel.org>,
 <eugen.hristev@microchip.com>, <jic23@kernel.org>, <knaack.h@gmx.de>,
 <lars@metafoo.de>, <pmeerw@pmeerw.net>, <mchehab@kernel.org>,
 <lee.jones@linaro.org>, <richard.genoud@gmail.com>,
 <radu_nicolae.pirea@upb.ro>, <tudor.ambarus@microchip.com>,
 <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <wg@grandegger.com>, <mkl@pengutronix.de>, <a.zummo@towertech.it>,
 <broonie@kernel.org>
Subject: [PATCH 01/16] dt-bindings: at_xdmac: add entry for microchip
 compatibles
Date: Wed, 8 Jan 2020 14:55:08 +0200
Message-ID: <1578488123-26127-2-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578488123-26127-1-git-send-email-claudiu.beznea@microchip.com>
References: <1578488123-26127-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_045626_059797_ACB7311F 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, dmaengine@vger.kernel.org,
 linux-can@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add entry for microchip compatibles. This is for "microchip,sam9x60-dma"
DT binding.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 Documentation/devicetree/bindings/dma/atmel-xdma.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/dma/atmel-xdma.txt b/Documentation/devicetree/bindings/dma/atmel-xdma.txt
index 0eb2b3207e08..081a76c3db2f 100644
--- a/Documentation/devicetree/bindings/dma/atmel-xdma.txt
+++ b/Documentation/devicetree/bindings/dma/atmel-xdma.txt
@@ -2,9 +2,10 @@
 
 * XDMA Controller
 Required properties:
-- compatible: Should be "atmel,<chip>-dma".
+- compatible: Should be "atmel,<chip>-dma" or "microchip,<chip>-dma".
   <chip> compatible description:
   - sama5d4: first SoC adding the XDMAC
+  - sam9x60: Microchip SoC
 - reg: Should contain DMA registers location and length.
 - interrupts: Should contain DMA interrupt.
 - #dma-cells: Must be <1>, used to represent the number of integer cells in
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
