Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4072B55D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMWcVv8tICjC6N5Azcko8KKubOZUzw7eEe9SX+1VG9I=; b=E2LuS8jo6bcYlj
	mP5CoiHGSNyVMM/hhV150rRkM8qeQKi3Nn1iUS/56paoIfzhRV5ZfZeOzrfnDLslEubzX2eijHn4l
	zrS3zV65iOC034LT7bhXnWxeq+HOJPbL6c4orkNyuovU3MY883/xdVUt7qDGAJK7Xl0A5IixKmSqo
	6cJ69BxKPWlaev/rVjSCjkOZ2MJbw6QazbnvG0UkZ/ThRD9bEaBBcD+rkOJ5ikgygLB8eJyNZrfd6
	66I0RgPhntAcHGnelQWXgjJKDWkl/iy3A5IFuiWzhRSu1pXS0WjG6KLbRbu25Nl5k6OZ2f4wmybKy
	lG0/2wt8U+nFvCGIoDnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEog-0003wX-24; Mon, 27 May 2019 12:33:26 +0000
Received: from mail-eopbgr140047.outbound.protection.outlook.com
 ([40.107.14.47] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEnk-00021V-18
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:32:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z1tNCt1Zo2Elml1aZsL4ncYgBz1AR7VKcCef9PzKego=;
 b=dNrHQxEMEgU782kgomGo/Vpdjo+SDLbXhvq9ddT3MZoingEBuNRXQr6WgOeg8xWBz5mbAmx6I3r/Y8PLznZdGiWMTv88FcNNakXSRwHOUXr5AT9BxkOb82uAxokcqzaXzUyz4QQ6JTJeSfXRcBsVJYiwlWZCBJUhOFaChb0w5to=
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com (20.177.34.92) by
 AM6PR04MB5094.eurprd04.prod.outlook.com (20.177.34.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.20; Mon, 27 May 2019 12:32:15 +0000
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::55a3:c244:9ba:6d21]) by AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::55a3:c244:9ba:6d21%4]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 12:32:15 +0000
From: Pramod Kumar <pramod.kumar_1@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "Michal.Vokac@ysoft.com"
 <Michal.Vokac@ysoft.com>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v3 3/3] arm64: dts: frwy-ls1046a: add support for micron nor
 flash
Thread-Topic: [PATCH v3 3/3] arm64: dts: frwy-ls1046a: add support for micron
 nor flash
Thread-Index: AQHVFIg34aXFnhi0tE2hBO7a9Re2Cw==
Date: Mon, 27 May 2019 12:32:15 +0000
Message-ID: <20190527123404.30858-4-pramod.kumar_1@nxp.com>
References: <20190527123404.30858-1-pramod.kumar_1@nxp.com>
In-Reply-To: <20190527123404.30858-1-pramod.kumar_1@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: PN1PR0101CA0055.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:d::17) To AM6PR04MB5032.eurprd04.prod.outlook.com
 (2603:10a6:20b:9::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pramod.kumar_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b33d148b-bfc3-42d6-e72b-08d6e29f5982
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5094; 
x-ms-traffictypediagnostic: AM6PR04MB5094:
x-microsoft-antispam-prvs: <AM6PR04MB509450DA952BCDD85AC8F43AF61D0@AM6PR04MB5094.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(346002)(136003)(376002)(39860400002)(199004)(189003)(68736007)(476003)(2616005)(4326008)(2906002)(86362001)(2201001)(486006)(6512007)(102836004)(6506007)(386003)(76176011)(186003)(52116002)(110136005)(54906003)(26005)(11346002)(446003)(66446008)(53936002)(66946007)(73956011)(64756008)(66556008)(316002)(6486002)(7736002)(6116002)(36756003)(256004)(99286004)(14444005)(25786009)(478600001)(1076003)(4744005)(14454004)(6636002)(8936002)(8676002)(66066001)(5660300002)(50226002)(6436002)(81166006)(81156014)(71200400001)(71190400001)(3846002)(66476007)(305945005)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5094;
 H:AM6PR04MB5032.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: l1yjUCJyoMLeXgkuqJXEUxGfkxnwoYGAP6cjtmddZmW3e+/ahh2wpX/aJbLXCNCZK1Chbr/GzNI/YZXJAQQFGXCmGlf4B75gcYapE8Riq02vGvnRwBQBKJrYylN827kAw1DwBpZC8DevTI2NDwzu7ATWn5/KFd95+MYaTdaDNRvYTTmD3tDvmBBpPH68UII/OPCG6LeBVHQ/LlxRpp5eBQR3B5peiI/BPAuDcb0Y/ZfFshCXaTMr6/O3In8k1wX9daPodJhh0dBtr7xzQXyvBrSBAUGvuOezfDL29B/leQ0DuClwWHjTuqeCRdiA98azj9wDKfyWsRTJHqSAnFLk3CUkdXCU7GOMgm19iZJOzUUB4ZNyHRerHYkBf2kl9cHBzMh9D7bWk3Jew3nzQax5kNjvYBAYAiMLqaDqeETI0ic=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b33d148b-bfc3-42d6-e72b-08d6e29f5982
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 12:32:15.3229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pramod.kumar_1@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_053228_211664_A4E641CA 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Ashish Kumar <ashish.kumar@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add micron nor flash support for ls1046a frwy board.

Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
Signed-off-by: Pramod Kumar <pramod.kumar_1@nxp.com>
---
 .../boot/dts/freescale/fsl-ls1046a-frwy.dts    | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
index cda49988d8b8..0f626c986a9a 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
@@ -2,7 +2,7 @@
 /*
  * Device Tree Include file for Freescale Layerscape-1046A family SoC.
  *
- * Copyright 2019 NXP.
+ * Copyright 2019 NXP
  *
  */
 
@@ -113,6 +113,22 @@
 
 };
 
+&qspi {
+	num-cs = <1>;
+	bus-num = <0>;
+	status = "okay";
+
+	qflash0: flash@0 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <50000000>;
+		reg = <0>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+	};
+};
+
 #include "fsl-ls1046-post.dtsi"
 
 &fman0 {
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
