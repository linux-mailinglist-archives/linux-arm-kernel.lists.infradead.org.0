Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E879D9AA66
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHQ5EOYoSjrmVqT1tqd/Sis0e53xRFU8tCQUI5CEMFw=; b=SFUXzolvljzTxd
	B9tncP3wPVkkgmssWubTX1K0N3G73tqsRD7CqK5L4rgGZykQFuTHlHMNchVISu1kfyJDZzW46d+EC
	EjfXkuGbsWBtR2/5lv+BXbnfT77rb8BIsS9p24OnCd5shZWdSIj3jH3l87mEp9KQDF1bi7/H/EOfe
	hSlqXgA/r+FyOWkX+RAhHl4fWjM1HFUJKzMJM+SPuxOPO5hBAdnSG48DrnbXsFAfUTVZtPI4xoqWU
	kfvlnMlXX36zjoJkpLUvPGqrm8MWweq5mzWM8oXOwseBtU8lTtJOmrA4E/Vrdd7ZL9VYQ458nQyDB
	ACT/Vm4jqSl+ff+2YeKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14zh-0003OA-Ae; Fri, 23 Aug 2019 08:32:25 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14zU-0003NM-Qy
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:32:14 +0000
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
IronPort-SDR: bXLyaoh69WWWe7r7rFVrHA+SP2Zb5se6JRIYfCcPj4fG855QHEdIqARfdTecHAonPWEobbyEnA
 9hduoVhEPX/0KrW9zV5wULo+N3Z68FSPKjvoRmd5lf3vxO3G1lkI+Z/UAw+mwqSYzo5vilmyvM
 f9ffMlHvmxK8y7gOejKem/XmVEM2zwzwujPZpJ3FDwVizC/iDkDioQVeR85yzRPYD5PfHQuvaj
 MOoGKjP6g++BEEsQwXQ/i8nco41FaB7sKPFW4AAVVvStevIPHAZ43ESS5IjGIkGfafQB6HDT+G
 R8c=
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="46268125"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Aug 2019 01:32:11 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 23 Aug 2019 01:32:11 -0700
Received: from tenerife.corp.atmel.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 23 Aug 2019 01:32:09 -0700
From: Nicolas Ferre <nicolas.ferre@microchip.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Ludovic Desroches
 <ludovic.desroches@microchip.com>
Subject: [PATCH 2/3] MAINTAINERS: at91: remove the TC entry
Date: Fri, 23 Aug 2019 10:31:57 +0200
Message-ID: <20190823083158.2649-2-nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190823083158.2649-1-nicolas.ferre@microchip.com>
References: <20190823083158.2649-1-nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_013212_909425_0A262FDD 
X-CRM114-Status: UNSURE (   6.58  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"MICROCHIP TIMER COUNTER (TC) AND CLOCKSOURCE DRIVERS" is better
removed because one file entry is outdated and basically, the
maintainer's pool of Alexandre, Ludovic and myself is better suited.

drivers/misc/atmel_tclib.c file is going away in a patch to come and
drivers/clocksource/tcb_clksrc.c file is actually named timer-atmel-tcb.c.
This new name is catches by AT91 entry regular expression.

Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 MAINTAINERS | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index da7630c727be..c28a28d4cac9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10691,13 +10691,6 @@ S:	Supported
 F:	drivers/misc/atmel-ssc.c
 F:	include/linux/atmel-ssc.h
 
-MICROCHIP TIMER COUNTER (TC) AND CLOCKSOURCE DRIVERS
-M:	Nicolas Ferre <nicolas.ferre@microchip.com>
-L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-S:	Supported
-F:	drivers/misc/atmel_tclib.c
-F:	drivers/clocksource/tcb_clksrc.c
-
 MICROCHIP USBA UDC DRIVER
 M:	Cristian Birsan <cristian.birsan@microchip.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
