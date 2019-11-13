Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B98EFAC5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 09:54:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9mogkqadPCIgQT2i6sVaa3w/g2EdlxOO8pQZnuBx3K0=; b=YXfLfiNBNpe0JZ
	+spxouO8aFFPpAekY8AkBxONcTFDMnHKmj6pw4HDh6HFMSM0xfPb+yQ6ittf+PybrHWOwcMtrkCT/
	I6URGu5Gh3Rz6RwNAHT7IqR/AZVmDfaBtaG6UA6U4/UIyh6qQPGc0P0o7zz7oClpdON7Fph0oHB+m
	DbVzckBgwP5mGBYSHtTkdyOke9Wqag3GORIec4wHk7qAyKBKR7L+4Lr5HdkJ8tZlmoZae7+TY9lij
	IfDzqCpRI+h96j/B4as/4agnoXaYVXE7iZkLqmoIZWdalK0zexOxCKIcIiOjj3Mte/kUarRQk1S5e
	lpCyKzmOec5moiBP3mbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUoQL-0001CT-2q; Wed, 13 Nov 2019 08:54:49 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUoNL-0006Sd-HS
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 08:51:44 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
IronPort-SDR: tZ+ITBNo8oU3zUBAH2yvpQPjDtOjDvoR0KNd+ymTclQwAYKR9EadulH4M8tn0lDCoWS6jzyc6Y
 UBCQnU0GXOIJm8qG2zTjOBM1fiw2p4pCUZgrxk3Uc2lDlTDa30SA4Y+QIYaiC59WnXuEX/KGk+
 zULSuRTTcsfpCM6YCmXdhhR5KF7+XwHNEkEcM326fmnTeR7l8NGNt5pHs2icM8l53MsER3RksP
 sSQbnGVybFgh/AlqmnIDIGj3rPGz6pqEyYmJKvp3pI6IbPDqfQBcdbtWVp7eqJlJBvE5NZk5Vi
 zuw=
X-IronPort-AV: E=Sophos;i="5.68,299,1569308400"; d="scan'208";a="56435451"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Nov 2019 01:51:41 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 Nov 2019 01:51:41 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 Nov 2019 01:51:39 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <linux@armlinux.org.uk>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>
Subject: [PATCH 12/13] ARM: at91/defconfig: enable ATMEL_QUADSPI
Date: Wed, 13 Nov 2019 10:51:08 +0200
Message-ID: <1573635069-30883-13-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573635069-30883-1-git-send-email-claudiu.beznea@microchip.com>
References: <1573635069-30883-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_005143_639961_3840F2EF 
X-CRM114-Status: UNSURE (   6.59  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Available on sam9x60.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/configs/at91_dt_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/at91_dt_defconfig b/arch/arm/configs/at91_dt_defconfig
index 4fde0e32f218..7d29deecc6a6 100644
--- a/arch/arm/configs/at91_dt_defconfig
+++ b/arch/arm/configs/at91_dt_defconfig
@@ -49,6 +49,7 @@ CONFIG_MTD_BLOCK=y
 CONFIG_MTD_DATAFLASH=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_ATMEL=y
+CONFIG_MTD_SPI_NOR=y
 CONFIG_MTD_UBI=y
 CONFIG_MTD_UBI_GLUEBI=y
 CONFIG_BLK_DEV_LOOP=y
@@ -109,6 +110,7 @@ CONFIG_I2C_AT91=y
 CONFIG_I2C_GPIO=y
 CONFIG_SPI=y
 CONFIG_SPI_ATMEL=y
+CONFIG_SPI_ATMEL_QUADSPI=y
 CONFIG_POWER_RESET=y
 CONFIG_POWER_RESET_AT91_SAMA5D2_SHDWC=y
 CONFIG_POWER_SUPPLY=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
