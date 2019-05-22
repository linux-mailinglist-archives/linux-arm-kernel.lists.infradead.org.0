Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A69026149
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:03:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MyF2wVQ4MXqnXt+s3lYSXqV6//N9cG95L3Z5wiVMHOc=; b=VCtIkM7zogsY2K
	SYkupPlv1mxRkTCmPLl5HXa99MFgGdO9ubYW/PcCc807DEzqiZwlxsoG7rCVzUD621F5S4FrHII7G
	+X/87rCOM8PNkHtVtpXrqX2ErLDyFOCGTHRiAKH0CmqHKusACblZRDohdodfotHSilOrW6Xktg04E
	xKb63MNXmtaUdu4vBhUrcLIqmACYKJIXTBwWgoApPusU7OUgqFiKDuJanpB2+GONNU51VQmTWKCFc
	rutqENjgCvgOK9PLYVzzm2Az3o+GbIfXs+DkfouwqUbw7jA8BRQXizxQXVHNGYGtyLG2NjNtQcyGP
	cGvb3R3NVzUeQwU4E7hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTO5V-000827-RI; Wed, 22 May 2019 10:03:09 +0000
Received: from mail-eopbgr60075.outbound.protection.outlook.com ([40.107.6.75]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTO49-0004ug-6D
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:01:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CoY2my2cxZrdmgh7yx7DhKszJb02zyXz9XuhYE5MPU0=;
 b=ftZ4B9r0L+neZmT7aI8HMdVXcha3h8ONV613ndUNsp0aPGhIQirvgKPT7Qso/cl14hlCGNe3J34cJ3Tk0GQT6sVKldlj6Z4F0S0u5oeRWQVdiposEYrW9k091PXw2jYbX83VuwaYZ/22tK9Lxu88A44oQO+xHkbFggqJtufUtc8=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB3149.eurprd04.prod.outlook.com (10.170.229.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Wed, 22 May 2019 10:01:03 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5062:df97:a70b:93f8]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5062:df97:a70b:93f8%7]) with mapi id 15.20.1900.020; Wed, 22 May 2019
 10:01:03 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "robh@kernel.org" <robh@kernel.org>, "broonie@kernel.org"
 <broonie@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>, "dan.j.williams@intel.com"
 <dan.j.williams@intel.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>, "plyatov@gmail.com" <plyatov@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>
Subject: [PATCH v4 14/14] arm64: defconfig: Enable SDMA on i.mx8mq/8mm
Thread-Topic: [PATCH v4 14/14] arm64: defconfig: Enable SDMA on i.mx8mq/8mm
Thread-Index: AQHVEIVEOHCp3qYurEufxlsdSFFt/w==
Date: Wed, 22 May 2019 10:01:03 +0000
Message-ID: <1558548188-1155-15-git-send-email-yibin.gong@nxp.com>
References: <1558548188-1155-1-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1558548188-1155-1-git-send-email-yibin.gong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0045.apcprd04.prod.outlook.com
 (2603:1096:202:14::13) To VI1PR04MB4543.eurprd04.prod.outlook.com
 (2603:10a6:803:6d::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c0d43ad0-1bb2-4918-98f1-08d6de9c6638
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3149; 
x-ms-traffictypediagnostic: VI1PR04MB3149:
x-microsoft-antispam-prvs: <VI1PR04MB31497DFF1ED3CA4BDCABB08D89000@VI1PR04MB3149.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:949;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(199004)(189003)(2501003)(446003)(11346002)(2616005)(186003)(68736007)(26005)(5660300002)(476003)(86362001)(71190400001)(50226002)(54906003)(110136005)(66066001)(76176011)(486006)(4326008)(7736002)(52116002)(2201001)(4744005)(71200400001)(36756003)(6512007)(99286004)(7416002)(386003)(8676002)(6506007)(305945005)(53936002)(81166006)(66446008)(25786009)(64756008)(81156014)(6436002)(256004)(6486002)(102836004)(14454004)(73956011)(8936002)(498600001)(2906002)(66946007)(66476007)(66556008)(6116002)(3846002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3149;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fN+8mbVaioLkJvmGgy3/Q0QJ1iqAjGSWEJwZ6hkvMQJSQyPyp2j6jBJgNnN+cULqEAAHrESKbiXpc9P4rS9U8N/fbiSrO2aGvVEHJ3qEa6bUN0BQmVbnKMJ5n/OWc0X1UAOliUv6cuALP3brMM3rmxBVe+9WZFrEyxj603oSZzwgvXHu2btcysExL0PUsyY17WtH2tn+9OJGMlGMz2w8eXZRALmpZUqINZXNTSvAiYPypdNOql3WhZzWtdMmJIYPjgpYmJ4+BNbHnUVc+5wPkGGDCNTOpPQPAqWHXjfaqgA8vfAC4soQuTqK9plDAnjeEFS7JkD2fhQ4tiXUHVzSrk4eiu7ItWlvF02si2Y00aY+CTivvHnxpd0NJsEPSWRimG3M7OUOnpWPVnKqu3Nm5lov360CJafrUm+xBsxcuPA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0d43ad0-1bb2-4918-98f1-08d6de9c6638
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 10:01:03.6670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_030145_239493_72AE6ED7 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.75 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable SDMA support on i.mx8mq/8mm chips, including enabling
CONFIG_FW_LOADER_USER_HELPER/CONFIG_FW_LOADER_USER_HELPER_FALLBACK
for firmware loaded by udev.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c12c505..2ffea30 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -198,6 +198,8 @@ CONFIG_PCIE_HISI_STB=y
 CONFIG_UEVENT_HELPER_PATH="/sbin/hotplug"
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
+CONFIG_FW_LOADER_USER_HELPER=y
+CONFIG_FW_LOADER_USER_HELPER_FALLBACK=y
 CONFIG_HISILICON_LPC=y
 CONFIG_SIMPLE_PM_BUS=y
 CONFIG_MTD=y
@@ -630,6 +632,7 @@ CONFIG_RTC_DRV_IMX_SC=m
 CONFIG_RTC_DRV_XGENE=y
 CONFIG_DMADEVICES=y
 CONFIG_DMA_BCM2835=m
+CONFIG_IMX_SDMA=y
 CONFIG_K3_DMA=y
 CONFIG_MV_XOR=y
 CONFIG_MV_XOR_V2=y
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
