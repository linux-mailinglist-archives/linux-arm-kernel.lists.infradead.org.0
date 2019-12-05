Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5521113CCB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 09:07:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3fUpxllkYkWQO0VHv/SJ3m1MAVE10uThV7EETbuLAQ=; b=Lvz8Qkr724HIED
	VewyrnDVx9YE3L1LrqjrBgUQmNFNpdZSplkNtey1cgp/26qhnexKoumBU9VcbEcg/875cpajna5yM
	hH+VFjhGeAT+kvrO0r7dQogNKpPkAomOkS/OIdjRRPjHaApxqB6d94jLD2PZhtqV0IS5yAXhnUP6l
	DIbDUgQH3g+tgteFnnTZzbyE8kE6JDYdKFhXHQkaFgJktbB8I2DwN6+Bw1UrubvKODrxQVPr8Rutu
	o18Q42b3yJwRCzkdZPDqlmN9K2/p4RKW6t50BebbrJroNhYS6oN1igy5Cq4WdMHkGE3wj/QkO7HQ5
	nxVj2zLyNlnssDllRGcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icmA6-0004Tr-Jq; Thu, 05 Dec 2019 08:06:58 +0000
Received: from mail-eopbgr10056.outbound.protection.outlook.com ([40.107.1.56]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icm9a-0003wq-LH
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 08:06:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C9VIeLIJ+OBH0fnCIiEIk1GzstyjePoS0CwnhCtskuYPfiVtAD5MSAPB6XFhnLT6DcIzGcfFyAP9F1CCu6RT+n3L8cuUVwww6F58gDN64zAWPTf5ARxnIWIaY0aXzb2zM9Nb6+Be/XxaBK2BaY/M1PttFzd9E8EUIhx37bqYNa+7vYIGfI/qzjtdU565xFusReyfI9QuENNxUInS4dzzuwcoSxj4m/cQ7A3zpDHtpGtGhKLkf8C5SIvWl3sIZa/2NL5HUwpUhRDQ1Rz5xT3epLotpXRJ4d6PHufzB+6BUwN1ZCjztR65hPBImbGpLdx3NVa3hjLeDfD6CAh35IAvNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0vi5dMheK0frcX4pKUP0FbFy/Hd7yezx9VHzq/JPZD0=;
 b=TI39zcfhemny6ZDub8vJiOeRXNttbh40OdhqH+ZB18AACs/xtJRRpTkvr7pIxEWyisEZyCE8k6S9nQS9DHy892qfz/Gd9W3i5hZB6ANMIF941bflArIqD8SWziyfMBMCS4zJanJB2OKbrDiWmz4X60QMPxJmiqjvG/yF204EQkCrlGgiHB6dEl3kwXChHCuhbXia82Co5bWQhWHU2/cjs3aCfYQ3zxR3ZuaqYFr0/xO25C2z1f82pthvfG4m3T1+BcYT9YCX+7YwWO7kXFWCDTMhoV1U+5eNicv2JXDp2pz+qoImgxSCZLlywFiLUyRdE5SDoCiOVFnoavqJlGGYJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0vi5dMheK0frcX4pKUP0FbFy/Hd7yezx9VHzq/JPZD0=;
 b=hPgW9BJf6WJG7Y06DdiDuh16AzbBuhy1KozSmNfpWkaW70W60EAvdTpTagnI3J0aCJltqiYVMAnN4zsdMpeC6mKR9nK+CrPhzaBpaoxc47iyCGihxYsWD9+m2CGnmMVc0OFTkkF2mUJmPGfdTnByvfBV5vvTRtETbSfVR2zMLXw=
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com (20.179.235.146) by
 VE1PR04MB6526.eurprd04.prod.outlook.com (20.179.233.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Thu, 5 Dec 2019 08:06:23 +0000
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::bd10:c4cb:c1ed:97df]) by VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::bd10:c4cb:c1ed:97df%3]) with mapi id 15.20.2516.014; Thu, 5 Dec 2019
 08:06:23 +0000
From: Jun Li <jun.li@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>
Subject: [PATCH 2/3] arm64: dts: imx8mn: Remove setting for
 IMX8MN_CLK_USB_CORE_REF
Thread-Topic: [PATCH 2/3] arm64: dts: imx8mn: Remove setting for
 IMX8MN_CLK_USB_CORE_REF
Thread-Index: AQHVq0LiB8rWXLXmP0iywflRiPHiHg==
Date: Thu, 5 Dec 2019 08:06:23 +0000
Message-ID: <1575533029-13049-2-git-send-email-jun.li@nxp.com>
References: <1575533029-13049-1-git-send-email-jun.li@nxp.com>
In-Reply-To: <1575533029-13049-1-git-send-email-jun.li@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0050.apcprd03.prod.outlook.com
 (2603:1096:202:17::20) To VE1PR04MB6528.eurprd04.prod.outlook.com
 (2603:10a6:803:127::18)
authentication-results: spf=none (sender IP is ) smtp.mailfrom=jun.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 596214d5-733b-44e8-856c-08d7795a0498
x-ms-traffictypediagnostic: VE1PR04MB6526:|VE1PR04MB6526:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB65264E1083C49C52F7F793CC895C0@VE1PR04MB6526.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(136003)(396003)(376002)(39860400002)(189003)(199004)(6506007)(186003)(25786009)(14444005)(26005)(71200400001)(71190400001)(4326008)(86362001)(6486002)(6116002)(7416002)(102836004)(36756003)(76176011)(305945005)(52116002)(66476007)(99286004)(2201001)(66946007)(66556008)(64756008)(66446008)(7736002)(44832011)(11346002)(81166006)(8676002)(81156014)(14454004)(316002)(2616005)(478600001)(3846002)(5660300002)(4744005)(8936002)(50226002)(54906003)(2906002)(6436002)(6512007)(2501003)(110136005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6526;
 H:VE1PR04MB6528.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G6ihUIP6rRk68DV8spMy2BoiOysN4v1+lH+px64HkM8ZqZw3pYhvh4f4iVFzt61MS85zMtdqJil+qf6jRGE34rK059cz+4xBafS9JNSvCzLVwlkO+7M4Uedam5UDh7wzBbP1wJkYDJ4HdwOZu1JT054gFOHLvJ7SpaCpIxBucZkNP/dfLvnnqeWnXbW1FeUnnfQPGnk5+EVmpaKGFNPnlB+MFv/uRaeBbhZiCCoewoEFO1egVIRY1M/tWM0flmuYRSGoYYUnK73rlfQZBwA8zDvlxX2Dg1MukLyiOKxWfDZAR36Lh3n4yaq9fOZAZpE7MwF0ZBciTHzMR10pYeG+Ay+8MldT6A68LjrlB2RPNjSVc/I0bbJkGqZJTfyBnUIB1NiMIZ3aLC59ojAw33UecNqFtbtQtwtcIc9SwNL4hUusIQWG6GQ0UoKJ06abWPyri1cb8M9Te6CHPJjhorSwhr7hlzi6wcl9LFwrfSGh8mC4fs9cWp4+LobbOOB8AB1Q
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 596214d5-733b-44e8-856c-08d7795a0498
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 08:06:23.1444 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: irjVwtcjFcYAn0A4cx5ryVYX+mEH0MsGIiB6BVlGnczDkBV/6cc27NNkf5HtNt/7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6526
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_000626_723702_622619AB 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Li Jun <jun.li@nxp.com>

Since IMX8MN_CLK_USB_CORE_REF is not used at all, so remove the setting
for it.

Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index e916250..271d197 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -683,10 +683,8 @@
 				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MN_CLK_USB1_CTRL_ROOT>;
 				clock-names = "usb1_ctrl_root_clk";
-				assigned-clocks = <&clk IMX8MN_CLK_USB_BUS>,
-						  <&clk IMX8MN_CLK_USB_CORE_REF>;
-				assigned-clock-parents = <&clk IMX8MN_SYS_PLL2_500M>,
-							 <&clk IMX8MN_SYS_PLL1_100M>;
+				assigned-clocks = <&clk IMX8MN_CLK_USB_BUS>;
+				assigned-clock-parents = <&clk IMX8MN_SYS_PLL2_500M>;
 				fsl,usbphy = <&usbphynop1>;
 				fsl,usbmisc = <&usbmisc1 0>;
 				status = "disabled";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
