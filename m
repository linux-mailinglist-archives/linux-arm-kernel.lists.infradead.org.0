Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E48A18AB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 15:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXlLLqyyUSdat+sLsnpvIX4DKqdt3IM/Sd/xOKRKZGU=; b=cWYiJn727VFHga
	w/lkN7RjH872LQVUn5NoZ/2NnaiQaG3xCIX8gN0/zRGUDKjNz1MWlhfjhBdgz5lR7RllCYS+66lLp
	p3D/5ciALmGt8T3lk1w6Oi1bUetEVFD8XfuTnLpa9IJRvxSjBoDLCk+zSAFblNM5gEl57GaYgAdf6
	Gh4vE+86LKJ4FXcJVJqWElSVONamOGGckp81iMXoAWE9HhNr9VTNqy1jdxmfAaTt7qcjGb85ENRuF
	XVhR+qKzJ8e48Vdf5NijiskAIntHiqlaA3RwEwHycpw6cRQgmkVkAecOivTeb1kMGsYtXMTcena+A
	UAXmv5hP9Ul2r4K68Pjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOj7k-0000jb-5s; Thu, 09 May 2019 13:30:12 +0000
Received: from mail-eopbgr50068.outbound.protection.outlook.com ([40.107.5.68]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOj7F-0000E9-Bm
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 13:29:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tL1asfgJnfRJQWRmFwjJAkpDx+qGtSYGujCPDbswI0I=;
 b=sbZ67ktrPmj8QYKuWabYlZduRLKcpwJlQcRmB7jpAtyForjAXS15/WWD/9qx7pUGIzieZcVFhxCXxtzFzYoHtIHRImLICVUZEks9L5lekBu1CoZ0x1gR2kK+OmPfJ4pynlczNs61PDVxe7X/tvD5n/f1AkkYKQcpO3Nwxr9cTgc=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3673.eurprd04.prod.outlook.com (52.134.70.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Thu, 9 May 2019 13:29:36 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Thu, 9 May 2019
 13:29:36 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "otavio@ossystems.com.br"
 <otavio@ossystems.com.br>, Leonard Crestez <leonard.crestez@nxp.com>, Robin
 Gong <yibin.gong@nxp.com>, "schnitzeltony@gmail.com"
 <schnitzeltony@gmail.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>, "jan.tuerk@emtrion.com"
 <jan.tuerk@emtrion.com>, "linux-pwm@vger.kernel.org"
 <linux-pwm@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V12 3/5] ARM: imx_v6_v7_defconfig: Add TPM PWM support by
 default
Thread-Topic: [PATCH V12 3/5] ARM: imx_v6_v7_defconfig: Add TPM PWM support by
 default
Thread-Index: AQHVBms+5O9OvVGAVUC7vZMW89GO2w==
Date: Thu, 9 May 2019 13:29:35 +0000
Message-ID: <1557408252-21281-4-git-send-email-Anson.Huang@nxp.com>
References: <1557408252-21281-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557408252-21281-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0001.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::13) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: da602deb-8dab-43c9-e7c2-08d6d4826095
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3673; 
x-ms-traffictypediagnostic: DB3PR0402MB3673:
x-microsoft-antispam-prvs: <DB3PR0402MB367378599BC0E4E25E2C1037F5330@DB3PR0402MB3673.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:262;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(39860400002)(346002)(366004)(199004)(189003)(7416002)(6512007)(86362001)(2201001)(6486002)(305945005)(66556008)(66946007)(73956011)(66476007)(64756008)(7736002)(66446008)(316002)(99286004)(2906002)(186003)(6436002)(26005)(53936002)(102836004)(66066001)(50226002)(4326008)(76176011)(36756003)(52116002)(81156014)(386003)(6506007)(2501003)(8936002)(71200400001)(14454004)(81166006)(8676002)(71190400001)(68736007)(110136005)(5660300002)(4744005)(3846002)(11346002)(446003)(256004)(478600001)(486006)(476003)(25786009)(6116002)(2616005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3673;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zdXQSfRSRoSBWEMkR+i3sQS5yhTUEGKSXNtzOBOzTyh5yTsAvHjor1aEHle17C/+7iXnScaJbKh+8X7EOVPRIpsxy/Z1JdQd9PrGPyuSOtsIvCUgNJRiE+TPex6t/5F+b5Nz7HzfHeejZzmt88DaDBzcRkweKhK6rK6EWJTspIQ6AAvOxbA3WO0O1EciETc9Vwe/YWV2QWhzmofJiz0YJeN1zWMyWyjdnPC9rAFHxs/tnbr6Px/rhnznIUgI97UKF5J7YsTbwJuVkQYhtPKbiEe7FrVklYyrjdfg+jVpBDOrfNd0UDib6K5JBkPxfI1EHR8uDldyoebkh2aIgfmyaPMFx8T6KKqnzE+juGz38qsn1odreaW7LAIco+EI7nY+GXjdo3YaulPJt4J2+SJ0QKJSUM9Mauf3CChCAi6NQr8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da602deb-8dab-43c9-e7c2-08d6d4826095
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 13:29:35.6061 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3673
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_062941_473749_704A3519 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Select CONFIG_PWM_IMX_TPM by default to support i.MX7ULP
TPM PWM.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
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
