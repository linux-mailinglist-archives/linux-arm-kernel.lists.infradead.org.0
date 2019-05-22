Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC91260B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:48:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNEJGqRFpvqzXWGhbfoWNjROBNofEezqxgOhnnemzfI=; b=rY8ZYU9dQRH8bf
	LLH/4qCyD41p0Bau9I+AiHMk4E2bA7NwNoB0lemAeW/BqXCj8+/CX0tC8KLbJZEOF7xDQbz/H7dII
	eG+UvQQhC5xMMqJt9ar2Wx8LNwfB5wqMiW3S/9d5Bq7eMDKDfyLA2mydjQ+e5uX/7D5bBRzxeDWMT
	2IUnp+nKpiuwXnpM0P0IbqcmhdkbXSfyQu076YTcRBCcmXpFzrFD3KLE17tekjqH2hZnFu6lSI+GG
	PWsMhgYlTKjtXM1BMn7tGZk1z6AO3DEbdYYsxs79bnQqh4kWYjelPnmcVVhrLmaldxAK22phKbYzc
	wXvsnT0P5ltz4JqplHqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNrU-0006EE-CA; Wed, 22 May 2019 09:48:40 +0000
Received: from mail-eopbgr60070.outbound.protection.outlook.com ([40.107.6.70]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNrM-0006DH-J7
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 09:48:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I3Ankhj9EJdg1ZMGRvEjD7R5QXzgFsBdb7yjnhYqRLA=;
 b=aDZ/tMTaHBhMywHHOLrNPkONFKEnHP6mnG/AbavfPmaUM1jajRuNVWS9wiz2VqlOvTfQ4m7ds8GnAuviYQleQX6N1iJ8CP9CoM/NRilKJTgu5crG35FDfoGu+BcoMfZECN3mYKhSKZIowPaSy9ZdI8+EjN1Obx7Kllm2esIuba8=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB6834.eurprd04.prod.outlook.com (52.132.212.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.20; Wed, 22 May 2019 09:48:29 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1922.016; Wed, 22 May 2019
 09:48:29 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: clock: imx8m: Add GIC clock
Thread-Topic: [PATCH v2 1/2] dt-bindings: clock: imx8m: Add GIC clock
Thread-Index: AQHVEIOCdPABTKnx/0WPjkRa3FQJxQ==
Date: Wed, 22 May 2019 09:48:29 +0000
Message-ID: <0f33e08a534e4560d9e96f4ba6af728a0aa00168.1558518323.git.leonard.crestez@nxp.com>
References: <cover.1558518323.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1558518323.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LO2P265CA0441.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::21) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 98d01d96-71be-4c91-6090-08d6de9aa4fd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6834; 
x-ms-traffictypediagnostic: AM0PR04MB6834:
x-microsoft-antispam-prvs: <AM0PR04MB68345BADE9EB4CF6D39D0E91EE000@AM0PR04MB6834.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(189003)(199004)(66066001)(26005)(50226002)(186003)(6506007)(118296001)(86362001)(102836004)(386003)(8676002)(498600001)(81166006)(81156014)(6436002)(99286004)(6486002)(8936002)(14454004)(44832011)(76176011)(446003)(64756008)(11346002)(66446008)(3846002)(6116002)(73956011)(66946007)(256004)(52116002)(486006)(66556008)(66476007)(476003)(2616005)(71190400001)(71200400001)(305945005)(25786009)(54906003)(68736007)(36756003)(53936002)(2906002)(4326008)(6512007)(110136005)(5660300002)(7736002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6834;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hkualzKQ7zWqzLR9dxoJJj9UHFQ3/UkGZlbyrofYKENbURY60o2PsmriypchRUAKJ0asM+8UI8Q4Numo1+btQcJbkzLZRXny/ncR7GEZtG3gvMkORGom34V8qYxkZc/u30hdjUv4sK5y/lugmEHbZacUBnwJiKsGZIy298qXmGPE9Xa7W6iMml60Y1DT/KTsS/j/4kN6nHcxDtgyVfhw7EQqqrUcnIfjWZLRcy56hOaYToHYPVyQPDWXMKUiU/i9olfofUCGQuy85fIshWsjM46YRVFQSfFvEUcf/vlyPbdyFQzhxDmLe0hIFL7ll6KoA4+3TluhiLv+KQCzaY2GZHrqCRPIdavnFx0sCqpFslAElWRP3oGaSffBKch9eB+/pHjlpJwDm08oy/qW9KW5+Bx7dagGsILuKwDeSQ3jSq4=
Content-ID: <20577B92AAF36A4A861764A4729D41B8@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98d01d96-71be-4c91-6090-08d6de9aa4fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 09:48:29.6301 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6834
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_024832_695592_A26DFF00 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Michael Turquette <mturquette@baylibre.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This should be defined in the clock tree so that parents are not
shutdown by accident

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 include/dt-bindings/clock/imx8mm-clock.h | 4 +++-
 include/dt-bindings/clock/imx8mq-clock.h | 4 +++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index fe47798f95df..5e8e32d18816 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -243,8 +243,10 @@
 #define IMX8MM_CLK_GPIO2_ROOT			224
 #define IMX8MM_CLK_GPIO3_ROOT			225
 #define IMX8MM_CLK_GPIO4_ROOT			226
 #define IMX8MM_CLK_GPIO5_ROOT			227
 
-#define IMX8MM_CLK_END				228
+#define IMX8MM_CLK_GIC				228
+
+#define IMX8MM_CLK_END				229
 
 #endif
diff --git a/include/dt-bindings/clock/imx8mq-clock.h b/include/dt-bindings/clock/imx8mq-clock.h
index 6677e920dc2d..7900a219f5fa 100644
--- a/include/dt-bindings/clock/imx8mq-clock.h
+++ b/include/dt-bindings/clock/imx8mq-clock.h
@@ -398,7 +398,9 @@
 #define IMX8MQ_CLK_GPIO2_ROOT			260
 #define IMX8MQ_CLK_GPIO3_ROOT			261
 #define IMX8MQ_CLK_GPIO4_ROOT			262
 #define IMX8MQ_CLK_GPIO5_ROOT			263
 
-#define IMX8MQ_CLK_END				264
+#define IMX8MQ_CLK_GIC				264
+
+#define IMX8MQ_CLK_END				265
 #endif /* __DT_BINDINGS_CLOCK_IMX8MQ_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
