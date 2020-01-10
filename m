Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CC413732C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 17:22:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rhf68BhaPPpOz8+nV0Nfxal6r9N4AUKkmuXSPqd7udM=; b=WJwP3kz44zL92z
	XG/iSzEGGvKwlLShU4tijCqShVzKzpqGaLzhr3A/hDUqxa48tCjlqOA38D6ttqi8dCXjhbPEO10S/
	+EhQUfz1ZJNbiDlrGlUrZeyBNEW/NjW8nSFmtX7eNTwzUHJjJNvqBjZ2o1O7pm9BcROxFN2TQajRe
	fAGfcFYX7mzJDnzj1zFBbVC6IE47GuNCBupwA3SiIrdHFmdrsvaJLt3u5IrBxYxIg1189J7QVydSK
	wvQGkvPDrpfDbZJA0sSU/b9VG7OCGApVYZnxbVGCjy2zOe7pOM0vX8v5pYCokxaSBQwasyq2E9yLB
	D2iy7SUECti4H2Bsb1vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipx3H-0000JR-Dv; Fri, 10 Jan 2020 16:22:23 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipx0P-0005DI-4J; Fri, 10 Jan 2020 16:19:26 +0000
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
IronPort-SDR: f4MPJLzU7fdByLdeQg2AjQ5BgURxm4G4fRnqVkoQvkvW+YUyg/1VNX8MOJwgTdCK7IumBPgTy9
 76Y/irDC6PTD3BfnD85vxum3vgSPx2XRYw94KZoj4FxOYCR8DCuvDbSEwFQZttI8X7snbtBiaF
 wwQaPVWiU69nZbv4P/wUf1HJk5NA0lf24A/+ZaxzHyEuxa8+azf9XjrB5EDl87ApbJOUWLIc1r
 7tGB1TyaK/LC9doQ6Fv8QXiD+4WLH6qGAIEmIzKoE26uiNkrA8q8frFgWBXHqfNu2VDctMJtHf
 5y4=
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600"; d="scan'208";a="62248998"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jan 2020 09:19:23 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Jan 2020 09:19:23 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 10 Jan 2020 09:19:15 -0700
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
Subject: [PATCH v2 05/17] dt-bindings: atmel-isi: add microchip,sam9x60-isi
Date: Fri, 10 Jan 2020 18:17:57 +0200
Message-ID: <1578673089-3484-6-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
References: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_081925_270508_9B8374CE 
X-CRM114-Status: UNSURE (   9.61  )
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

Add microchip,sam9x60-isi to DT bindings documentation.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 Documentation/devicetree/bindings/media/atmel-isi.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/atmel-isi.txt b/Documentation/devicetree/bindings/media/atmel-isi.txt
index 332513a151cc..8924c7545b63 100644
--- a/Documentation/devicetree/bindings/media/atmel-isi.txt
+++ b/Documentation/devicetree/bindings/media/atmel-isi.txt
@@ -2,7 +2,7 @@ Atmel Image Sensor Interface (ISI)
 ----------------------------------
 
 Required properties for ISI:
-- compatible: must be "atmel,at91sam9g45-isi".
+- compatible: must be "atmel,at91sam9g45-isi" or "microchip,sam9x60-isi".
 - reg: physical base address and length of the registers set for the device.
 - interrupts: should contain IRQ line for the ISI.
 - clocks: list of clock specifiers, corresponding to entries in the clock-names
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
