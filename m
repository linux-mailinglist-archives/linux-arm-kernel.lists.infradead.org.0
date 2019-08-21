Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A866981D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 19:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LuJSaNyCUOxXU8ENMBXyhxKOmpe6A5I7Dm/z0t3JiPY=; b=IHZ8PaApQT64lr
	0Hhq3viTVJsqpqP0qVzANzlkO7SpugX9lhKO0XDKkjUkGw+nPPJTxtgIyG/Cb5igYH3J7kO9k5PSq
	pOAzVrwUlC0mzOqVg55pTY9G9uB+bR9RpRsqYNfB51aEBXbMEEqONReQR77R4H6hZtKl0UhvSRscz
	apxRi5zJw2PodYHzxs4+7B44SGSmx2CuiCNHDNvcKxongmhewDxasZ+WoND4qQIDn3HAc/d9bGPiE
	SPEIT4WG1h+x5Wp6/K4o/PuksygrAgI4SRmx55RFxeh16dKEQKEMh6LYtvJ1FSsWkRSjXXu1ZvcO2
	tZm4Gux/rr0BrL7+MppQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Uou-000478-OW; Wed, 21 Aug 2019 17:54:52 +0000
Received: from mail-oln040092065090.outbound.protection.outlook.com
 ([40.92.65.90] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Uoj-000462-KF; Wed, 21 Aug 2019 17:54:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BwLj7SIEAPRBvxxzjsjEqMlgslqDfTd6mvM6kWaBfMuALkRhDzQXHG8R2+sdtlsWzTZl+rfDOwonOZfRj6/sviqtspby8XEklusfhPCpKXxhM06O9sO0N7eMnnISdtG/4xN5ePfwAtNryGaSNgI1SOTp+4mmtnqt/gT6hGbftOXXy1MvGZBOBATJxrFiBGS7Eps6aM6QEWrP/vhzx2cVCv9S42Ydy+/m67G95UKSqtwntuwM+u2Q7wUiIAS8Wvv+OsNcCbTM0GYng1Rc9ITkF0Xyyy/re4vI635SuQ8xd0zNtq7lTPvn+XnVRhGPooqe80ZihATtvzlxi5GKDG1yjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2C9CDOUkw5AUgGLevr93sIeG2zpXiizo6oJblli579c=;
 b=EMpAD0dTHaEXxyfk6VH+uKi/pN5oJ4nEWu9ZXu+MySFsZEkvmXduImrbIrKdZ+XnRDqQb9JxqtQw8Vvm/4bH1qkIcG7KnM6DVOUFJHe63qP4dvSoO1gf0NAkrZXQ1tspmRukS1mpKRHrgc6DInxiBMvsF2MZUwvikTBn/YneaC8NLaI0FOUGKtdnXkL4H4DUqEkrjjolr8lNOGTg7pawO9nGYd655s+RatBb8ao/gPloHqEB3LGOBXPco2XAClQRqYo5XhrtG3ptvpZIZHG2vnSMi65xmedip3LBeoWIVDTP/vkkeNTokxwmzQboKud4/4WuyH3LdE4UE+MezfFORQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DB5EUR01FT062.eop-EUR01.prod.protection.outlook.com
 (10.152.4.57) by DB5EUR01HT118.eop-EUR01.prod.protection.outlook.com
 (10.152.5.110) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2199.13; Wed, 21 Aug
 2019 17:54:38 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.4.57) by
 DB5EUR01FT062.mail.protection.outlook.com (10.152.5.167) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2178.16 via Frontend Transport; Wed, 21 Aug 2019 17:54:38 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088%3]) with mapi id 15.20.2178.020; Wed, 21 Aug 2019
 17:54:38 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [RESEND PATCH] arm64: dts: rockchip: add rk3328 VPU node
Thread-Topic: [RESEND PATCH] arm64: dts: rockchip: add rk3328 VPU node
Thread-Index: AQHVWEmA6lvnoZnzvUCVSolIcGQxRQ==
Date: Wed, 21 Aug 2019 17:54:38 +0000
Message-ID: <HE1PR06MB4011C8496657B2C267A66327ACAA0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1P192CA0024.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:fe::34)
 To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:8C597AB4DD1E128AEEBEA014BF3F741B080DA9DBA481AC4D4EF99701F697DA34;
 UpperCasedChecksum:DDD5D99217A2DE2D00F8877F259A52C93BE75208C2E67B43BC98D7A94D9CF410;
 SizeAsReceived:7564; Count:48
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [qMVoivsCgaVQsd1Esgpq1b+VOhhNa+a3]
x-microsoft-original-message-id: <20190821175425.17132-1-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 48
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119158)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:DB5EUR01HT118; 
x-ms-traffictypediagnostic: DB5EUR01HT118:
x-microsoft-antispam-message-info: GBcsDMx76XzvwoMP4GtlUNcLXJFEX3mAah4xw5woDVmuwKp04Hqo3vTzrMA/KxK1UQoRRF35RerY/BQcKXyUhiJGNQ17BackEswPkwQpMtBBb2+XWE/IYaJGm6kkZ5QUUmgSAqGaTbZsBU30ZrSxnM+pm8dbAGwGZjpOvjoGai0BN6qndomE2aoq3M3SFGlQ
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: bd19aa3b-26be-46c0-8ccf-08d72660a25d
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 17:54:38.2018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_105441_676924_F2A88271 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.65.90 listed in list.dnswl.org]
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
 Jonas Karlman <jonas@kwiboo.se>,
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
It would be great if this can be considered for v5.4,
related dt-bindings commit has been merged in media tree for v5.4.

Decoding using hantro driver has been tested on a Pine64 Rock64 RK3328 device.
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
