Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A33C4EE339
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:10:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ks45RP6PTmr74Otm+qFyqYSdE6Uosp8eDqpV2mXTZFU=; b=cTesEu22+t333X
	r2sccglWakIYaxP+03B0Lbvy6e8r7wxn+/K442Xa64PVtO6Si9Xytt1kDBxQtveoTZta/7R94/M4k
	eS4Bp3IMHi6igylcrf51PWjVAxkEAC3Drgrix7j2AaOqKfBC7JTEbHYYKbOJkZ4c44M2yANcW0HNP
	ScoyO5Kpvod+f5/RsuVuDEGMrASuqbX+xitXnvmBWrJpYIoqc0NKeTuoSxhrBdE9JJRVJ+y5xUEV2
	Md8F+ayKj8EGfolAXwrM9+Rcmj4SVGmHumvjnBAE52HtSdQNHuQnYK7IhibcZexkJvG3Q/zxjBfpB
	dqsUX8lL9i6IOMEkF8JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRe0A-0001jE-J8; Mon, 04 Nov 2019 15:10:42 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRe01-0001hh-L1
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:10:36 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: motKTvZ+6Oeotl2ub+SwMIOxykHo2/2L6mJaamr7kdhUB8YoCBbnY0qS2eazAe5wcJAYKNQhQ+
 qglpJd2H8RTAaDD0GUzpLDYV0yk17Hm7OM5ivzkj3acNVL8IQms73Emot+GHRARwb6SPxkbsyY
 88xPY3cLpZ1PkUyLDYL+5o4GysG0bxukuHrCiZHsTtPqhSrghXrgEGaZwz87TwFRU4TnPlftSq
 Kc0ChJ61LxLHtXaOJsu3tuKAycFOzI+7mIpZdxbTUThBopGKOOF6pJD6E9v//45cVbxBIf4nmb
 dg8=
X-IronPort-AV: E=Sophos;i="5.68,267,1569308400"; d="scan'208";a="52785109"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Nov 2019 08:10:32 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 Nov 2019 08:10:24 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 4 Nov 2019 08:10:21 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <daniel.lezcano@linaro.org>,
 <tglx@linutronix.de>
Subject: [PATCH v2 1/2] dt-bindings: arm: atmel: add bindings for PIT64B
Date: Mon, 4 Nov 2019 17:10:03 +0200
Message-ID: <1572880204-4514-2-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572880204-4514-1-git-send-email-claudiu.beznea@microchip.com>
References: <1572880204-4514-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_071033_726529_E493F8EE 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device tree bindings for PIT64B timer.

Cc: Rob Herring <robh@kernel.org>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---

Hi Rob, Nicolas,

You Reviewed-by/Acked-by v1 [1] of this patch but I didn't collect it in this
version since I removed the clock-frequency binding in this version. 

Thank you!

Change in v2:
- removed clock-frequency binding

[1] https://lore.kernel.org/lkml/1552580772-8499-1-git-send-email-claudiu.beznea@microchip.com/

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
