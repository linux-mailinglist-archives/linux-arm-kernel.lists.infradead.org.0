Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7633610AAF6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 08:12:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p0VAIr2X+9V7IjL3DEg+EMBGRH+37dUGnE05B9wIX+s=; b=p5webJUAXsqFGL
	7w2gOlqe7ZbJh2qU+B+T+W94tl4WXL8Xg7xhpasuItFoY0zAwBPI7N8Zg4OqjVoQeExgR6oYxxBYg
	vpSXa2kbBARt+NAWLOfZiGbFtJoHtBj9R6n7kgBcDS3WR/iJAiQtOtPk/OYPeu4qRDjoGZVg1beYJ
	3VUYiU+JK19C9eZpdpwbLBEgi7RQ6CGk0t5PSs/Liw63IxSOhbHpO+9jj1otBZTOrs0U3zlD1IRZg
	nWGeub35Civ4JkgmTSAsF/cBqZNpPnojO1DDrOD1s30nPpIMXvInAtb+aTWejJiKR+tUgKwz9Gql8
	PTGoEqeuSlBBvjVW0R1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZrUv-00049h-5u; Wed, 27 Nov 2019 07:12:25 +0000
Received: from mail-eopbgr40085.outbound.protection.outlook.com ([40.107.4.85]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZrUl-00048s-UT
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 07:12:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DoZNinUKvE+Ud7zrUJObzEnvXXXa4xIdhdfmr2qmj56NDMK9HtJIBhQxhNeIJko9wa9f8Ov/8Fg0Dw9EJqs/E6w+vExXCRHzQ6SVzLzdugAmSzydPFhfXT2a2QuOQEhtBA/5wZmzzO2JAdIfXZ4zjtxOQspyX1aMIDVKLMVuzg4jJmVenV2CQJQ8dbPvVN369dtVK0YjjolzaCPMC6xylbYc8SvNjURogrcrFnf2BL4XlkaoGYPV2A/EqWT99LvjSVJfkBehTxb2xJMfT3rAcy72n05fQOSWv4rEF0vik2zvDjxFHQVCSjsq1NMUaQAYQ0X974tWnVtGgBkzdc5OEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4RGGr3kSIpLUtwP5HUrdH6jKociEF/1zc4vaIm96Wrc=;
 b=QF2STvvusTXsYgsn+OpRq2HUPYR5HgBDn+EkWEunWhEnlFi8C2TkBwMq2ZgCCTURPgWgR5+AuxQmd5csgakN95fMOTndt7fivcxzq2WvfOR1KDMnYE9ZKwIU+fCj05znakx4IySCAtmPYje7XaLJ7kkk04CX3fNX0oRG5oduiXvWTpx3hyvwBVszx+mOken2d6qB1Puv21SOCon+t6sfvEGbTRHqyZm2t2+kknO6zb4PbkdSnZShilb8Iojz5A8qC1aPPL1Uoi5MrApASyAVL+3luhvRTjNh3LKA6Wt4FVJaH1Kto46T2AuP9gxSFxMrrDEIo1UnJ/bKZqvqfrp4Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4RGGr3kSIpLUtwP5HUrdH6jKociEF/1zc4vaIm96Wrc=;
 b=MCbU0ZQV1MnsWc6pG97Zy+ZZ2jSbZulDYKsfsStwvcFR0ZQLbgyA044WdBFG4GYqkeX+cuGnlMHVOQ2MEfDqkwE8sfqAkdtiKv/tzARLF4WfDy/5tUDCy+00mwNWOBJVDKz+VGwVkOM4FtuvdXrLY63voIhO8dINBqJRVN/qEcI=
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com (20.177.55.205) by
 VI1PR04MB4829.eurprd04.prod.outlook.com (20.177.51.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.21; Wed, 27 Nov 2019 07:12:10 +0000
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::c947:5ae7:2a68:a4f2]) by VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::c947:5ae7:2a68:a4f2%3]) with mapi id 15.20.2495.014; Wed, 27 Nov 2019
 07:12:10 +0000
From: Peng Ma <peng.ma@nxp.com>
To: "linux@rempel-privat.de" <linux@rempel-privat.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: [PATCH] i2c: imx: Defer probing if EDMA not available
Thread-Topic: [PATCH] i2c: imx: Defer probing if EDMA not available
Thread-Index: AQHVpPH7P18PyO0DCUWpmTSTyww0uQ==
Date: Wed, 27 Nov 2019 07:12:09 +0000
Message-ID: <20191127071136.5240-1-peng.ma@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SGXP274CA0020.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::32)
 To VI1PR04MB4431.eurprd04.prod.outlook.com
 (2603:10a6:803:6f::13)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.ma@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4f67f72e-cbca-4ae2-814a-08d773091e25
x-ms-traffictypediagnostic: VI1PR04MB4829:|VI1PR04MB4829:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4829A335D611A8F76530AE30ED440@VI1PR04MB4829.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:374;
x-forefront-prvs: 023495660C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(346002)(39860400002)(376002)(136003)(199004)(189003)(50226002)(66946007)(64756008)(186003)(6512007)(66476007)(6486002)(66446008)(6436002)(316002)(66066001)(8676002)(66556008)(1076003)(81166006)(4326008)(8936002)(110136005)(81156014)(54906003)(2501003)(14454004)(305945005)(25786009)(2616005)(26005)(86362001)(2201001)(99286004)(3846002)(6116002)(7736002)(256004)(2906002)(52116002)(14444005)(386003)(6506007)(36756003)(478600001)(5660300002)(44832011)(71200400001)(71190400001)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4829;
 H:VI1PR04MB4431.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XsCEll25OKnK7O5koICj57AJiO7CvdnYQ5Zbg9OwCFaoUVoDCmXV/k55XR7pfoy7yL9Y0f8ySFv0Ume3u0/kxzN8DonXLTZUkBZEkAUQpjfxl/TqrydmpCe051d8aGGsqPJokgkCyoxk9+0YY1gjBBcMlQQRRqXPr1yOxuGf2YZmFrd7RAO7pBPvpeRIZqNstpmQBL2ZM1ZrVagcgTOPytTdQ4MRCbqkh18XWGdrdqQF/OuqZ35bMf6+SDeeufVxP3tgPaOyffkVnIoVhCWfvc4jbJGg92TJDFjJtfd08p7knnhU5c4ZccXoY0G9w2oUDCLoQc48LsidS0xa7wvjOtLi62m0jLo8it+HdNbUDCGHyvXWbK62CV5J7w/Eb8Co3+JpfMIqIHPWzn7yYbJcZHGa0Ra8YQ/tgO/7RvRms80ra1fSkTJugzXj4qLoRbL2
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f67f72e-cbca-4ae2-814a-08d773091e25
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2019 07:12:09.9328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z1OuEg5pnseeuiuq8uOffhwWYeFdKJAtYUEiAH3H5j0b+2QB0goswu0CtTLllCwU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4829
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_231216_082387_92B11EB6 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Ma <peng.ma@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

EDMA may be not available or defered due to dependencies on
other modules, If these scenarios is encountered, we should
defer probing.

Signed-off-by: Peng Ma <peng.ma@nxp.com>
---
 drivers/i2c/busses/i2c-imx.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 40111a3..c2b0693 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -369,8 +369,8 @@ static void i2c_imx_reset_regs(struct imx_i2c_struct *i2c_imx)
 }
 
 /* Functions for DMA support */
-static void i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
-						dma_addr_t phy_addr)
+static int i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
+			       dma_addr_t phy_addr)
 {
 	struct imx_i2c_dma *dma;
 	struct dma_slave_config dma_sconfig;
@@ -379,7 +379,7 @@ static void i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
 
 	dma = devm_kzalloc(dev, sizeof(*dma), GFP_KERNEL);
 	if (!dma)
-		return;
+		return -ENOMEM;
 
 	dma->chan_tx = dma_request_chan(dev, "tx");
 	if (IS_ERR(dma->chan_tx)) {
@@ -424,7 +424,7 @@ static void i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
 	dev_info(dev, "using %s (tx) and %s (rx) for DMA transfers\n",
 		dma_chan_name(dma->chan_tx), dma_chan_name(dma->chan_rx));
 
-	return;
+	return 0;
 
 fail_rx:
 	dma_release_channel(dma->chan_rx);
@@ -432,6 +432,8 @@ static void i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
 	dma_release_channel(dma->chan_tx);
 fail_al:
 	devm_kfree(dev, dma);
+
+	return ret;
 }
 
 static void i2c_imx_dma_callback(void *arg)
@@ -1605,10 +1607,14 @@ static int i2c_imx_probe(struct platform_device *pdev)
 	dev_info(&i2c_imx->adapter.dev, "IMX I2C adapter registered\n");
 
 	/* Init DMA config if supported */
-	i2c_imx_dma_request(i2c_imx, phy_addr);
+	ret = i2c_imx_dma_request(i2c_imx, phy_addr);
+	if (ret == -EPROBE_DEFER)
+		goto i2c_adapter_remove;
 
 	return 0;   /* Return OK */
 
+i2c_adapter_remove:
+	i2c_del_adapter(&i2c_imx->adapter);
 clk_notifier_unregister:
 	clk_notifier_unregister(i2c_imx->clk, &i2c_imx->clk_change_nb);
 rpm_disable:
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
