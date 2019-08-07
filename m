Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB9D84FAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FdLxAItgTrcHzGKKsFyi2M7+qK3XUqeO6GXOVtrRDoo=; b=Ivin07WRjSQasn
	hD29OnmiDUx9O52MwnT6rpWDPoE4Vb/hD5LLqX4ww03sXCpnHcP+MhIQNZYb7LUgMhwm151ICn0uT
	pZN7ihBXVzgXI4lXbG2XTAvqegifL6fxWRwZ3O7KqDt7LmskGm84A2tG88QM6YAMDfk/yfcWJfNqQ
	Di93WypkLqNU+xQYTsn3AkTiYkAXd46kuFDe9Vf6UIP15h4jYPi4BqPeLwsn1QUwF3PLbtHUWd5gf
	9HAeCYG0Y95o4T7lnyI+MM0jfbqewVARdty9ekg0YwNbVdz8+qTeVVSX7c8YYfIjsy/nMfT8Q4GLO
	SiNHsB/tHuM/yI0XvFBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNkK-000078-Mg; Wed, 07 Aug 2019 15:21:00 +0000
Received: from mail-oln040092066055.outbound.protection.outlook.com
 ([40.92.66.55] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNk3-00005t-EA; Wed, 07 Aug 2019 15:20:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G9DOMQJzXy6jhDig06sGEAWd0KzlFRj6vvh58xW//YGQ04R21lVXw6ugdAtipp3G+EmEsbOu3jv+SthccNkmXO4FHrnon9SY923BYHz1xgrfwAgJPNOLc/sjo26pF7oCwXA/JfkgQ2WJ8hGyWMlY+aY38dUnEYQq8NPT5KmBCRBQyGLM6L4YeEcVhCRi5F5lWKpBznrcIvtzyuYAqSRd3QwVEJZ2vP01g/ffYYmYOIopVgmCzYwZPEp7znCAIRjY1V9GTOkI91ldn4oF19zunEe4wbS1tDv0eUEXROOLz0kiATx81QnJybVQwtK/iLdvVFFXN/17yAs9g7/Bn19xeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Bzmz6JAJABeGDfKHSFC/qcDbDyJ4nXxfH6UQAwPt+E=;
 b=EbFHqVkGMfbVyVfFc3RU4pVbTZnvQHOUyMu6UFSBAFXUwqKr1mEfaw6l9wVn8XHPQYpUMmOet5GMW5J2l7q/4vLeE2ceZJZYmUQ45z2IfKLhW9pieeUo8vxxIVdh+vZ55fO+hYtRu5401RfNQLWg101z9QgS6OHsfU99TabUxAGYnVygY76QnLw2+AOxVmUFaAwJ+WMO3YxaKO3KeO1eiOfC3qDEvoQgO228yBEw0bXgdYv3jXAuMqbcIsLxpKNFmnZsIYIsYeYRgQ7NZxvW+tpG+gPMULyFBvyZ4kFcaYCknnB/kZR7a88yOg84yyBR8aKIObleHty7SiutgqonvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from HE1EUR01FT006.eop-EUR01.prod.protection.outlook.com
 (10.152.0.56) by HE1EUR01HT122.eop-EUR01.prod.protection.outlook.com
 (10.152.1.1) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.15; Wed, 7 Aug
 2019 15:20:38 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.0.52) by
 HE1EUR01FT006.mail.protection.outlook.com (10.152.1.228) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15 via Frontend Transport; Wed, 7 Aug 2019 15:20:38 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b952:7cd2:4c8d:e460]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b952:7cd2:4c8d:e460%4]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 15:20:37 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: add rk3328 VPU node
Thread-Topic: [PATCH] arm64: dts: rockchip: add rk3328 VPU node
Thread-Index: AQHVTTOqR/yPgY03KEu/f+KwFBBdhg==
Date: Wed, 7 Aug 2019 15:20:37 +0000
Message-ID: <HE1PR06MB4011E3DA40C22EA9FC337F53ACD40@HE1PR06MB4011.eurprd06.prod.outlook.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR04CA0006.eurprd04.prod.outlook.com
 (2603:10a6:208:122::19) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:C62F470D13F780024DC0EE67DCE75F45A959B9276655FD6FD04CD6A47E7B0097;
 UpperCasedChecksum:309B4660B71EF822C02C68E7E7595EAEF489CB81732F542802F21F3DC2FD089B;
 SizeAsReceived:7663; Count:48
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [oFpzqd3NBkQfXc1ovLMhDw56mhQyrtWI]
x-microsoft-original-message-id: <20190807152024.12640-1-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 48
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR01HT122; 
x-ms-traffictypediagnostic: HE1EUR01HT122:
x-microsoft-antispam-message-info: rD9S+CquK/XK7ji4AdVCrGd/yrwAu1o/62zjyRfBvQlXAj7XACW99/2DdU40vtDABvpK3SHnKgjBxSDzQtxhoB/LZMtJSO3vfPl4tfk0rfj5YsYLFvANLpViPiOE783PZn1aus0tkASdI2NqQAEKf1F6TXfzFJTnsQfHaSoWsQlmd/GV2QB+VqfmRCUGe050
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a6943f66-c99c-4334-7fdc-08d71b4accec
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 15:20:37.9209 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_082043_480594_0652D387 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.66.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add a VPU device node for rk3328.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index e9fefd8a7e02..4a175fff2861 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -278,6 +278,7 @@
 			};
 			pd_vpu@RK3328_PD_VPU {
 				reg = <RK3328_PD_VPU>;
+				clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
 			};
 		};
 
@@ -596,6 +597,17 @@
 		status = "disabled";
 	};
 
+	vpu: video-codec@ff350000 {
+		compatible = "rockchip,rk3328-vpu";
+		reg = <0x0 0xff350000 0x0 0x800>;
+		interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "vdpu";
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vpu_mmu>;
+		power-domains = <&power RK3328_PD_VPU>;
+	};
+
 	vpu_mmu: iommu@ff350800 {
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff350800 0x0 0x40>;
@@ -604,7 +616,7 @@
 		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
-		status = "disabled";
+		power-domains = <&power RK3328_PD_VPU>;
 	};
 
 	rkvdec_mmu: iommu@ff360480 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
