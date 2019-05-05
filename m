Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D5013CFB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 05:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aC2Bfm2QbQ0r5L+ks3YTS+aMk4KvJoz5JdvaNth87wI=; b=lU6CtVNpqDtncM
	IdF2hHr/QRcMRy6RX7LSxmAV/9Ox3337GEVccoqGW1rWiejyniPqBXC0WseJukvu3FxPY3NaV5sme
	7cq0DkbaTQHnee+cPE9kI5jNxlX6CcbISAlfuHSMAtsrWD3LSvhxoEY3GPry9bJmIv3fE8B9XAEZL
	VpD3TSuQIJBqlDye+pBAWo2odi+XyfgBaUOKdjCNyk/1mbCjysiimK0MdQzxAST1mM0V9+uEHsdd4
	9SacGmcLmSVQ2evMzgrbW/Tk+vunn7kxIZUkRviE0eK0x5+l54pgc14W15oM1uo+mgwBYVOoeiYR8
	SSfw4SaSpzQC2HnoFp8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN7sr-0006VX-JA; Sun, 05 May 2019 03:32:13 +0000
Received: from mail-ve1eur02on0625.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::625]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN7se-0006V0-HM
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 03:32:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6mRpMsbd2ECkI5XqAmmm/Zo5WsjadPqWFJytnNcIp+I=;
 b=ljiQ50tdcX5x2ByQp5VTXSOzuN6NZwgboS6NsCsiUoqKYgZ9qJvthsjQjahEOhVmVgyfuELWCV+m5LWaBSafRRPgxxYNuX4k4AteJf4REYoiI3xcbkjQm74tJwH7mbw5FvkvnrWHiSghj6FagbmdzmksGrpnramcZHM+QhA/faA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3788.eurprd04.prod.outlook.com (52.134.72.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Sun, 5 May 2019 03:31:55 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 03:31:55 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "wsa+renesas@sang-engineering.com"
 <wsa+renesas@sang-engineering.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>, "eha@deif.com" <eha@deif.com>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>, Laurentiu Tudor
 <laurentiu.tudor@nxp.com>, "peda@axentia.se" <peda@axentia.se>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] i2c: imx: Use __maybe_unused instead of #if CONFIG_PM
Thread-Topic: [PATCH] i2c: imx: Use __maybe_unused instead of #if CONFIG_PM
Thread-Index: AQHVAvMW5SvMlMIW0UqHU1fqWG2/GA==
Date: Sun, 5 May 2019 03:31:55 +0000
Message-ID: <1557026820-29428-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0083.apcprd04.prod.outlook.com
 (2603:1096:202:15::27) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c9540aff-ad98-4d8d-db10-08d6d10a38a7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3788; 
x-ms-traffictypediagnostic: DB3PR0402MB3788:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <DB3PR0402MB378857C27D412E423ABB9F15F5370@DB3PR0402MB3788.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(376002)(346002)(39860400002)(199004)(189003)(53936002)(7736002)(6486002)(6506007)(386003)(2501003)(2616005)(26005)(316002)(7416002)(73956011)(66446008)(64756008)(66556008)(66476007)(66946007)(3846002)(6116002)(50226002)(186003)(8936002)(81166006)(81156014)(8676002)(68736007)(5660300002)(71190400001)(86362001)(71200400001)(110136005)(2201001)(4326008)(25786009)(6436002)(36756003)(2906002)(486006)(478600001)(99286004)(14454004)(476003)(6512007)(66066001)(14444005)(256004)(52116002)(102836004)(305945005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3788;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HPBTnNEugpty74EITfg67+mf6/dreXESJNSkpDbEon4gPF1Ax6kLqNRsfpPqPTnF9s5pBRgiFYVDSc7IPSErh35hWTF+waF/UO9uMwe6PDUxYQLyUdnLSJlkRy7jYkmCZsgBeUW5MzZD7tWoV+xc0jO6o9ZuoZpx+slpB6rjoZGRUPTKnHJ9KnPgbZlVIGvTceFPcW04RYhRmpjZmsDOHrGugOW2szfnz5rMWmmkiDTkj7hAda30dA0GhyEV8CTUcvcdUqTopGXcCaRFFn6CdpH61qyIGnioRc8u/SH8cNW9Jy6n2GpLimNPFR6eGzbEfyYqGECeP+R+IPKoqpGr2wY6mKMIv2N7Ui519ZDIko+WlkzSHbj/WjE8X8sRWjDi1kAP+xYLPSmIbI3KvuZwq1sQ1zw3+CwS9boI7J6C/qE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9540aff-ad98-4d8d-db10-08d6d10a38a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 03:31:55.3479 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3788
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_203200_580595_B4293386 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:625 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Use __maybe_unused for runtime PM related functions instead
of #if CONFIG_PM to simply the code.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/i2c/busses/i2c-imx.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index fd70b11..b1b8b93 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -1220,8 +1220,7 @@ static int i2c_imx_remove(struct platform_device *pdev)
 	return 0;
 }
 
-#ifdef CONFIG_PM
-static int i2c_imx_runtime_suspend(struct device *dev)
+static int __maybe_unused i2c_imx_runtime_suspend(struct device *dev)
 {
 	struct imx_i2c_struct *i2c_imx = dev_get_drvdata(dev);
 
@@ -1230,7 +1229,7 @@ static int i2c_imx_runtime_suspend(struct device *dev)
 	return 0;
 }
 
-static int i2c_imx_runtime_resume(struct device *dev)
+static int __maybe_unused i2c_imx_runtime_resume(struct device *dev)
 {
 	struct imx_i2c_struct *i2c_imx = dev_get_drvdata(dev);
 	int ret;
@@ -1246,17 +1245,13 @@ static const struct dev_pm_ops i2c_imx_pm_ops = {
 	SET_RUNTIME_PM_OPS(i2c_imx_runtime_suspend,
 			   i2c_imx_runtime_resume, NULL)
 };
-#define I2C_IMX_PM_OPS (&i2c_imx_pm_ops)
-#else
-#define I2C_IMX_PM_OPS NULL
-#endif /* CONFIG_PM */
 
 static struct platform_driver i2c_imx_driver = {
 	.probe = i2c_imx_probe,
 	.remove = i2c_imx_remove,
 	.driver = {
 		.name = DRIVER_NAME,
-		.pm = I2C_IMX_PM_OPS,
+		.pm = &i2c_imx_pm_ops,
 		.of_match_table = i2c_imx_dt_ids,
 	},
 	.id_table = imx_i2c_devtype,
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
