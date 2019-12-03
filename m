Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B6310F4FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 03:32:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yDTV6eLYcfDiircyoF70BenUC8jaXh6c4A07Vf8OaIs=; b=IoR1JOmdbdTZjl
	sECh+IeNLsAIRuBajE9NKNGMg2dqbpYhgkCMvTJI49YejPz/8wZ8wTTn/f8s7sPIWqp9ZZXyQVFLH
	g6gY0yYhS7wLKWNK5j1J2j7fW+Vt6DJnVniIwbz4pIC3nbyg9ysvEwfk1HNlKmjAWzxRs7DIRRg/s
	hj8iCnudzqE5cB32ePMB4Vv1x7JsIDVbuiYOmL3NEz59XfkqBd6+IVoy1U/7Q3i1/t0y5pR0XBeKk
	AuWoFs7fwmQ83+3T+X9rS56FbrTPmNFkyG3sHE4GjVyKjGtkLYiZlIn1eEsjqZe8kbzXzeDnXYDCF
	m+vmwHn/VoKJjGJj6NyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibxzZ-0001Dv-FS; Tue, 03 Dec 2019 02:32:45 +0000
Received: from mail-eopbgr00050.outbound.protection.outlook.com ([40.107.0.50]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibxzQ-0001CZ-QX
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 02:32:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LamP8MiNuJHH/a2uAHdHgseyfFplV8AKjU6HAkvShZ3sF1PMx+KmPKl9eQ7BWVEg7kZwVE0CnVRoQSJWE7XkZRxFJP0cD7batjO2Xx9/vCjU7bXFfX1JrbUxM1aKWSGNyVoI0YgmxN/eV1zYwwh9R80tUpPR6uhchURO1oRFFfmTeO2hL75A+VIHxVjyB5kMwpgBpZwY00iazkbCA6sofitpDgYR+vvmQz5FVE9twYqFDSSSrVdJTAgU1E58l//hoxnZCjQ4M5sHp7BOvsRuOh2vD5ijdRxAcyLxkkry1r9j3Ymowt7b8seAdjoarViKXy7SuYywXDUup15NmKDs2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3D1TW5QcPIxfp6193c5nZsIwl84BW5u/Jdq9abmPRMo=;
 b=d5WHUdo/yFrNONKghe3Hg+NVeaitgG4iCocJub9G/uX8BNiLEwT7uY4z723dJrjGcYMafJXxlL8n5HmhMfEEo6SCMsx6OQJBAd6JqvOI2DXzJLt2IHslAbZTPoZ7GodUrNf+F6QZNdyh1N/2UFhePTLnwN8+DRbqVYgHuLpd3QhJ+xrUi/v06rXLpmZmmJeP5STQNZvPGEcsczU69IxvGviXcpggiX8vHzcp6v+jeCTl0Vm4NSEOaBd3xARyhWeObYRl5itoSpRy79ahyimpPKRezq7aikWIQN5vJwRPac+hpnbSbaP1FvmN4VSfCecKRjCnkCHLJk9n8CmqiMvvVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3D1TW5QcPIxfp6193c5nZsIwl84BW5u/Jdq9abmPRMo=;
 b=s2eFMdhy07WCq/9x3DSdw401MysS8Y+SMU4NeQVP9XSK4LUadXJEbniID/9a8A8QPZ4F1tjFCNt4WsEUQ39HrO9p5ikDtEojfDxDjEe6pqLlY1o9jZjPIfTYRb210Dqmdm+Q+RuMKmGmLfhuHXYzuDWfBh23A8FVX0Mm4qgONSo=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4691.eurprd04.prod.outlook.com (20.176.214.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Tue, 3 Dec 2019 02:32:29 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 02:32:29 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: [PATCH] nvmem: imx: scu: fix write SIP
Thread-Topic: [PATCH] nvmem: imx: scu: fix write SIP
Thread-Index: AQHVqYHoZrnIZ3I0wkeIFm0IrQxq7g==
Date: Tue, 3 Dec 2019 02:32:29 +0000
Message-ID: <1575340217-1402-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2P15301CA0002.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::12) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7336d812-9b3e-4a04-9e5d-08d777990a9d
x-ms-traffictypediagnostic: AM0PR04MB4691:|AM0PR04MB4691:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB469181E92F20FB7659EC6B7E88420@AM0PR04MB4691.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(376002)(346002)(39860400002)(136003)(189003)(199004)(102836004)(81166006)(81156014)(6512007)(71190400001)(71200400001)(86362001)(50226002)(5660300002)(6436002)(4744005)(14454004)(6486002)(99286004)(66446008)(64756008)(66556008)(66476007)(66946007)(26005)(8676002)(2501003)(2906002)(6506007)(386003)(44832011)(25786009)(66066001)(2201001)(478600001)(305945005)(316002)(7736002)(4326008)(2616005)(36756003)(6116002)(110136005)(3846002)(54906003)(8936002)(256004)(52116002)(186003)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4691;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6MyJJmHmLtksq/5Sy0KP40smkJHhI5CFO/G8WzcUJRf4aGEQLqBEYVuTe/2FXegoLJ6tKouPO19Sgg3LvxIDZuNWt2IbNk5GFWLtVCZGtYqNtiGBFKL5bANgnP2itmt0FyICzXuOWbMm7yXtdV4lo4VDwl/iODyDjpv1AJxitlB6uvYIfDFYAgrGBMflv/vrsoFca+NZyxNuGHSCOb8uqgObnRBdxULS5uuP7XH+4l7C7gM35DNtyf1EJ4hnfq4ZXcMVk1KR7qdCZzkavfQSBgjVgX1/N+AmS1dqgLS500cjAs2msurVBrJT4LJ+gdWMOa46vZ5YOZ+Ycl4ibysImn5WeFmx1i94Kq0+p3G5SEBKLCdsHIdE7/er7ATe9DrO5WzBKf/viFGXaSKQEl0qGl9uRMwcC0w9OSVh2mwByTVq0RjCj2NmgUGnT3pbhVqE
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7336d812-9b3e-4a04-9e5d-08d777990a9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 02:32:29.2075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IaZFc2/s9ICoS2TrzjtvPjRdH0cdk000/I4//YvXCYGa5PgcEzCzVsSAqp298Z/+yIGgGJBsN/j/BW9T8IRkUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4691
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_183236_935843_76BFD2FA 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alice Guo <alice.guo@nxp.com>,
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

SIP number 0xC200000A is for reading, 0xC200000B is for writing.
And the following two args for write are word index, data to write.

Fixes: 885ce72a09d0 ("nvmem: imx: scu: support write")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/nvmem/imx-ocotp-scu.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
index 03f1ab23ad51..455675dd8efe 100644
--- a/drivers/nvmem/imx-ocotp-scu.c
+++ b/drivers/nvmem/imx-ocotp-scu.c
@@ -15,8 +15,7 @@
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 
-#define IMX_SIP_OTP			0xC200000A
-#define IMX_SIP_OTP_WRITE		0x2
+#define IMX_SIP_OTP_WRITE		0xc200000B
 
 enum ocotp_devtype {
 	IMX8QXP,
@@ -212,8 +211,7 @@ static int imx_scu_ocotp_write(void *context, unsigned int offset,
 
 	mutex_lock(&scu_ocotp_mutex);
 
-	arm_smccc_smc(IMX_SIP_OTP, IMX_SIP_OTP_WRITE, index, *buf,
-		      0, 0, 0, 0, &res);
+	arm_smccc_smc(IMX_SIP_OTP_WRITE, index, *buf, 0, 0, 0, 0, 0, &res);
 
 	mutex_unlock(&scu_ocotp_mutex);
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
