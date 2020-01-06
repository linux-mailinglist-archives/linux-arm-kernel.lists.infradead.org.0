Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3D61319A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 21:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5U0laiLWrTamWdH8MS8Y/P39Lw+uof9euYXGnGV29Ag=; b=swcpjYhcI2N6u2
	gpKZuI8oQB4u3VjkbvXem+jjtFV6jxDweyi2w20fg5Rh9qDDJ6OvTVni+m8mpd8pzODUCjh9oW3Vz
	8xF133Nj+PgaykJHpgKSv1bteJ9K3/jvjrRG4vxNfY0gmDGoiCKXtjF8Wl8hRGlt3fcWfJqzQuVhy
	rTVpUKdSuoulUWbeOR4a+onBAcaKwmMRkr9l0tBGzjQTypYS6fhpuv6qJzVAVjHNFon4g141MaZCD
	En5JTf5F7EzW6RSUooTtqlK5idstk6D0A5oGP62XFyrI0mbeOHDgAbfLqqxgeszeGGW2JWziGHFdk
	HEfHyhPQ/EkH0Bq3OBfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZI1-0001zQ-So; Mon, 06 Jan 2020 20:47:53 +0000
Received: from mail-oln040092067015.outbound.protection.outlook.com
 ([40.92.67.15] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZHq-0001xf-84; Mon, 06 Jan 2020 20:47:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lheXsPWq7kAlO/cjlAzZEMkq8zaZ3SB3qZ/E3BqFolr38XlR1W8fBvFk9lPo2N/ugmiszuOm/ZTcYGOOAK6wLwDo87ZfGg5HlRGj5IBxNt8bqARQ/rAKHvaboJRjdenezdxmIO/zfbS0ciDcFqz4+z34G0aARNCkWxORMDZB6cbXfMCg/iVLNnp1hS8/irrkZtZGFHDaDgS74L55s8XsKTR3wMqlN1JU24TGeYLhkbBr0DroMxBN5eyj6TsjnN1El6KkPzxCZ+G3nmJJ4pQ58IkIl1dSlxPr960kS+PIjIuyKzfztjpMR6iULtYCg9QU850ffBivBmSFJc5MV2K6rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NzeqoTb7HrC2D++Zrc9X4kgWRYmyf+QsmJUCm5n6/cc=;
 b=VodbKgw8Or8GJX8uvw7GlIfN+ikqV7qaqjVhyjFr9GHAAwGJ9T/52i+vPJZ4PzIypPHZPRLXvFNpF8pwGZ71sDS8FX5ngivzTJmwkTiGJwVVzDInBy9BZs7Q2ag5m5RBNj1UD+FA33m3sLOIVMW7QRLbHcYNy6OJQt4SBZUkw8V7v3Y8WNsREy/3UknidPQG1wgG0/5E61nJYPmJVPeL85XmFglp9S1aFBgc1gk3pSIZQfLkJ86ToZjCSYaydIG8FLQIzwYaUw3LA+hdowbUPgngAWIK5xHA47+0fPRiMDOblrfZIuulgtKX5lIh6cAKKeetSY5FCSAKTx4vMhoXBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1EUR02FT060.eop-EUR02.prod.protection.outlook.com
 (10.152.12.55) by VE1EUR02HT216.eop-EUR02.prod.protection.outlook.com
 (10.152.13.161) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.11; Mon, 6 Jan
 2020 20:47:38 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.12.60) by
 VE1EUR02FT060.mail.protection.outlook.com (10.152.13.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Mon, 6 Jan 2020 20:47:38 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 20:47:38 +0000
Received: from bionic.localdomain (98.128.173.80) by
 AM6P195CA0080.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:86::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10 via Frontend Transport; Mon, 6 Jan 2020 20:47:37 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 01/15] phy/rockchip: inno-hdmi: use correct vco_div_5 macro on
 rk3328
Thread-Topic: [PATCH 01/15] phy/rockchip: inno-hdmi: use correct vco_div_5
 macro on rk3328
Thread-Index: AQHVxNKIFXnraCQbrkqwiVZY6H3oBw==
Date: Mon, 6 Jan 2020 20:47:38 +0000
Message-ID: <HE1PR06MB401135F38CD28AD4BB12EEF7AC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
In-Reply-To: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6P195CA0080.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:86::21) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:6F6DD20A0899AA729E98995BB36C89DE524FC4527F2FC37850CC72F0910B7041;
 UpperCasedChecksum:24501F4B5DB11B04EC99F511E91E7A4B56EF762341DC9417E6D0AA5F2789EBD1;
 SizeAsReceived:8201; Count:51
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [QWM3uovSw7zSNZ/TgRg8ckuZ0nZtU6XZ]
x-microsoft-original-message-id: <20200106204723.5889-1-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 51
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 9be13562-dda8-48c5-da52-08d792e9aa8e
x-ms-traffictypediagnostic: VE1EUR02HT216:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YO8OQP69R8HUHUZ8pknMWNTCHlInutCsmL8Is8Aa3Yd5UwaUkNBCamLAMfoWjyFaKUIigXJjk78yboeyPizrqNOj4Q0o4ZUK3YT/m/qUQ6NXFB/jVJZrZclUVkJNilTlLVPQmCg4P7soSFMvWBaNcpSefLasT0vbvFasuChyygAuXnUcKzT7tCxXPFVmw35d
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 9be13562-dda8-48c5-da52-08d792e9aa8e
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 20:47:38.6546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_124742_289562_FEAF0F4F 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.67.15 listed in list.dnswl.org]
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

inno_hdmi_phy_rk3328_clk_set_rate() is using the RK3228 macro
when configuring vco_div_5 on RK3328.

Fix this by using correct vco_div_5 macro for RK3328.

Fixes: 53706a116863 ("phy: add Rockchip Innosilicon hdmi phy")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 9ca20c947283..b0ac1d3ee390 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -790,8 +790,8 @@ static int inno_hdmi_phy_rk3328_clk_set_rate(struct clk_hw *hw,
 			 RK3328_PRE_PLL_POWER_DOWN);
 
 	/* Configure pre-pll */
-	inno_update_bits(inno, 0xa0, RK3228_PCLK_VCO_DIV_5_MASK,
-			 RK3228_PCLK_VCO_DIV_5(cfg->vco_div_5_en));
+	inno_update_bits(inno, 0xa0, RK3328_PCLK_VCO_DIV_5_MASK,
+			 RK3328_PCLK_VCO_DIV_5(cfg->vco_div_5_en));
 	inno_write(inno, 0xa1, RK3328_PRE_PLL_PRE_DIV(cfg->prediv));
 
 	val = RK3328_SPREAD_SPECTRUM_MOD_DISABLE;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
