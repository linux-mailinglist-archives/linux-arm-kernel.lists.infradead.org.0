Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E973C15D74
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:34:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWRhi3mG9+1hp6FkGprKqMvRkh57WyxUPh//2mG5cJY=; b=DxuO3xVDZ6F5Dl
	cfYh6QsZHb/8Frm5ZCrkO2gj0RS6AOe3jsq/+EOi6JYc9YTp7AAWdca1oSmVmV8ENakNPdQ0DFdEj
	dFKWZjjeXsg701jdHoPXs+TLdX0fN1mIxC7WnoaAUzdaPYY9Gk6A4FTn/h83hCbpZcC6vWB2TyzG0
	MU3zg/x3b6N5hT1gbVrrVdpeZffNZyMzDPHdmK/arLJruJb87rQ0TU2vBTcp+tDr7w+CD+S75rcea
	LigJTbwlxMlMAWs/m5w0tV5xdrHe3GfRtUfl9F1GD+aZMv974yxD5WtLw2gZpIQn5TWkKNDnhONmW
	XremnVQ3MbQdThDo0rjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtgd-0007pD-Je; Tue, 07 May 2019 06:34:47 +0000
Received: from mail-eopbgr20068.outbound.protection.outlook.com ([40.107.2.68]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtgM-0007fc-9h
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:34:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rA90w/6uN7a5+J4+RmdtVnct8pd5HxVkND4MH67bW9U=;
 b=hggdLplRh4MHNXFSbJPZCADwE0TbDh2UCMJY6qkFbpCIFRKjlIYTBBywgbj6QGk7bFE3yS/bPQ/DpxObYDog1kt6I0xugsyALKpjCiFJv3Q6W2od9I06rIzoQVW+g2eGDXtooOvzbGF5I34azfsZpvu5UKGmO+VSpAranNjgeKE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3771.eurprd04.prod.outlook.com (52.134.67.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 06:34:25 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 06:34:24 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/5] ARM: dts: imx7d-sdb: Assign corresponding power supply
 for LDOs
Thread-Topic: [PATCH 2/5] ARM: dts: imx7d-sdb: Assign corresponding power
 supply for LDOs
Thread-Index: AQHVBJ7peeLpD0EGKkSdoz3HCqEg/Q==
Date: Tue, 7 May 2019 06:34:24 +0000
Message-ID: <1557210565-4457-2-git-send-email-Anson.Huang@nxp.com>
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
x-ms-office365-filtering-correlation-id: 43319bfb-3615-4658-2ec8-08d6d2b60bcb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3771; 
x-ms-traffictypediagnostic: DB3PR0402MB3771:
x-microsoft-antispam-prvs: <DB3PR0402MB377103FDE1DB6BC35BEF11C3F5310@DB3PR0402MB3771.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(39860400002)(376002)(346002)(136003)(189003)(199004)(6486002)(66066001)(68736007)(26005)(386003)(6506007)(186003)(102836004)(86362001)(11346002)(2616005)(446003)(76176011)(110136005)(14454004)(316002)(2201001)(52116002)(2501003)(5660300002)(99286004)(6116002)(2906002)(3846002)(4326008)(6512007)(6436002)(476003)(486006)(25786009)(36756003)(256004)(53936002)(305945005)(66476007)(66556008)(64756008)(66446008)(50226002)(478600001)(81156014)(81166006)(8676002)(8936002)(4744005)(71190400001)(7736002)(73956011)(66946007)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3771;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZDw9oSll+D3ZO0fBJUeDpfnQwo3IBIZ6a6OzqIfaRyD5DjEBLo1QsfejKS3ALX2kF7+j+Cov1i7jGQqnr2NoC3nwhZa8nnvL0WA1uQl3QOd6C4lqCAui0cEITwVKofjQ7kaZYuAabuQgMZRegU2cB89EzgnIuWM8dcTSghsoWHiZ1d4E9c41rdCmPPrz04YlqCWp+aDNn/p60YgUV5kPiZIWtVWPUf/TMNn3qtOgHFXQMACTBt5rWaGjE0wTewrkpSoPKDjCu4XhX2Q2wVtcsbzAJtBXUITbyQ+4tjrgXlOtXB9BiQx1t0/4G2JlOGSYJ9ksGymZvMvaUX45VpI6USizr7FubPxkAdqPExrsjF/h59bnawtKUQ0d20C+g8qvJ8tiIt0LrFuoAyuooJ1KRGmQDGL2qWa38o9sem1DjfE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43319bfb-3615-4658-2ec8-08d6d2b60bcb
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 06:34:24.9063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3771
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_233430_334545_8A9FCAAF 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.68 listed in list.dnswl.org]
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

On i.MX7D SDB board, sw2 supplies 1p0d/1p2 LDO, this patch assigns
corresponding power supply for 1p0d/1p2 LDO to avoid confusion by
below log:

vdd1p0d: supplied by regulator-dummy
vdd1p2: supplied by regulator-dummy

With this patch, the power supply is more accurate:

vdd1p0d: supplied by SW2
vdd1p2: supplied by SW2

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx7d-sdb.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/imx7d-sdb.dts b/arch/arm/boot/dts/imx7d-sdb.dts
index 202922e..efc83bc 100644
--- a/arch/arm/boot/dts/imx7d-sdb.dts
+++ b/arch/arm/boot/dts/imx7d-sdb.dts
@@ -379,6 +379,14 @@
 	status = "okay";
 };
 
+&reg_1p0d {
+	vin-supply = <&sw2_reg>;
+};
+
+&reg_1p2 {
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
