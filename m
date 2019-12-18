Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E651246DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:29:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRw8tPGwHQUmCYeEIlLmmOn3jqtAt6P5JkMdY7JN04o=; b=ageibechzGWsXe
	n33GoORO2XjieoTINw/klGGVB8nIC4+5b8zW8uqZVANEu0H1YOGVQcW4wR2wA4YD5MqfcZgf8Gyx5
	09Io9IGVSUqYFgW5VCaFRqlKN9mG6jVB6sUQ6QovO95xEx5iZFDxM77YoFIy7VqI4MkT7MgwjG7J0
	CWLAF1IlodTsOCkjzIhEQLR+MfLV6IVIuuC1FJ1v3x5J2Moji3zx7LnQI1gtMtdM464DC3yz6EUQw
	GHaY43sIfjGlW6I81+9VCpsQCTWdTInhOVXtoSKth+CzAH9xpaSIQXCgMFaTDK6gS2mTXV52JhIMW
	s88H3KsDnbwfSu6SWRmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihYSd-0002tD-Do; Wed, 18 Dec 2019 12:29:51 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihYRc-00021l-4K
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:28:49 +0000
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
IronPort-SDR: 3T3KoRmV9Py30sZPTGEDgjAKtwTDSgm7SAz7UQP8GZQSxk3GxrpdcrK/C+j1je6uuhMUdz6OKG
 1ICPttIlHldLWudaJYckOz2hzh0NnH150DzQ5KQbUwF1chd97jIO5y5aCZPaVjqMB8Apf7uxoS
 32YDP/FHy9keakW+bZsYb9YGLhQnZsWb6gcTtSj0UkQxlhVeXHuVzOjCRuQdKQ1OcUo3XwdOWc
 2KbrzomS+hhbeMSQxSfaWmVsnGHHq6pZKaFWckjM0I5r2w6FkT6nIvt2cDIujswuIJfSH/qw3J
 mwA=
X-IronPort-AV: E=Sophos;i="5.69,329,1571727600"; d="scan'208";a="62156189"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Dec 2019 05:28:47 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 05:28:46 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 18 Dec 2019 05:28:44 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <boris.brezillon@bootlin.com>, <airlied@linux.ie>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <lee.jones@linaro.org>, <sam@ravnborg.org>
Subject: [PATCH v3 4/6] mfd: atmel-hlcdc: return in case of error
Date: Wed, 18 Dec 2019 14:28:27 +0200
Message-ID: <1576672109-22707-5-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
References: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_042848_191858_5BEDE13D 
X-CRM114-Status: UNSURE (   9.45  )
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
Cc: linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>, peda@axentia.se,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For HLCDC timing engine configurations bit ATMEL_HLCDC_SIP of
ATMEL_HLCDC_SR needs to be polled before applying new config. In case of
timeout there is no indicator about this, so, return in case of timeout
and also print a message about this.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/atmel-hlcdc.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/mfd/atmel-hlcdc.c b/drivers/mfd/atmel-hlcdc.c
index 92bfcaa62ace..a1e46c87b956 100644
--- a/drivers/mfd/atmel-hlcdc.c
+++ b/drivers/mfd/atmel-hlcdc.c
@@ -40,10 +40,17 @@ static int regmap_atmel_hlcdc_reg_write(void *context, unsigned int reg,
 
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
+			dev_err(hregmap->dev,
+				"Timeout! Clock domain synchronization is in progress!\n");
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
