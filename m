Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE4F24B56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 11:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmEYlZShghIRXiQKKKJ2vccyioRL9G6dLapRtIgngcs=; b=H024fnO6iG6cbO
	TLqeLbrelrvZe2bWkFuJR4cOl8SpNGU51vBivpo+a4rd5m66gSpH0pGdDLIO6OL/blSw4EhXPtzbL
	q1hbLbJdLW0oKPgx4hB3bsvrpBGdRJIJ+PN1RD2e2dmuPjjFLRBKYbWaFfC5n+vrOdf4nzlkC1cmy
	DTONOAe1pVcnjULdoUSf3MV3+mbnsFSrbiga6akZhys2O/W7HdC496qnZ68Zx0T8Dl7BZdviyaLZu
	z1TWakrrTCkdNHw1JW1cj9eQqLGrHJJltfXWLu/OS19C1bbbCVMZUE716otxRsZHyVU0BFzwPkXlG
	EB8ciPIOXbpCnAF6y3og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0vQ-0006o7-Vg; Tue, 21 May 2019 09:19:12 +0000
Received: from mail-eopbgr70072.outbound.protection.outlook.com ([40.107.7.72]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0v5-0006IV-Od
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 09:18:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cDXV9sd1Djn5Bn22Jgk3MQhJQzKn/iBzT41zZiefFs4=;
 b=JqEn9IndEqUJm5kH91/1OE6VyI2ZNoJBdZcvYacGQa02POMcWk8Eyd89Svzxhmy/lITl3aBQLZMmL8zuSMj1dOsJUKRMlJUAFn1tv5olBfQSBAuYFeWng2cxfyP8EB3nGXqumUIDwfottiOK5AxZcUemwpljWEqYhvsmCoh96kA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3836.eurprd04.prod.outlook.com (52.134.71.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 21 May 2019 09:18:46 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 09:18:46 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/2] soc: imx: soc-imx8: Correct return value of error handle
Thread-Topic: [PATCH 2/2] soc: imx: soc-imx8: Correct return value of error
 handle
Thread-Index: AQHVD7YxLwkXfUp5nUSx1qNWKadvJQ==
Date: Tue, 21 May 2019 09:18:46 +0000
Message-ID: <1558430013-18346-2-git-send-email-Anson.Huang@nxp.com>
References: <1558430013-18346-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1558430013-18346-1-git-send-email-Anson.Huang@nxp.com>
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
x-ms-office365-filtering-correlation-id: 0b6409a7-796d-4d19-ba5d-08d6ddcd53ec
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3836; 
x-ms-traffictypediagnostic: DB3PR0402MB3836:
x-microsoft-antispam-prvs: <DB3PR0402MB3836D7AFA6732262BD0F9A37F5070@DB3PR0402MB3836.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:826;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(376002)(136003)(346002)(396003)(199004)(189003)(4326008)(486006)(256004)(14454004)(26005)(81156014)(8676002)(81166006)(8936002)(6486002)(2201001)(2501003)(6436002)(6512007)(7736002)(86362001)(53936002)(3846002)(36756003)(25786009)(6116002)(71200400001)(71190400001)(5660300002)(66066001)(64756008)(66446008)(102836004)(50226002)(52116002)(76176011)(99286004)(2616005)(66556008)(66476007)(73956011)(66946007)(186003)(476003)(386003)(6506007)(478600001)(2906002)(305945005)(316002)(68736007)(446003)(110136005)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3836;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Z9jKLa+tBdDHKIBB8k6M/mKoU2nwYeLtEBMk7oaxflRAOyhSODIYHDqjnfCvjDnH/EwFcuVzWuU7fUv6/Te4/8xFAJz8hTP9Lda2VS1QcZu/Q9DjnQ5HWfuHeXekWyVXal9i5vdl+ECbuENypGnlR4SfQBfyn8MBadLHLh0zUQG/xfzE33Au5jerrMx9x4jbB9kd8O8e/xo6Enq0kH/Ij+SnISCp/pFcomH016tm/hmUlbTOZOB8VNHb1mrwVxC7T7WFTtX7cJq5qpqY4BKloqmm+I12e1LCFKXEDgKdrr9ZjIkb2Ho3GvE9T5C78iV6Ga+SfVZ11xPZ4z89xCYXIbOqVWkIZlS4uUm6tvbbNL3BJP9qwjT1HPlvSHclDwc625f8OL65Fgr4T7Rnp4xVnNqHszwBXp7cCNAfjAlYxPw=
Content-ID: <4B919C90F1B2E04AA40C3C8EF9061E36@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b6409a7-796d-4d19-ba5d-08d6ddcd53ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 09:18:46.8369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3836
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_021851_802632_9768119A 
X-CRM114-Status: GOOD (  13.79  )
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

Current implementation of i.MX8 SoC driver returns -ENODEV
for all cases of error during initialization, this is incorrect.
This patch fixes them using correct return value according
to different errors.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/soc/imx/soc-imx8.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
index 944add2..9dd088f 100644
--- a/drivers/soc/imx/soc-imx8.c
+++ b/drivers/soc/imx/soc-imx8.c
@@ -73,7 +73,7 @@ static int __init imx8_soc_init(void)
 
 	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
 	if (!soc_dev_attr)
-		return -ENODEV;
+		return -ENOMEM;
 
 	soc_dev_attr->family = "Freescale i.MX";
 
@@ -83,8 +83,10 @@ static int __init imx8_soc_init(void)
 		goto free_soc;
 
 	id = of_match_node(imx8_soc_match, root);
-	if (!id)
+	if (!id) {
+		ret = -ENODEV;
 		goto free_soc;
+	}
 
 	data = id->data;
 	if (data) {
@@ -94,12 +96,16 @@ static int __init imx8_soc_init(void)
 	}
 
 	soc_dev_attr->revision = imx8_revision(soc_rev);
-	if (!soc_dev_attr->revision)
+	if (!soc_dev_attr->revision) {
+		ret = -ENOMEM;
 		goto free_soc;
+	}
 
 	soc_dev = soc_device_register(soc_dev_attr);
-	if (IS_ERR(soc_dev))
+	if (IS_ERR(soc_dev)) {
+		ret = PTR_ERR(soc_dev);
 		goto free_rev;
+	}
 
 	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
 		platform_device_register_simple("imx-cpufreq-dt", -1, NULL, 0);
@@ -113,6 +119,6 @@ static int __init imx8_soc_init(void)
 free_soc:
 	kfree(soc_dev_attr);
 	of_node_put(root);
-	return -ENODEV;
+	return ret;
 }
 device_initcall(imx8_soc_init);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
