Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C0FAF609
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 08:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DEkifx+74N+bTMXpVTBodon9Z36C4spKKIvHKpR35BI=; b=HeJA903QcMt3PX
	ZWJ+O3pFHRLxXX0Eh5xXh5vepMz2fPnV23ZP6Gy92f2PTrCa9kkqhzVpWe2nFuE615wUDf/7ZjmDx
	KFgIuHEueF8agP2xCO4X3R/az6+2q+armJOqg05J/P5gQjJfKdz3jx11TQAQpZ8c4JRUYNjeoYxZ1
	icF8J5YImSh/llfyDIrKuFtcoHTZ51W30yFy4FfIWVii4Sz4zvAonAjjYEa1e5YY71pVWqJ09H2XY
	Wk0twoZlYKWliOJL5AEjRx7tYiXEG5DcQUfPxIgGeYLkCpr59xILswNu6/Au1u+fGfzfmYaWcKMJa
	JsXQnJKmm+13pg8oWLsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7wLp-0003a0-I3; Wed, 11 Sep 2019 06:43:37 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7wKp-0002jJ-FX
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 06:42:36 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: oVL/De3qJ0eO2V641n5mVglNnEflb5buSfjyBElXkHLnlgZ2Ubshz3su221izQyQZlRtDipJEC
 A5Pxx19x16XpoBvUNOwYN9SGQK0clb/ZncuqGT6nDW8lKVWHJ+nWOzG04y/Q3SkKlAqhUkbi8+
 rzr9UWetZkdPY1u7GmIUWkxT6odcbSYStYpC9/trJJkReeBrPID98furAQnAlQzj/rLaWPsViv
 KVKQ/uOJ8VbXYf1HSEG1IXRt37WijuS27k79ikdJ/7GH/wEVf8Rsl/g6jYveXJZ2hOzkG4CLdl
 M7w=
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="48466723"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Sep 2019 23:42:32 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Sep 2019 23:42:32 -0700
Received: from tenerife.corp.atmel.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 10 Sep 2019 23:42:30 -0700
From: Nicolas Ferre <nicolas.ferre@microchip.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <stern@rowland.harvard.edu>, <gregkh@linuxfoundation.org>
Subject: [PATCH 3/3] USB: host: ohci-at91: resume: balance the clock start call
Date: Wed, 11 Sep 2019 08:41:54 +0200
Message-ID: <20190911064154.28633-4-nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190911064154.28633-1-nicolas.ferre@microchip.com>
References: <20190911064154.28633-1-nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_234235_627925_78B1D0AE 
X-CRM114-Status: UNSURE (   8.70  )
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
Cc: Boris.Krasnovskiy@lairdconnect.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-usb@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Boris Krasnovskiy <Boris.Krasnovskiy@lairdconnect.com>

There is a clock enable counter run away problem in resume ohci_at91. Code
enables clock that was never disabled in case of non wakeup interface. That
would make clock unstoppable in future.
Use proper alternative to start clocks only if they were stopped before.

Signed-off-by: Boris Krasnovskiy <Boris.Krasnovskiy@lairdconnect.com>
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 drivers/usb/host/ohci-at91.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index 85d67fe42d59..513e48397743 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -643,8 +643,8 @@ ohci_hcd_at91_drv_resume(struct device *dev)
 
 	if (ohci_at91->wakeup)
 		disable_irq_wake(hcd->irq);
-
-	at91_start_clock(ohci_at91);
+	else
+		at91_start_clock(ohci_at91);
 
 	ohci_resume(hcd, false);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
