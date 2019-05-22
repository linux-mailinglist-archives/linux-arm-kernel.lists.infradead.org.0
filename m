Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B71A25BBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 03:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3Mk23L+lGOA1Lec2ygxG7P4As2pL2nkYqb833V9Q58=; b=FUF2gQcpVFhw9n
	XL/O6hnZ+eCSHd5H4KWIWsycsRDUhMD8ytEibcuoSVpF9WyQd0yJdi9/dJgHl6YBIzAm0IH44YMWF
	JwVg7zKsSxddwsom9MSH0cT4rsI8nan9ec0lzO/lqvPvZSzTm+hjiS6r1/3qRh1WA3KWGc15T2gaR
	v2dQc+bhoZyNsQQ0CFoelJctSNxqUBDcdvtZolCcZWSTDAGmuSsQHAZQ/87rNEO+WLyt11IzwlYrH
	IjJFoTDqrZjKvX1s8O3vNElZFHKkZJmrjfAPAsCjQA01mWb0jT1Sa5vOZLPe5Dl0c1OTVxMZuITkn
	5Rgu5QBSmLYcPHitE8JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTGLt-0005kL-MD; Wed, 22 May 2019 01:47:33 +0000
Received: from mail-eopbgr20044.outbound.protection.outlook.com ([40.107.2.44]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTGLW-0005QS-F4
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 01:47:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=atuw0vm2vG5b5veSw8QMxIgSohixJ8N+8t5oMhh5Mek=;
 b=UwcHju96Dc/eCnTv4vqJ1RBcuWGq6V3ffTp0+aySbVdWP9kgalTJ5eWoPUqA4NmY9m/lKSmhjxuZ0pnLFeSm4fDNM7B1gmjWoGMP4A2G+PeRTCq86IGRFzeHrabXxd/qQy7LSlnrhpUOXRKSoAd6I4UYRBZEAqlvgBZY3PgBA4E=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5954.eurprd04.prod.outlook.com (20.178.115.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Wed, 22 May 2019 01:47:05 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1900.020; Wed, 22 May 2019
 01:47:05 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>
Subject: [PATCH V3 RESEND 3/4] defconfig: arm64: enable i.MX8 SCU octop driver
Thread-Topic: [PATCH V3 RESEND 3/4] defconfig: arm64: enable i.MX8 SCU octop
 driver
Thread-Index: AQHVEEBCaBd2PozlHEuFjnNzl2G7GA==
Date: Wed, 22 May 2019 01:47:05 +0000
Message-ID: <20190522020040.30283-3-peng.fan@nxp.com>
References: <20190522020040.30283-1-peng.fan@nxp.com>
In-Reply-To: <20190522020040.30283-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0PR04CA0016.apcprd04.prod.outlook.com
 (2603:1096:203:36::28) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 576187f7-f0c6-483e-480e-08d6de576491
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5954; 
x-ms-traffictypediagnostic: AM0PR04MB5954:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM0PR04MB5954CBAE9B3BDD7A75EA9EE888000@AM0PR04MB5954.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:632;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(189003)(199004)(44832011)(486006)(2501003)(186003)(305945005)(11346002)(446003)(476003)(2616005)(2906002)(76176011)(71190400001)(71200400001)(14454004)(52116002)(99286004)(256004)(102836004)(26005)(6116002)(3846002)(6506007)(68736007)(386003)(498600001)(5660300002)(54906003)(110136005)(6512007)(6486002)(50226002)(4326008)(66066001)(25786009)(6436002)(53936002)(2201001)(8676002)(8936002)(81166006)(81156014)(4744005)(73956011)(66946007)(86362001)(66476007)(66556008)(64756008)(66446008)(1076003)(7416002)(36756003)(7736002)(15866825006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5954;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2YL9Cs0Nu9wjShkxVh3KufJVW6fTVMizwq5Ox/+ZvSHNEOL1UlQPEuvIFqDG9pJ8yZo/BkQwls4pY30g2nr8VnjDHP8VBvYFSuyQvfD6VMH9I/qDFemdfsURNj8bAbscOiPenS/UMK2nDU6BNT1jv86LpUcgq8P6Aac9jmKxhN6psv8WmFbJbYQkGb0MaPFYsrIxaDzgqv6WO29e7sj72/eMBI9SXojWCtFsbkNmtzyFmqK/u/KnmCIZ/+BH/L0H+jyuHLZLMHzYxLj95ccEGB/k31vT+T52pFCzUKhKzXsU8Z/Kvy6YBFsgbo3u6xbwXhnmr/r0oNWBZG2rFWgCO/XL2g3kHhGbplcuXbNyZ8G2LsaVRPZPJSZNBzKhwJdAjH7JyWKTpbFOBvlo+jfnjPOCQxIr/Dzzbirc4OAk1vE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 576187f7-f0c6-483e-480e-08d6de576491
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 01:47:05.5354 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5954
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_184710_731740_A749F088 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Olof Johansson <olof@lixom.net>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <andy.gross@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Shawn Guo <shawn.guo@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Build in CONFIG_NVMEM_IMX_OCOTP_SCU.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Shawn Guo <shawn.guo@linaro.org>
Cc: Andy Gross <andy.gross@linaro.org>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Olof Johansson <olof@lixom.net>
Cc: Jagan Teki <jagan@amarulasolutions.com>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Leonard Crestez <leonard.crestez@nxp.com>
Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V3:
 No change
V2:
 rename patch title, add review tag

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 979a95c915b6..32b85102b857 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -748,6 +748,7 @@ CONFIG_HISI_PMU=y
 CONFIG_QCOM_L2_PMU=y
 CONFIG_QCOM_L3_PMU=y
 CONFIG_NVMEM_IMX_OCOTP=y
+CONFIG_NVMEM_IMX_OCOTP_SCU=y
 CONFIG_QCOM_QFPROM=y
 CONFIG_ROCKCHIP_EFUSE=y
 CONFIG_UNIPHIER_EFUSE=y
-- 
2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
