Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099FA97038
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 05:22:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZjVedNTEwViFSubuJoYnjkIC352ey3/BYXfaVv4ZWfc=; b=tD/gIt0JUB3oYn
	dBk5Dn7eXXZNZhHrvq38uKAhn553WdkC9DLxPCPLZ8ITHJaSni1FuYY4LxtpQjH5rXmmlNnbiAXtj
	vMFnjQ1dO+8Y8gVt3j6s93fYx4+puCV5isrUIdk7s+u46U2jDfmzMMqXpOevgYP3fh8GeCD4l4y8U
	8iozmSJlawWIfcAlpYmhtxCnrQvlT0azNmd7VezqIUqbAvF+7n05OR0SA6bO5QOnFtcRjDi2c6SWJ
	g36hz/UCn8adPcJW6jDj5RiOFFbg5nlxrcWvxbu0PtEnXrHku/eC1Rv1WWZI0sCC7vT3zOf2KObzE
	o9QDqn970mALJcwNQ1Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0HC9-0004m9-9W; Wed, 21 Aug 2019 03:21:57 +0000
Received: from mail-eopbgr40043.outbound.protection.outlook.com ([40.107.4.43]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0HAq-0004iC-N6
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 03:20:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UwGpkcIbXlHzYVEdIqIVrbR6GAlEBTAywsDespWYXag04QWH64s5NdKNcB1CQp604pMWnc5v/ubSgCuwGhAA/IF4GBbr8IvfEYmqle34FydlTxV6GJ2ix1P6vmsqzuOqFNdM79IS1KuuBjJsLJB/3yD60VdPFKZ86eprNp5tt8Vj5p1acSf1L1eVl1bii4ulnG7CqGo0mgXr2F2zfiUaJBlFvFZ7oE93dJzOLYxnGYkH43YNpu9773FVECRlufOomwfakauGU2vg+whU7mAh+WUfWb0R9xuywhtjrQoljONjOX4JRvlvsqxs6wMnKx6F1CAzJTTxf3fKkn1HVEKCOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Io7iFwEynykuufGsUCfJxElOts6gbTulmWFJMu94KDo=;
 b=L3niB4ohNLMYh428hJf4oiQ1u1axx+r0GVlObn8rVmu7qPaz6r3nXNYx1Zp9TuBVjh2Uw5N65nWUn4Zis0ZiZqcl/9FXkZXIr21DPiwRIt3VntoPqAve1LQ/xrterwnaJ6zDqhMT6mxB4I4hIeU7tH/Jv5kYVeI28eBOvW9VgAIGY+Zl844e32KKkzj2JaMKbmEX/EI/3fAt0H4gKCU6UdODQvh7IqQVGgg9U2XFQUKqim7TkKQvfy1k7B5NMXy+Dm6DUqfISekdQ1pD8w3A2kEp2vMLQ4APisDaqw2/NbMhIA+Zao2nbfog1lHq+zPZyMIHziXmu6JEXJZgN7aOiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Io7iFwEynykuufGsUCfJxElOts6gbTulmWFJMu94KDo=;
 b=n/L9sp23VSxLZiTJU1g7i5l39um+lySy7076aEwN9QF3WL5W6yUpcKPohVIQihUFxABRZgEw6MxSb2IiG5PDFC8MUHhzwwmNHC5vesewmsaOz8VzGFYBI56arum2c3gyydw4UZ3ssnWWlVx1RKoziXXhXB1qXDMJ6dqk/Iukp3g=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4465.eurprd04.prod.outlook.com (52.135.148.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 21 Aug 2019 03:20:31 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.018; Wed, 21 Aug 2019
 03:20:31 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: [PATCH 1/2] nvmem: imx: scu: support hole region check
Thread-Topic: [PATCH 1/2] nvmem: imx: scu: support hole region check
Thread-Index: AQHVV89jBufiQMcQikKEwxbrgUBx8A==
Date: Wed, 21 Aug 2019 03:20:31 +0000
Message-ID: <1566356496-30493-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0054.apcprd04.prod.outlook.com
 (2603:1096:202:14::22) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 13110226-f539-4aed-91f3-08d725e685bc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4465; 
x-ms-traffictypediagnostic: AM0PR04MB4465:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4465391BCB74D011B3ABB30A88AA0@AM0PR04MB4465.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(346002)(136003)(366004)(396003)(376002)(39860400002)(189003)(199004)(43544003)(52116002)(66446008)(26005)(71200400001)(5660300002)(71190400001)(110136005)(2616005)(66946007)(66476007)(54906003)(8936002)(64756008)(14454004)(256004)(386003)(102836004)(66556008)(7736002)(486006)(305945005)(2906002)(6506007)(25786009)(44832011)(316002)(186003)(86362001)(4326008)(476003)(66066001)(6436002)(6512007)(50226002)(36756003)(478600001)(3846002)(6116002)(99286004)(8676002)(2501003)(81156014)(81166006)(53936002)(2201001)(6486002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4465;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zPV0jZHlKfBSE/uZ7pYfGcOPHsneuUVFbzTqqMBNDgvameuhYpcEZvxn5fpuRT4vd9Sdr9Xsasbr9sYAwv8qMVMXNymU6arH5XU5MAsVqOwYnWF4mCvRvxHKleS2Q929lIx5leXoxJr860xz9Oqw86i+CKGmfOdwS4EbmqpqKHrXJ8Le5cXjTnOcNG9QqMDRO4f/JvFRWN8FQseXxXXl/v7R0eu6Xdn0EaWSY6DKh9cwLoeF1Ua3hryqPrMFG3NVxUtQ0NqTnsQ516Tr9iPL6d3zjUPUT7+GrhZWu0P7+0CplYeDpisz4C13HyEMW6hldgg1HnAaUsBPtGt14SgJKkGX5pYT+J4cT4Wy6d4+8Q5jmf5g3t1QLWFqL3V7IGwcV8B/eeiOQGhmfNkVLpmkD/ZqLf7XQNz1cYMAanyuUAo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13110226-f539-4aed-91f3-08d725e685bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 03:20:31.4826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kb3/CX0+oobM+Ah5v1eaJ3+z6BQ0We2fxed0FKf9L7QkiotusmTYNCEVgwy1cJfx6AqB7oiRTNcyWsXIq7Xc1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4465
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_202037_318217_C3E72A00 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.43 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Introduce HOLE/ECC_REGION flag and in_hole helper to ease the check
of hole region. The ECC_REGION is also introduced here which is
preparing for programming support. ECC_REGION could only be programmed
once, so need take care.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/nvmem/imx-ocotp-scu.c | 42 +++++++++++++++++++++++++++++++++++++-----
 1 file changed, 37 insertions(+), 5 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
index d9dc482ecb2f..2f339d7432e6 100644
--- a/drivers/nvmem/imx-ocotp-scu.c
+++ b/drivers/nvmem/imx-ocotp-scu.c
@@ -18,9 +18,20 @@ enum ocotp_devtype {
 	IMX8QXP,
 };
 
+#define ECC_REGION	BIT(0)
+#define HOLE_REGION	BIT(1)
+
+struct ocotp_region {
+	u32 start;
+	u32 end;
+	u32 flag;
+};
+
 struct ocotp_devtype_data {
 	int devtype;
 	int nregs;
+	u32 num_region;
+	struct ocotp_region region[];
 };
 
 struct ocotp_priv {
@@ -37,8 +48,31 @@ struct imx_sc_msg_misc_fuse_read {
 static struct ocotp_devtype_data imx8qxp_data = {
 	.devtype = IMX8QXP,
 	.nregs = 800,
+	.num_region = 3,
+	.region = {
+		{0x10, 0x10f, ECC_REGION},
+		{0x110, 0x21F, HOLE_REGION},
+		{0x220, 0x31F, ECC_REGION},
+	},
 };
 
+static bool in_hole(void *context, u32 index)
+{
+	struct ocotp_priv *priv = context;
+	const struct ocotp_devtype_data *data = priv->data;
+	int i;
+
+	for (i = 0; i < data->num_region; i++) {
+		if (data->region[i].flag & HOLE_REGION) {
+			if ((index >= data->region[i].start) &&
+			    (index <= data->region[i].end))
+				return true;
+		}
+	}
+
+	return false;
+}
+
 static int imx_sc_misc_otp_fuse_read(struct imx_sc_ipc *ipc, u32 word,
 				     u32 *val)
 {
@@ -85,11 +119,9 @@ static int imx_scu_ocotp_read(void *context, unsigned int offset,
 	buf = p;
 
 	for (i = index; i < (index + count); i++) {
-		if (priv->data->devtype == IMX8QXP) {
-			if ((i > 271) && (i < 544)) {
-				*buf++ = 0;
-				continue;
-			}
+		if (in_hole(context, i)) {
+			*buf++ = 0;
+			continue;
 		}
 
 		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, i, buf);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
