Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2891319DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 21:51:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4w3HVT8uLKb4/m1pzjaZvePRVXOKlVsECAfCHm4uXHo=; b=Logi7+J1hlcBN4
	yMATqOYraNE/AnSyHQ3EgxZbIvkBQYO3DvDXcU7RWF/fYKYv1i/6KPAlls5f4f1EhauoRoM9e4DBY
	+2a5grR/2X/PywfMukEzeLztwTefJIbLTZ4OCkRpbFgj0MGucE8Uju3dkPN78JYmYEP04mIDNjBua
	pCN8kc0cT47V7DaEax1LpRRSvKSIgBY/dTKRWgxjtXNsjcZkwhLqgWQZM5xJo7evgihqDcpoU1e+R
	yXxJwRysJALno1a94o7xK9+BYxTLMf/I0dfqLrtF05UzcD19WevKL1ohvLdle6XZiMtE8TVrgb/k5
	+gD/3r79GYt3VvRsAEDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZLU-0006Co-EB; Mon, 06 Jan 2020 20:51:28 +0000
Received: from mail-oln040092071038.outbound.protection.outlook.com
 ([40.92.71.38] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZJc-0003UO-Ju; Mon, 06 Jan 2020 20:49:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bT6TWdbHggoL6v3HiOFrUGk2yW/QopX4fQdqPYoRKmwSik0NpUBV4A0tVZbltJPQ4+w26tEyy5341sWnlkELYB8rz6ebCYuL9nRqwFEJVMS6FNL/RLCwGWwJUzJ/H1utlMTbV4P5GWUZLZCBC5KXuRJGE2ENaxGlafvk3Bn2CFRzzjJqa1ttWacoCNj0WcEf4AUvYFwis5iBEEceT+XUCfKW1ejEx5pqLwlAhgVtdESrEZPXCbOuKVe70QIAjFY2h2SuYR2Vt9QldxEgG7ynCAV/NRnqNTqb0KHdKSx4RrPaDGUm64BL38mq5D3je+u2wGFqJBGXD9o4LpQLsmDlDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FlD+lb2+s5vXTOJcA+vSQmtgg7NBO70nuQiMUOUpq6o=;
 b=Ns8i4Tj0W9kOJrgQNqoYjI7ujD3Qq06MirwxRwtj0DBzQBlESEArUdpf/SCdX3sWyBtcZDSSRVv5nZ7iqDpUEOgNONIThW+peaEbJ/EL1ltzUtLmoIlKqLFB8QGpI0tSmnVRj+4JRVpNvSQ7pOH0iEb7+gy+TdvNXIW9PxzxW2hT+OnEodFQ/0V9Ef9vG9qBXnCOLzt754YDdFgkFijxN7ucLYVad0C1zn4SaXs5ts2DZUbOJcXL+V8Uo88XmTY2kRuEPZF9dabH/h6WlOWkI/qHC4weKXvT6taVzXFddKmYXrHT9w5jhG4XgRc2VlkGhl9HTUYgYxt5FFF+KJkHpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1EUR03FT047.eop-EUR03.prod.protection.outlook.com
 (10.152.18.55) by VE1EUR03HT083.eop-EUR03.prod.protection.outlook.com
 (10.152.19.4) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.11; Mon, 6 Jan
 2020 20:49:28 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.18.51) by
 VE1EUR03FT047.mail.protection.outlook.com (10.152.19.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Mon, 6 Jan 2020 20:49:28 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 20:49:28 +0000
Received: from bionic.localdomain (98.128.173.80) by
 AM6PR0202CA0044.eurprd02.prod.outlook.com (2603:10a6:20b:3a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.12 via Frontend
 Transport; Mon, 6 Jan 2020 20:49:26 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 11/15] arm64: dts: rockchip: add vpll clock to hdmi node on
 rk3328
Thread-Topic: [PATCH 11/15] arm64: dts: rockchip: add vpll clock to hdmi node
 on rk3328
Thread-Index: AQHVxNLIPXNzMpgWYEWcgimerV+R7w==
Date: Mon, 6 Jan 2020 20:49:27 +0000
Message-ID: <HE1PR06MB4011274027CCF289492C661BAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20200106204914.6001-1-jonas@kwiboo.se>
In-Reply-To: <20200106204914.6001-1-jonas@kwiboo.se>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR0202CA0044.eurprd02.prod.outlook.com
 (2603:10a6:20b:3a::21) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:15B49EAFB42C065ED6E3AB32E3E856C0A8DD973539FB6F293B42ADFE30C0DDDC;
 UpperCasedChecksum:C9D816159C03312FC3FEFD18F8EA332F9EEACA38F463C6EA0FBFE101FB34B1BB;
 SizeAsReceived:8200; Count:51
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [+7aKVEjOmhORr4ffoiIFenJVTwTVf4VR]
x-microsoft-original-message-id: <20200106204914.6001-3-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 51
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: c9b8dde1-fb81-4d4f-1e0c-08d792e9eb2f
x-ms-traffictypediagnostic: VE1EUR03HT083:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PaeeUe6BqnOZeDyZED2GyezvwNnfFHemdvhAVREp+c59UwXNKNG+QSnYhK5VULxNl0vawvKcE6UAklo2Gjomn1WJOpiFdSUesuyW+9RIecCAy4PSdI65jYha8DPCFvNAKu1mL0JI31KcPnvO/AKXfqGmjeN2WYNuglaDrEOUVel5XDBbRuuxf7+1XCmWg6+R
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: c9b8dde1-fb81-4d4f-1e0c-08d792e9eb2f
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 20:49:27.1610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_124932_708233_3655CEA2 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.71.38 listed in list.dnswl.org]
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

Add the hdmiphy clock as the vpll in hdmi node.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index ee4b6170a9e6..987c04abb387 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -703,9 +703,11 @@
 			     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_HDMI>,
 			 <&cru SCLK_HDMI_SFC>,
+			 <&hdmiphy>,
 			 <&cru SCLK_RTC32K>;
 		clock-names = "iahb",
 			      "isfr",
+			      "vpll",
 			      "cec";
 		phys = <&hdmiphy>;
 		phy-names = "hdmi";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
