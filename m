Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 638FBFACE4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:24:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	From:Reply-To:To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2/CTTVOqIKglUXo4SGhud466YtDQ++uI2FxTmyotinQ=; b=DZXguekChwZdAP
	poG7RXhAjjvIN0cpRiRCwkfASaQf8wc4NUztewoiiO1mVIkA6yROlOvuBHwni/Ok5jv7cTcepaEc5
	mwEIwdjNW267xl++NHCDYqXb4kFJlVXSL0iOJzY4IcPdOZl+yBWDHLgAtiwU6AXnjHiNqJjzj5GKq
	HAU1U8uz2fQXZg7YyP69PROZufHm4PMDohgdpDwseyZ1MuGLeE3MRibHcV18NBzzD6e55C8IRKpl3
	cpwK2avdvRWGmRrnFUYZeg7pp5CkkTKkI9WVztCx4cVDuGxYxnxyWwgl7sYvJTLrB5tKjxnJohG+p
	7w8OQu7x9tT1iFpz2Ffg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUosm-0007eB-If; Wed, 13 Nov 2019 09:24:12 +0000
Received: from mail-oln040092011092.outbound.protection.outlook.com
 ([40.92.11.92] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUosd-0007dl-LX
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:24:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f7O6MLy6XdKjhJ6zlq6+aWVTQ9jDHwz9BT1b25qL87Ve+IJcQ18i7rZbJGELvSq+MNc3DmCST1GHkGsQlcqAvExqjJKwuWIxi/3A1i0YVsEksnOr6bYCC35Abkz/7n+JizMSXYdiaShnhZMoOr+YAD0/02vJR/t5Avg4Ouh0rPoBVOS4zt0H24oX6cJIjrubOpypjVU8LF7Wtaxz1RSj9X03ACg+Wzh9x+vk9K7jh0cgpJdbATrutH1g1Cv+XYBM4cQSFU+w8Y/8md0fF43NHz9uKeLw90EX4QvuDbA7qK2OYS5gKo9Qd+nI5NigRVNM6E+iitGSBHMyANQFO3XLmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+vxQrZojOP8kClTh93Z95or6PohxSWiNHoY44NfVA+A=;
 b=jDIjV5j9Zx6UbLzRwuWZVKKbha7A6JDuqnFutAqZqFLJkH7suFQzyPbWKzRhH0HBY5bs6XWmXI42RXryhyPWMwW3yd1ytNtwou+5zM7IXK/ENqTevens3yj0kLRjM69SPNWZlzgX7s1s6lXAu+CgRZLn2erhPxHBRBaq3GlLYMoSr4DJ8kiVUOAEVxz45Sjzsd1ExbsCpsn6SPlUKCfpq8jHWX9avw0VD71jVZBw2H5Ih5x4wPkhOSULkJmWYqL1sZAdaAxMrOqm5MOcJIjUwlyCsK0W938WPnJ6VJHMexfR5XGLskacEeG51kQ7SitnJjVz/ugCC3LKusn/uGnjeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+vxQrZojOP8kClTh93Z95or6PohxSWiNHoY44NfVA+A=;
 b=PC4G29rAF96LFsEOTGJzwlfLCumIYTxGZ4l8rMllIfAolQxjJ80xnQ978hN4U95rXD/npaz/gNuZ2TBL3dsp3Yrn37jJLQ1p7pcFumneB34tZwJKHEW77GPaj2Ov96rIZ+9NTRYUIwAZGIsx+Dyqk6drIb/2Lqltgxz8O8PRZay/JK91s5EEWGuKg0zjMH5RCAH4JC9DiPyqhycTyOXWvpxV/tXPVmiNBBbIRWwGCjrlqTrSwe7gVz1Mf3b1DmRySWmhDSGlm+nKMUUdjiN+5PEBEMR6tECFFFeXEEASF4nV6Pi5/64McW5eXTlw+1xeCbWye66nwroAXRzjdhj7Uw==
Received: from BN3NAM04FT032.eop-NAM04.prod.protection.outlook.com
 (10.152.92.56) by BN3NAM04HT026.eop-NAM04.prod.protection.outlook.com
 (10.152.92.207) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2451.23; Wed, 13 Nov
 2019 09:23:59 +0000
Received: from MN2PR08MB5790.namprd08.prod.outlook.com (10.152.92.51) by
 BN3NAM04FT032.mail.protection.outlook.com (10.152.92.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23 via Frontend Transport; Wed, 13 Nov 2019 09:23:59 +0000
Received: from MN2PR08MB5790.namprd08.prod.outlook.com
 ([fe80::85cd:bb91:76fb:d02]) by MN2PR08MB5790.namprd08.prod.outlook.com
 ([fe80::85cd:bb91:76fb:d02%7]) with mapi id 15.20.2430.027; Wed, 13 Nov 2019
 09:23:59 +0000
From: Tian Yunhao <t123yh@outlook.com>
Subject: [PATCH, v2] clk: sunxi-ng: v3s: Fix incorrect number of hw_clks.
Thread-Topic: [PATCH, v2] clk: sunxi-ng: v3s: Fix incorrect number of hw_clks.
Thread-Index: AQHVmgQUaMCgmtqENki6qI5V226d+w==
Date: Wed, 13 Nov 2019 09:23:59 +0000
Message-ID: <MN2PR08MB579006CB67AC63A93C8B0D5E89760@MN2PR08MB5790.namprd08.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0025.apcprd03.prod.outlook.com
 (2603:1096:203:2f::13) To MN2PR08MB5790.namprd08.prod.outlook.com
 (2603:10b6:208:110::11)
x-incomingtopheadermarker: OriginalChecksum:B35C41A3993182DC4EE38A341EA827AD85F208E29E6AD070ACBF7988F6AF0199;
 UpperCasedChecksum:861F9CE25F5FF247CCA0953E7F034DE0F4059D41446BD56FCD7F452605794AB5;
 SizeAsReceived:7613; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-tmn: [jVO9cSinCa5arrFFFC8Eu30XihfPGeKmpF4MYgcgX3GQyEVXkJW/Sw+xL4jw1fW2]
x-microsoft-original-message-id: <20191113092334.6189-1-t123yh@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 109f3880-c7e3-4719-46fe-08d7681b365e
x-ms-exchange-slblob-mailprops: Zv/SX2iM+5WAAu+xLNoGVGYOrYe4eRXTVlEuIzJrrBv7Mk9E/V4BTUL1ZQDGbML0QhdyMr5ULGsr1c2N2uB29lEHsyca6gCk/mglen8Oz4ByybpQFQD23OhA2/FAIFCpDY33h5OzP2hlI3bH8CE5TUxyFaIpMr3UR525xtqxDkZv0BioVjA5hfnOL+sKT8m59xoTkf7y53iyUFNIwDZp0+QKWjKSXGxAQfkbB/xqzbiWAI86xhy6duyv2Pa88E6R3KIdyG/7/pm1xUJuFAqbdDRk4ox/ZLsx67wJGH0VEo76yIi6dUfda0AYA86/daF+piSvEX/eIF9k2+KBZFnlFlq2WgKTTf5Csg0Y/rAljvgMYwbDNfGERcq7WixjWtnc2O+y0Q1lkewuQnPO/wRo33KV18oG3za3j2jxoKJrwtXaCOiWZGiSN99bTWINvRyBWZ8DbNeanJ3Hpa7S5RNK22pIKGtmKPnaH6AJcRAQRwPBYk1f4n4Jy/jzZCR/DAhwE01gju+RQjVyDvJfYSHrhT8aOEtqlJ81GRzLx51pAdXMU+aSVV7cpqTI91HDzvkZj/EwV9Nb05ySCxCyM3YQtZUPtHpFBfalwM99pDT0PcPF+0JFDP/bCJtXtzx/dS+GhQdJjp7HocvsXpgVdDawHg5VEXiiJUxEjwB0FKXHpsjKoZCqlIUs/fND7PQsWXfNZKXb2mDCeNs=
x-ms-traffictypediagnostic: BN3NAM04HT026:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BneViT6+zvsKcsv98dC+eqYifCB7NUNns0ap9YUneADhnlKc1o1Zfz9EMvxyMG+np2/6qJF97IC+q6uyURv4PvFJDCHZUfJY6COxGql241rjFW9smEyCc/IzVuuu3KHbTJ3mvPd1BwfWssCOtyLfe+XjZO1Hc9JYnrh9CejKAtkG+HRdkvTk0YtewhEhOYqP
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 109f3880-c7e3-4719-46fe-08d7681b365e
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 09:23:59.3182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM04HT026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_012403_888951_59F272E3 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 2.4 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.11.92 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.11.92 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (t123yh[at]outlook.com)
 1.2 MISSING_HEADERS        Missing To: header
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.4 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
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
Cc: Tian Yunhao <t123yh@outlook.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The hws field of sun8i_v3s_hw_clks has only 74
members. However, the number specified by CLK_NUMBER
is 77 (= CLK_I2S0 + 1). This leads to runtime segmentation
fault that is not always reproducible.

This patch corrects this behavior by separating clock
numbers for V3 and V3S.

Signed-off-by: Yunhao Tian <t123yh@outlook.com>
---
 drivers/clk/sunxi-ng/ccu-sun8i-v3s.c | 4 ++--
 drivers/clk/sunxi-ng/ccu-sun8i-v3s.h | 3 ++-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
index 5c779eec454b..72a87dd0c0d8 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
@@ -618,7 +618,7 @@ static struct clk_hw_onecell_data sun8i_v3s_hw_clks = {
 		[CLK_MBUS]		= &mbus_clk.common.hw,
 		[CLK_MIPI_CSI]		= &mipi_csi_clk.common.hw,
 	},
-	.num	= CLK_NUMBER,
+	.num	= CLK_NUMBER_V3S,
 };
 
 static struct clk_hw_onecell_data sun8i_v3_hw_clks = {
@@ -700,7 +700,7 @@ static struct clk_hw_onecell_data sun8i_v3_hw_clks = {
 		[CLK_MBUS]		= &mbus_clk.common.hw,
 		[CLK_MIPI_CSI]		= &mipi_csi_clk.common.hw,
 	},
-	.num	= CLK_NUMBER,
+	.num	= CLK_NUMBER_V3,
 };
 
 static struct ccu_reset_map sun8i_v3s_ccu_resets[] = {
diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h
index b0160d305a67..18cf8f3c112b 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h
@@ -51,6 +51,7 @@
 
 #define CLK_PLL_DDR1		74
 
-#define CLK_NUMBER		(CLK_I2S0 + 1)
+#define CLK_NUMBER_V3		(CLK_I2S0 + 1)
+#define CLK_NUMBER_V3S		(CLK_PLL_DDR1 + 1)
 
 #endif /* _CCU_SUN8I_H3_H_ */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
