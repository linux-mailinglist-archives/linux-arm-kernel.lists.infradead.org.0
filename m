Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EE314A11D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 10:46:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzFGYDmG07kgsrN1ZGVdB5An/e+RCEHaC4zWbYhgfKA=; b=kwY9M/6wns2NTH
	0WJr1MO16XnA3fkn3j7Ds+BWQRNbOs8JYt7IedkWUHcfViejepgj3irXtr46COukjo2RysXEFvEen
	jtjAfqKGbvV0bpQ76bsgHpcdaWTOTnYN0pofNQM922VzFkQorItiAmSzkaE9okXG1btAQybgWTY+h
	9PrYrUMBu3jJDiSR7POz17hpXlRStQXaUKOFUPB669vWiLICfC2JPUnjQCwIzLTWqSZaZASjjpSL1
	SzthR3BUACJ20jgl9RVDXD91ykuDiuMBStgcxBJPUl/M2SEYSGYMIoyOXYHc+r8Mx2okGRGUiIrWf
	C84ybloRuIji26kDRW1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0yT-00015b-Ec; Mon, 27 Jan 2020 09:46:29 +0000
Received: from mail-eopbgr70085.outbound.protection.outlook.com ([40.107.7.85]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw0x6-00073r-Ae
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 09:45:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WUraadDbSiVv4TaQfZKQE1xPVhP48yaUgdd9TTP7/Qxqv6fjIRI98fRqGgKXMzTv1TFPTx2C8D2V6WBL9xh5eF8+SFvIeX2Xd8HI2oldvfmYBil1MU/BCosT27OBzyyEo56LKfUGbPHYBxSh6jAqMSNY549Z56ddEcJyDI97qrA5Rj/qSaeer9KBfUJ933ZcYOfwhAzuZGAqdt6bubZf9FaSrvWz2nUdspY9SoN4ZAO/TOe85HbWHnwqe/Uo3Z0BOmD+NbRNgsvXNQF11VFOoZh9mNurpWI5fI5gqyN0mJUqK15XO5wO+Z6Rf5D0p8PUDGIePgq73YE5HBE5jt9fcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oruJh1UZ9aI4S4Cr//tsvOQj7lS+fs86nsfUA3UDxyQ=;
 b=AEqGJGgDc6n48Z5Mtxzmcmmr4yTMNQAmS7ab7nhmgbh9kf1CrKajAwK47s5J3mGT5HM2nku7eUD+v082/bqt1I8UbICN8usl7XU2CIiLAKpx2YIcuKWSg02IoL+82i0m2b9g9SHld0GbYHq3ZyreRN/eC1IEDL6KnLeMPc2JrwPI1lfpBjtx1X1WJhSUyfPU6sa/N8dAWAAXbjb5N74NHPcuj5F27dD/Fyo57bWDS0Ext96Tb9A6wJNDHepuCR5tGhQ5SBFHIz3xHYzzcCA7d1KfYmseRwH2LrlQvQuUCLaaXJtAQskRV8dHCcqw65nIYki1JcfZ2dNAY68wulsW5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oruJh1UZ9aI4S4Cr//tsvOQj7lS+fs86nsfUA3UDxyQ=;
 b=cm7PSKT5nCioKQKgK+RmXJfVvMUHSVoIv1MOcHh4OuGxTUBLrT1b190Y69w2uYQPp6dCHqu94vGkUqXhUvWpA6j8WwucDxVzVEX8TrrWgG3s8EWu6Dw0ETyTV7aRuNYlWFrUGbk4zCo/7TgIEjyMKKH0ito6WKWh0WMUZHwAYT0=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6436.eurprd04.prod.outlook.com (20.179.252.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Mon, 27 Jan 2020 09:45:02 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 09:45:02 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0401CA0005.apcprd04.prod.outlook.com (2603:1096:202:2::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2665.24 via Frontend
 Transport; Mon, 27 Jan 2020 09:44:58 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "arnd@arndb.de"
 <arnd@arndb.de>
Subject: [PATCH V2 5/5] soc: imx: Use CONFIG_SOC_IMX8M as build gate
Thread-Topic: [PATCH V2 5/5] soc: imx: Use CONFIG_SOC_IMX8M as build gate
Thread-Index: AQHV1PZyuHBfhoyUvU61rkGglIKXvQ==
Date: Mon, 27 Jan 2020 09:45:02 +0000
Message-ID: <1580117979-4629-6-git-send-email-peng.fan@nxp.com>
References: <1580117979-4629-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1580117979-4629-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0005.apcprd04.prod.outlook.com
 (2603:1096:202:2::15) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 11a1a077-a4c7-4ec1-7064-08d7a30d94bf
x-ms-traffictypediagnostic: AM0PR04MB6436:|AM0PR04MB6436:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB643640E09BFF5A1726BF50B1880B0@AM0PR04MB6436.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(39860400002)(396003)(346002)(376002)(189003)(199004)(81166006)(81156014)(8676002)(6666004)(71200400001)(8936002)(2906002)(6512007)(4326008)(44832011)(7416002)(69590400006)(86362001)(36756003)(110136005)(54906003)(316002)(52116002)(66446008)(5660300002)(478600001)(6506007)(64756008)(66476007)(66946007)(6486002)(2616005)(956004)(186003)(16526019)(26005)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6436;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YREVEAnVsZuxEEb+6iUjSMdeHX3atsgVxug8fdveVGFriSTPr8DtQdNAV+J5x14uhPWnL4gk7/24uz/zoYy2xhFeQqhWZlAl6awFr0RCZ8fc5FwnoMA9RHgzQ9CIYON1PePUfXVHyVO9V2LHLwbxwjUspXDHyaG1Tj/qO/2dm4iyT6l8eAsH5OGDJv+7/niL7FcoM4O+bdmHagncYhYVpwTfb6LTI5zaQsLG5zKtTlAA983dn3iqoo5xE0PQEccPomoZeMqp9F2VFxdS9ltrSdhTQn2hP88Ed1ONpcUviF7Pe1Gmz3eEN2Khc6WRhEDwHaiqLLHkIVhQmfk3xgrfCrEvZaBiiZz6snGTZFJjADwCsH7qXCNARXk86f8qeTr9sjBUnd9fdGjaDQXyqvvzGHMEJZC1IKLmRiEf2516613cftdujTHK1Ru30oZ6kOmQj83/I5enOM19a4TOIRPCAsLfZEeGNle/5OmCN0VxTGImCbeYrC5Iby/mGVt6OXl7
x-ms-exchange-antispam-messagedata: rKeqPZSFpus6B+RYnU4TGO77gUMu9zDTKXC/1t66CaFiS0/l+uPPJWVfanUvFVqVUqNXWhfUsJE+eXo5TBTzMpJ95JqT0V6pvQrwPfJV1zYdlgzFD+X5jybgKS3zfel/fhW1WmyMJfedS5513I8uwg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11a1a077-a4c7-4ec1-7064-08d7a30d94bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 09:45:02.5683 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rD83tkWEdI7bf6THpwcpzn/xqM0GKBw5gDuUWD6GRjG8uY+ps81agjy7SdMLiY2x2ohJyCshtVh6nNshHOqv0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6436
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_014504_383470_60786050 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Abel Vesa <abel.vesa@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The soc-imx8.c driver is actually for i.MX8M family, so rename it
to soc-imx8m.c.
Use CONFIG_SOC_IMX8M as build gate, not CONFIG_ARCH_MXC, to control
whether build this driver, also make it possible for compile test.

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/soc/imx/Makefile                    | 2 +-
 drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} (100%)

diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
index cf9ca42ff739..103e2c93c342 100644
--- a/drivers/soc/imx/Makefile
+++ b/drivers/soc/imx/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
 obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
-obj-$(CONFIG_ARCH_MXC) += soc-imx8.o
+obj-$(CONFIG_SOC_IMX8M) += soc-imx8m.o
 obj-$(CONFIG_IMX_SCU_SOC) += soc-imx-scu.o
diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8m.c
similarity index 100%
rename from drivers/soc/imx/soc-imx8.c
rename to drivers/soc/imx/soc-imx8m.c
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
