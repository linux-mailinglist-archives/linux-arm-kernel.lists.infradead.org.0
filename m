Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AED51B4D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IKvmwQzTIvzykyLilaJwMP2k5mTgrTB08zWm0LH7j6Y=; b=rPCCCoxjrhuKPc
	Ppqv5WQrgXRbRHJLd+wGuQTAmrIvA1O2MZp/zvSs+hrxdTSz5JuwBgR9UPxtHFP8pwhFzWsVS9Kmk
	2PiumBZLKvy+q2QOachJeYznrITIuFkn6yN9+L5q031H8F4ZbBLKbGQ37POpyJ8EHd7ZjoG3PomoI
	yP/CuRhTm1jtakNFreVrC9Db3GE4txDXwkJYMlWvK3j4iMmEN/ehtviSZIpAyN9r4b0TLCuBkunCp
	GUZJi1JazJFkl5XCQHTTywaFRoqTupd9jgEcsCO4srzn7kbtE7N4MO1JV9hnKuayWKRU7D612a3GD
	hPxXvxR8guoEsTvJs3rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ92H-0006DH-EP; Mon, 13 May 2019 11:22:25 +0000
Received: from mail-eopbgr10067.outbound.protection.outlook.com ([40.107.1.67]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ928-0006CQ-VI
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:22:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zA/KxPmBWHKgCd8E+DjdaNNNzuVvymQNwLDuJB82DT4=;
 b=DlZZS9G8tGPwIOVCyw3Tf054uYPFcCIxgVeRUONFq8cnlrqokpbG2T8LI8dqWIbp3Q/WlRwvKUq+x/cTQ5OIYAN2ybsdPO69jIrhgbV2skRq/WfQN7IFfDLnntomB2J1e57byrJZ70YbYfm7O+S6mVQMLmqrMheoH9Z9oqeCwBs=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4500.eurprd04.prod.outlook.com (52.135.147.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Mon, 13 May 2019 11:22:13 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 11:22:13 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v3] soc: imx: Read imx8mm soc revision from anatop
Thread-Topic: [PATCH v3] soc: imx: Read imx8mm soc revision from anatop
Thread-Index: AQHVCX4clKqRGECIOEygHpjXk7cpCQ==
Date: Mon, 13 May 2019 11:22:13 +0000
Message-ID: <431625e9391816f6f0faf4b0e46e6e5624e2c62a.1557746354.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: VI1PR09CA0093.eurprd09.prod.outlook.com
 (2603:10a6:803:78::16) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 688fefbe-7475-4b7c-cdf3-08d6d7953f54
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4500; 
x-ms-traffictypediagnostic: AM0PR04MB4500:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR04MB450097088B3038661B0F7738EE0F0@AM0PR04MB4500.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(39860400002)(396003)(366004)(199004)(189003)(68736007)(25786009)(478600001)(66946007)(73956011)(4326008)(6486002)(6436002)(966005)(86362001)(6512007)(44832011)(6306002)(14454004)(486006)(476003)(2616005)(6636002)(71190400001)(66446008)(5660300002)(8676002)(66066001)(36756003)(2906002)(71200400001)(66556008)(64756008)(26005)(118296001)(81166006)(53936002)(66476007)(81156014)(52116002)(99286004)(316002)(102836004)(6506007)(50226002)(256004)(6116002)(3846002)(110136005)(54906003)(386003)(186003)(305945005)(7736002)(8936002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4500;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: I7UZR7X6s5eEpcPk2XZwunESU87U++vsekGReHKbQO/gVEepS8pGCeUbmkeR+ts6Rac3ALmh2W5M960GsL8Fg8RPDnESjRqYedTwCho7Z8OaEtOKLGIcVl7Bt2f2pSznpSp/yf3PUk+Tc/351TKKNpad57pw8XGIAHv45wNjHEVAcb5zxRi1JUybJOFvHkqe9jJim+8JU0VJMePvO9sLnTGhIWaxn/XAxY9+7P1KGfTEm4b9iNg1sKKipg1wHYhA4l4OOJePqQFXrGDLWmxOnGPXZXjlaKDdheyDUffGsrcbZDpDITrn0pir86LnYWkBs08tee2hG24X7Qcy96isnMYdumpzcbm/rT4XW66KMpnpqpy6NXQOBotboQeFO7XBl0bnrk106ZS73pTsbBO8vQeP2H4IogWt2Rw2Mu/ACGc=
Content-ID: <606553A6F18967438BA173DC5AB4270B@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 688fefbe-7475-4b7c-cdf3-08d6d7953f54
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 11:22:13.4473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_042217_009289_B5859218 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.67 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 =?iso-8859-1?Q?Guido_G=FCnther?= <agx@sigxcpu.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Like on imx6/7 we can read version information from a register in
anatop, and in the same format.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>

---
Changes since v2:
 * Change header to "soc: imx:" for consistency (Shawn)
 * Try to avoid base64.
Link: https://patchwork.kernel.org/patch/10917515/

Changes since v1:
 * Remove redundant initialization of "rev" (Fabio).
Link: https://patchwork.kernel.org/patch/10914835/

 drivers/soc/imx/soc-imx8.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
index b1bd8e2543ac..02988bdfbb73 100644
--- a/drivers/soc/imx/soc-imx8.c
+++ b/drivers/soc/imx/soc-imx8.c
@@ -14,10 +14,13 @@
 #define REV_B1				0x21
 
 #define IMX8MQ_SW_INFO_B1		0x40
 #define IMX8MQ_SW_MAGIC_B1		0xff0055aa
 
+/* Same as ANADIG_DIGPROG_IMX7D */
+#define ANADIG_DIGPROG_IMX8MM	0x800
+
 struct imx8_soc_data {
 	char *name;
 	u32 (*soc_revision)(void);
 };
 
@@ -44,17 +47,43 @@ static u32 __init imx8mq_soc_revision(void)
 out:
 	of_node_put(np);
 	return rev;
 }
 
+static u32 __init imx8mm_soc_revision(void)
+{
+	struct device_node *np;
+	void __iomem *anatop_base;
+	u32 rev;
+
+	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-anatop");
+	if (!np)
+		return 0;
+
+	anatop_base = of_iomap(np, 0);
+	WARN_ON(!anatop_base);
+
+	rev = readl_relaxed(anatop_base + ANADIG_DIGPROG_IMX8MM);
+
+	iounmap(anatop_base);
+	of_node_put(np);
+	return rev;
+}
+
 static const struct imx8_soc_data imx8mq_soc_data = {
 	.name = "i.MX8MQ",
 	.soc_revision = imx8mq_soc_revision,
 };
 
+static const struct imx8_soc_data imx8mm_soc_data = {
+	.name = "i.MX8MM",
+	.soc_revision = imx8mm_soc_revision,
+};
+
 static const struct of_device_id imx8_soc_match[] = {
 	{ .compatible = "fsl,imx8mq", .data = &imx8mq_soc_data, },
+	{ .compatible = "fsl,imx8mm", .data = &imx8mm_soc_data, },
 	{ }
 };
 
 #define imx8_revision(soc_rev) \
 	soc_rev ? \
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
