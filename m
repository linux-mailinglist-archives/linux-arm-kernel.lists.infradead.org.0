Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF770112DA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 15:43:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VW8mcHcLkD73BscpaYXiwqxwq3llSdwNz05KgTxrNlo=; b=JwAN4tZklPGOtL
	/9f2j9KJvhjyzKurxiR1VhQi2QtJACPq7sa7AfyyXY7GeerGJ4h6GYPiHsrcVMCcCXAsS2/qAXcV0
	BTubxlCWZ/+T5Q3BNRDzul51o73Za8mUlfzWCh68qeWQpVywQcFxI13FNGif1SvG789Ue8lCY5My/
	jA7eho6w5wVQq7jfE9j4szn6r9kVipoTao1nXCZx1AV3r1ERKz/HnuUglSVsuyy1k/RygWH4QRNNM
	T+QuZmTxS9aEHlGFuLhowQ+NwrGFJ+N4B86eGo8rUziPt8b8INKExfJw+VIHQhLFDcljCeRZWn4Mx
	z7Oe+MVE/yqZyXreQsUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icVrr-0002D0-P6; Wed, 04 Dec 2019 14:43:03 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVrc-00025J-I6
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 14:42:49 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: AGWUSFKVep72VFgoHVqGth5W1ENoGoy19fv307QW78o0LdLebpm5m8W1WDhjQJIkkjBFmwZFPz
 dhk8GJZl5DBwdb1iuKyqZtJ1HAfPztibMcef5Ymow3tTsNpoSypXzzXlNXGM+vcDXJqhmAwFaQ
 L3ttN7YF1VTMcKjYelfTYb1qj9SuKzsDpbGvaKnmTUgM87xiKRRODUuGVaALp9sXc9hW4xWUh/
 hiYQV6TgJ2Ph+Ze0sSTItEWNOs6YW2DzRHi3lUxf9PM3UmI0yA1JV7wPp19Ce7zMMXzhp2cpQA
 XLo=
X-IronPort-AV: E=Sophos;i="5.69,277,1571727600"; d="scan'208";a="60610889"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Dec 2019 07:42:45 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 4 Dec 2019 07:42:44 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 4 Dec 2019 07:42:42 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <daniel.lezcano@linaro.org>,
 <tglx@linutronix.de>
Subject: [PATCH v3 1/2] dt-bindings: arm: atmel: add bindings for PIT64B
Date: Wed, 4 Dec 2019 16:42:28 +0200
Message-ID: <1575470549-702-2-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575470549-702-1-git-send-email-claudiu.beznea@microchip.com>
References: <1575470549-702-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_064248_603341_35B58893 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device tree bindings for PIT64B timer.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/atmel-sysregs.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
index 9fbde401a090..e003a553b986 100644
--- a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
+++ b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
@@ -10,6 +10,12 @@ PIT Timer required properties:
 - interrupts: Should contain interrupt for the PIT which is the IRQ line
   shared across all System Controller members.
 
+PIT64B Timer required properties:
+- compatible: Should be "microchip,sam9x60-pit64b"
+- reg: Should contain registers location and length
+- interrupts: Should contain interrupt for PIT64B timer
+- clocks: Should contain the available clock sources for PIT64B timer.
+
 System Timer (ST) required properties:
 - compatible: Should be "atmel,at91rm9200-st", "syscon", "simple-mfd"
 - reg: Should contain registers location and length
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
