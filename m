Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B47DE7F8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:22:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mtc4W5wTuZe0KHjPCXf5jvGL/6rgyrR8cKAKXBRciCM=; b=CFi5dB7ImmxWb6
	HtaO3jNJcJ5Emqh5M3ON0zoAuCm3GWU43LM5AyO302KHS4UFUDMgMusHgwSZqI5IAdFv5b0BD/sd9
	+5sAn6Ur+tExKVEcdQ5EGYUJ+pWMHwPrdau6fT6SJb9hOkzjSWosCz2pfsHNQ1KkFVrDmwVU1bRiG
	mtlBd9TpYsk21SfN/XmQzZT7Z+BNHfY7JBgXM+FodUmAxUQ+b3mLAF1HACqQiNinuyulPVJu8qnb1
	xtRDQVb89lSlnrOMF6kfDBhkuAGin8FfwExhcactJO5cVk9GeXA+cbvkKL4G3bHQlgWbtOERtdeIE
	TjTtt6rwQaRjFqKnbFug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTtF-0007qa-J5; Mon, 21 Oct 2019 09:22:13 +0000
Received: from mail-eopbgr40054.outbound.protection.outlook.com ([40.107.4.54]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTsn-0007eb-96
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:21:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bVy6ZlDC9A31pJInfs8PJKCf6WB0Bf5bNupxREqy3pVi2zJZDlrjp8J4NETHtkFl7gRynd81ggfJiqXcw0EUnfR+zPBcbc76Jd44u18ixZwWPwSaPZP2DKE1iwBQ8KVQMWJUaxwo7QBnNfOJFvYim98/WHuMV3hW/NDRz9xKA49BdwEB5U7qsm+cWvApK2Zu0UIjrbPAn9zaLzMzLw8q4swtCRtYXx3zsFVeGqGtifphK2OjCLCoPYyjJRTP1EGG55sMduBLpvH644PhLu6IcBDmo0OqJpeuhPdf3/il/XaO7FL95nrW5qs2E+20PsXuiTLrfuLjXj9Hd3+lo+etgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v5gctPXLz4GnxUVPmpDENuLArDIqPJHZgd0UrbV63Fo=;
 b=eqea+V58xXEnQKMlSu8RzPOa1eKBmOC+Y+mEriA5ndYRxXGqGFouiMd6f3pInO1O1egd9jyunbNMqfnJixw/Yy4IDALO7SVNBmOodBEEJAvID32we7sMB6I+8W8qLritbUrom+PDm2WedpNz2va+PoImN77fwJZIMgR43eVedNkxqeQxqUBkcGhQtRHQ/xXs48yy+0nQ5cvLQje0s/RKHwcHxh0dTqi2KO4Idsod3QBUkImfAlCJwKY7no+sJ86iDACXwrmg7stIx+ScpSfkS7NSVddXa/KQLXgcCUGP+b65jiNOwhIqhSHyUv0T9hk/debApzqBa/hcUYfq9sOryQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v5gctPXLz4GnxUVPmpDENuLArDIqPJHZgd0UrbV63Fo=;
 b=XkAHb7od1KS0zl1pKw+OfFycUt2NgCqctWpnccLegmOtNmxfxya19B17/CQJ7ZDazmGRJvdisP3sSwv+fDZgA3YBxDl6nD4nhmJoQDmpM3SJq4t487YCnTASNnQOLPjDr14HlqoZUlPkWsEYf3W0N/GQAOpCP9WXbTMdH4rzrUQ=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6788.eurprd04.prod.outlook.com (10.255.225.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.17; Mon, 21 Oct 2019 09:21:41 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.028; Mon, 21 Oct 2019
 09:21:41 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>
Subject: [PATCH 2/2] arm64: dts: imx8mn-ddr4-evk: add phy-reset-gpios for fec1
Thread-Topic: [PATCH 2/2] arm64: dts: imx8mn-ddr4-evk: add phy-reset-gpios for
 fec1
Thread-Index: AQHVh/DynXIOTbJASESwus6Kg3G3tw==
Date: Mon, 21 Oct 2019 09:21:41 +0000
Message-ID: <1571649512-24041-2-git-send-email-peng.fan@nxp.com>
References: <1571649512-24041-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1571649512-24041-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0025.apcprd03.prod.outlook.com
 (2603:1096:203:2f::13) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 773e001c-bb5a-4d9e-3308-08d75608153e
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM0PR04MB6788:|AM0PR04MB6788:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6788E49C9D02E85002F5515D88690@AM0PR04MB6788.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:175;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(376002)(39860400002)(366004)(189003)(199004)(6512007)(4326008)(25786009)(81156014)(81166006)(8936002)(50226002)(5660300002)(2501003)(478600001)(2906002)(6116002)(3846002)(7736002)(4744005)(8676002)(305945005)(54906003)(316002)(110136005)(14454004)(44832011)(446003)(26005)(186003)(6506007)(386003)(36756003)(71200400001)(66556008)(66476007)(64756008)(66446008)(71190400001)(11346002)(102836004)(86362001)(66066001)(66946007)(2201001)(2616005)(256004)(52116002)(6486002)(6436002)(476003)(486006)(76176011)(99286004)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6788;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6TA1fNCAz6Ej4kIPxwISOpzUo8s5+J31wGzUWqV1P+PNcOZM9WBPwlA3ok5gDYicJ8qjdYbPYCWyvvVoadhXpaIfDRcpyC1dFm6Mj3ndSIMD6FGzVVWRyU2jFEt1f2jR0xvi0I6Jix5ouXBlv3RyJIJpjSu86RF0lHInPk0ZrTKpAAwF12+EjlqKsZP8scVGdfp3ZTYkSHqNr6XnDdmEaaYW2TS+NN4QQOQy/KqRjsTCkEF4AGkGBhpbCpO8P7/jGailMNJfyzGZ7Cd/cz8h2O2JgvqZFbV0LgNSghVGmoq1NT7pV0hDXgfAAT0txCrgBskzsOYk7qT8Fwn/2akx1C/8gDctLOy+YlpA4wtJMgjJEkwX/sVnw16/NdKFpZiQ9pvlJE6n3MUfla96kkoWH9rXnWE/zNFCs5dpeYuXfEyCog+jBV7nB9HgChJ6P6Sh
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 773e001c-bb5a-4d9e-3308-08d75608153e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 09:21:41.6377 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FGCGqsOhOomJ76MkDlmEXsiS3oYv0tIEG4BrulRgX85y527kEh6aySbaUp+Z40q2+12HyDQPavOT1Ibv98u8kQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6788
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_022145_348482_36D0721E 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

We should not rely on U-Boot to configure the phy reset.
So introduce phy-reset-gpios property to let Linux handle phy reset
itself.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
index 1b90faace1d3..761ba0b5d271 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
@@ -48,6 +48,7 @@
 	pinctrl-0 = <&pinctrl_fec1>;
 	phy-mode = "rgmii-id";
 	phy-handle = <&ethphy0>;
+	phy-reset-gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
 	fsl,magic-packet;
 	status = "okay";
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
