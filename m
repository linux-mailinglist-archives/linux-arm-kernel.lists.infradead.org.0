Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DEE1AF07
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 04:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQ6RK7/6+Z/yncAddkyCzRISAnZ9aKwCAahomH7aQXQ=; b=T8rOFf1T8AN7k/
	o4gxQJHg8Alblz8Ppid0bBZ9Kgci0iNm7DI5Yxa4XcN0DeFooF1KDUd1AJcKvC6esTU9kDqgp/R7s
	riYepUpiypTS4+nM6hSdcjP6ogzXp4KHM+S4tTsC8Y3/hszCGjZ/WU7d7+l+tA0C2oiRu6kv92bCi
	BGE0de17EtcLCawZIpc7Z9wELk6xkjFbvR/ZfP4oQShjBnjoZZLmz53rhH/02+N2cdtj7LFZyLXjo
	DHa6maRt+TnCmhSAnllLepp4aHT7K5qDNznRCMPnN8/UlwQULZKlL8k4L4myxIANy9ccUgWczr+ub
	voybwi5koKSyL5PyHmUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ1Bm-0001WC-FE; Mon, 13 May 2019 02:59:42 +0000
Received: from mail-eopbgr10042.outbound.protection.outlook.com ([40.107.1.42]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ1BW-0001NO-EE
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 02:59:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t+/U/winN9JisG14JsPFeu6qQmm8k31yyIeHEC21FSI=;
 b=Mfl/i2amrMatvLOZaziovT4qibib+pr0Lmc/R5rBlwsdtyJqtVZJ5NYG6dWUdJgrzignK1WPKBts1yyej0gJjkbSWacl4BeD1rk98PYV2QJwUFpZzR5cH/rMdhwbltWecLx2BSZxf9/5s9K7pWADVtz2rPKoHR4Oql5D3UfpNRg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3707.eurprd04.prod.outlook.com (52.134.65.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Mon, 13 May 2019 02:59:24 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 02:59:24 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>, "agross@kernel.org"
 <agross@kernel.org>, "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "marc.w.gonzalez@free.fr"
 <marc.w.gonzalez@free.fr>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, "robh@kernel.org" <robh@kernel.org>, Abel Vesa
 <abel.vesa@nxp.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH RESEND 2/2] arm64: defconfig: Add i.MX SCU SoC info driver
Thread-Topic: [PATCH RESEND 2/2] arm64: defconfig: Add i.MX SCU SoC info driver
Thread-Index: AQHVCTfexFd3LXRdNECCTfbHSWwarw==
Date: Mon, 13 May 2019 02:59:24 +0000
Message-ID: <1557716049-22744-2-git-send-email-Anson.Huang@nxp.com>
References: <1557716049-22744-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557716049-22744-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0143.apcprd02.prod.outlook.com
 (2603:1096:202:16::27) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fceac7ee-5f98-4c01-62a9-08d6d74f00dd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3707; 
x-ms-traffictypediagnostic: DB3PR0402MB3707:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0402MB370781BFF0BF0DB109A1559EF50F0@DB3PR0402MB3707.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:595;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(396003)(376002)(39860400002)(136003)(199004)(189003)(26005)(66066001)(6512007)(6306002)(71200400001)(71190400001)(966005)(386003)(6506007)(316002)(305945005)(110136005)(76176011)(68736007)(478600001)(52116002)(2501003)(7736002)(99286004)(14454004)(102836004)(81156014)(6436002)(81166006)(73956011)(446003)(6486002)(8676002)(4326008)(8936002)(486006)(25786009)(6116002)(4744005)(3846002)(50226002)(5660300002)(256004)(36756003)(186003)(11346002)(86362001)(2616005)(2906002)(53936002)(66446008)(64756008)(66946007)(7416002)(2201001)(66556008)(66476007)(476003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3707;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: I56DUo096jAgBJ5DhpGG3grJeJVlGuoyhQIrcI9paCcUq08hzmZrqtT34Ren/0Kv+gwl/txU1Vly64s+arBu+DO8RaFmNX73q55Oyn+kw/Bk1MQijnGvT0FQIxw+mwaf5gSF1rA4y/WMm5CdPknHpFBydcHcVxeXrXNo4tOTXpsOsyitCxjuooF6YY1+zzKb2tBKnldeMK/SQfMtVrP7DyOgQhm/yNJ73wKSylK4wR3rRo+WaKUFWQmF0iLD8N0JGIR6BF6X97fUYFy6jzqvM5X/IibHi8maWkoDbCs4o/ikh43eJMFqfs8dKzgKQmA9c7j907Sgk1nd6dgaGUyDf/mpEfF0Asqs3OOCfW/a/wBYO5SWOkXKDDUG1L6cq5hbSa3QTmpNQpzjkeXHp3JUTcDrW5vS4gVH/fo8xJY0GtE=
Content-ID: <B5957F9073035C4C8671DA70A506CF76@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fceac7ee-5f98-4c01-62a9-08d6d74f00dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 02:59:24.1134 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3707
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_195926_476424_52A2C97F 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This patch selects CONFIG_IMX_SCU_SOC by default to support
i.MX system controller unit SoC info driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
This patch is a resend version of patch https://patchwork.kernel.org/patch/10895149/, the change is
just using correct encoding.
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8871cf7..d3a4508 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -691,6 +691,7 @@ CONFIG_RPMSG_QCOM_GLINK_RPM=y
 CONFIG_RPMSG_QCOM_GLINK_SMEM=m
 CONFIG_RPMSG_QCOM_SMD=y
 CONFIG_RASPBERRYPI_POWER=y
+CONFIG_IMX_SCU_SOC=y
 CONFIG_QCOM_COMMAND_DB=y
 CONFIG_QCOM_GENI_SE=y
 CONFIG_QCOM_GLINK_SSR=m
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
