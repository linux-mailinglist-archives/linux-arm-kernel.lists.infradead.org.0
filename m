Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB4C1ABAF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 12:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IercLK0GYXZeJnu3YNukjHWP2F8Wi+7OjZ6S83BrQsE=; b=EcOg/n8QePivnt
	E1v/nfeN6l5v0Rq8R2mIYADblV+eY/9FscjJgywCSqUTYwVFq+/8+GRuRQMmJnGOCDABSjHdkHw7r
	pjWWK3LfDgCwae/d+wII0AQtkvhub9TWfHYwxnmB/d9MlqabSZQaLeNh3uiIzCztBzF88Y6XnHuwB
	VNiLX3+sPGAJ9rkimTPXJFsNZAHOwtJ0+1W1kS0RlgKQH3kFx+wJrn+eTUXD1HDIPy2aMcOwNz1dR
	QLWskcRN8jtsR3wLch+wbNvPi99fofGOowipTZXVEbd8ThoA7e+G8+SpwLHoIry4dDH9mp7gAOVDN
	udk6FR3jYQHst5/zL9zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPlXl-00037B-1O; Sun, 12 May 2019 10:17:21 +0000
Received: from mail-eopbgr80052.outbound.protection.outlook.com ([40.107.8.52]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPlXd-00036g-KK
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 10:17:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mOPRo2eHC36xTG99awF8ld5DbNbRBboZQqG/BUMC+HM=;
 b=Pplr2pZrWQQ0e8oYpezNWEKWi6xYO3/AusdKfO+fwSg9n3zR+6slWS4QkeIc1bhZBxeBfQVWknQZLq8tYclHAkWD3t4L8ObWHxDfUKhnJqBVau4Z1zMmcdT8+hdDvk1cknAvdU+WVk3FIP3mUEUQYWOWjhlG/etkuMQwGPx28Vw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3946.eurprd04.prod.outlook.com (52.134.72.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Sun, 12 May 2019 10:17:08 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Sun, 12 May 2019
 10:17:08 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, Jacky Bai <ping.bai@nxp.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: [PATCH RESEND 1/3] dt-bindings: clock: imx8mm: Add GPIO clocks
Thread-Topic: [PATCH RESEND 1/3] dt-bindings: clock: imx8mm: Add GPIO clocks
Thread-Index: AQHVCKvbpEmt/hab6E+Z8qYp1xLf/g==
Date: Sun, 12 May 2019 10:17:08 +0000
Message-ID: <1557655926-12915-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0044.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::32) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9b0667f3-7665-4187-7475-08d6d6c2fd57
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3946; 
x-ms-traffictypediagnostic: DB3PR0402MB3946:
x-microsoft-antispam-prvs: <DB3PR0402MB3946C401F813E43F3C2E92FEF50E0@DB3PR0402MB3946.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(39860400002)(366004)(136003)(199004)(189003)(52116002)(2906002)(110136005)(386003)(102836004)(14454004)(478600001)(4326008)(8936002)(2501003)(68736007)(99286004)(6486002)(25786009)(50226002)(66066001)(3846002)(7416002)(53936002)(6116002)(14444005)(66946007)(256004)(66476007)(64756008)(66446008)(66556008)(73956011)(7736002)(486006)(305945005)(5660300002)(2616005)(476003)(71190400001)(71200400001)(26005)(186003)(4744005)(86362001)(2201001)(8676002)(6436002)(81166006)(6506007)(36756003)(316002)(81156014)(6512007)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3946;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2CRxnPPJDX9Jii5V4Smmn6vIW+9yHsqAExk8pzfitrbXnhQYGgM9PCWVGeo4oiLDGHM8lUSlhLQ47QzpqIrDJy1qUGRcFlOHHWVQCAkmNL7jykBuBum+03qdc/1rUBPaZu3YGEt+JTOSa6TyqcJ7Pmbfnh1D9oJkPEBa975LYnhLKGbe2WtapdJqFvuODGBgcnsaW3bnGBBqKoHnPDTbBPruwNaWMymMg1HElBLrmR8qILGe6aj0jgaTv5lolRxMkITqgBeH/DEMwZGbGMA/+G4YoIYaG8nvyKRn7gZQkiTEiI+Ii4ANWsGehTkI5ie+3lXKIF4G1KV0GLLEFs01GFXwwA6J0BuRVU7ENnIi/YTmobU8PKEcpCdypoBywjb1eavbvAVEyGr+XsxHQnBMo3kJx0NeZqLUMoh4fI9IODg=
Content-ID: <08E01C7B0B1DA14D9F5AB10C0C2AF991@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b0667f3-7665-4187-7475-08d6d6c2fd57
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 10:17:08.6263 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_031713_670532_9E44AA5C 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.52 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add macro for the GPIO clocks of the i.MX8MM.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
No change, just resend patch with correct encoding.
---
 include/dt-bindings/clock/imx8mm-clock.h | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index 1b4353e..fe47798 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -239,6 +239,12 @@
 
 #define IMX8MM_CLK_NAND_USDHC_BUS_RAWNAND_CLK	222
 
-#define IMX8MM_CLK_END				223
+#define IMX8MM_CLK_GPIO1_ROOT			223
+#define IMX8MM_CLK_GPIO2_ROOT			224
+#define IMX8MM_CLK_GPIO3_ROOT			225
+#define IMX8MM_CLK_GPIO4_ROOT			226
+#define IMX8MM_CLK_GPIO5_ROOT			227
+
+#define IMX8MM_CLK_END				228
 
 #endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
