Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE47C15D7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/MY+sfVfHye+1JmsbDgeLvs4NbuDPXYafa47m0IRjU=; b=oX9IDMs5ImB3cZ
	uIzlHf3Yxw1RlZ7FdAxHphVXmKksVrOM8Qx0LDcdtdamCJ3b2R8kzUablTYhBHzvZt6UWL2Yr9/Vg
	F8uGhKW4e+di4gPinV0yi70fKFpvLbDkxa1mZkx7CYVbZfWSMe72I3/XqTe+V44L1WeDA8AJmYcEF
	h5PnvC5skWaaCe8w2iYTgci5LSEnHI9Lt2NSsEgrlgn2dMzvmVfDwgAd4DNnwAP48SFLsX/gkP1vR
	g3sPbOTYQFAHg12k6C6w7/qEuREN7qrJhfpNtsX7zKk+juAMn1Uw9DlDvFNn1CRmiDxyas27MvEKb
	vMsVCXRktkWhPVm/fy7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNth6-0008N8-V2; Tue, 07 May 2019 06:35:16 +0000
Received: from mail-eopbgr20069.outbound.protection.outlook.com ([40.107.2.69]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtgS-0007kl-Lk
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:34:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=irwAQtzDqb8H/upB8X/rIf2Q6cCoGyAO+mMYLq3mc0k=;
 b=DNImPYDdadnirOpXWbY1XvM1D+axiBOwXzsK4mad/qUkSiBl0wjbBRC65xt5QHMXEujSbBFMf7g+3mz2ruYkGpkaxyYP+dSRoMSBCc4R5XhWr+AxBpzmfDS77gRpwo0CTnp8jA0eJ5UuQ0CdCAL33rO5tUouk8f0DOIkTxz0XRM=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3866.eurprd04.prod.outlook.com (52.134.71.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 06:34:33 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 06:34:33 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 4/5] ARM: dts: imx6sll-evk: Assign corresponding power supply
 for vdd3p0
Thread-Topic: [PATCH 4/5] ARM: dts: imx6sll-evk: Assign corresponding power
 supply for vdd3p0
Thread-Index: AQHVBJ7uVmO2K9BxTE+S0xAOeBLBgQ==
Date: Tue, 7 May 2019 06:34:33 +0000
Message-ID: <1557210565-4457-4-git-send-email-Anson.Huang@nxp.com>
References: <1557210565-4457-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557210565-4457-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0302CA0014.apcprd03.prod.outlook.com
 (2603:1096:202::24) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1c7dea28-302c-43e3-b297-08d6d2b610f1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3866; 
x-ms-traffictypediagnostic: DB3PR0402MB3866:
x-microsoft-antispam-prvs: <DB3PR0402MB3866A2B0328C093991F022E7F5310@DB3PR0402MB3866.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(376002)(136003)(366004)(39860400002)(189003)(199004)(6116002)(3846002)(8676002)(52116002)(36756003)(66476007)(7736002)(6436002)(6486002)(2501003)(2201001)(73956011)(66946007)(66556008)(64756008)(478600001)(66446008)(2906002)(316002)(86362001)(66066001)(14454004)(110136005)(50226002)(99286004)(8936002)(6512007)(186003)(76176011)(71190400001)(4326008)(71200400001)(68736007)(53936002)(25786009)(81166006)(81156014)(26005)(256004)(102836004)(305945005)(446003)(11346002)(2616005)(476003)(5660300002)(486006)(4744005)(386003)(6506007)(138113003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3866;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LkAD8G4KT5iSdxGUyV6KZSmYbIKf7wcQQ9+WRczpbJh9vkeAq2dSbNtgayD5UVGooNQYlwea0zh8LZ6ZHzvJy0hDhil4LWhCO7RW0eUAHSFBY4FV4F0+48T4Be+Q2yQ0cFw2N4lEogsrimGXROBkAm0HHEbOQNXZJz4TcmAiXfD/u/MNSN9mLB5ane3fUoaweaPs3XvKTFQaQnJ24Q7nlLp51bSrRWVg3u4cveg2R3apoLx2Z6fXJd7FLBswE2dLNCm1jDxkh/LnFavBjQwT0tJhIuXMIms1vPwMGh2rIP7m8VqkVbRwSHS8WKoiFSnd0lMrOx5NxGt7lgJuDm+2dVFFnWuS/R01yFnrKmVyQV6qOjjjVIu7bkz0UuNkmIg+YG4pBIRg49oqhUsglGzFIN3QdEFtn2HWHXBAOKCKlrE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c7dea28-302c-43e3-b297-08d6d2b610f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 06:34:33.4703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3866
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_233437_070513_6AD5B6A8 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.69 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On i.MX6SLL EVK board, sw2 supplies vdd3p0 LDO, this patch assigns
corresponding power supply for vdd3p0 to avoid confusion by below log:

vdd3p0: supplied by regulator-dummy

With this patch, the power supply is more accurate:

vdd3p0: supplied by SW2

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6sll-evk.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/imx6sll-evk.dts b/arch/arm/boot/dts/imx6sll-evk.dts
index 4a31a41..78809ea 100644
--- a/arch/arm/boot/dts/imx6sll-evk.dts
+++ b/arch/arm/boot/dts/imx6sll-evk.dts
@@ -265,6 +265,10 @@
 	status = "okay";
 };
 
+&reg_3p0 {
+	vin-supply = <&sw2_reg>;
+};
+
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1>;
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
