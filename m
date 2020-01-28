Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E71A14AF56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 07:03:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=33yVdy64J5dxJwntXhXsmO993cKBHdeAVuyDxt4ZN4c=; b=MnHid9Feh0rY6A
	3F7lzCNOZbv6FDQLtOgzwqOuHE4LOchDAkB5WNAUjk4sInZOiIe9Lurv84SItg3HuEhTXdZ1YvYI/
	dJ8gFqg4WkXaaKPlj1mC0ADTlBCJc8IBqURLjnINRQcSE3jBcXVupaFTB38Ld+pVkAJj8nL+4sKEm
	auMhDRBu5WRjJ49d6Zg7fisP7tO95/mRJZzExt1EI0wRonAc6d3R86vNUcfwU+qNpGYyIHaGlQfAi
	uj+BHo4j856NZ+nSPevuLjYi4PJFuNbZ1zuRBKCmsBjvsjjMiOLTZUs8yXiavn/Zj4onmyctBauBK
	yNuYnh83fU9iqHN/pl7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwJyR-0007KG-2C; Tue, 28 Jan 2020 06:03:43 +0000
Received: from mail-eopbgr00089.outbound.protection.outlook.com ([40.107.0.89]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwJy0-00073t-7f
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 06:03:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tdd378vpfwRpibcFVIzrF/lLxwEncQG3DWBoUOm+H4o67zYoNLw+lIQgx2M1q8eo4u8wLu6tpMweAl72ef5whINnQjSxdocAmhtF0wcbkv9iRqWwHyNoofhAIflFu41akZY1kg9bY7IN6BldaIaf+efGvVA4yEw/3PWVM2ZtRJ4DexMiQLF6O5SVm48dWhL2srRqA8OaR87GFsZsD1Z5KCUd4dW0FpOCc/ik1sP0OzgqYLBA3BebtpgAGI7HKQtht4hrxj6FSB22Lp27QGL1IzNr2ht0mgOvtbgRc6yJSYToseMkPodN/pNmDT52C9Uu+G2yAWpPDj+BFocz9DgMIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OZ9S4NOrqv+XdB4LZWWwcWAjM2cw8W536sYcTXvBj9c=;
 b=EmZQwaY9bbD9peili14uD4whgirqn4QSoNcdLZ6edqJnQAwbwhy/I7CuYMnjIlJAFv9AcKYmzP9D4F57IGG7BLcqR/pmNCi1HE8QadlldEZGW4putSkRC2HVCOsOmTlcaK5nw9GxYQgm8jDcByy2rniSCLHPtkjKjmqzXDcLa0sA4kabHi7QFc4HfE19o08I8iSjTTZfKf83FziJPjXWrmY3xEuiDYnfv7E5MJrxnNNHnrUvtdYuieNVT+vb39xlkn4/U9oOXlu/kksU3icINxopLNrqT7RsRbuYoU20dHD7hl6oPQ8uf19PdWJ3f8DYhPYWH6oH5/L80nob+F+ISQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OZ9S4NOrqv+XdB4LZWWwcWAjM2cw8W536sYcTXvBj9c=;
 b=WDwSAOodNRcmflPXavE38UGA02J5wRLZ8CtPOZJ8DfPAB0y4p5QDmQdZvGiceETJHNEFJEe+rzTEz6vitCB/T3HAY43KxqPR04r3JwL4lmNuW+zMwr2yOJK1gpnb4J586S02jMvpkYC4MvJa1nWHXt5380fQtStjcDgwci+Wd2U=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5377.eurprd04.prod.outlook.com (20.178.113.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Tue, 28 Jan 2020 06:03:13 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 06:03:13 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR04CA0087.apcprd04.prod.outlook.com (2603:1096:202:15::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2665.20 via Frontend Transport; Tue, 28 Jan 2020 06:03:09 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "arnd@arndb.de" <arnd@arndb.de>
Subject: [PATCH V3 1/2] soc: imx: gpcv2: include linux/sizes.h
Thread-Topic: [PATCH V3 1/2] soc: imx: gpcv2: include linux/sizes.h
Thread-Index: AQHV1aCgZCYKcFemkkyL907Q+VitvQ==
Date: Tue, 28 Jan 2020 06:03:13 +0000
Message-ID: <1580191098-5886-2-git-send-email-peng.fan@nxp.com>
References: <1580191098-5886-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1580191098-5886-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0087.apcprd04.prod.outlook.com
 (2603:1096:202:15::31) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e72f1b57-5527-4d61-8924-08d7a3b7c273
x-ms-traffictypediagnostic: AM0PR04MB5377:|AM0PR04MB5377:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5377AE007EAFD331E4E7F503880A0@AM0PR04MB5377.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(136003)(39860400002)(366004)(189003)(199004)(2616005)(956004)(52116002)(86362001)(8936002)(8676002)(81156014)(81166006)(36756003)(64756008)(66446008)(66556008)(66476007)(44832011)(2906002)(16526019)(5660300002)(66946007)(478600001)(4744005)(6486002)(110136005)(54906003)(26005)(316002)(71200400001)(6512007)(6506007)(69590400006)(6666004)(186003)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5377;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WEbKbUbsocO9NiP5MfCPNT6Ey4AM36InpWb6ovRLJutw5L0NgswVWyQwzyut59CBk5ZgfQUotUsJDPkPwkfXOC8kr7lbSApLRcknyQXn8gEuHIqb84wrSKiECrrF94y1Qy8k1DiydiNHW5pGGNkWHucDzG/ryDwT/96iDt3h9uayfn5ZJzlCQtTWr/gyp2hA+Y4ITPcXEXArwYkvIHenobERWZWjyC6xsRPdDr1YyhrD7ua7OFV8CSpw/d+0pJkO5v4nFiIFrnFBDReLjab/Gum0HVdSK8vtmnzh8l+bKa62acjFwEmKfmceq35CWh5JlUt3ldffPJK7XC+rrxmzOKC7HIPOIa+HeedW80NY1OkMiCiUQcdyHNb1ukQY6h4clmOVKcQGskFatxUib4efQHvJOnrlUQnv3S1fsrfM31yqxoHmN4bLAKWIcGh5VUKt0P7mwINutVSlULV4u0ir5Vn0QQkZifb6drqp4dtBrJlh451BLSpxsp88friu6nP/TTocuqyFys0ltjGNTFEw/nnf2nl/4tuzcqK8cHerrB4=
x-ms-exchange-antispam-messagedata: Kig+At1Ahbgjsr6MxJWHGgUakKZclCZ4YO8JOTpc5kraV0CszALPTPXx7YvVaLZAUV0ceoQLX0I2ouAJYYckHzJgRqO7XGxXIqZ9gWXwTPRz5tLlGkBDu8oNkgIQjfy5XeCp+BVB5ZFZn0IViKC9zw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e72f1b57-5527-4d61-8924-08d7a3b7c273
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 06:03:13.6811 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E6F+WktEoP7uUb7XrIPbDtOwLWEDaxdMm/GUvqTD2MWzE+EoONOZYOdIwE7U21aE3sxV/fpR+fHjH77K/7eZdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5377
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_220316_301480_423E4C77 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leonard Crestez <leonard.crestez@nxp.com>

This header is included indirectly on arm/arm64 but not on x86 so
CONFIG_COMPILE_TEST breaks. Fix by including <linux/sizes.h> directly.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/soc/imx/gpcv2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index b0dffb06c05d..6cf8a7a412bd 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -14,6 +14,7 @@
 #include <linux/pm_domain.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
+#include <linux/sizes.h>
 #include <dt-bindings/power/imx7-power.h>
 #include <dt-bindings/power/imx8mq-power.h>
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
