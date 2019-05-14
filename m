Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA511C19C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 06:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bz37pDlKJmlD2PNCCykK1roWZOssF3PeiSDxAyIz+1U=; b=IW+NVnOyUXPdHf
	n8NE5NH7pT3ezPIru6wWOHlsBZ8jxmy3PS7lIFUQw10DafUNKgQY0pPdmrW+QeGEHB5x4Y5kjGTc6
	jqtGy9RfmP+sKG5hRK6fOnIFS8/4O7I6baxPbm13poe1tFNoc3NhGEtWzekF8OVMjPcGR+9hIe3po
	eW8YYO1LBivaFF6axDuYjVBPaMf6al0a/HpY488YnlrsikUB5MTQapd9ucnpBKoOZK9SDeKCu57OM
	jaoSAAInXakridVDirnJZtCVtf5cm6Mc6WWrBH48+9wjzO8Nqx+caukdIYVFi3AdQBykRhk/oOyLG
	VyZ5gItN1kSHI6X4ZT9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQPVK-0005cK-Io; Tue, 14 May 2019 04:57:30 +0000
Received: from mail-eopbgr10043.outbound.protection.outlook.com ([40.107.1.43]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQPVC-0005be-NA
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 04:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BqZZaUK8JGU40021vzGXy6vggv81RjTCBm81fC9w7+g=;
 b=ftwWKH/6Un+k0q0cohA7YvMzs9rKVno9XZ15z+Z7fR0CZhPm/7stdlRoCqkpJy4pJRIDig/w9UBd5wBtRkVO6wEA+Bn/Ba+f/Qtz4Q0PUbwv6T6a9jCEsC9hngfEglvCwxb9v4jzzd5GVzL1iwsUsO2wd1h2PDXYRVum/c3t2DE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3722.eurprd04.prod.outlook.com (52.134.70.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Tue, 14 May 2019 04:57:17 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Tue, 14 May 2019
 04:57:17 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, Aisheng
 Dong <aisheng.dong@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm64: dts: imx8qxp: Add gpio alias
Thread-Topic: [PATCH] arm64: dts: imx8qxp: Add gpio alias
Thread-Index: AQHVChGBhvqur/npCUCFDgMod6JPUg==
Date: Tue, 14 May 2019 04:57:17 +0000
Message-ID: <1557809536-749-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0168.apcprd02.prod.outlook.com
 (2603:1096:201:1f::28) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79b7cc21-1006-45d1-b4ae-08d6d828a33f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3722; 
x-ms-traffictypediagnostic: DB3PR0402MB3722:
x-microsoft-antispam-prvs: <DB3PR0402MB3722ECA51717CAF4450D4B68F5080@DB3PR0402MB3722.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:843;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(396003)(376002)(39860400002)(346002)(189003)(199004)(52116002)(68736007)(305945005)(316002)(3846002)(6116002)(102836004)(6486002)(8676002)(4326008)(86362001)(6436002)(26005)(2201001)(186003)(71190400001)(6512007)(386003)(6506007)(50226002)(53936002)(5660300002)(71200400001)(110136005)(36756003)(66066001)(8936002)(256004)(2501003)(478600001)(486006)(25786009)(66946007)(66476007)(73956011)(66556008)(81166006)(81156014)(2616005)(64756008)(4744005)(66446008)(99286004)(476003)(2906002)(14454004)(7736002)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3722;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4V8l0N/tg7DNLYiE7mVV/BrQS6P/XfjaCRPKEiCPUPIx6Hovr/uO6zTZmIKJObRWKk1u6l/J6hRz7lx4zkIQb99//+nW/ndTDLSR7OqI7hxlVN+8RD2O9iESlqnULLYFQjfGcNk+Egf31Z2CTGCQu8aQlRjAHwIpsVJlN/jj1rGcTb6i5u5VXvl6ZZPuX/B6hLdnrF+Bm8IPn+RDNjMFK1cKaLcmHYBc2rA4WPCLE7kjIPR/+tsER3QflsjF1RDqPzhoAq0USPwywlRFmKwm4AcnJeJ7+1ZaowNAIvH2qe9pPkv6N9FdakspsPQTQkP8YPjpruI6jVopCMprY9xSkWaKaUhyf99Gn5U7eVsvq7razdVvxWQekzsySwoP+RON91OfNJCJyzu4Wy6tN5QDlvlWInq7SWbBM5RgzjzvmGs=
Content-ID: <14512C07EAFE424A98EC3DACC8F6E91C@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79b7cc21-1006-45d1-b4ae-08d6d828a33f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 04:57:17.5571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3722
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_215722_862966_3105915A 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.43 listed in list.dnswl.org]
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

Add i.MX8QXP GPIO alias for kernel GPIO driver usage.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index b17c22e..923705e 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -22,6 +22,14 @@
 		mmc2 = &usdhc3;
 		serial0 = &adma_lpuart0;
 		mu1 = &lsio_mu1;
+		gpio0 = &lsio_gpio0;
+		gpio1 = &lsio_gpio1;
+		gpio2 = &lsio_gpio2;
+		gpio3 = &lsio_gpio3;
+		gpio4 = &lsio_gpio4;
+		gpio5 = &lsio_gpio5;
+		gpio6 = &lsio_gpio6;
+		gpio7 = &lsio_gpio7;
 	};
 
 	cpus {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
