Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53415AC423
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 04:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QB6jPK8HuzPX0T3f9fWWN8gbPawzydEBkjDUBhnfU6Q=; b=eojSiCYIXCd8W0
	P4K/YJVd9PW57y5CGBgOBTdpIyiKqwVRC1vjIr45zX2hUjHFo/9sDNIQsHusgQ5ikl6rn6gPEMAZh
	H6zBnC5gzTxoTtZwhih+JrbGMuuaJk81JWN9CvGOAM6Y/emCm/SfsWBxLBKoAByWUBscgLtTns02h
	XKuvlGqvcLiPOglALzsHT4V9zzBzmr32lWdaNsVnlL4RtwQt5sV6yB47dLA22eZf3G3PobAyOIQ6+
	wFbY6ry1tE3uBI7WhnzbzJ6p8l7txWSJXnh16bY2AP5da4fccFog61M4kmDtokK002PioXM5E+SdN
	BRRAqkmys6EllNyS4h9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6QmG-0005kc-Pl; Sat, 07 Sep 2019 02:48:40 +0000
Received: from mail-oln040092010100.outbound.protection.outlook.com
 ([40.92.10.100] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Qlm-0005hD-Jb
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 02:48:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jr0nux1RjeI9Oxx6N01kkezFHE6R/FqP8632BVTI4BmdWLhM9qptJ5As15zjzfnQLyzxuuUG0P/WX4jkvuFy6OegtnY9LqQZNYiInnylQ2qfrqa5ux+BQGR8ebMgCyIKtK1wQSqqYlOamgB6OoC8PsW1dvf9jfmvaqIrn3Q2p8faCW+fgoVahgSzSShChhnIo2yjb04u/1hBhqQagf9toD6DJ9sDNkkQq14jquBw2qt/oRdbFKY2kcvgAo8pXEFyPY+/2ysAZlOWS8NRZbYuWabv29Y9FerCL12Tq8kAJ6lV6rb5+rj0MGqgKioinAtGPtP5h91/of050bo0SyVQaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FxOXISNPzb95+8dD1LbBRAnku3xdwuI6f2QQZAPArSo=;
 b=CTITFP4r+78E+BYQQpcLXL7O5UR/SxHza3ESR0K7AB86Pb8+f5NF8xhXdWlg6CsZzQQuFl61hoCUvCJ+bBOfcEfXgV0u3gGcr/RNiD/AMBW+gi4Kb2u5baMrXxIxa/L9EpkKAVyqmhwqEnkxDosvDHCNkCn6TTIDFL6y8/7BkwJE5Q15Wi9H2O69UkHeMNxD1UUPVQP7FGMc3OEGPpu8t58l61z1GVP1QlxcNmX7oDU0JoioOOrXBXbuDBGY/S2bM7itiWE+vhHH41Q3YIpvb1JK92Bo+FUYTBn052kFL/AxmdD8+McvEf25vCs+op7Jhm0NgxGIOS4erRvYRO/wJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FxOXISNPzb95+8dD1LbBRAnku3xdwuI6f2QQZAPArSo=;
 b=lQsO4JLjYWrQKY7LXUz5elpQJWgnaY8xaGfwtNOJLy0rpQ5rM9qLqNZySYhEq5pCA1Cyn4TPVeTKV2myAcTrPjc9QyDljehDTLU0wuF+OZwXqyZ7Xj8dXOPdjorG69S6vfrM9BqO/eMsBzFqe5pJXtzSWB7+S5lUr5SdVJPsRd2Ebnlu6d2HX7uefSSZMsDgehuKLRGT7nqA1PuqrheQZRunYDcO4QudREjfehrvcSFNHCQnrFigvjyLvHEdwo++QMCsMyXmOr6oSt//rHmhq7fw4OYYldRGmJvqx7KyfhCNkuOhF/UNo/RchXcI/qWYwPzeOT+1zFHtWtunSHbpFA==
Received: from CO1NAM04FT058.eop-NAM04.prod.protection.outlook.com
 (10.152.90.57) by CO1NAM04HT174.eop-NAM04.prod.protection.outlook.com
 (10.152.91.207) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2241.14; Sat, 7 Sep
 2019 02:48:09 +0000
Received: from BY5PR12MB3699.namprd12.prod.outlook.com (10.152.90.54) by
 CO1NAM04FT058.mail.protection.outlook.com (10.152.91.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14 via Frontend Transport; Sat, 7 Sep 2019 02:48:09 +0000
Received: from BY5PR12MB3699.namprd12.prod.outlook.com
 ([fe80::2429:2cff:48e7:4d89]) by BY5PR12MB3699.namprd12.prod.outlook.com
 ([fe80::2429:2cff:48e7:4d89%5]) with mapi id 15.20.2220.024; Sat, 7 Sep 2019
 02:48:08 +0000
From: Yao Lihua <ylhuajnu@outlook.com>
To: "krzk@kernel.org" <krzk@kernel.org>, "kgene@kernel.org"
 <kgene@kernel.org>, "linux-samsung-soc@vger.kernel.org"
 <linux-samsung-soc@vger.kernel.org>
Subject: [PATCH 1/2] ARM: dts: s3c64xx: factor out external fixed clocks
Thread-Topic: [PATCH 1/2] ARM: dts: s3c64xx: factor out external fixed clocks
Thread-Index: AQHVZSau+vjQG28peUivUmwfyzgb3A==
Date: Sat, 7 Sep 2019 02:48:08 +0000
Message-ID: <BY5PR12MB36996A79D9B1EEC5162B00F4C4B50@BY5PR12MB3699.namprd12.prod.outlook.com>
References: <20190907024719.16974-1-ylhuajnu@outlook.com>
In-Reply-To: <20190907024719.16974-1-ylhuajnu@outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0096.apcprd03.prod.outlook.com
 (2603:1096:203:72::36) To BY5PR12MB3699.namprd12.prod.outlook.com
 (2603:10b6:a03:195::16)
x-incomingtopheadermarker: OriginalChecksum:8EB4172B14014E58F06C3C8EA2BFBC7BB1F57B23F939EBFE233BE3BF8BC728D9;
 UpperCasedChecksum:050A4511D5CBEDA8DEDC5D99A42B8ED7914D2B1680BB51764C746F6A4582324E;
 SizeAsReceived:7610; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [x4t/1mEwJRfa4tVKkPmWexh0jiUyREck]
x-microsoft-original-message-id: <20190907024719.16974-2-ylhuajnu@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-ms-exchange-slblob-mailprops: q+fD6XS3/UKOJ1feX6WNJkq4MrmNl6vJ667IAZPSHSAi/vxBpZcet+lUYZl/jG21HYHkBfK/N+xCCDfV89sYgv4U17yqZ40QXvcWE7hz7jMEhdr3XJRfbamYoUNlMS4Y4WX71a/74yf/aEz7thB2/6M67S9Rc/NE33eey8nxoPhRp3kIgTMWuitCzVXpxDgEU2MF8M8/4ICwwd/FaNcbbDlUxwQg2UlfH6qxTw4caILDBWFLt/rVT0Q/0tO5hX8icEujfh8sfAvvBbucDdQjWBTO216YDSwjGOmmTC4uqyYkgRvUOQs/yfgnhbeDh0349CtlPGfI8UomZ3yaGdrjvO2BN28jMIJVraFRpVugQxh8clLMIHLhu/x9l/RTdOOkNpNgwBkuX0NxABqpSBRsPP9MSIgmi7UawBNB3m+f/J9ozHK3/yJIFq/IXvjM/c7Oh7MpLcGCJbCOhiilGvc5Jlx+7abZqxemjCX15Ix1CBLQgsAiS4ITO8WPcMYsnbnRpjArooIu1WkPzAJkV+YvCXupnxB5RzKi/iM0Dean3raEHfoZC9cN3/NSnuhCKqLY1NbJY9/PaBtPh0QtSWsH2pA9q8RZwsb8MXQX/Poo6NnXjG0pq2G1NJVMUDEcCnq9hBlFT3WNo3Y2kbfMZAPbx5DBCJY8oiPRY2mTAPyB7qQbrtD/nIYK+g6gHtkZU22fquLXFYalntsgEZkFUaz47w==
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(201702181274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:CO1NAM04HT174; 
x-ms-traffictypediagnostic: CO1NAM04HT174:
x-microsoft-antispam-message-info: ryu2gt3lninM1dyOtCn+VqPH7KcP1wY3aPSpYhD/xKA73Fv+RutMVWTQhl1cfWkJuRN5czimyR2bFF66vrBrfsUvBEErJFctn+98LSxcyZxex7qNhbY0AOEC6++27hy+vFZOit/yzgJPwSDbcKc6hqu3C5oCMxVfsDPqMU5e0hZ6iRqOSXc1J44onkuj6nIa
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f0ad8bbd-4aeb-479b-6625-08d7333dd0ab
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2019 02:48:08.8666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM04HT174
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_194811_000742_96A04890 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.10.100 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ylhuajnu[at]outlook.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Yao Lihua <ylhuajnu@outlook.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lihua Yao <ylhuajnu@outlook.com>

As per arch/arm/mach-s3c64xx/common.c, the external oscillators
of S3C6400 and S3C6410 are identical. Move them to s3c64xx.dtsi
and place under root node directly.

This introduces side effect of changing the initialization order of
fin_pll and clock-controller@7e00f000. As of commit 3f6d439f2022
("clk: reverse default clk provider initialization order in of_clk_init()"),
clock providers are initialized in the orders they are present in the
device tree unless the clocks' dependencies are specified explicitly.

without this patch:
  [    0.000000] S3C6410 clocks: apll = 0, mpll = 0
  [    0.000000]  epll = 0, arm_clk = 0

with this patch:
  [    0.000000] S3C6410 clocks: apll = 532000000, mpll = 532000000
  [    0.000000]  epll = 24000000, arm_clk = 532000000

Fixes: 3f6d439f2022 ("clk: reverse default clk provider initialization order in of_clk_init()")
Signed-off-by: Lihua Yao <ylhuajnu@outlook.com>
---
 arch/arm/boot/dts/s3c6410-mini6410.dts | 22 ----------------------
 arch/arm/boot/dts/s3c6410-smdk6410.dts | 22 ----------------------
 arch/arm/boot/dts/s3c64xx.dtsi         | 14 ++++++++++++++
 3 files changed, 14 insertions(+), 44 deletions(-)

diff --git a/arch/arm/boot/dts/s3c6410-mini6410.dts b/arch/arm/boot/dts/s3c6410-mini6410.dts
index 5201512054c4..7028507b7076 100644
--- a/arch/arm/boot/dts/s3c6410-mini6410.dts
+++ b/arch/arm/boot/dts/s3c6410-mini6410.dts
@@ -28,28 +28,6 @@
 		bootargs = "console=ttySAC0,115200n8 earlyprintk root=/dev/nfs rw nfsroot=192.168.31.2:/srv/nfs/tiny6410,nfsvers=3 ip=dhcp";
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		fin_pll: oscillator@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			clock-frequency = <12000000>;
-			clock-output-names = "fin_pll";
-			#clock-cells = <0>;
-		};
-
-		xusbxti: oscillator@1 {
-			compatible = "fixed-clock";
-			reg = <1>;
-			clock-output-names = "xusbxti";
-			clock-frequency = <48000000>;
-			#clock-cells = <0>;
-		};
-	};
-
 	srom-cs1@18000000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
diff --git a/arch/arm/boot/dts/s3c6410-smdk6410.dts b/arch/arm/boot/dts/s3c6410-smdk6410.dts
index a9a5689dc462..10a854b488a8 100644
--- a/arch/arm/boot/dts/s3c6410-smdk6410.dts
+++ b/arch/arm/boot/dts/s3c6410-smdk6410.dts
@@ -28,28 +28,6 @@
 		bootargs = "console=ttySAC0,115200n8 earlyprintk rootwait root=/dev/mmcblk0p1";
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		fin_pll: oscillator@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			clock-frequency = <12000000>;
-			clock-output-names = "fin_pll";
-			#clock-cells = <0>;
-		};
-
-		xusbxti: oscillator@1 {
-			compatible = "fixed-clock";
-			reg = <1>;
-			clock-output-names = "xusbxti";
-			clock-frequency = <48000000>;
-			#clock-cells = <0>;
-		};
-	};
-
 	srom-cs1@18000000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
diff --git a/arch/arm/boot/dts/s3c64xx.dtsi b/arch/arm/boot/dts/s3c64xx.dtsi
index 2e611df37911..672764133cea 100644
--- a/arch/arm/boot/dts/s3c64xx.dtsi
+++ b/arch/arm/boot/dts/s3c64xx.dtsi
@@ -39,6 +39,20 @@
 		};
 	};
 
+	fin_pll: oscillator-0 {
+		compatible = "fixed-clock";
+		clock-frequency = <12000000>;
+		clock-output-names = "fin_pll";
+		#clock-cells = <0>;
+	};
+
+	xusbxti: oscillator-1 {
+		compatible = "fixed-clock";
+		clock-frequency = <48000000>;
+		clock-output-names = "xusbxti";
+		#clock-cells = <0>;
+	};
+
 	soc: soc {
 		compatible = "simple-bus";
 		#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
