Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 378ED1AB51
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 10:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PiammAhS7nSK6epu4ccmhckz6j/leSlwOXoOMV9j5tE=; b=dAijlN1RJXBYRo
	p+9cfPk/fDirOQtF+Uc340VIAF+vy5rFNMSgcLwBnZccEubnUphKK3k9wQP1Usqd9dNBRsocIUhWO
	kTRbtnc44pKA0VGS4bg6Gl0Fpq1QuYhjnOo78p4OJUxuMW8TWJXzTyvOF5L9TEfY4amEB7eM8/PAz
	p/062St3aAzUA3kXrV0oBPsXUOf5r7tKneAI4Tuy/Cs/a5GM50FV3WgHOcye+7K1OMpNkpO8SG/Kn
	K1+24vAOUC7juxMGA8Wp1vadyweuqP5YU7kF9KTiGJhyW/67pmSXts0U9xmosjWTRxFPVRZ3yXkDh
	blc85fklQtFrZD7SAR8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPkCe-0000zT-Ie; Sun, 12 May 2019 08:51:28 +0000
Received: from mail-eopbgr70041.outbound.protection.outlook.com ([40.107.7.41]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPkCW-0000z8-Qw
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 08:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TDJ/qW6lbDzjrjMOB+Uej4+nV7CPKZuwtBnkVpbpyOI=;
 b=DwgfIf3/MDhUYp/tVMrqf7XFIjt149QtQLnh3XcgAHQNrrHF0iOR+zlQa71Ncr9c/l33dUvUKTcR9iRzu2MsjQyp/XmmzNldikDy1hkzzDKGegKh9kbAWxtXPZGBl0b8WnC9AqQyydzvWPvu+4bIZF8d8p3s0cD3g6/cgHcoWQ8=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3739.eurprd04.prod.outlook.com (52.134.67.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Sun, 12 May 2019 08:51:15 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Sun, 12 May 2019
 08:51:15 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "otavio@ossystems.com.br"
 <otavio@ossystems.com.br>, Leonard Crestez <leonard.crestez@nxp.com>,
 "schnitzeltony@gmail.com" <schnitzeltony@gmail.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "jan.tuerk@emtrion.com" <jan.tuerk@emtrion.com>, Robin Gong
 <yibin.gong@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V12 RESEND 1/3] ARM: imx_v6_v7_defconfig: Add TPM PWM support
 by default
Thread-Topic: [PATCH V12 RESEND 1/3] ARM: imx_v6_v7_defconfig: Add TPM PWM
 support by default
Thread-Index: AQHVCJ/ba2U9z0dY2k6pxI/P2DhoFA==
Date: Sun, 12 May 2019 08:51:15 +0000
Message-ID: <1557650772-11973-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0043.apcprd03.prod.outlook.com
 (2603:1096:202:17::13) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b553a5ba-b060-4ace-8b11-08d6d6b6fddf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3739; 
x-ms-traffictypediagnostic: DB3PR0402MB3739:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0402MB37396650EA1D2665169013CEF50E0@DB3PR0402MB3739.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(346002)(396003)(376002)(199004)(189003)(966005)(36756003)(186003)(66556008)(476003)(66446008)(66946007)(66476007)(64756008)(486006)(14454004)(2501003)(66066001)(2906002)(2616005)(256004)(73956011)(478600001)(4326008)(3846002)(6116002)(25786009)(26005)(102836004)(6436002)(7736002)(305945005)(53936002)(6506007)(386003)(6486002)(6512007)(6306002)(7416002)(2201001)(86362001)(4744005)(316002)(110136005)(68736007)(81156014)(81166006)(8676002)(8936002)(50226002)(71190400001)(71200400001)(52116002)(99286004)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3739;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uOXkVo64ZCmRcSVwKHFXssUjheR3ubvA3CfMc75m1hs5vZ+zMDy661YrnknEVvn8cKTVZVuzhR6cZ6t/En7qf7ScJ8phaj92FLKSA15TfVwW+rm2q8HY09knzpce91cCJX31h9VjUNiqpcGDKizpy42dtacZxE4i9+1jaRirlA+G2qqTV0Yum5vCWGRxAnV1Cv1mUlpxaeQq4hMh9oJm9oZcLvT0bZC3T/dMDlsXH7Q3vmXqIE27N0+BUFpUTcclv0UwpVpWlm9nVNrmQdDmaO4mzDbKwSPR0qHIKeqjK0L+zh/KpM8hDc+QU9EJ/A0ZQsVpZEpOTOQagnJtGzeHfK9PnLwJM92EQyhnO/kYSOLVwFfnQKkqwRD6N199nOlZEzmVagvecUU7g7dVy6dEdWx4KGAkFN920ZBm9TAWlB0=
Content-ID: <920B8BDFCC09454ABCA20E7BFC63ED42@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b553a5ba-b060-4ace-8b11-08d6d6b6fddf
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 08:51:15.7445 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3739
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_015120_870992_0821BC4D 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.41 listed in list.dnswl.org]
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

Select CONFIG_PWM_IMX_TPM by default to support i.MX7ULP
TPM PWM.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change change, just resend the patch with correct encoding for patch series:
https://patchwork.kernel.org/patch/10937147/
---
 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index ea387cb..cee7c61 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -402,6 +402,7 @@ CONFIG_MPL3115=y
 CONFIG_PWM=y
 CONFIG_PWM_FSL_FTM=y
 CONFIG_PWM_IMX27=y
+CONFIG_PWM_IMX_TPM=y
 CONFIG_NVMEM_IMX_OCOTP=y
 CONFIG_NVMEM_VF610_OCOTP=y
 CONFIG_TEE=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
