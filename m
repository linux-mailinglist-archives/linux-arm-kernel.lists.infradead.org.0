Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD8727546
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 06:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9MiNCmfwVpJOwtGfetkVWM7+HhFLMoLhqlgLaA5tDDA=; b=siTDI7nBbJa0da
	7wJy9wzjKV7ZXtKUndPLOo7xHxPOpZkAcvSyyEyPS/CaBWfniFbs+cs6Fy7cA4ZHJqLMVv/sqvNer
	Cf5Zoh5v3ut35tgLUk7EpViUGEgrAVJUx8sPEjovwPkvY7DVneI181ixOidtBpUDbUAMZ6Lfrdfwu
	M2lhUW3kfOBvu71obsafME4fQqYmXlfXV0Tw2Pt2Dyq/ukNLwulo2Jox/TF2NH9ntTu0i0bndzDwz
	toOuCSVSObBJA5qw6EkNRkrn9eJ0FXkKPLdpFdfinKtNqUDhQrj6TjPWu03TrtDf7C0DJxRo8pKze
	Z3ApbLxqZW2gZrhYlMhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTfk3-0006Va-Fu; Thu, 23 May 2019 04:54:11 +0000
Received: from mail-eopbgr40040.outbound.protection.outlook.com ([40.107.4.40]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTfjq-0006Mx-3d
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 04:54:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WHM8JJwBphQqKuWUXxfOWmV5jdQQivpFcUOTuROYInc=;
 b=d0F8gNlq9x1/zMhv71TwwsZdKkxZy6wQSsKEoj8ai6caVDFpYWciTnvZW8rmROoZBEQJa2sGUUcJIaItumi6tOqHSlPXaxrbhaPpaA0PI36gGvPdiimYQEmVdYmhLwddplBykTss6Z/hMilzzF7HNCtpoFDLUFobzkzGxLPytY4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3881.eurprd04.prod.outlook.com (52.134.73.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Thu, 23 May 2019 04:53:54 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1922.017; Thu, 23 May 2019
 04:53:54 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>, "olof@lixom.net"
 <olof@lixom.net>, "agross@kernel.org" <agross@kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "robh@kernel.org" <robh@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V6 2/2] arm64: defconfig: Add i.MX SCU SoC info driver
Thread-Topic: [PATCH V6 2/2] arm64: defconfig: Add i.MX SCU SoC info driver
Thread-Index: AQHVESOFpvI8szC/w0KZX0c9kjpgLQ==
Date: Thu, 23 May 2019 04:53:54 +0000
Message-ID: <1558586911-29309-2-git-send-email-Anson.Huang@nxp.com>
References: <1558586911-29309-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1558586911-29309-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0034.apcprd03.prod.outlook.com
 (2603:1096:203:2f::22) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e149115f-a471-409b-fe7e-08d6df3aa796
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3881; 
x-ms-traffictypediagnostic: DB3PR0402MB3881:
x-microsoft-antispam-prvs: <DB3PR0402MB3881298CC0141A986B14C285F5010@DB3PR0402MB3881.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:262;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(136003)(366004)(376002)(396003)(199004)(189003)(7736002)(66476007)(7416002)(6116002)(66556008)(64756008)(3846002)(66446008)(73956011)(66946007)(81156014)(8936002)(81166006)(50226002)(316002)(8676002)(186003)(4326008)(2906002)(26005)(476003)(2616005)(36756003)(6436002)(68736007)(99286004)(6486002)(110136005)(71200400001)(305945005)(71190400001)(14454004)(478600001)(486006)(256004)(53936002)(2201001)(6512007)(86362001)(25786009)(2501003)(76176011)(102836004)(4744005)(386003)(6506007)(66066001)(5660300002)(11346002)(52116002)(446003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3881;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: k9HTRtVwK3MD1RGnV0nQbUagSGc1utomUy3HPnadlUGjlZs4no97wPyY5Pz2C2mHfF6NQyUQBgvuQQ7xP2IpZ0KLiAc9XnH8VM1kWV+jyuOXkGpfmDfMh7/5kupG2zNYKUuslw+AxaiEnfyiKlQvnlhjyLcUuyl+V7WlGnLbe+MncUwxF6oDitReXrFMTpcY/aU4LIgWYcjWr3SAgT7qoLpjwuzvOh7HsoATTjJtPh6tLT5wVQ34qkaUT/kUpptkAvMi2GHxVSvj5pm1afX2snckZoD5shQSIAuzAKAvAbsne155kqF67EXFTJ1mBrd9Pd94oU+3oxeXqgr9y6lyAMwRtqqLqqgasetWMxOT4lY54+aMkxUm7NITStGSgBokyHJEmU35UxFQeweGTMBIHLMz62tzV4xbcy75FC6LSWE=
Content-ID: <1F2F90C8D3289847B5A7802A8D2FD698@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e149115f-a471-409b-fe7e-08d6df3aa796
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 04:53:54.0426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3881
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_215358_389917_EB08453C 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
No changes.
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c91642d..aaca4a0 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -694,6 +694,7 @@ CONFIG_RPMSG_QCOM_GLINK_RPM=y
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
