Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC89510D672
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 14:54:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NADrV7+h4dLEettEmBa+N+BxSOEfDwBPS7kee32y6j8=; b=Xy8UYAZVXhVH3B
	d+bz9hO6IAY5BlRm2GxVG2cwiWj+au0580pCIG1Ze3uOvDMrcIUYU3OH3jf6jdDbVhTAM0aZ49YlU
	XmeLgY3p9ksQcDmbvGODTSUr2fWvklIwHklvG9XHR3rINR6JS8KVI4+JyS6xb7yLypucto4UPJ9n3
	48N8/XzQjcsW9vIVwgG2XaZbaNSDzwg0CgLAl4RNv2upTaDZrne38Anw/Fx2+kXBbH3S3nIczRBe7
	9403Sp0Pt1yiODztcQnfibLbZ3w2+a+YOjKeAeVPCXaQ7VmUzAqWy1SX8nnbjI9o7t/QxzdTOBTHd
	Bd4zgysfJifX1Fqq4IFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iagjO-0007mD-Ki; Fri, 29 Nov 2019 13:54:46 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaghR-00067K-Vg
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 13:52:47 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: vDs07NM9Rv/0ASGXI7k+bqfyRXNiWtc4rLdQH9CADz+6xGxttqLAl1tF4/91TEgpyStygnZH4U
 M9dwT7sRbWaXEK8WcfayobvaUMc92by7N5i/1gMp0TBi82gr7tAnwDXJ6d44WcEy8ZYgzSLTlK
 9IRE/WgxLuSiyXqkxDMk1pxnBiu5hVSGTaR2BKT0MshhL1lowaRljUTIQGg/3h+S1u8fQxHnQN
 Nx1k2Us0jNeGrD9chnR+62dT7vfqVtDhXCrWyRgTF1YinmxkaAFBycae2X8k7E7DkotmX4NHA8
 8ro=
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="57288017"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Nov 2019 06:52:28 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 29 Nov 2019 06:52:09 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 29 Nov 2019 06:52:07 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <linux@armlinux.org.uk>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>,
 <sre@kernel.org>
Subject: [PATCH v3 6/9] drivers: soc: atmel: select
 POWER_RESET_AT91_SAMA5D2_SHDWC for sam9x60
Date: Fri, 29 Nov 2019 15:51:42 +0200
Message-ID: <1575035505-6310-7-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575035505-6310-1-git-send-email-claudiu.beznea@microchip.com>
References: <1575035505-6310-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_055246_030036_67147895 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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

Select POWER_RESET_AT91_SAMA5D2_SHDWC for SAM9X60 SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/power/reset/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index 886e60017f4d..ff81d02740c2 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -34,7 +34,7 @@ config POWER_RESET_AT91_RESET
 config POWER_RESET_AT91_SAMA5D2_SHDWC
 	tristate "Atmel AT91 SAMA5D2-Compatible shutdown controller driver"
 	depends on ARCH_AT91
-	default SOC_SAMA5
+	default SOC_SAM9X60 || SOC_SAMA5
 	help
 	  This driver supports the alternate shutdown controller for some Atmel
 	  SAMA5 SoCs. It is present for example on SAMA5D2 SoC.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
