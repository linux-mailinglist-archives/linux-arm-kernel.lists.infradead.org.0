Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A071FE24
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 05:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Os8hKW2VGrHDQWB5AklNppCVlxw16wbc6t6B2Fo7f8=; b=YDm2cftQSMB3+A
	TOt7wUBhRlb00kQ+P/2rKFi/hTouo6wFZeGKwLg0jVu4xpgYNiEXu06Ye1OvrW06sV4AKX9sOtpXO
	JV38uZV6nIi0ijCdYKRSI9RsX2QCkKY0kvlLrcsxTwGFGET66KA6uG8y/Ekv4EW7lM087zS17v3t9
	059SMdylRNZGkZ5e9zxvWUxEOcFa3P2t4oRz4lUcdGsm8ki4WE8r/py3+tc+YLMeEp1qqoTH5Urd1
	TtyCUTfD2fkIPzsDX6OY914RMUV76tCF5LJ6A1bWh8JiRBnmWavoZsTJgifvtCHyqxGFEgWNn3SyR
	QtDzXy8iY6yIBXUgtaeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR71q-0001AL-OP; Thu, 16 May 2019 03:25:58 +0000
Received: from mail-eopbgr50044.outbound.protection.outlook.com ([40.107.5.44]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR71K-0007b7-Ji
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 03:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CrCjeTDamcaoaTq2VUYAyidZ2kOWwo9zMS8K20Z+yls=;
 b=l/xgndWdQ6YNQ9kwdZZb0Us7gUXXthrB/d6jlDBecRb/Ng32U4LdgRRG59Gvrkdp7bwO05qKbBF+SM5BCMddZ/G8c2CQbiX4YFZz+hVIZJrFG186E9OqaEni8wiaSzIeROEjfI+qIbse6O0xlAduntJxHawb52Hknqg0IyqUhQI=
Received: from AM0PR0402MB3905.eurprd04.prod.outlook.com (52.133.37.151) by
 AM0PR0402MB3700.eurprd04.prod.outlook.com (52.133.36.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Thu, 16 May 2019 03:24:57 +0000
Received: from AM0PR0402MB3905.eurprd04.prod.outlook.com
 ([fe80::b99f:920e:7f36:7af9]) by AM0PR0402MB3905.eurprd04.prod.outlook.com
 ([fe80::b99f:920e:7f36:7af9%5]) with mapi id 15.20.1878.024; Thu, 16 May 2019
 03:24:56 +0000
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
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Aisheng Dong
 <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>, "robh@kernel.org"
 <robh@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V3 2/2] arm64: defconfig: Add i.MX SCU SoC info driver
Thread-Topic: [PATCH V3 2/2] arm64: defconfig: Add i.MX SCU SoC info driver
Thread-Index: AQHVC5bv/JLO4MlDG0ajk/kIHcdZeg==
Date: Thu, 16 May 2019 03:24:56 +0000
Message-ID: <1557976777-8304-2-git-send-email-Anson.Huang@nxp.com>
References: <1557976777-8304-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557976777-8304-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To AM0PR0402MB3905.eurprd04.prod.outlook.com
 (2603:10a6:208:b::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b1f53f22-1fe4-4ced-8d10-08d6d9ae11b9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3700; 
x-ms-traffictypediagnostic: AM0PR0402MB3700:
x-microsoft-antispam-prvs: <AM0PR0402MB3700C8F7E5112397A942BFCEF50A0@AM0PR0402MB3700.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:262;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(396003)(136003)(39860400002)(189003)(199004)(36756003)(2201001)(8936002)(50226002)(2501003)(86362001)(81156014)(316002)(8676002)(66066001)(3846002)(81166006)(14454004)(6116002)(2906002)(478600001)(68736007)(11346002)(25786009)(446003)(305945005)(99286004)(2616005)(476003)(7736002)(4326008)(6486002)(26005)(7416002)(66556008)(256004)(102836004)(52116002)(76176011)(486006)(386003)(6506007)(186003)(6436002)(66446008)(64756008)(66946007)(73956011)(71190400001)(71200400001)(5660300002)(4744005)(110136005)(66476007)(53936002)(6512007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3700;
 H:AM0PR0402MB3905.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: biH+AOzAJc9F9ofAtGS7j8SxbMIza06zBMpRB2vZzY0eZUZFMpHA5sH0tgz/0czSl2KNjFgXfO7VmTELlFhg42aE/rlRWPQJ1/F0kj9rrr527WO+YkCdUJfbvbEH68KuJHlD4/dChIFTJc+8O62+j6BIvplV7REykFr6SdAudEoryruTl1SRBJD49mm98fQRYLS2h0cWySYtQkONuP1WScsJTPA8Zv7G9tWC8ZDyzZaVcjEdrNVdcpJf2mABSDx0d5rl9uSelPw9YlD6vOx+8FZTNSDrcXkGbjE3NzOJpe1oUOV6AXu6+/VNqM3rC0QupL3aNUq5H0ufWk3kQ2xXS0qc7kqwkHKrhceh/cb2eDPrptsEJWEU3ZlZyp9L9W/rPd2/lC8L/AnaORQFS+3HyEf4MEkDY7YEZ05f4Ip6jY4=
Content-ID: <72C07F05E1FF974E8E808A8BD23D3D49@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1f53f22-1fe4-4ced-8d10-08d6d9ae11b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 03:24:56.8881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_202526_897688_C28DF29F 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.44 listed in list.dnswl.org]
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
