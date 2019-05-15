Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AC81E68C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 03:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z0pppoNEGRYbcmm51dgdRRH+Eb74k8ja8p6rU8MWabs=; b=DoMSbAKp4gmb5Y
	tjuoSJWP2kbY2HwmLgQtVs2l2pDkj+ZppnRH3ZHUjJwMgz8kImtFzC8LlnezLjOZh0z259xowWQyj
	yUATSzdt4dhWifu80ptoQi/6dduMb7d5g2by+EIkV2jvQ17gr3sFnG1ZCkCMdoMFolnDz27lRqFxV
	XKXTAXAW6/Ls7ZM+Bg36FMsT2InW4SwSJULoG/4CMAZqw5B3VQwkTIZPsZeypGRUAOBeRao5FGZ/t
	mwIlsGzHq9rt9jChv3CTKMI92khwnpVbzXioIabcQdYV/DYCn6Y17sSt1gOBqejg0nDr4eHdkQiX4
	/tvSo7fQSxJeerT/glzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQiQN-0006cr-6h; Wed, 15 May 2019 01:09:39 +0000
Received: from mail-eopbgr40052.outbound.protection.outlook.com ([40.107.4.52]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQiQF-0006ZZ-03
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 01:09:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hlaZHZlW9EYYSPZqa9cgIB0Ac0/aHzBRg9/HrsxiOVg=;
 b=mWXbE5uqq8yY6x+8fx6Bp14gHj5DW6QX6DRrK+jnygdXaS+U8Rjok+kZ9pI0xTUqs1K1W6y/g9qnErLe2KuEbRUe/olbiCyfagfr9aA0GKZ5H0t6kwzQNYpWBrBMBeSGe0G5FwXwgSuZnKtDT/fIUgexmQEBakADGhWSy/r7Xbs=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3675.eurprd04.prod.outlook.com (52.134.69.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Wed, 15 May 2019 01:09:24 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Wed, 15 May 2019
 01:09:24 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel
 Vesa <abel.vesa@nxp.com>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "angus@akkea.ca" <angus@akkea.ca>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: [PATCH 1/3] dt-bindings: clock: imx8mq: Add SNVS clock
Thread-Topic: [PATCH 1/3] dt-bindings: clock: imx8mq: Add SNVS clock
Thread-Index: AQHVCrrVEeSa7rFIWkyl1S849ZKcvw==
Date: Wed, 15 May 2019 01:09:24 +0000
Message-ID: <1557882259-3353-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0022.apcprd06.prod.outlook.com
 (2603:1096:202:2e::34) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8cfd6b46-1b1f-4329-5c13-08d6d8d1f7c2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3675; 
x-ms-traffictypediagnostic: DB3PR0402MB3675:
x-microsoft-antispam-prvs: <DB3PR0402MB36750998907AD738DF3CD878F5090@DB3PR0402MB3675.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(39860400002)(136003)(366004)(199004)(189003)(386003)(6506007)(26005)(7736002)(305945005)(68736007)(81166006)(99286004)(81156014)(73956011)(66946007)(8676002)(52116002)(186003)(4744005)(5660300002)(486006)(102836004)(36756003)(476003)(2616005)(71200400001)(71190400001)(256004)(14444005)(2906002)(66476007)(6116002)(6486002)(6436002)(316002)(3846002)(6512007)(478600001)(14454004)(66446008)(64756008)(66556008)(8936002)(50226002)(110136005)(2501003)(7416002)(53936002)(25786009)(86362001)(4326008)(66066001)(2201001)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3675;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uiCdCT17QpS3pQGtbERpPCuZKHqGoCh0UfFCYg/yelJFeFuYH5Iwczyf35uNjel/sbCKHiCdiy9FvW5jOcdTOy5A4m9sZGvubSb5vchrv/jBEMfAelYlkQT+RGDbhCrD3xpIZhPiCoVaeTtDg6DuElXYgI8qkYBjWhoGESwduoay/r8zI1CJcrN9GJ43AvKJ/8n0JMueNAHyPr11cK4jo19wJbVf1b/V6l3bxAR6jCXGj1vKsBlvjHeCgxlgt/bTZunoF5ArOwxC1fsAa3giwJrlFMjy4CpFaqW9QAx0CT8OazJPGmt1wuuvWcaPwNCfbUolB7ZZ15hjeRB/uPIsQ+dT4kMDChXo2AdEZfuZF6QjGH0PT6gCWh+XJEDa0GdhApRiOMXwogs0dYkhq/6EVZedZQPN3MGIP1r0B6lj89k=
Content-ID: <F79890AAE8E69040BD66092F454597A8@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cfd6b46-1b1f-4329-5c13-08d6d8d1f7c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 01:09:24.5545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3675
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_180931_142758_36C63644 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add macro for the SNVS clock of the i.MX8MQ.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 include/dt-bindings/clock/imx8mq-clock.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/dt-bindings/clock/imx8mq-clock.h b/include/dt-bindings/clock/imx8mq-clock.h
index 6677e92..0233bb1 100644
--- a/include/dt-bindings/clock/imx8mq-clock.h
+++ b/include/dt-bindings/clock/imx8mq-clock.h
@@ -400,5 +400,7 @@
 #define IMX8MQ_CLK_GPIO4_ROOT			262
 #define IMX8MQ_CLK_GPIO5_ROOT			263
 
-#define IMX8MQ_CLK_END				264
+#define IMX8MQ_CLK_SNVS_ROOT			264
+
+#define IMX8MQ_CLK_END				265
 #endif /* __DT_BINDINGS_CLOCK_IMX8MQ_H */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
