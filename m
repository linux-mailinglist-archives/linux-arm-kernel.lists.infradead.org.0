Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C504A5867C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4PoCBtd1vilM0hqjQsr+sk2KMsj+RQPVOrho+V5WRdE=; b=fNGjgGMI4pytvR
	NDlGNXNDCW2Lfkh+G4Obs7jDgZX4gf3obG6RlU+5db18dtWLiXVOGTxpOkBjDCsrNQY98RS5JvIV7
	9j+zbqrCe6hYSt0w9Qjcu59aql7d5pmaW+SgOaA4QXoqfDO+xfzyZmHl+U8vNY1ZTBwDNyD34a2pS
	o78bBXR8cl77YIM2VJOM1WosFj2+If+WN9iibkhQ2yHgv8xTqf4HrA+zc8rH4v1irEMnOgqW2ksSc
	bUJf90qJrLSlq/AdOO4q3z1bFkqEV7cXgFadxomhacE5A3tt3LbdM00zR+sOkqydEns6e1QjdTlEX
	Ofl9W/oHeSOAMhJz+zqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWlL-0000Fs-UK; Thu, 27 Jun 2019 15:56:39 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWiw-00066Z-OW
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:54:13 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
X-IronPort-AV: E=Sophos;i="5.63,424,1557212400"; d="scan'208";a="37623703"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Jun 2019 08:54:08 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 27 Jun 2019 08:54:08 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 27 Jun 2019 08:54:05 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH v2 6/7] clk: at91: sckc: improve error path for sama5d4 sck
 registration
Date: Thu, 27 Jun 2019 18:53:44 +0300
Message-ID: <1561650825-11213-7-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561650825-11213-1-git-send-email-claudiu.beznea@microchip.com>
References: <1561650825-11213-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_085410_944960_565EFC40 
X-CRM114-Status: UNSURE (   9.57  )
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Improve error path for sama5d4 sck registration.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/clk/at91/sckc.c | 43 ++++++++++++++++++++++++++++---------------
 1 file changed, 28 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index c61b6c9ddb94..f7ad3e9414dc 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -568,7 +568,7 @@ static const struct clk_slow_bits at91sama5d4_bits = {
 static void __init of_sama5d4_sckc_setup(struct device_node *np)
 {
 	void __iomem *regbase = of_iomap(np, 0);
-	struct clk_hw *hw;
+	struct clk_hw *slow_rc, *slowck;
 	struct clk_sama5d4_slow_osc *osc;
 	struct clk_init_data init;
 	const char *xtal_name;
@@ -578,17 +578,18 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 	if (!regbase)
 		return;
 
-	hw = clk_hw_register_fixed_rate_with_accuracy(NULL, parent_names[0],
-						      NULL, 0, 32768,
-						      250000000);
-	if (IS_ERR(hw))
+	slow_rc = clk_hw_register_fixed_rate_with_accuracy(NULL,
+							   parent_names[0],
+							   NULL, 0, 32768,
+							   250000000);
+	if (IS_ERR(slow_rc))
 		return;
 
 	xtal_name = of_clk_get_parent_name(np, 0);
 
 	osc = kzalloc(sizeof(*osc), GFP_KERNEL);
 	if (!osc)
-		return;
+		goto unregister_slow_rc;
 
 	init.name = parent_names[1];
 	init.ops = &sama5d4_slow_osc_ops;
@@ -602,17 +603,29 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 	osc->bits = &at91sama5d4_bits;
 
 	ret = clk_hw_register(NULL, &osc->hw);
-	if (ret) {
-		kfree(osc);
-		return;
-	}
+	if (ret)
+		goto free_slow_osc_data;
 
-	hw = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names, 2,
-					   &at91sama5d4_bits);
-	if (IS_ERR(hw))
-		return;
+	slowck = at91_clk_register_sam9x5_slow(regbase, "slowck",
+					       parent_names, 2,
+					       &at91sama5d4_bits);
+	if (IS_ERR(slowck))
+		goto unregister_slow_osc;
 
-	of_clk_add_hw_provider(np, of_clk_hw_simple_get, hw);
+	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, slowck);
+	if (WARN_ON(ret))
+		goto unregister_slowck;
+
+	return;
+
+unregister_slowck:
+	at91_clk_unregister_sam9x5_slow(slowck);
+unregister_slow_osc:
+	clk_hw_unregister(&osc->hw);
+free_slow_osc_data:
+	kfree(osc);
+unregister_slow_rc:
+	clk_hw_unregister(slow_rc);
 }
 CLK_OF_DECLARE(sama5d4_clk_sckc, "atmel,sama5d4-sckc",
 	       of_sama5d4_sckc_setup);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
