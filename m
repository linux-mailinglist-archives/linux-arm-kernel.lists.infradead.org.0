Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 001111EA2E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 10:32:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Os8hKW2VGrHDQWB5AklNppCVlxw16wbc6t6B2Fo7f8=; b=R6wJON+99h8ASk
	drHVNF5x5K7b42HLB5hJZAaCRICccRS+1/PXiczjITzXoJPCw6YSJfzjmXJgTIgzolRmFD1zFObB0
	dyvI9o/tpnneMCM21+L7WrQfhund/AjUscsyRV8T2bdiIgtGEd0UIZAzkTlbXcPQN2EJ7hpKDsjs7
	sR909bp/jjGYeBABNE4ik0/I8pFh+WYMBbXl8VBk2hWFtBO5O9AwiKJI/RHDQtDnLfj9RHDnBq7GM
	bB40NKBOYCmTyMYwswT4f9iqwPwB5a51AY9Lhi5SzsF/0Gu/Z3P3bP4w7Nxm3Yr5sBMXdGDwMQ5pS
	4bVyHCUuhePuyJZ344Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQpL8-0005J7-BU; Wed, 15 May 2019 08:32:42 +0000
Received: from mail-eopbgr50045.outbound.protection.outlook.com ([40.107.5.45]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQpKq-00055c-CW
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 08:32:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CrCjeTDamcaoaTq2VUYAyidZ2kOWwo9zMS8K20Z+yls=;
 b=Q6BAxxfUweDsAcRiZqxT2vFgS1SybJD7DhFAg+gE9gSoHqpW0EjWnw9HBHkZc0U3xZE7XvKPOWu4H4goTbjLl6llYnuXvzKzP2b+qmUZLWux60jRmFXbkS8APqfkysouQA7mpQbSi8Xqtkxzfumqfn4dhDip+FRY1YiZ7/RiuCw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3897.eurprd04.prod.outlook.com (52.134.73.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Wed, 15 May 2019 08:32:19 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Wed, 15 May 2019
 08:32:19 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "agross@kernel.org" <agross@kernel.org>, "maxime.ripard@bootlin.com"
 <maxime.ripard@bootlin.com>, "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "marc.w.gonzalez@free.fr"
 <marc.w.gonzalez@free.fr>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel Vesa
 <abel.vesa@nxp.com>, "robh@kernel.org" <robh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V2 2/2] arm64: defconfig: Add i.MX SCU SoC info driver
Thread-Topic: [PATCH V2 2/2] arm64: defconfig: Add i.MX SCU SoC info driver
Thread-Index: AQHVCvi1eA/hofdk10abC8XGsCMMkw==
Date: Wed, 15 May 2019 08:32:19 +0000
Message-ID: <1557908823-11349-2-git-send-email-Anson.Huang@nxp.com>
References: <1557908823-11349-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557908823-11349-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0030.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::18) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b267a1c7-5e24-4716-b3a4-08d6d90fd7e4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3897; 
x-ms-traffictypediagnostic: DB3PR0402MB3897:
x-microsoft-antispam-prvs: <DB3PR0402MB3897B40B00A8244B942E5C3BF5090@DB3PR0402MB3897.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:262;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(346002)(396003)(376002)(189003)(199004)(256004)(486006)(6486002)(2616005)(476003)(2501003)(11346002)(6512007)(446003)(3846002)(66446008)(316002)(66476007)(14454004)(73956011)(53936002)(66946007)(7416002)(25786009)(66556008)(64756008)(305945005)(7736002)(186003)(6116002)(6436002)(68736007)(66066001)(81156014)(71190400001)(8936002)(26005)(110136005)(478600001)(102836004)(52116002)(36756003)(8676002)(4744005)(71200400001)(2201001)(4326008)(50226002)(2906002)(5660300002)(386003)(86362001)(6506007)(76176011)(81166006)(99286004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3897;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cfE+xLdX3XqlzbrywkzbxgJALiWeoxqGq7klCpS5MS45L3C87ZvS7pomluDbsZQlCnPvFMOwZAY7ZZ3BTHn5NBMjzuEC1es7nwkivUGSIOHTHJwCc2O3hPCXgAqPYrBjmhvzzXJqe1OiEd9zW7QCm6jrMo/IPcSR2+6yJ4oAh1lnaDqv4ZjW4c31ktOrx4+jPleNTaF6oT7X80QHgF+FynsuV6KI+ZAgsEww46FsVCe0EO3Ad+w+3GWsjBxr41dnKg9v1z8fTpaoY9XWnOeMOdHbsYdlt/+iRjjj4/6bE7w7v0+ctDZ6lIC+8+6GvR5GZOFvm6o8loqBOIVv/eunCdcKJBzpdThbjFegSExbrFQxFIJMYz6UD5E5Mb8DK2TVJeRJh1Cu1l77vvV11TjOUOXQ2yI9zXmTw10Pag1POpw=
Content-ID: <D5835D23D9D92147B90F99F527FB66A8@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b267a1c7-5e24-4716-b3a4-08d6d90fd7e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 08:32:19.5284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3897
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_013224_426758_672B2CE1 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This patch selects CONFIG_IMX_SCU_SOC by default to support
i.MX system controller unit SoC info driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No changes.
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
