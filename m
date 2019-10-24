Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CC4E394A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 19:05:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r6zkhTxsiIh17tNpWDnT+u/zMgUbPrZwCZTOWHklmLQ=; b=jwccNVaUfTsFA9
	ClX8tEg5KRpU9bWA2lUrureDDHlEln8KDsfsYmiR1iyfBXhYxyJPewxGVxuC95hUjJmWpHc8gJ5Ma
	YjHqMuY1oGc/eMRz4DKbgG2lHGu4+DyJuXAh5nnj80BBxPquoLYNcENUBDnkoqZsJ3LaVpRgTg71j
	/G3akkspDwklJrDI4KQuR4EkFJFCpvJ9pbSi7GXrAexoZV5o1BzeJ2JWsl1XXh2XbQW3Ojgq7/RIt
	kKBJNuVq53zhKkvhLjexn6X7jP0j83wWHZikpdudjdfCXf90wuSheYXkSGuD/Z2+Z57TaXAgW1OAz
	jG02R6yfZux5H9pGICUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgYR-0004tH-38; Thu, 24 Oct 2019 17:05:43 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNgY8-0004rv-Rm
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 17:05:26 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: sDuzIKqKF2WoEdz+uGasTVOVvMm1648yY9+1myKia5vT3IOofPzBelK9wDcm8eqODPKUMYBsUO
 +H+5YxuTOb/ZEyoImoURrgH6mJU8ZuMSE4mbBWi83PCyUmfh2AH/nsYEnMCe/RIuTIEB9WH2K5
 5MieozXW211RLZt6ktQt2hPv/ACKZ+txINGN+7LN2T+THB7gvX63HBh3z5QpXzpkSPXk75FCl0
 DPtU7O94lm7cEmwBoc8oEN8A6Kn9JzFO0xNJFH1iv6ySTe/ajLS+QTsUAEn/Mg0puP9vay04v2
 zrY=
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="53974558"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Oct 2019 10:05:19 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Oct 2019 10:05:18 -0700
Received: from rob-ult-m19940.microchip.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 24 Oct 2019 10:05:16 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] dt-bindings: rng: atmel-trng: add new compatible
Date: Thu, 24 Oct 2019 20:04:51 +0300
Message-ID: <20191024170452.2145-1-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_100524_944763_F7936AA6 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, alexandre.belloni@bootlin.com,
 herbert@gondor.apana.org.au, arnd@arndb.de, Tudor.Ambarus@microchip.com,
 ludovic.desroches@microchip.com, robh+dt@kernel.org, mpm@selenic.com,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible for new IP found on sam9x60 SoC.

Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
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
