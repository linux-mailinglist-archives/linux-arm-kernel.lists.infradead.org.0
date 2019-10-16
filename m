Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40AAD8E0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 12:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gUaz983ayVls+DHMMppdoXo5L88UAG7cnfd7sY6Q/8U=; b=mqF5YQHutgWYf5
	Mtrzn0JNImlCHHGKyiGU7IzCawW+eVTSSuMbHiYjBex11MAdKT1ek7fTCcliB1mJNhY1XJU8A4v02
	OnC9QcQ/Th83nDZUwnh3I8WVWiKaE2IxYgul7EHSqBCVAWI42LTfbVt0waDEsPsMWAly+nWnezYgE
	0JdRD+yEHw6KQTLB1IMxupopKqUTRaKtIsDRiJdl5Al+wPldcmpgm2GZcjjF9xjYvR5+hooSImG6W
	Grs6IhDQCVNjTvN0ACoz48SI+wOcXkAB2eJ/70U6GCn8gpp9+XRy2sfs8RhnJsRAjDg2xZBNfOfBb
	vkYybGFhSm2att9jeihQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgfC-00057N-FT; Wed, 16 Oct 2019 10:36:18 +0000
Received: from mail-eopbgr50084.outbound.protection.outlook.com ([40.107.5.84]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgf4-00056q-EB
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 10:36:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TphEzX1WGSBq3X3polQkmoyerqg4CaUvjCUWZr5O0pO8BqSXeLlOVH/oTJpHARh+kCjkusvya9UcqClea8UxTgjzqGAGOjk07Rj18e1cLDW+rEU2Ey1yG0VP6kWrx4FY6vPnOzhz0MSp0eBKdsJINIS66PW0VC2Gdb47trAMc0VF7tmy/Bc7WcWZICzq06v4VVqtCSuQKrHVtlCOugBkhMIqv/cSoS5qz01lD18F3Jo029G648aAYzP/7SXXgjEYcrK3aefw5oAtpGjD48oKVAcGl3WxscQuiTMP1wSHfNsM5gH+OHeleYaB6Se7NTubLCKlaMwxCGgRZMawd8Hs7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8BPlfa9H0xqu9yfqTMuB0WEmh4SUQ8MIR1A1jzuoTwY=;
 b=X1FOaP8CZ5yGyawAtgildYpbYJPAIPk31BmyGYr8WFKIS1CRngXDBWjfDFUeeOAy3W+V/w005sqcyHU0UaR9XG2fmEDs9zpEX/herYqcbizLPzn+nZ6l/pzTEMBzZ4gtIsBzvvQ3HY1iO5fsVeZ5LVYRM9ssKnPVnHeR6GRuLU6OpMyDh0Z0IuOzPv9Se3DQreBikdPreeJOEmepNkLbdSOfDeAhAdnAvf1y5J79N6yntWYg9gQsh8OCOiQjQXdXSks7Q/OrWuuDKjzxW6qcwpnwU2uCHsTAcmq6XChVUa+GoeEdQiC7lLXG+8e0I8F5/IPdOZkH7NxOcEuiI0Tx1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8BPlfa9H0xqu9yfqTMuB0WEmh4SUQ8MIR1A1jzuoTwY=;
 b=lYuDi8gyHvsu06m2rrtE1MKf606hX0LnhDN6saf/+zf9kD1DVECgvrQ0hEBB42hIqmaZygqWGVt5r2WCe0Z4qkMDAOoYFCSNW6xLkA/RjWPDxxix+eKsJEY/9TRFrx1iq+G3tM2pdH67AQb66o8aFiCiMQGgzYEMDBBhJx3FwHw=
Received: from VE1PR04MB6479.eurprd04.prod.outlook.com (20.179.232.225) by
 VE1PR04MB6685.eurprd04.prod.outlook.com (20.179.233.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Wed, 16 Oct 2019 10:36:06 +0000
Received: from VE1PR04MB6479.eurprd04.prod.outlook.com
 ([fe80::e052:9278:76a3:27c]) by VE1PR04MB6479.eurprd04.prod.outlook.com
 ([fe80::e052:9278:76a3:27c%6]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 10:36:06 +0000
From: "S.j. Wang" <shengjiu.wang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>, Anson Huang <anson.huang@nxp.com>, Jacky
 Bai <ping.bai@nxp.com>, Jun Li <jun.li@nxp.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>, "S.j. Wang"
 <shengjiu.wang@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] ARM64: dts: imx8mm-evk: Assigned clocks for audio plls
Thread-Topic: [PATCH] ARM64: dts: imx8mm-evk: Assigned clocks for audio plls
Thread-Index: AQHVhA2D/VrUFzy1602vrssfnC7nGg==
Date: Wed, 16 Oct 2019 10:36:05 +0000
Message-ID: <20191016103513.13088-1-shengjiu.wang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.21.0
x-clientproxiedby: HK0PR03CA0080.apcprd03.prod.outlook.com
 (2603:1096:203:72::20) To VE1PR04MB6479.eurprd04.prod.outlook.com
 (2603:10a6:803:11c::33)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=shengjiu.wang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 36756735-579c-4453-57e9-08d75224a64e
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VE1PR04MB6685:|VE1PR04MB6685:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6685FD371C21F557286C884FE3920@VE1PR04MB6685.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(376002)(396003)(39860400002)(199004)(189003)(7736002)(71190400001)(7416002)(36756003)(2501003)(71200400001)(8676002)(52116002)(2906002)(5660300002)(102836004)(386003)(186003)(26005)(99286004)(6506007)(14454004)(6512007)(1076003)(81166006)(6436002)(305945005)(478600001)(66066001)(81156014)(256004)(50226002)(66446008)(66476007)(64756008)(66946007)(110136005)(6486002)(66556008)(2616005)(25786009)(476003)(86362001)(8936002)(6116002)(316002)(2201001)(3846002)(486006)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6685;
 H:VE1PR04MB6479.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j9hl6cXmZZCnAUE9i5G6000BpEFll9DfAHceVrUdPvcAROPfoSWocgNPeS1+rePJDeVpNTsfpaxEFOb2Myn3ucleR8uj6iCxtpMrKXGkM8x7FDlsyrP8Zt6kZzDQUHWqjxXAoBWcFYu6I8VPxZAgr6n9r+5VB9ylwh6S9jI2IX9/x8FBQeutHeOWawwe/jA7SYwR7jxHF5T5hbLOJmaZmi7KZcHboaeygfly3WGGhQanXccEliRiiWrRQGp3lrbQJSmQze47+EOenr/dq0gjgNRE4XrrEB/X9X5u7unjE3JOjyEkAJBGiJYx5LC4VasV4E7hphnV8At/K9m5b7DA3R9lHUbfar0SYrtmghop45Az0/MwX3mCD90BHsQDzApenGC3eRTq3H0+4hcuWEjIMP4n5Yoaya3qK8RrVvurWTM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36756735-579c-4453-57e9-08d75224a64e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 10:36:06.0515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wjr4aR42le1D9J4VIXdU5NVl7N8S0H6SgXwiM2NSgFhr1SvX7OEJQRdjvgZFRuGi8D7Vywa6CvHyCzZzM7gULw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6685
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_033610_573514_BAABDB17 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Assign clocks and clock-rates for audio plls, that audio
drivers can utilize them.

Add dai-tdm-slot-num and dai-tdm-slot-width for sound-wm8524,
that sai driver can generate correct bit clock.

Fixes: 13f3b9fdef6c ("arm64: dts: imx8mm-evk: Enable audio codec wm8524")
Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 2 ++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi    | 8 ++++++--
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
index f7a15f3904c2..13137451b438 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
@@ -62,6 +62,8 @@
 
 		cpudai: simple-audio-card,cpu {
 			sound-dai = <&sai3>;
+			dai-tdm-slot-num = <2>;
+			dai-tdm-slot-width = <32>;
 		};
 
 		simple-audio-card,codec {
diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 5f9d0da196e1..2139c0a9c495 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -479,14 +479,18 @@
 						<&clk IMX8MM_CLK_AUDIO_AHB>,
 						<&clk IMX8MM_CLK_IPG_AUDIO_ROOT>,
 						<&clk IMX8MM_SYS_PLL3>,
-						<&clk IMX8MM_VIDEO_PLL1>;
+						<&clk IMX8MM_VIDEO_PLL1>,
+						<&clk IMX8MM_AUDIO_PLL1>,
+						<&clk IMX8MM_AUDIO_PLL2>;
 				assigned-clock-parents = <&clk IMX8MM_SYS_PLL3_OUT>,
 							 <&clk IMX8MM_SYS_PLL1_800M>;
 				assigned-clock-rates = <0>,
 							<400000000>,
 							<400000000>,
 							<750000000>,
-							<594000000>;
+							<594000000>,
+							<393216000>,
+							<361267200>;
 			};
 
 			src: reset-controller@30390000 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
