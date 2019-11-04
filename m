Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCE0EE07D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 13:56:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NrZGP6m0rNQQ6Asm841equT1WbhX8Az28IxjaXDbKm0=; b=bT2TtQGbzBICGc
	NS5kP43RWVYpV1nOhnVaisMytBEeu2uvxZBdA7zIskg3mMCe6DsscVc5fO3Q7I8l1oZOP8ENJ+pVw
	fjFgob0yrwv5oqOu+ujoTlzr6bq4CbFGb4eJjfE6dFCYrsTRNtt8Bf9YvKXuhve/nxhwszIYfaRzG
	JEk+GKztYvBqqUiCNjg7ZQoz1frIagiJCg3mVEo9YOTha0wZwXz2d6x6QwnFZs4qE33fsqAN08MVc
	Xni4BtZ2ICcprrTDdHpJ+zinfHoz8gdc3F++IXSP4cdANkGDCbjHLApsT8jurfinKYPigg5gkK/ru
	AV3KAVm6lmiSKllOkWAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRbuG-0005uN-Cz; Mon, 04 Nov 2019 12:56:28 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRbu7-0005tU-Ug
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 12:56:21 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Cx8jqRkQ5JRUGczCabc5Cy/BRBSb8Uq4WJB6eYbrLof3PBI+Jxu9MocMtJ4NAPFsmVRtRcpAzy
 vzdaAL+Wfw0X+pomuOWmFoYluVN36VFfXl8PJ7wtv6NksBdiyAGl5XlnYR8NY/pGMoxS7jgRni
 KWO5TYLKI4p9vAHuz/0TWLc1Pq5dZigOKpExLxy2K6hdzELhO+HGZ24O1HKTCKYaYcQXDO2BRy
 RYaiUwVOyddp9Kjdul0HcvI8KSHRU+ALqYSqab3HqZ3/NJpihOMtEczoVYckZCJlmAbdMRAawG
 KiM=
X-IronPort-AV: E=Sophos;i="5.68,267,1569308400"; d="scan'208";a="56900562"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Nov 2019 05:56:11 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 Nov 2019 05:56:11 -0700
Received: from rob-ult-m19940.corp.atmel.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 4 Nov 2019 05:56:08 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: rng: atmel-trng: add new compatible
Date: Mon, 4 Nov 2019 13:54:56 +0200
Message-ID: <20191104115457.2681-1-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_045619_996740_2291C4DC 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>,
 alexandre.belloni@bootlin.com, herbert@gondor.apana.org.au, arnd@arndb.de,
 Tudor.Ambarus@microchip.com, ludovic.desroches@microchip.com,
 robh+dt@kernel.org, mpm@selenic.com,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Claudiu.Beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible for new IP found on sam9x60 SoC.

Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Acked-by: Rob Herring <robh@kernel.org>
---

Changes in v2:
 - added 'Acked-by' from Rob;

 Documentation/devicetree/bindings/rng/atmel-trng.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/rng/atmel-trng.txt b/Documentation/devicetree/bindings/rng/atmel-trng.txt
index 4ac5aaa2d024..3900ee4f3532 100644
--- a/Documentation/devicetree/bindings/rng/atmel-trng.txt
+++ b/Documentation/devicetree/bindings/rng/atmel-trng.txt
@@ -1,7 +1,7 @@
 Atmel TRNG (True Random Number Generator) block
 
 Required properties:
-- compatible : Should be "atmel,at91sam9g45-trng"
+- compatible : Should be "atmel,at91sam9g45-trng" or "microchip,sam9x60-trng"
 - reg : Offset and length of the register set of this block
 - interrupts : the interrupt number for the TRNG block
 - clocks: should contain the TRNG clk source
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
