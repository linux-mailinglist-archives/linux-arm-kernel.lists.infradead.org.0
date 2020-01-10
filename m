Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3539C137346
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 17:24:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXHuLsPTSqs1Sn3nCZjdSjPYWx2LQoHmokrzD2G8PnI=; b=fFPeb3TgwDuHOq
	js0fCb76gToDHbQg8ZBjQZXTnCTbT7R9yO7ur4lGrVmiD1nSQI+Gk6tqf72mBSbL9zZDSbfH0T8kV
	7/U3ehvcMKBZyqq1DYGCxjIk5z1eDYZPp0AWBO1KV9eHEV0NaXsGFmRkbswSFrLU3mV1j6iFwwoWx
	MP7MXit1tObNYyNhkENy+L2bDZArOkO4CutbxhmgGLtLI58PxhG6ScPEvre7ivSeX0XACJeo5T+Uo
	QiL2Lb+Sd+mjMWKpNcMHhTPxjcKXYt2EDUbebe4H9lqa5WSz/6azHv8AyDQPu1L0bzRIQsY1I7YOH
	bbVcnS/vkWhYYU9aXJoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipx4o-0001dk-7O; Fri, 10 Jan 2020 16:23:58 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipx0g-0005Ri-H8; Fri, 10 Jan 2020 16:19:44 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: lurAY02j6QBdyGsiogTrAcPZmDvGbzr01EiFAxXSwJTKq+zBCZozALxLXElCFAwR/0S4W1z+5C
 CNjUeYNxwIoeQn78IYe9/9+Vrt0B4F/lsI7IYaRGWDjDjzTr0ebRj35MemKPCtoxCTod5I6/Kb
 8ZujCda2GPjMASyhvMMeMQQQ68M22psVUqj/IXEpMKGJac5Alt2A0/pfgtL/0WBQ3N3naBZio6
 Snmt0RAKpDfb7SsMfMIB6XWjS1EZxBWF4qr30zmP0OAzxSiCFtKzzhsKuGezT8WiydXBOT7qzS
 Brg=
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600"; d="scan'208";a="62249037"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jan 2020 09:19:40 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Jan 2020 09:19:40 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 10 Jan 2020 09:19:32 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <vkoul@kernel.org>,
 <eugen.hristev@microchip.com>, <jic23@kernel.org>, <knaack.h@gmx.de>,
 <lars@metafoo.de>, <pmeerw@pmeerw.net>, <mchehab@kernel.org>,
 <lee.jones@linaro.org>, <radu_nicolae.pirea@upb.ro>,
 <richard.genoud@gmail.com>, <tudor.ambarus@microchip.com>,
 <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <wg@grandegger.com>, <mkl@pengutronix.de>, <a.zummo@towertech.it>
Subject: [PATCH v2 07/17] dt-bindings: atmel-matrix: add microchip,
 sam9x60-matrix
Date: Fri, 10 Jan 2020 18:17:59 +0200
Message-ID: <1578673089-3484-8-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
References: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_081942_678307_3475E79E 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org,
 dmaengine@vger.kernel.org, linux-can@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add microchip,sam9x60-matrix to DT bindings documentation.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 Documentation/devicetree/bindings/mfd/atmel-matrix.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/atmel-matrix.txt b/Documentation/devicetree/bindings/mfd/atmel-matrix.txt
index e3ef50ca02a5..89d05c64fb01 100644
--- a/Documentation/devicetree/bindings/mfd/atmel-matrix.txt
+++ b/Documentation/devicetree/bindings/mfd/atmel-matrix.txt
@@ -13,6 +13,7 @@ Required properties:
 			"atmel,at91sam9n12-matrix", "syscon"
 			"atmel,at91sam9x5-matrix", "syscon"
 			"atmel,sama5d3-matrix", "syscon"
+			"microchip,sam9x60-matrix", "syscon"
 - reg:			Contains offset/length value of the Bus Matrix
 			memory region.
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
