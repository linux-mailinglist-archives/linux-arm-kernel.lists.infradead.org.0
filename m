Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 222AC2611A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eyErfMAmKk1LTx03mPHzq9AaBDH9LwOnfybhQHWnL0=; b=WAX/Z6tXXO+cZd
	Pi86k1OLNxPHWaWXf6TqpOUN6lkUw1mmPCgM+wRfFbqO3IhKWLS+70ymjF0c7dqHzFzt+wK5fEKm9
	Wv3liebXeRWr+VxJrgDrZHLuXPiweocrGNDFxGTP3gS4Skt3YfaFBx9jSS3kxa6pw9yBPjK/qDAI2
	w1BXO9ytu4Zk4LvfpKj4TWc3VTViAaNKoCCU/84wQKTXPOBk/+JOUQrzF3qlv53g7ck0RwPQEWrhR
	0kGm/3V5R45erWuz3plOaxHPXsnTSHBMBs2bWbEX3ODFEAuRlfF7oYRcunXcXE8TxMJlWEp/QQ22x
	jgpvbIkYsn4yMWxhSsHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTO3W-0005c1-Hg; Wed, 22 May 2019 10:01:06 +0000
Received: from mail-eopbgr20043.outbound.protection.outlook.com ([40.107.2.43]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTO2Y-0003Jx-9I
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:00:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hhaLCxWugmrtg+aneJiqRbKnyiUWWd9fuZwy1x/Q554=;
 b=Bdns/ajbig9sLYkG/Aw4bGbj1eQJZFxjwmmLrnOdiZ+Dsauht3yxoXKiB84gilXmyYZlKx2IdkgwIQL9f5uo4HujXlXAVr1z3F3msAJH8/Yt4oqRiKS9KUD9iHuXA7xlhbf3Jau7TrGIdeyh2IyUK4O39TU7WGlXfe/pGlsPOwo=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB3103.eurprd04.prod.outlook.com (10.170.229.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Wed, 22 May 2019 10:00:02 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5062:df97:a70b:93f8]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5062:df97:a70b:93f8%7]) with mapi id 15.20.1900.020; Wed, 22 May 2019
 10:00:02 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "robh@kernel.org" <robh@kernel.org>, "broonie@kernel.org"
 <broonie@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>, "dan.j.williams@intel.com"
 <dan.j.williams@intel.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>, "plyatov@gmail.com" <plyatov@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>
Subject: [PATCH v4 04/14] dmaengine: imx-sdma: remove dupilicated
 sdma_load_context
Thread-Topic: [PATCH v4 04/14] dmaengine: imx-sdma: remove dupilicated
 sdma_load_context
Thread-Index: AQHVEIUf43QK9vx3606EzlouCVI5BQ==
Date: Wed, 22 May 2019 10:00:02 +0000
Message-ID: <1558548188-1155-5-git-send-email-yibin.gong@nxp.com>
References: <1558548188-1155-1-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1558548188-1155-1-git-send-email-yibin.gong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0045.apcprd04.prod.outlook.com
 (2603:1096:202:14::13) To VI1PR04MB4543.eurprd04.prod.outlook.com
 (2603:10a6:803:6d::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 94581b27-3765-472f-aee8-08d6de9c41e9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3103; 
x-ms-traffictypediagnostic: VI1PR04MB3103:
x-microsoft-antispam-prvs: <VI1PR04MB31039EABE46FBE300A13C61689000@VI1PR04MB3103.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(189003)(199004)(68736007)(81166006)(2201001)(2501003)(52116002)(71200400001)(14454004)(186003)(256004)(26005)(53936002)(7736002)(25786009)(81156014)(305945005)(8936002)(4326008)(86362001)(8676002)(50226002)(71190400001)(486006)(6512007)(5660300002)(6436002)(66946007)(73956011)(498600001)(446003)(66446008)(66066001)(66476007)(64756008)(66556008)(3846002)(6116002)(99286004)(386003)(6506007)(2906002)(4744005)(54906003)(76176011)(36756003)(11346002)(110136005)(7416002)(2616005)(6486002)(102836004)(476003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3103;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TbVNFyneFjZAD4r71WI0DO39iN2SmAJh34hHxZr4CzmX3wBVuIlxZbHVaareB0HNpOJHDcWEAr3YABjBQZNGDXTM7YvGUxWbLlyCB4Nve/yXbAMYiT29QXvHlgM1RZi9dQX5AdCCiOfrk+JENIJIhIqVQI5goPw1T8BRKgVn5aBA1D3qVldB9w7G+cVxknzvFKuVo29GDqHv5q7s+hlJsEzf7MINsxJxfjoj/Ib+f9C1M2qz8dXIBcFUs0d0SeWeeea6Vd3qiLVVa9z3N8Xj9HWPMNZhMk2qKhaPkTrqeMJRpCL9O1i0bKT3VrmaB7cL7Vgs6aRW/vhgSQ/xF1lEmrYDIpKusPBdTAxzthNWxzGM2PhA/HW+nkRkXjdTjIDn1GdViv8yF6fo+a0XH54i94PV1tjNqV7y20jKftbq16U=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94581b27-3765-472f-aee8-08d6de9c41e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 10:00:02.7978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_030006_471096_CDC1C98B 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.43 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since sdma_transfer_init() will do sdma_load_context before any
sdma transfer, no need once more in sdma_config_channel().

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/dma/imx-sdma.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 407a56e..86a31b4 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1134,7 +1134,6 @@ static void sdma_set_watermarklevel_for_p2p(struct sdma_channel *sdmac)
 static int sdma_config_channel(struct dma_chan *chan)
 {
 	struct sdma_channel *sdmac = to_sdma_chan(chan);
-	int ret;
 
 	sdma_disable_channel(chan);
 
@@ -1174,9 +1173,7 @@ static int sdma_config_channel(struct dma_chan *chan)
 		sdmac->watermark_level = 0; /* FIXME: M3_BASE_ADDRESS */
 	}
 
-	ret = sdma_load_context(sdmac);
-
-	return ret;
+	return 0;
 }
 
 static int sdma_set_channel_priority(struct sdma_channel *sdmac,
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
