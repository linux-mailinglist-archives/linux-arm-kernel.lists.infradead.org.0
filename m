Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F26CB1189C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:28:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMvamJojm44Q2iPU5oet6bhb8P+dj4FTPkSxbTPfkio=; b=qgluf4dVyTCBJd
	BEMWi/UGfcXMqbDuD6Fd86AiylysPcDiA57+qSK1lIN6IY5JrBNaZJt4uRL7XyEC7HxD5J8XoxJ5J
	6vUOZNCsgxuaXegX1aI99UYZl3qkiNNHKC9A4c+TlIjUVCzby5NVVIUptg3EW43hgDXakEnzAJAzE
	PrrRwBjFUdWIrKkyrIXK2tTTJAxq+GAH3rC6a3Ml52NcyZGmOe9WReJ5X7XXm2UxSZKCPhSWhh4Hz
	Hm/4eKvqxz9p6gyJxOr/vtIqYiXRmMQwXHjEDcZrjSLLCCRYk72XmdcXsGlhFNgFoGKULTTfpqiLS
	8eKAE2GBIE/DjV2LZjDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefZH-0007RP-2c; Tue, 10 Dec 2019 13:28:47 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefVn-0003Yg-Bw
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:25:13 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: hnRNOKiQG+WcQ2REtTRs0HF9PluczubB0dOz2SJEh6gMvibIra3FXVMK32FY8x4RR/L9l0qrLj
 WMBhNKk5d+h+TNUTmQ2wbVaTKRNlW8mrLYGEWVyND67jCb0r8lzOwCrBbPn5DJrTedKEGRtdgp
 AC+z0XS7OAJQeYBvX8xhKvD6ISPCfr0uPhMQhN78FKoulyew8XbmHkP7J75Jd9H/5Eae1VLaJZ
 lsMOanVYgXEBfqPZ+6tq434rMlH4AX5nkiEPpBvWSMEF5F8wu+QCvZmEoEg0P6NqnAQQrLIYVz
 /so=
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="59325118"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Dec 2019 06:25:07 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Dec 2019 06:25:06 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 10 Dec 2019 06:25:08 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <sam@ravnborg.org>, <bbrezillon@kernel.org>, <airlied@linux.ie>,
 <daniel@ffwll.ch>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>,
 <lee.jones@linaro.org>
Subject: [PATCH 3/5] mfd: atmel-hlcdc: return in case of error
Date: Tue, 10 Dec 2019 15:24:45 +0200
Message-ID: <1575984287-26787-4-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575984287-26787-1-git-send-email-claudiu.beznea@microchip.com>
References: <1575984287-26787-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052511_488658_43E689D7 
X-CRM114-Status: UNSURE (   9.02  )
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For HLCDC timing engine configurations bit ATMEL_HLCDC_SIP of
ATMEL_HLCDC_SR needs to checked if it is equal with zero before applying
new configuration to timing engine. In case of timeout there is no
indicator about this, so, return with error in case of timeout in
regmap_atmel_hlcdc_reg_write() and also print a message about this.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/mfd/atmel-hlcdc.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/mfd/atmel-hlcdc.c b/drivers/mfd/atmel-hlcdc.c
index 64013c57a920..19f1dbeb8bcd 100644
--- a/drivers/mfd/atmel-hlcdc.c
+++ b/drivers/mfd/atmel-hlcdc.c
@@ -39,10 +39,16 @@ static int regmap_atmel_hlcdc_reg_write(void *context, unsigned int reg,
 
 	if (reg <= ATMEL_HLCDC_DIS) {
 		u32 status;
-
-		readl_poll_timeout_atomic(hregmap->regs + ATMEL_HLCDC_SR,
-					  status, !(status & ATMEL_HLCDC_SIP),
-					  1, 100);
+		int ret;
+
+		ret = readl_poll_timeout_atomic(hregmap->regs + ATMEL_HLCDC_SR,
+						status,
+						!(status & ATMEL_HLCDC_SIP),
+						1, 100);
+		if (ret) {
+			pr_err("Timeout waiting for ATMEL_HLCDC_SIP\n");
+			return ret;
+		}
 	}
 
 	writel(val, hregmap->regs + reg);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
