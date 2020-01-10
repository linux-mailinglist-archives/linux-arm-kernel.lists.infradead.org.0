Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D313136953
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 10:01:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=15+R0puM7GOqyIXepVE/LY+j43PTcYo5Z+fVdxQIK84=; b=qK7uKiQ8LJIwLm
	3yHB1teCUI5TUG1KuIxdeGiYtuaJ2qNnw3OpQSVk5ddXIFI3awNBvztPbouUWREf6Y+Q/9CAGSS/E
	2lcdZBnJf2p0M7t0Vazcoz02lsGtKkCvDgIkL98lsUm8vdgUUYksmZ86DI60mJzZZjBANiu4FDm4/
	S8tm2+H9N9Ne/iwu3gzAvrlncNGhz5rxZO4VrRFoLLBXa+X/4NR0C/iHlec6866fAAfxlg0OUMUYU
	T+dGB2PKLoM/Qtj802zPh22zEgfwSrk283ybYuP+YvU+xe5r7DJL87bEMBRv9KhQlXMpMtDVT1h5V
	/BLimxrOOxyJfCx3nw4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipqAX-00011c-VJ; Fri, 10 Jan 2020 09:01:25 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipqAQ-00010H-IG
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 09:01:20 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: OlHI+8CDomYN0cclRuIYBTRZzd7t/OhG8bnMA3JRzOdcLYDhCvsqgfacUkL33LkZxlrsRkLmna
 gA9c028symbv3o45n/NvFJU5BEdPdSPwoUvcBlTTNjkTxkbNJxxn/255az8QpO7VBKPRJerGyn
 nxfEjY3hWzseJQ3dK9qTSbaR5Cx5oqu7/DIG6P3UFgMm1sqs5u7N+e1wwZLBqEHf6wEop16yyn
 Y+tCQuCJlbiLTicFCRfR4sqb023W1FmVtuxfTZH1S06HL0K2FCyaGisCDftLHjvuG243IrqFRc
 qlk=
X-IronPort-AV: E=Sophos;i="5.69,415,1571727600"; d="scan'208";a="61465529"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jan 2020 02:01:10 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Jan 2020 02:01:09 -0700
Received: from tenerife.corp.atmel.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 10 Jan 2020 02:01:08 -0700
From: Nicolas Ferre <nicolas.ferre@microchip.com>
To: Ludovic Desroches <ludovic.desroches@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] ARM: at91: Documentation: add sam9x60 product and datasheet
Date: Fri, 10 Jan 2020 10:01:03 +0100
Message-ID: <20200110090103.7728-1-nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_010118_607873_F0006A91 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the new SAM9X60 ARM926-based SoC from Microchip and its associated
datasheet.

Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 Documentation/arm/microchip.rst | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/arm/microchip.rst b/Documentation/arm/microchip.rst
index 1adf53dfc494..05e5f2dfb814 100644
--- a/Documentation/arm/microchip.rst
+++ b/Documentation/arm/microchip.rst
@@ -92,6 +92,12 @@ the Microchip website: http://www.microchip.com.
 
           http://ww1.microchip.com/downloads/en/DeviceDoc/DS60001517A.pdf
 
+      - sam9x60
+
+          * Datasheet
+
+          http://ww1.microchip.com/downloads/en/DeviceDoc/SAM9X60-Data-Sheet-DS60001579A.pdf
+
     * ARM Cortex-A5 based SoCs
       - sama5d3 family
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
