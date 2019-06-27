Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D41EE58678
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQa9frdejPry1NmGQOPGUH0ctBAlww3jgluH/l1xRlQ=; b=cr1j5+3KKmVLDF
	fp7kag4i5liRLCpM/GGuWnB5eAXKGwkyR2RnK5itt7CzUMHPHvywu2LF4t//H3kRU1gEmi5RG1r65
	UGzb2726HtcPJYnvEBoqYcRpuwGqTsPti59lKVmaF5DQF1+lsg+D/cIygepMUmXrzsZbA+fSvcuYr
	Z1WGn5UZ6At0Uh63kgiZh69mi2SYEaWmd2sRqWiPIoR+7vpHVt2Zu438jkDxhk2FLE0zZjLJ6Xgsu
	7+VSAYkccc2Pdd3eNfaUCaK8Y/6YCipeI0hSdMDpFBaeFs2ukpbk82qr0r+63hw/yK8KVxwMSEXAF
	X+R6I2vXKDltAPjnFvVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWkU-00089L-RI; Thu, 27 Jun 2019 15:55:47 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWir-0005ws-3x
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:54:06 +0000
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
X-IronPort-AV: E=Sophos;i="5.63,424,1557212400"; d="scan'208";a="36125207"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Jun 2019 08:54:04 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 27 Jun 2019 08:53:59 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 27 Jun 2019 08:53:57 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH v2 4/7] clk: at91: sckc: improve error path for sam9x5 sck
 register
Date: Thu, 27 Jun 2019 18:53:42 +0300
Message-ID: <1561650825-11213-5-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561650825-11213-1-git-send-email-claudiu.beznea@microchip.com>
References: <1561650825-11213-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_085405_235574_5A1C2C97 
X-CRM114-Status: UNSURE (   8.89  )
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Improve error path for sam9x5 slow clock registration.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/clk/at91/sckc.c | 50 +++++++++++++++++++++++++++++++------------------
 1 file changed, 32 insertions(+), 18 deletions(-)

diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index 2a677c56f901..a2b905c91085 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -371,16 +371,17 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
 	void __iomem *regbase = of_iomap(np, 0);
 	struct device_node *child = NULL;
 	const char *xtal_name;
-	struct clk_hw *hw;
+	struct clk_hw *slow_rc, *slow_osc, *slowck;
 	bool bypass;
+	int ret;
 
 	if (!regbase)
 		return;
 
-	hw = at91_clk_register_slow_rc_osc(regbase, parent_names[0], 32768,
-					   50000000, rc_osc_startup_us,
-					   bits);
-	if (IS_ERR(hw))
+	slow_rc = at91_clk_register_slow_rc_osc(regbase, parent_names[0],
+						32768, 50000000,
+						rc_osc_startup_us, bits);
+	if (IS_ERR(slow_rc))
 		return;
 
 	xtal_name = of_clk_get_parent_name(np, 0);
@@ -388,7 +389,7 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
 		/* DT backward compatibility */
 		child = of_get_compatible_child(np, "atmel,at91sam9x5-clk-slow-osc");
 		if (!child)
-			return;
+			goto unregister_slow_rc;
 
 		xtal_name = of_clk_get_parent_name(child, 0);
 		bypass = of_property_read_bool(child, "atmel,osc-bypass");
@@ -399,23 +400,36 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
 	}
 
 	if (!xtal_name)
-		return;
-
-	hw = at91_clk_register_slow_osc(regbase, parent_names[1], xtal_name,
-					1200000, bypass, bits);
-	if (IS_ERR(hw))
-		return;
+		goto unregister_slow_rc;
 
-	hw = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names, 2,
-					   bits);
-	if (IS_ERR(hw))
-		return;
+	slow_osc = at91_clk_register_slow_osc(regbase, parent_names[1],
+					      xtal_name, 1200000, bypass, bits);
+	if (IS_ERR(slow_osc))
+		goto unregister_slow_rc;
 
-	of_clk_add_hw_provider(np, of_clk_hw_simple_get, hw);
+	slowck = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names,
+					       2, bits);
+	if (IS_ERR(slowck))
+		goto unregister_slow_osc;
 
 	/* DT backward compatibility */
 	if (child)
-		of_clk_add_hw_provider(child, of_clk_hw_simple_get, hw);
+		ret = of_clk_add_hw_provider(child, of_clk_hw_simple_get,
+					     slowck);
+	else
+		ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, slowck);
+
+	if (WARN_ON(ret))
+		goto unregister_slowck;
+
+	return;
+
+unregister_slowck:
+	at91_clk_unregister_sam9x5_slow(slowck);
+unregister_slow_osc:
+	at91_clk_unregister_slow_osc(slow_osc);
+unregister_slow_rc:
+	at91_clk_unregister_slow_rc_osc(slow_rc);
 }
 
 static const struct clk_slow_bits at91sam9x5_bits = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
