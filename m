Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC991319DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 21:51:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4nVcAyd3WDKpxOuQqSTDbas2FyFeUEy02QJDQTdt7Qg=; b=fqiWXiA30+Ur8T
	75UDbgIPN2Fr/5sypuNBp6xnmcT6QXiahttLN/6DoFdYk9dIuSn3m4/EGqeAnO+I9RpfGCUzg4XJD
	Yodag0i0sFbWPLLRnWDyY9IQheqf5uTfjgG/5cevAhd7wIqNIbO2i4C8/RAXGlOSdyNRB1krwsxAR
	N3QV0j72Rq6SsIUUIZNhuzo0Yo3cv3yWustxLvlFF5x29G0P12EnipSM2kFAgxmCnKbvzFFm1ZDW1
	bYoKO+x+aud95Ftc0Ly5fAHb1BB4OcM1A1hr1N6hG6IaQ/vV4nedd445S1iMdsgT4TrW8VWMC+w8A
	KEuroY7yfuVO5znNI2Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZLq-0006PV-Ji; Mon, 06 Jan 2020 20:51:50 +0000
Received: from mail-db5eur03olkn0821.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::821]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZJd-0003Up-30; Mon, 06 Jan 2020 20:49:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fRKdRIJ6gxJO5kKz3DeJRzLm4h47Mfqeh0fYXDn6P1BQr3Saa6M9tu+LXtQNhuT3sorU1l3WpE6nRlLMthIMfmNIOYE+xCs/y5gxvtCCO6VIaNA43rT+hYDNk7GlG5+YDHHN4ZkSHkLmgfiNESJ9jX7cLVRJ2kqol4AgXgdNLBJNOZ/tur/V3vPgPqP6NVTRlCgM6Hkx4jz/EmsmiM8rv2e1nJlqR26uxMDPzyU7f/7TCSUL5QGkHPCh2I9Bp4w9ZQtoUbeWTvDPrAxbXZEI4iDwaP4XTUjA0h+dmeKaYeMaLxHHlO9Ux0s0Fm/vpO9txgSNGoJ2Khyx7BAS+LWLRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A+YdaZYtdFVyeVuI/irLI8X5/pacT8Cd9YWrdrOdJRA=;
 b=WO8pIgfKpy/CKoCiXR2MhN75jS3xjIXrXCwuDknoNLzHpI5k/IOrRXl/e1Y8Ykeo99qT4bZ02/AkWx7BqD3BVMx21JweJc9KglQ0VQSgotCZlWxdhzdEq7oyKqqL57mEj8BLvCKOVEvpVCx1IFQGRJQ/E2EAvL9qBKG1bWMpJkj0RQp2AHlC+1GsDG2t2qN0MFBFFovOqQrJWN+DFZ8Pi5d//JG3Px/WscdWZ68a2RmDIPTErwLFQL3TlPqumyIRLhBSMKvgnna/Ij1MMdRqdfc99RMAJw8/NJBt8E7AVkqPDjQYn5C3abl2rED3TvODMTjyh6PtfOeoUE9yEIxzzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1EUR03FT047.eop-EUR03.prod.protection.outlook.com
 (10.152.18.58) by VE1EUR03HT118.eop-EUR03.prod.protection.outlook.com
 (10.152.19.90) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.11; Mon, 6 Jan
 2020 20:49:29 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.18.51) by
 VE1EUR03FT047.mail.protection.outlook.com (10.152.19.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Mon, 6 Jan 2020 20:49:29 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 20:49:29 +0000
Received: from bionic.localdomain (98.128.173.80) by
 AM6PR0202CA0044.eurprd02.prod.outlook.com (2603:10a6:20b:3a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.12 via Frontend
 Transport; Mon, 6 Jan 2020 20:49:27 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 12/15] ARM: dts: rockchip: add vpll clock to hdmi node on
 rk3228
Thread-Topic: [PATCH 12/15] ARM: dts: rockchip: add vpll clock to hdmi node on
 rk3228
Thread-Index: AQHVxNLKqcAXKFIB4kWzhI86odn8Gw==
Date: Mon, 6 Jan 2020 20:49:28 +0000
Message-ID: <HE1PR06MB4011C04CC6107E2EC0696E91AC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
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
x-incomingtopheadermarker: OriginalChecksum:744B46965BCEC379E2768CE590DA8F2BD04A59661322E3C38B4DDC1953E2F1FA;
 UpperCasedChecksum:BD049B6A67A2EDA589E51468867EEF4B53B8412CC05382C0EE0F26BF9C4E9C9A;
 SizeAsReceived:8196; Count:51
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [91rEW8ftuDEtVolZA6ZRrwLISVymYVXb]
x-microsoft-original-message-id: <20200106204914.6001-4-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 51
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: aa573841-4b63-4a62-49fa-08d792e9ebe4
x-ms-traffictypediagnostic: VE1EUR03HT118:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6nes0s1inIS4W/WJRmR6cUvZVGQ2CvMOmYdo71F6kJvQ4/4dsfr0+peZBArDThdC/oNrdH6HNraHktLZrBHrtUzaXWPm6qH9PfYeBFe+0XiJZLwr9z3SJuNXGTd+auGwuamrDBLdIhcP1peUazKGyuqLgXwlt+tEoEKUBnyZyrh6ze9L+Qf9eW3rhqu8UwB2
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: aa573841-4b63-4a62-49fa-08d792e9ebe4
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 20:49:29.0420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_124933_163125_B3AC82EA 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:821 listed in]
 [list.dnswl.org]
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
 arch/arm/boot/dts/rk322x.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 340ed6ccb08f..16ad240d5f7f 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -639,8 +639,8 @@
 		interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 		assigned-clocks = <&cru SCLK_HDMI_PHY>;
 		assigned-clock-parents = <&hdmi_phy>;
-		clocks = <&cru SCLK_HDMI_HDCP>, <&cru PCLK_HDMI_CTRL>, <&cru SCLK_HDMI_CEC>;
-		clock-names = "isfr", "iahb", "cec";
+		clocks = <&cru SCLK_HDMI_HDCP>, <&cru PCLK_HDMI_CTRL>, <&hdmi_phy>, <&cru SCLK_HDMI_CEC>;
+		clock-names = "isfr", "iahb", "vpll", "cec";
 		pinctrl-names = "default";
 		pinctrl-0 = <&hdmii2c_xfer &hdmi_hpd &hdmi_cec>;
 		resets = <&cru SRST_HDMI_P>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
