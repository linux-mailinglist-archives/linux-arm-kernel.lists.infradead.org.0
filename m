Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2FC16067
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0Du9CAm/uEVVGmXAFNW4kBz2i/6gioPHP7tbRSOav0=; b=FGlvamxy/RYgXw
	kz/XhK9Im3JNEzCZ9ZwDlPXEiEKl5cHuoRSnoYgaYzh/eNDZunRD9DcE+Nu7dSCqN6iwGOLdh3DnK
	43rw3fHzkrEsa57jA5+F7LVXfq7ge7MTfF0jE0Zns9/qFkAGfD1WYVKKilAK81nh3JsQEO7MwqIjG
	AvE0WAOaD1X99xVaQ0HLQl1tbqiWLhtzxh3fRKFNVrRyKoXwSvCgyDcKKBgtjSYhtwRbGZ4R/b1Pw
	DOASZNZWIJIE4vTxYzWfcxzbj9vaGKNoogWqAMOSlxnhw5199/F6xgfkqSv1aanE0ceT5T+WYfKz7
	G9Q6OCGBMgljQCPPa7rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwDB-0000zE-Lq; Tue, 07 May 2019 09:16:33 +0000
Received: from mail-vi1eur04on0605.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::605]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwCe-0000Ix-66
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 09:16:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ne8lUTHYIL86i2wNgDyCIKewW238BE0WWwtYB4rlmGc=;
 b=JXqy3cXiqu9demRVtXbF7foDWlf4FtG1oQFQqOHOAN4lj3XTYpu5vwQvTDW9fAH0eIVnxxjQ96XmNjWWol2kMewbd0qc9/Sl9twmw53viLrCKTghe9H/LEQC874j/E9BJ+QCxXMv9dOLZCFbJSn7AKhZ43/DdgvFHbEaq8t3hcc=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB3184.eurprd04.prod.outlook.com (10.170.229.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Tue, 7 May 2019 09:15:53 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5d07:911b:18e1:1525]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5d07:911b:18e1:1525%4]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 09:15:53 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "robh@kernel.org" <robh@kernel.org>, "broonie@kernel.org"
 <broonie@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Subject: [PATCH v3 03/14] Revert "dmaengine: imx-sdma: refine to load context
 only once"
Thread-Topic: [PATCH v3 03/14] Revert "dmaengine: imx-sdma: refine to load
 context only once"
Thread-Index: AQHVBLV4PrqnG+2A2UC5DKEfCD6/JQ==
Date: Tue, 7 May 2019 09:15:53 +0000
Message-ID: <1557249513-4903-4-git-send-email-yibin.gong@nxp.com>
References: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0088.apcprd04.prod.outlook.com
 (2603:1096:202:15::32) To VI1PR04MB4543.eurprd04.prod.outlook.com
 (2603:10a6:803:6d::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fac4926f-5e8e-464d-310f-08d6d2cc9b0f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3184; 
x-ms-traffictypediagnostic: VI1PR04MB3184:
x-microsoft-antispam-prvs: <VI1PR04MB31842E7330C9B106258675C789310@VI1PR04MB3184.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:119;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(396003)(136003)(376002)(366004)(189003)(199004)(478600001)(2906002)(7416002)(68736007)(81156014)(8676002)(4326008)(6116002)(81166006)(86362001)(2201001)(2501003)(476003)(256004)(446003)(11346002)(14444005)(2616005)(6512007)(486006)(8936002)(3846002)(110136005)(6436002)(36756003)(5660300002)(66066001)(99286004)(54906003)(7736002)(66446008)(64756008)(66556008)(102836004)(66476007)(14454004)(25786009)(73956011)(71190400001)(71200400001)(66946007)(305945005)(386003)(6486002)(53936002)(50226002)(6506007)(76176011)(186003)(52116002)(26005)(316002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3184;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 50ZmTTmWJrPCciKxzS31qpBeLHzbeL3PLWLiuc61sFzxUlH9g+eHVaK2PKMNT+ZtA5kFHIqLsMiNH7GRttraeEAw21OrLNJzayenkR0Za6nhqpKYp0t2s4xTz1vHTUqU4QTNGMKD6D0aRKjx3iQR3vqdWmIrO1l4nAyw9eT43/roGarvvPrs2UUpXn/ipPr4ab/lD+4STG9q9kePoCt9Q6AKkERwfDPefVyVsD3t6490NVWWNMTNQlVLQgGj4TPX8qqxaklA3Td7ScUIvi+DhlqCorOaOe78fM2pfHB6pJYWlQ6SHLiofl8HbkXFORTEBmrjenzPqRDNYjgp1xi6SAggoSYLnEePuraBgm41vaYcbU5DuxgeLFXzjUqMjbKmaOPLNXZXczekJIkZ+yUQ9MLpKB4KCVNHcmriuGfg9cY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fac4926f-5e8e-464d-310f-08d6d2cc9b0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 09:15:53.8380 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_021600_845858_360682E2 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:605 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This reverts commit ad0d92d7ba6aecbe2705907c38ff8d8be4da1e9c, because
in spi-imx case, burst length may be changed dynamically.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/dma/imx-sdma.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 99d9f43..407a56e 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -377,7 +377,6 @@ struct sdma_channel {
 	unsigned long			watermark_level;
 	u32				shp_addr, per_addr;
 	enum dma_status			status;
-	bool				context_loaded;
 	struct imx_dma_data		data;
 	struct work_struct		terminate_worker;
 };
@@ -988,9 +987,6 @@ static int sdma_load_context(struct sdma_channel *sdmac)
 	int ret;
 	unsigned long flags;
 
-	if (sdmac->context_loaded)
-		return 0;
-
 	if (sdmac->direction == DMA_DEV_TO_MEM)
 		load_address = sdmac->pc_from_device;
 	else if (sdmac->direction == DMA_DEV_TO_DEV)
@@ -1033,8 +1029,6 @@ static int sdma_load_context(struct sdma_channel *sdmac)
 
 	spin_unlock_irqrestore(&sdma->channel_0_lock, flags);
 
-	sdmac->context_loaded = true;
-
 	return ret;
 }
 
@@ -1074,7 +1068,6 @@ static void sdma_channel_terminate_work(struct work_struct *work)
 	sdmac->desc = NULL;
 	spin_unlock_irqrestore(&sdmac->vc.lock, flags);
 	vchan_dma_desc_free_list(&sdmac->vc, &head);
-	sdmac->context_loaded = false;
 }
 
 static int sdma_disable_channel_async(struct dma_chan *chan)
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
