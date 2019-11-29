Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3B910D66B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 14:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tc9u9lWv2Apg8nCu7PcIG8Kp4Ls35IZW+/qF2iMSttw=; b=ZuSjtgtWDYy8b5
	ZmJ8w0Za8YXcjV7/NnzOPr8iPeSfwOET1umpR864BOp3JsVrPOYx9PgZnSduU3xvNwGxOuRwaMn2t
	gx/Mt2mnunYkFMkgi5NiL1BIgFZo37TE8yUNash6Z/nNAVE0zXq+SoPJCPddW5sWljPl51502r58I
	XYDPmVKP4yetb8v/mABNZqXO6lGNqMTtwojpxCoktjn2qpO4rE3DHHyEIbxBPAc74J+SYNDzjGz++
	mFxiq8yk+8FSNzJV9yh72u1LGorPbEsqjJxZM3neVnCrtBzrAIyUI+Ae9X/TC62DAhWQmaQCwcb+W
	vQBu22Ca9ixl0jSgnFpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaghw-0006IJ-4S; Fri, 29 Nov 2019 13:53:16 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iagh0-0005hK-94
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 13:52:19 +0000
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
IronPort-SDR: NIbqskJ7xCKVI4rhj52SC31OAD8/i8eHtfW8Mey03wd5ZRhrHVXUmMPd2YKkqhuQSK9ZZOvx/2
 Y/szPuXAbzFTuRV1J/kf64zEO9afUAiM/uwvmaBVs5rV/W5EW83mJreK3cW+TxqLI1I/GnhJU1
 7P1Jk8iPb7Gc+XkU9hI5GreVHup0BQlYgLbDynn24rESxqeDxG5R2aE0D2cxmJQ1SCOv0xP5KE
 gBmU4ZrPxS6sp86PgQpWl1Z+MKl3WaCBa+BEVMSHp/GcoZB2QVrqpJs6T5Y/Jjv5WcYi6qeefY
 4sM=
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="58778689"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Nov 2019 06:52:16 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 29 Nov 2019 06:52:00 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 29 Nov 2019 06:51:56 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <linux@armlinux.org.uk>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>,
 <sre@kernel.org>
Subject: [PATCH v3 2/9] ARM: at91: Kconfig: add config flag for SAM9X60 SoC
Date: Fri, 29 Nov 2019 15:51:38 +0200
Message-ID: <1575035505-6310-3-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575035505-6310-1-git-send-email-claudiu.beznea@microchip.com>
References: <1575035505-6310-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_055218_352554_FC4DAA86 
X-CRM114-Status: UNSURE (   8.11  )
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add config flag for SAM9X60 SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 arch/arm/mach-at91/Kconfig | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 262b550d7329..7979420bd48b 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -105,11 +105,28 @@ config SOC_AT91SAM9
 	    AT91SAM9X35
 	    AT91SAM9XE
 
+config SOC_SAM9X60
+	bool "SAM9X60"
+	depends on ARCH_MULTI_V5
+	select ATMEL_AIC5_IRQ
+	select ATMEL_PM if PM
+	select ATMEL_SDRAMC
+	select CPU_ARM926T
+	select HAVE_AT91_USB_CLK
+	select HAVE_AT91_GENERATED_CLK
+	select HAVE_AT91_SAM9X60_PLL
+	select MEMORY
+	select PINCTRL_AT91
+	select SOC_SAM_V4_V5
+	select SRAM if PM
+	help
+	  Select this if you are using Microchip's SAM9X60 SoC
+
 comment "Clocksource driver selection"
 
 config ATMEL_CLOCKSOURCE_PIT
 	bool "Periodic Interval Timer (PIT) support"
-	depends on SOC_AT91SAM9 || SOC_SAMA5
+	depends on SOC_AT91SAM9 || SOC_SAM9X60 || SOC_SAMA5
 	default SOC_AT91SAM9 || SOC_SAMA5
 	select ATMEL_PIT
 	help
@@ -119,7 +136,7 @@ config ATMEL_CLOCKSOURCE_PIT
 
 config ATMEL_CLOCKSOURCE_TCB
 	bool "Timer Counter Blocks (TCB) support"
-	default SOC_AT91RM9200 || SOC_AT91SAM9 || SOC_SAMA5
+	default SOC_AT91RM9200 || SOC_AT91SAM9 || SOC_SAM9X60 || SOC_SAMA5
 	select ATMEL_TCB_CLKSRC
 	help
 	  Select this to get a high precision clocksource based on a
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
