Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F399AF608
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 08:43:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wbYjS00+RjZ2S14NkvorA51cWuXkvjGWwYU3uWCYhA=; b=nCyR9PQfCQJ2tP
	5rvJEgyUD016yELrNSGcmwl5jmnFl3eEQXvSKpJrIZYxDZK8MC/TyTX54MdAbHWUawl/EAZvut+UG
	q0iN520eLdY09eAvK9ja094mJAvxMIOGyNK/+40/vwOn3S+O3pTXLA4RxPCXjm730TO0Adtlx52+T
	7L6/4AtKh608VRggughfWkv2U3lmhnAMpgVrs1hfTN72ZhnlWn/xpzsgYQG0el5u62+sJXJlw6sa0
	3hQTyt23qgID/k+wORNPysuQNrBaHmV3RbIdKPw8i4lwX823ukJDfzyCtcdhXrvBBstRaEoZQ4IGd
	hvigKfLERsJhu+pbGk3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7wLZ-0003La-Ja; Wed, 11 Sep 2019 06:43:21 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7wKo-0002fi-4w
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 06:42:35 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: kKMjRAAZRfQP8ldFMWZ9rtRtaBtbyAKdH6+ji7vxUAGWqspR4W0LQVw1FNe6++Emca5ZQRIuBL
 fP0kUXqUOfsjD6jhiTwEDe0SI33wiIUCFUQN44mExXFbS7zXhkWhRaygm9v1j3n6jrQljaZzJ7
 9WlKKHpRp46oJAynHh9eINzGxK/W3yO7m9Ce/cyZEkKcnyLFNzehSTnfurb1HQyPYgVN5LyL/u
 xe4YU8NOJNrtD/b2C8sDqUQOH3Oh7H/FhStkS4zB/hov1tHNbCAFo5XLFT0JQ5Yp0NveeUAhRA
 Z6w=
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="47503534"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Sep 2019 23:42:28 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Sep 2019 23:42:27 -0700
Received: from tenerife.corp.atmel.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 10 Sep 2019 23:42:26 -0700
From: Nicolas Ferre <nicolas.ferre@microchip.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <stern@rowland.harvard.edu>, <gregkh@linuxfoundation.org>
Subject: [PATCH 1/3] USB: host: ohci-at91: completely shutdown the controller
 in at91_stop_hc()
Date: Wed, 11 Sep 2019 08:41:52 +0200
Message-ID: <20190911064154.28633-2-nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190911064154.28633-1-nicolas.ferre@microchip.com>
References: <20190911064154.28633-1-nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_234234_262953_BFAC273C 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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

When removing the ohci-at91 module, the fact of not running complete shutdown
of all the ports was keeping additional analog cells consuming power for no
reason.
Doing Reset (OHCI_HCR) to HcCommandStatus register is the way to go, but using
the OHCI controller shutdown procedure is just perfect for this.

Signed-off-by: Boris Krasnovskiy <Boris.Krasnovskiy@lairdconnect.com>
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 drivers/usb/host/ohci-at91.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index fc35a7993b7b..cb63bcd5049a 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -123,7 +123,7 @@ static void at91_stop_hc(struct platform_device *pdev)
 	/*
 	 * Put the USB host controller into reset.
 	 */
-	writel(0, &regs->control);
+	usb_hcd_platform_shutdown(pdev);
 
 	/*
 	 * Stop the USB clocks.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
