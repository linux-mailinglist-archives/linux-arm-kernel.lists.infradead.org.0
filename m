Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29C524B55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 11:19:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t/RtxpE6ZZH8Z20PxcDlt1zhO16NKVh/ot7oEO49hy8=; b=utKxUH5UAuRSg6
	xzMc9z+kdkc8yXBvkk9s060XcjQVoS9brr8F9C/vs/t76zqY0tp0IsncoPcYMrJtsuYCCrN0I28xD
	Pwyy3+JChaCyx4xGjF5rPcLTx5EXDlI8mw+eqb7C2urhDknt7f5hKjqQHHv/GwLXY59Nwx21tTGRa
	SmRqyk+76I9MYP/JDUYbyuXjdyDnkbusJdpxKOnu8u0Ptxp7m58LcDkRiqUYRUMUlqmesq/MVpMS5
	SJLovtE+TCoMKC+fCK4tEkILBJMVmdj4Xyvo2c0kkkTOIV3dNRU1Uk8u0tcQhN5PMljieEfbMDsMf
	5eQzrUfyrPXSRaNvnb/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0vC-0006Uq-Pv; Tue, 21 May 2019 09:18:58 +0000
Received: from mail-eopbgr70072.outbound.protection.outlook.com ([40.107.7.72]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0v2-0006IV-31
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 09:18:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YSzlrVus6h4wgDGfi7rOg2cKnK8z3Gki/jd2MrlQMb4=;
 b=gZYCgIsmPgoF3ROdvs/CawdERYiy92dvA8TC2dU8aHz/1T/thRFlMGDkgYy8AjxhnhElYVJj04ouduWHuPTav1tbeeG0V0JBHv1+ro/go4KYb595Cp/LtzCYC9+2nztWBrr74zyNfqPu/Dzx3gxUQA9zPvZb7rpZB0Gt79+I5cU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3836.eurprd04.prod.outlook.com (52.134.71.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 21 May 2019 09:18:43 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 09:18:43 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] soc: imx: soc-imx8: Avoid unnecessary of_node_put() in
 error handling
Thread-Topic: [PATCH 1/2] soc: imx: soc-imx8: Avoid unnecessary of_node_put()
 in error handling
Thread-Index: AQHVD7YvdNtmZ2uz6UeyYdwfC+FzEA==
Date: Tue, 21 May 2019 09:18:43 +0000
Message-ID: <1558430013-18346-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0005.apcprd04.prod.outlook.com
 (2603:1096:202:2::15) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92db3c01-4687-4cb2-5f4b-08d6ddcd517e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3836; 
x-ms-traffictypediagnostic: DB3PR0402MB3836:
x-microsoft-antispam-prvs: <DB3PR0402MB38360E22BA9C55A00701AFB9F5070@DB3PR0402MB3836.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(376002)(136003)(346002)(396003)(199004)(189003)(4326008)(486006)(256004)(14454004)(26005)(81156014)(8676002)(81166006)(8936002)(6486002)(2201001)(2501003)(6436002)(6512007)(7736002)(86362001)(53936002)(3846002)(36756003)(25786009)(6116002)(71200400001)(71190400001)(4744005)(5660300002)(66066001)(64756008)(66446008)(102836004)(50226002)(52116002)(99286004)(2616005)(66556008)(66476007)(73956011)(66946007)(186003)(476003)(386003)(6506007)(478600001)(2906002)(305945005)(316002)(68736007)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3836;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OhrtVyWcq7jHAm/gdy2b/sT2EbBOqcTHgH1rK2xcPl/eEjGFcNKyAA2LO4ChIj+23ryuYzWlKZiW1Pr29RGjwefSqb7iwimlm9PPH7XKXkA5k+CChNEnb7Dnq+KCgD07QcO1kn9vjyo77Sb67cZpJKvLdoymFVPNdFBtZooHAvgo8hRUpdjX9YSbn1UFrigx/EYIEkdIKc3O9FnrOQaowZbk6mBj7eCM7BGkwe0oESVjUtBWY0LmLev6/UaOolrvYtzBi0d4+NYtfiTN+gmMQuFYAEQllFCxRzD5Twe2LO78Hnwt8k05P2/1VLuuxPJKJ3q6peilEgLCduG6G1xXxJqoHPARCIOmZQmsW3N4s4ht8HNj1FkwVSGf1bo3uqEyAswgWsMP7Ko2lzTeKY1QOiQeghZPR0y/+jcFW1pjggw=
Content-ID: <CF5C1AA984D9574AB2DA00BC5C569C7D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92db3c01-4687-4cb2-5f4b-08d6ddcd517e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 09:18:43.1360 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3836
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_021848_360925_FC5145A3 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

of_node_put() is called after of_match_node() successfully called,
then in the following error handling, of_node_put() is called again
which is unnecessary, this patch adjusts the location of of_node_put()
to avoid such scenario.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/soc/imx/soc-imx8.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
index b1bd8e2..944add2 100644
--- a/drivers/soc/imx/soc-imx8.c
+++ b/drivers/soc/imx/soc-imx8.c
@@ -86,8 +86,6 @@ static int __init imx8_soc_init(void)
 	if (!id)
 		goto free_soc;
 
-	of_node_put(root);
-
 	data = id->data;
 	if (data) {
 		soc_dev_attr->soc_id = data->name;
@@ -106,6 +104,8 @@ static int __init imx8_soc_init(void)
 	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
 		platform_device_register_simple("imx-cpufreq-dt", -1, NULL, 0);
 
+	of_node_put(root);
+
 	return 0;
 
 free_rev:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
