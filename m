Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6C9F0D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 09:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HY458Kltw/V+QjCKeZaljmfBBEMM8eSM4+xfcCzhuxE=; b=Kb1eOziNRh4LHE
	dXaoqCmop0h7AuTOzDw7cdxZWmPNM6LQz+TkaxU3OnS3xokG1UOgwCgvNtys4y92b9q5z2v7VDUid
	1M7SXjn31O45OT9chwJWTUeYPDkOn6cEM8QyRZUxBa+tvJAUKoPm8pxZAgM+mXorp8gjx3QXwlB5B
	eK49UWKRx7ur3w+wl2wZlCQJiwsTo6Cyiq/3mp5o7rBhHzGP8bjDGdckNXgp7vA0ui0tK5JRrKYvP
	lL1rfMWvocXuZxYPmhI46vjqdZBbc+8kK68dgZBUSRdk+VaclXF0cuWDfGrpYwJTHLkXnhziF5hHw
	H60umW+VJKFMznS/LDAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLMkR-0003qu-Vh; Tue, 30 Apr 2019 07:00:16 +0000
Received: from mail-eopbgr80058.outbound.protection.outlook.com ([40.107.8.58]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLMkK-000300-Tv
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 07:00:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sWodjOc56GxoRXJ7b11rcRr8UAVFM0lQ1Ry7eKPeeLM=;
 b=eZMoWDLFzYyks9u5PeskXeGo0vSL2+rM75BGqOh3YBE5DDUJOXP1tSk0zXESe6lRLH7WF/PTwtJXUj02U6IFoUTgyyfyLTLKCsxSQZanr0nrumi3dnRFXMhKzSE5JhmvPVKNp7YifKIVxUyRbqvDuGKP1Q7lLynNUNQLUl/zPIk=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3913.eurprd04.prod.outlook.com (52.134.65.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Tue, 30 Apr 2019 07:00:02 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.008; Tue, 30 Apr 2019
 07:00:02 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "linux-i2c@vger.kernel.org"
 <linux-i2c@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] i2c: imx-lpi2c: Use __maybe_unused instead of #if
 CONFIG_PM_SLEEP
Thread-Topic: [PATCH] i2c: imx-lpi2c: Use __maybe_unused instead of #if
 CONFIG_PM_SLEEP
Thread-Index: AQHU/yJVTGic+X2v4ESo316NmJN4TA==
Date: Tue, 30 Apr 2019 07:00:02 +0000
Message-ID: <1556607314-32401-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0049.apcprd03.prod.outlook.com
 (2603:1096:203:52::13) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c36baed-b0ed-4d30-20f7-08d6cd39779b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3913; 
x-ms-traffictypediagnostic: DB3PR0402MB3913:
x-microsoft-antispam-prvs: <DB3PR0402MB3913FCFB62D55930AB342259F53A0@DB3PR0402MB3913.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(136003)(39850400004)(366004)(189003)(199004)(81166006)(305945005)(25786009)(52116002)(14454004)(316002)(64756008)(110136005)(99286004)(14444005)(8676002)(256004)(66476007)(66556008)(66446008)(8936002)(73956011)(81156014)(66946007)(7736002)(50226002)(68736007)(97736004)(478600001)(53936002)(71200400001)(2201001)(86362001)(6436002)(4326008)(2616005)(476003)(486006)(6486002)(71190400001)(186003)(66066001)(2906002)(26005)(6512007)(6116002)(3846002)(5660300002)(386003)(2501003)(6506007)(36756003)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3913;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cQZ/y2g4Ao7edhl43KTfUF/Z2+id2uSMNeSz3OYjNyfxvezUsFYIs7Fx0HGfg7iKoF5ClgIox2Fy4HvkGF/zSlCqDfAlhOKtyu4VYt3Z3whbuWJ+UzwhaKxR0nV3DqADyk4C6F6XYGHSQubKWMfacUugfEoxkbbM3ivBcC/F2HeUvikeZ+OOEKv877zV0EmFWrRC2L/N1z0tIlOttrWXMZyJ9FJtip3W6lwFr9dPeuGLWlT/EfhjmiaCFcF23wrgZDUa7Qce0O4yR3q/DrTdOy2Z7PinSX02GF0TCM73ECxfiB4F3XVInTFB2TOoAmR106oJVHvDDBduclfC6yutUr4WcHC4DWCcHxPtM7IkBoGRWs6FNA9uLch2UbZXU1/rCQroh+AjnfGVaPlw5dgvmuVY01v1cfy/tpONv/al6bw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c36baed-b0ed-4d30-20f7-08d6cd39779b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 07:00:02.7402 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3913
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_000008_972602_D8A54B6C 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.58 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use __maybe_unused for power management related functions
instead of #if CONFIG_PM_SLEEP to simply the code.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/i2c/busses/i2c-imx-lpi2c.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx-lpi2c.c b/drivers/i2c/busses/i2c-imx-lpi2c.c
index 06c4c76..dc00fab 100644
--- a/drivers/i2c/busses/i2c-imx-lpi2c.c
+++ b/drivers/i2c/busses/i2c-imx-lpi2c.c
@@ -639,8 +639,7 @@ static int lpi2c_imx_remove(struct platform_device *pdev)
 	return 0;
 }
 
-#ifdef CONFIG_PM_SLEEP
-static int lpi2c_runtime_suspend(struct device *dev)
+static int __maybe_unused lpi2c_runtime_suspend(struct device *dev)
 {
 	struct lpi2c_imx_struct *lpi2c_imx = dev_get_drvdata(dev);
 
@@ -650,7 +649,7 @@ static int lpi2c_runtime_suspend(struct device *dev)
 	return 0;
 }
 
-static int lpi2c_runtime_resume(struct device *dev)
+static int __maybe_unused lpi2c_runtime_resume(struct device *dev)
 {
 	struct lpi2c_imx_struct *lpi2c_imx = dev_get_drvdata(dev);
 	int ret;
@@ -671,10 +670,6 @@ static const struct dev_pm_ops lpi2c_pm_ops = {
 	SET_RUNTIME_PM_OPS(lpi2c_runtime_suspend,
 			   lpi2c_runtime_resume, NULL)
 };
-#define IMX_LPI2C_PM      (&lpi2c_pm_ops)
-#else
-#define IMX_LPI2C_PM      NULL
-#endif
 
 static struct platform_driver lpi2c_imx_driver = {
 	.probe = lpi2c_imx_probe,
@@ -682,7 +677,7 @@ static struct platform_driver lpi2c_imx_driver = {
 	.driver = {
 		.name = DRIVER_NAME,
 		.of_match_table = lpi2c_imx_of_match,
-		.pm = IMX_LPI2C_PM,
+		.pm = &lpi2c_pm_ops,
 	},
 };
 
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
