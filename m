Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1819213D2E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 04:49:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3q9buqn8wgOF1xV3+2qVCRpH78VB+kbcQnpZgfcGwo=; b=KvcXnOaKyG38uP
	Qvawf0qpWI2cMaWL5bkdDRGMjsXUzWP80385e0NJqm+AfmvWxQuzbFtIWfabUGwtVIrtLvxBJFADs
	B8+LUvSvLzJo5953j+oUOUb5rpROINEy5hlL7g4HzoBhZcpoelg8ko33CAL0cwlUwHUnM1cER0TQG
	OEBJhZsfEM1/kAMH9+IUQa84OpJvZv6/3ddtJaH9oOFSpcyeKtTZa32AVNHI+1aZJMcSJnkJ5B9RY
	bROS6ewxuOm20d3WLZ/n7XaylYm3Bxw3yFH8c1jlqDLL32rpOKEFYt1jS9ms6SR9qUKPBK0KQVDIr
	f+a7QnJApZDGgMfqk7CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irw9m-0007Hx-Va; Thu, 16 Jan 2020 03:49:18 +0000
Received: from mail-eopbgr70057.outbound.protection.outlook.com ([40.107.7.57]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irw9d-0007HL-SV
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 03:49:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cR3tzOdo/H7et/Dtx6A4HUYQudXOqVzx8+1MCdXP8Wa0TuygiWfbSFI72HC20kzw8Ez9rEPkpaUkAz+2oUS7bh+F1yVyBu9xt0F7v8ZKNq5BhvTOe9lQlKTtFuDAYWS8yCsCyraTHoOpuW+lAPmC+3HvIImNRgtsSa2eLQQFgT8T93cn/7YcmhUv4BC4MiDB8I9oBRSdQq5JFhUfjpHYChV3YaOJSlM6fLhVMnu11ddwS3bjihpWrPP9cokPoVJJ9CbMKfqLiMrXxx7ijrwspYhRDxnkh14fuS+sK5JwWRhQcjuhDPqKfhlRzCVTe7jOgLfHcUdIxfJ0rN9qxUQSFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IJs/SFlEk6+wC1rykKO6P2eIY3kjPaIaG4isboA26SQ=;
 b=nIO7R3aukbmHmPm7CPaiAhI6xIzKKNjG7hY/1Mruan/JkiDwhDlXy2+geiw6DRpmPxKORXIWEt6mWjgGX3SgYP1c480q9RK+a0zDyIGxbx8NSw3RwoGPlmGyryhZ2h88G65J8rUm94I5voAjLDMExKURBFopYhXjB2F9bNoNI1MkGkHepA3y8X5ZbDxxs7dkMRjU8mXCuLl9P0l3OqUBHaUsAiHxAV8NScdjP/mnOdlLS+HAA8cuOtBUvCw0MM/OK650nIex/Ida5N+SQUeygDY2NLFkcsk0PH+592AtaD7p0N+/897ZQYJiXFrqCPY8H5z/RM44pMK9xhNoOFgxyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IJs/SFlEk6+wC1rykKO6P2eIY3kjPaIaG4isboA26SQ=;
 b=LsE/+hgeasPjGURw/CkTFAIp/CvxMjs67SEuQFegsgN02eE2cItF5RtZJ4oIbHTlk+KTUscu2TOCEm8Xze4zTPC9f5Y+96NyY5NPOMLkO3RfUWbdFCKayEqopyeghlcn8jN/PDEVmgS0LTj1yOGpuxvsq3C4uqZoF+uLukc/AVA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4612.eurprd04.prod.outlook.com (52.135.146.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Thu, 16 Jan 2020 03:49:06 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 03:49:06 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR06CA0002.apcprd06.prod.outlook.com (2603:1096:202:2e::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.20 via Frontend Transport; Thu, 16 Jan 2020 03:49:02 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "arnd@arndb.de"
 <arnd@arndb.de>
Subject: [PATCH 2/4] arm64: defconfig: Enable CONFIG_SOC_IMX8M by default
Thread-Topic: [PATCH 2/4] arm64: defconfig: Enable CONFIG_SOC_IMX8M by default
Thread-Index: AQHVzB/mVaFr+qyLLkmJN/EXOKD79g==
Date: Thu, 16 Jan 2020 03:49:06 +0000
Message-ID: <1579146280-1750-3-git-send-email-peng.fan@nxp.com>
References: <1579146280-1750-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1579146280-1750-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0002.apcprd06.prod.outlook.com
 (2603:1096:202:2e::14) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5dd2c160-da90-4727-2a51-08d79a370929
x-ms-traffictypediagnostic: AM0PR04MB4612:|AM0PR04MB4612:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4612F3D192A773774094684088360@AM0PR04MB4612.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:262;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(39860400002)(376002)(346002)(189003)(199004)(478600001)(2616005)(66946007)(2906002)(956004)(110136005)(8676002)(81156014)(81166006)(8936002)(44832011)(4326008)(66556008)(7416002)(66446008)(64756008)(66476007)(54906003)(5660300002)(86362001)(71200400001)(69590400006)(6506007)(316002)(36756003)(26005)(186003)(16526019)(52116002)(6486002)(6512007)(4744005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4612;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: okAXo+qFEGjmzeit3Arv2k6tFayy/0PpoBIOE3mrfw6jzKumP73DRg+KTgWLB+QkmUwo4xNi7dXEgCvVPc6RMI6nyZX/mAXVK4AHUoCIRZ6mVoBIEsyexaJhBbXvj+E8QX0btiQi2iYG2iPXg30A+3y0CRovHyzkzcw8i4WZLz50Zzzj/OM7wK2Lnbe0flAkGl0Drpf4IUt/0+l0VPb18YcqzE51Wo7UX1YkWC7YPRXQ/jWhAPk6gro4Ijs74abBQDr0X0kI0leFbTsRd50tvZ9gjRT2dsMjwciqxTcV5CvBNFYhmvkgTBwgLL1+7JMCJ/DZxLVIlzDwsM9AL+zK2bieASY4vP01rYSeh2rOn6YvgvSO8E+HcdEQ1Chon+bdxNoaa7kn3bZ+sFihR0eBeY8vf5d6yhJ3uu4zXPLJ/djKUsh+f0gXAn6ERSCtMYKptytaLHMMSdYtL8LBkLconOVo48hOROyQoR54s6VlJhkCLecep5zpahFKiKHUwoTl
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dd2c160-da90-4727-2a51-08d79a370929
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 03:49:06.8773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2i9bwUqvcvz782iYVOvmeh4dgw5D0Sa6Dt3/LF3mmRDYtD9v1EtrhtiCL4NDsyg85uyb3N+S+bUk5IkOMkafkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4612
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_194909_920167_B25FB10C 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.57 listed in list.dnswl.org]
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

Enable CONFIG_SOC_IMX8M by default to build i.MX8M SoC drivers

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d0ea0d0d3b16..20087f1aba56 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -729,6 +729,7 @@ CONFIG_RPMSG_QCOM_GLINK_SMEM=m
 CONFIG_RPMSG_QCOM_SMD=y
 CONFIG_RASPBERRYPI_POWER=y
 CONFIG_IMX_SCU_SOC=y
+CONFIG_SOC_IMX8M=y
 CONFIG_QCOM_GENI_SE=y
 CONFIG_QCOM_GLINK_SSR=m
 CONFIG_QCOM_RPMH=y
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
