Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 634B71319B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 21:49:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxrXyNpzXUd64R+ZRkXr2wXYx+oG6f548VxdgsmwGcU=; b=NwejAPlAnPasdh
	l5nK01yZpmggh2hpPUdyRRCB/y2uGdsxtGliNVs8ZwmLJsYcAqKKoIWn07logTryvzDnrzM0g13FA
	E4eVI25rQV8hzMsxL/Qk7+0jR70d/n22tv3gkKC09DRqQ4xxXW49CSrqJhafCGFOzjxQJwtvcjCv9
	MqY0ftmrQkvgr2JMs0hCIDClKyigU+IvWSmvpDQ9kpmPF/3Ngmx27PJdsVVZeUJqqtLmyNOOu+ZAe
	+dwZFNlRw9bEZYDypETrmbmkLlO/nyx0t9Ac67EeBCTdOmXa48mugkmg5yMleRthZ37uzZqcxl8IX
	xr5mJIk21UH1mtYgr6gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZJ5-0002rh-Jk; Mon, 06 Jan 2020 20:48:59 +0000
Received: from mail-oln040092067079.outbound.protection.outlook.com
 ([40.92.67.79] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZHu-0001yD-Bh; Mon, 06 Jan 2020 20:47:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jBsPHhd2tM1+eOr/OM8S2HfuFP0Q4qlTcrx0O2QjJ0qQoQVb3RQDtrl2G68q6wq3tAdOj/Gvc38H1A6xiRjqrtgjnUWN4aDvUiACBMHlRLrjdA9w/PPitPlluwTMFH+tMhJW5LgY0hhawtHLAqyDaMaRWznYrMqJQf3AybbGtwb/hBZx0wqvMOKDOdE9P70nubW6Lszb4RHDgdfgpc8KZQ9c2QfKIOxdKlpuS67xVhFE7S7xhBKsrhlSUC4/UYHu+1UsVXh47de7QsE2clUs6zT+OIEbKZJCu2goNAc5YCmupBfq92juRgvzgRpSVRmIUhzy6Yv5F1IoAjtivXGuIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dXkWHjWC/WUMg9tY4J4V2BXJDP8I8HB0A2wWGSdqGOc=;
 b=OB8EoFdKfFJ3EQpSNXVgHEZLA+LNAQNhoZOQCwE+JZqGgxLNDClTIIWhN5WHNl5WW2ec1hl+fHrtZFbHmsebFK7bSi5mLqYY5U78bGsUW4ZiAX6huglDm95sHYxTkpp8wOWvxUCx66YuVRsxqDkvlRqjwM+xRz+riZBJeq3qJ4J1FVRWmY/9FBDJOxg7uMn68a8UKtqrAnT34FXje+vGee28+RFzc+c3xPK3aVXIog3VmhQFC/eBnb8/2ejVnHnC9yAe40HlWd8x/rDNAmxbaXyWB5xHSnBj3EcmGO2+Y1Uay6d/SpmDmWW3J043rCnitSb1eB+ZwDit6NoMoVP9Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1EUR02FT060.eop-EUR02.prod.protection.outlook.com
 (10.152.12.52) by VE1EUR02HT081.eop-EUR02.prod.protection.outlook.com
 (10.152.13.243) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.11; Mon, 6 Jan
 2020 20:47:43 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.12.60) by
 VE1EUR02FT060.mail.protection.outlook.com (10.152.13.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Mon, 6 Jan 2020 20:47:43 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 20:47:43 +0000
Received: from bionic.localdomain (98.128.173.80) by
 AM6P195CA0080.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:86::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10 via Frontend Transport; Mon, 6 Jan 2020 20:47:42 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 04/15] phy/rockchip: inno-hdmi: do not power on rk3328 post
 pll on reg write
Thread-Topic: [PATCH 04/15] phy/rockchip: inno-hdmi: do not power on rk3328
 post pll on reg write
Thread-Index: AQHVxNKKLxyL4Q0vOE22PNhI5tid5A==
Date: Mon, 6 Jan 2020 20:47:43 +0000
Message-ID: <HE1PR06MB4011014FA1EE17FBEDA08AD4AC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20200106204723.5889-1-jonas@kwiboo.se>
In-Reply-To: <20200106204723.5889-1-jonas@kwiboo.se>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6P195CA0080.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:86::21) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:8C19569506F8BD7642EB2068ACC681F4CCFF9E0FBB922D8AF839168E0728C830;
 UpperCasedChecksum:208474F13C68AC48892D2A1F3171ED9F280F3CF3166E792915F58D934847E662;
 SizeAsReceived:8214; Count:51
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [d4h1GFYe1CbrN0nWU9c/hx+yzaPUmp2D]
x-microsoft-original-message-id: <20200106204723.5889-4-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 51
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 33835552-4958-454e-2c9e-08d792e9ad47
x-ms-traffictypediagnostic: VE1EUR02HT081:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: phhp6ZKkFuy6X8DwBCXpXOmTFFnDtvCQkrT5GM/NcCrNjmcrQU5DblzdC/1rekEzuXPVmxUQbw7hraKXS4zwUytGPbINhoN10OFh1Z/q6M1ZXAnS5UOyg+vrVRS2HXArk8URa1tM2zw3PnP8eK1kzriyC+1zoPBOMta/ebqxRXC2DGes22hS+Ty2c6qnkpch
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 33835552-4958-454e-2c9e-08d792e9ad47
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 20:47:43.1490 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_124746_417555_6924CA79 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.67.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Zheng Yang <zhengyang@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

inno_write is used to configure 0xaa reg, that also hold the
POST_PLL_POWER_DOWN bit.
When POST_PLL_REFCLK_SEL_TMDS is configured the power down bit is not
taken into consideration.

Fix this by keeping the power down bit until configuration is complete.
Also reorder the reg write order for consistency.

Fixes: 53706a116863 ("phy: add Rockchip Innosilicon hdmi phy")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 06db69c8373e..3a59a6da0440 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -1020,9 +1020,10 @@ inno_hdmi_phy_rk3328_power_on(struct inno_hdmi_phy *inno,
 
 	inno_write(inno, 0xac, RK3328_POST_PLL_FB_DIV_7_0(cfg->fbdiv));
 	if (cfg->postdiv == 1) {
-		inno_write(inno, 0xaa, RK3328_POST_PLL_REFCLK_SEL_TMDS);
 		inno_write(inno, 0xab, RK3328_POST_PLL_FB_DIV_8(cfg->fbdiv) |
 			   RK3328_POST_PLL_PRE_DIV(cfg->prediv));
+		inno_write(inno, 0xaa, RK3328_POST_PLL_REFCLK_SEL_TMDS |
+			   RK3328_POST_PLL_POWER_DOWN);
 	} else {
 		v = (cfg->postdiv / 2) - 1;
 		v &= RK3328_POST_PLL_POST_DIV_MASK;
@@ -1030,7 +1031,8 @@ inno_hdmi_phy_rk3328_power_on(struct inno_hdmi_phy *inno,
 		inno_write(inno, 0xab, RK3328_POST_PLL_FB_DIV_8(cfg->fbdiv) |
 			   RK3328_POST_PLL_PRE_DIV(cfg->prediv));
 		inno_write(inno, 0xaa, RK3328_POST_PLL_POST_DIV_ENABLE |
-			   RK3328_POST_PLL_REFCLK_SEL_TMDS);
+			   RK3328_POST_PLL_REFCLK_SEL_TMDS |
+			   RK3328_POST_PLL_POWER_DOWN);
 	}
 
 	for (v = 0; v < 14; v++)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
