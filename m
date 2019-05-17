Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2FA2138C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 07:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Os8hKW2VGrHDQWB5AklNppCVlxw16wbc6t6B2Fo7f8=; b=hqtZgVEeJqdO3L
	I5UylAmj2/NlnjVzv0gol8MFMDVnQbHDlMaNYa8XT1sPNTxSHt5ODzZn300gMFXbkchGaNVU9Df/Z
	wPaP1EHmKZ9gjPN+gIIbeOr8/ghIg1/YT1uxmLzxsc2n1jLN4w3kWkiCks/+6TIuwiGl9dVJizbN6
	mfuBD1Z71DCnzW8vgbJMBH+NE+klxq1dhv1jO97KIsOqwwxFLfVdDGkbKybzDFPUxmRYy7tIbWA6h
	U8+hfit7eDFAO98FKCN/gTJtv0aYOIwIRAwXtNTsDMgoGbA6eKiq2ua0idV9rX9xfM0VoHyNIgK+5
	rMJ1UV3Q03JKeXDFKJXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRVkT-0003uz-RS; Fri, 17 May 2019 05:49:41 +0000
Received: from mail-eopbgr50055.outbound.protection.outlook.com ([40.107.5.55]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRVkD-0003ir-PA
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 05:49:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CrCjeTDamcaoaTq2VUYAyidZ2kOWwo9zMS8K20Z+yls=;
 b=r4c0clBBvGtLwltieh9cbuIAQmywAJ4wCjWxWHQxo65o/9p/evj3WSPZV/u81SNasA+1ef2kHWJ1G+2W8Twt678xW+Oorhdhx4NI2jp2Vh/Bp1bfathQ0H5ydHyokVTlLI2hTI/UJZEhzDGLZ9xWriKYaBGzhE0uhuLr9qVYPMo=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3801.eurprd04.prod.outlook.com (52.134.65.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Fri, 17 May 2019 05:49:21 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 05:49:21 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>, "agross@kernel.org"
 <agross@kernel.org>, "olof@lixom.net" <olof@lixom.net>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "marc.w.gonzalez@free.fr"
 <marc.w.gonzalez@free.fr>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, "robh@kernel.org" <robh@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel Vesa
 <abel.vesa@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V4 2/2] arm64: defconfig: Add i.MX SCU SoC info driver
Thread-Topic: [PATCH V4 2/2] arm64: defconfig: Add i.MX SCU SoC info driver
Thread-Index: AQHVDHRGQ1K7isZ4v0CnO8+331XKCw==
Date: Fri, 17 May 2019 05:49:21 +0000
Message-ID: <1558071840-841-2-git-send-email-Anson.Huang@nxp.com>
References: <1558071840-841-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1558071840-841-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0042.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::30) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 05e01e13-22d7-478c-9964-08d6da8b6874
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3801; 
x-ms-traffictypediagnostic: DB3PR0402MB3801:
x-microsoft-antispam-prvs: <DB3PR0402MB3801621436923820ED85F2BFF50B0@DB3PR0402MB3801.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:262;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(39860400002)(376002)(346002)(199004)(189003)(53936002)(7416002)(36756003)(68736007)(3846002)(6116002)(2501003)(4326008)(8936002)(71200400001)(71190400001)(256004)(7736002)(8676002)(81156014)(81166006)(316002)(66066001)(2906002)(50226002)(6512007)(305945005)(478600001)(52116002)(446003)(6436002)(6486002)(386003)(73956011)(25786009)(99286004)(66446008)(64756008)(6506007)(14454004)(66556008)(2616005)(66946007)(476003)(76176011)(66476007)(11346002)(4744005)(486006)(102836004)(86362001)(110136005)(26005)(186003)(5660300002)(2201001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3801;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /SWC0G4xYl1oE3fdIsnwD1ikx3aDrID/QhY/cVJCNuDi+m2Zj7zF7mpLHrhuCgegV17qa2UgA+KPGainTjxOStlQLVJroMSpXdWrdzbb7akBP8azDgIDaD8zFd+2DdP4yuP26aUNnxPVwIJyIrPdeFvg84figNApg6gWDPPFvCGBpyHUHB5KuP46wH6PXpgqNpM2WbGy7Lo3ijoU2IynBonQ1LK3LWFM7XMMOJaIFOVhjw6MuBCRDgckp/Xj8JK02ntQeOGbK0ZwAxtxoY84mmQrtZYGImiztMqVSOpUyXVUOu5JgIB7yvmr3XTuznHmH/p6bnmOM9fjPotWKYALBjWGtH0uXYSaiAbBxaPXsFJoz41nPpcpRzWnXL3ZnQ63CDX2ct/Zyb7plwOKPhIXXBwdHsCWbRHQO/nSsdooi2o=
Content-ID: <E222615DFE319946A362D5552DAAEA85@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05e01e13-22d7-478c-9964-08d6da8b6874
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 05:49:21.4099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3801
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_224926_038192_F3F3560D 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
