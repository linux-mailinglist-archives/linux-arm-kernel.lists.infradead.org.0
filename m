Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E1C140921
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 12:38:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtntVE4q3hGmaJUIWUEF69doF1kHtaFj42siYqzWZME=; b=j+56WrVcoRL+1q
	w0+xJ7aZ26u38Ah24eZHXXJXeUV9zZNn1mtMpUQPqXuoygbtgHheoTWfvLUneW/e1B64d6pTbkE0U
	yjhsYWYWUthUGD60E37VfubXMQneedeohPyaq0/BbnzYkqdnxEGosDWpzznDmsBAt3MzFKmtj/YV0
	D1JCRgT9+nlugig7JnhgIlRDZqNp2vtcUyoMZNOiEWJO2L1Nz0ujMvTUt9Cdcoc/mmZ4EN4XzuGXP
	zXla8LfG4Q882qZHfbYshIQm1LIKW9MI+J38cViZBdDsCJEtEC+Iwq2tXoanpSHP1STkZ61d+ssKl
	6bsHNybadkQZ2P2/k58g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isPxO-0003ok-Tj; Fri, 17 Jan 2020 11:38:30 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isPwQ-00035F-44
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 11:37:33 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Ar/Uh1AKX+S7I+8FoBT0VDPfF3fi+zLtVHMeX4UWJyHGp9Gqu9ifdw7aXJWr+EWP+Y3Tu6QaZb
 JAN7qbaiHkfhWX6/dhgLywpSPKt0tLElvuJ2q9hU99sUyrL8SBS4qnCcEIkoj6LaH833tfr3yF
 GgvZ1UmNV/8m9WYhBgF5ngkpVzlcydfVb6RWNGK+ZQNEByvYrBPyKy1GTUvbz8kJX8EKkOid+W
 FEEWSwi+8IB5nN0gb1w+5NnzV/f6qJH2tYbuFkY+OL5tNS5UIIG/Ax3QwI+i/cd9kxZY9nHeUh
 GaY=
X-IronPort-AV: E=Sophos;i="5.70,330,1574146800"; d="scan'208";a="63631936"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Jan 2020 04:37:15 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 17 Jan 2020 04:37:14 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 17 Jan 2020 04:37:11 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH 4/4] clk: at91: usb: introduce num_parents in driver's
 structure
Date: Fri, 17 Jan 2020 13:36:49 +0200
Message-ID: <1579261009-4573-5-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579261009-4573-1-git-send-email-claudiu.beznea@microchip.com>
References: <1579261009-4573-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_033730_238930_62D803D8 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SAM9X60 USB clock may have up to 3 parents. Save the number of parents in
driver's data structure and validate against it when setting parent.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/clk/at91/clk-usb.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
index c0895c993cce..31d5c45e30d7 100644
--- a/drivers/clk/at91/clk-usb.c
+++ b/drivers/clk/at91/clk-usb.c
@@ -25,6 +25,7 @@ struct at91sam9x5_clk_usb {
 	struct clk_hw hw;
 	struct regmap *regmap;
 	u32 usbs_mask;
+	u8 num_parents;
 };
 
 #define to_at91sam9x5_clk_usb(hw) \
@@ -110,7 +111,7 @@ static int at91sam9x5_clk_usb_set_parent(struct clk_hw *hw, u8 index)
 {
 	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);
 
-	if (index > 1)
+	if (index >= usb->num_parents)
 		return -EINVAL;
 
 	regmap_update_bits(usb->regmap, AT91_PMC_USB, usb->usbs_mask, index);
@@ -215,6 +216,7 @@ _at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 	usb->hw.init = &init;
 	usb->regmap = regmap;
 	usb->usbs_mask = usbs_mask;
+	usb->num_parents = num_parents;
 
 	hw = &usb->hw;
 	ret = clk_hw_register(NULL, &usb->hw);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
