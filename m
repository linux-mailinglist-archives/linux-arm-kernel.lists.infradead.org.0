Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 062BB19D25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 14:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zVSYJEwqgUftGEmQ3cecAHVldjEiZzm97urE1k6JRNQ=; b=Om+JZHKqkNnq+l
	gHXnFLx1Mo1ai+ohUDBnktLe1/j3rlv2ZAJEG3dTe4z1q8OTFL3T21EJZkjeuetk9qQ41nL4yY+Xf
	mUBZDthqVOHiWlzkQORzkh5NvqMxvfukrCrJxS9dPySN+xP6Cd3E7CWkGCJYQEmK8Z3olZJfYjq2h
	7IOM0Spr3PI8/4ctGcREMlTrmVUYZfFDdbZMPMst0BrAoEd3+IXu9uwXeWOLX1Yrv6Id6cEqNQRuP
	UJtLdwxOBd/woW9aI94AL74OUw7yFBBygXjm3bZlk5tGQnleasOcdxb8d7lj3+zt36B4oACjLjCXc
	k/2l0EyRKghicsXVllSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP4Z7-0008Ng-6R; Fri, 10 May 2019 12:23:53 +0000
Received: from mail-eopbgr50088.outbound.protection.outlook.com ([40.107.5.88]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP4Z0-0008NC-KW
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 12:23:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=47VyM5IIrni7gGQiqmFicQJhymnzHX6UsANSagCiw8I=;
 b=FlmlGncgysB636DPY3KuGJ181FGRwPb286kyDYNb8fKVomqecO6KXO/TP1XNGGivSs5k2Dn13UhLtuZoEwL2QXx3cXwojcf6vPLfqC1JEHobskVLd7t8t+cPNZ9NQj3RYpGzC4YOdLtCe2nfI+P0GwEMy/9/QpnjKH2pq1HmvNY=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3676.eurprd04.prod.outlook.com (52.134.70.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Fri, 10 May 2019 12:23:42 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 12:23:42 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 Leonard Crestez <leonard.crestez@nxp.com>, "schnitzeltony@gmail.com"
 <schnitzeltony@gmail.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>, "jan.tuerk@emtrion.com"
 <jan.tuerk@emtrion.com>, Robin Gong <yibin.gong@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH RESEND] ARM: imx_v6_v7_defconfig: Enable
 CONFIG_THERMAL_STATISTICS
Thread-Topic: [PATCH RESEND] ARM: imx_v6_v7_defconfig: Enable
 CONFIG_THERMAL_STATISTICS
Thread-Index: AQHVBys0pgK+lXcoZEiiNPClktUsIw==
Date: Fri, 10 May 2019 12:23:42 +0000
Message-ID: <1557490722-21657-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0041.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::29) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31c58436-945e-44dd-1554-08d6d54256f0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3676; 
x-ms-traffictypediagnostic: DB3PR0402MB3676:
x-microsoft-antispam-prvs: <DB3PR0402MB367666D21B105115E2E74F3BF50C0@DB3PR0402MB3676.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(39860400002)(396003)(366004)(199004)(189003)(7416002)(53936002)(4744005)(81156014)(36756003)(6512007)(186003)(2906002)(6116002)(14454004)(3846002)(6506007)(386003)(256004)(486006)(5660300002)(2501003)(2616005)(476003)(102836004)(26005)(66066001)(99286004)(8936002)(110136005)(50226002)(68736007)(478600001)(52116002)(2201001)(81166006)(8676002)(25786009)(6486002)(6436002)(305945005)(4326008)(7736002)(73956011)(316002)(71190400001)(71200400001)(66946007)(66476007)(66556008)(64756008)(66446008)(86362001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3676;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wT2IXin/uio7WxC3PLP0a/XEPawSTJ9v0ohdbJ5lPc7bfw7CsJtqHtVR8LzcdWndpJBLLoI+hKUvhWWNh4L7FuvsGtANGaj7uK6350B/70oFOmhfqDkKnCDVb2Ltg30ogiNmZ9tNyL718uBubq4JmxkV7rGu4+QjRhZLIIoM9oRRiKUmr3LICeuBsSXpcutNr5JpcUgg8EWtbxtT/ys31dDd368YEuPDiZqp8gvT40/R+6y4zwu/3PRn+n8hmEVTd+YKSV+/r6yLgG2ed2TFxvGYIMbY0fuKn+qL5l4tikkHFkQDs/4TqrCCygAhY19O8iTAd7or5EhXbzu8QaUM1yw3GhqiJMuuuQq9399PJYjPSphl+7i8Gfa5/e+KnRlf5KaHSBURwRTVOADU2n6DhmbnTc2UsvEsdL25JH5p5BM=
Content-ID: <7C0940655F6B3F449B316FA894F688D8@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31c58436-945e-44dd-1554-08d6d54256f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 12:23:42.6789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3676
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_052346_753786_168BBFFB 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable CONFIG_THERMAL_STATISTICS to extend the sysfs interface
for thermal cooling devices and expose some useful statistics.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
no change, just fix the base64 encoding issue.
---
 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index 765003a..ea387cb 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -225,6 +225,7 @@ CONFIG_POWER_SUPPLY=y
 CONFIG_SENSORS_MC13783_ADC=y
 CONFIG_SENSORS_GPIO_FAN=y
 CONFIG_SENSORS_IIO_HWMON=y
+CONFIG_THERMAL_STATISTICS=y
 CONFIG_THERMAL_WRITABLE_TRIPS=y
 CONFIG_CPU_THERMAL=y
 CONFIG_IMX_THERMAL=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
