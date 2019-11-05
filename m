Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A020EFAF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:23:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h6xjl8tm/GeS9mahcG4xDQJF/P8lZyBC58VxYhikpUU=; b=qbd3/SgZbhSa+V
	l4OtwSNnRBF099ilW7ZyYAWU3m5zhvw32F73jM9ZKwou9qA0nBOtelCklsErr/GFXTwl+9FJO6LPq
	OEozxu53NfF07TJoVAHu1s6WUVkz1/7FKujHeeP6TBVVBUYS5tBvQ6G7H/uauJBtQAbMFNApnkwyu
	Z0gGwzY7ZUsVZ53CkamzW5HqTWH7pfIUPtpa5Xe3AcxhRyN781W9PiP/xjIFrt6Cue9RAS4nsZjaW
	5vnp9Nl1jwODkNNWPm/Jmj2jdMz/gLTSxoNYLZEVRAH+eK+9HUj1Emdi5YuYz6UXqyNDzA32xVOK0
	9tnGLFroCdcozuFofRvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRw03-0008I3-OT; Tue, 05 Nov 2019 10:23:47 +0000
Received: from mail-eopbgr60078.outbound.protection.outlook.com ([40.107.6.78]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRvzv-0008HD-KS
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:23:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MjHMoB6uoRtCmYsZeF3TQJPDlDHpwYTPuNaMyRTB1kdd52DrD3d2wouf3bfnptIOhOhKSurcBwRvP1ND+Es/SfxH3myOZ+hqmE3q9y54hOrYG86OQnwYjlbYvihfvlciYry1rHSbQeviaDkJ7mXm6fFRKCpnMnk9F+kXLX5POoAuq9e4NkvN8QsmHjnf+d1v+XDK2YUQpP7uBp2/fV/Ce7nxdNxSshwB+hpHloiflz1e1bsQcMmeVb/2HxXfUDKtlyuB1U/kzNpZU+e8FXhJDnqnV6XkRIfUpgkI1RPliI613HTfKGubTm3AHadcOoTtzBmlYoIOqjdIXf4uTvXAhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZKIcln25d+r+PAFMfHEYo9cEeXc2/sDpbZL1wT90Nk=;
 b=B81aLgC2HtVG8+P599f57TkbDAP6dkUDwpnUG6qi59TevGUqBfixSiXMziPmrQE4eTI/3c7XxGtIphE4XLneF4SbRj3nvrph+iJRg0ZP3Wtjocpht/9/JKml5sqXee5+TBsh/1024OVfyscwDvZfZ3QPYjFyTwe6shKPxBwo5QXtl3Uk8insB8OXPsuSM6rxjpu1TktRGyKDg9TWVS7QMZTnc9V+h6FQOKyNDyyG8MGHVfm/0n627Dvl9bQNpUHv44P8N3IDlEfDW4N/24fYbZhbgm8bwnTJL6eMv6FRXUx/N+hXkq6hB1xYHvAMqJEEVTzUmHtCBouEAoH5LX5fQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZKIcln25d+r+PAFMfHEYo9cEeXc2/sDpbZL1wT90Nk=;
 b=caswlHtgWPE8aaLVGRq969zSZB+ZIh6VIzHY8XEg+phjvV8w/cn3NjLtEUFJoY0l8y4QiunLuUESgn8cnp2JaRGtQEK4zPyPBWI68AVDLLnOH1UWcPUSSmR2HBHPy723dS+UAUE2pZL5NCYMO4UFR2wFBsnCse4yRHKeWt4ZEvU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0SPR01MB0033.eurprd04.prod.outlook.com (52.135.152.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Tue, 5 Nov 2019 10:23:36 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 10:23:36 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, Abel
 Vesa <abel.vesa@nxp.com>
Subject: [PATCH] dt-bindings: mmc: fsl-imx-esdhc: add imx8m compatible string
Thread-Topic: [PATCH] dt-bindings: mmc: fsl-imx-esdhc: add imx8m compatible
 string
Thread-Index: AQHVk8MVLLROxqVDtE+NBToMG73BkQ==
Date: Tue, 5 Nov 2019 10:23:36 +0000
Message-ID: <1572949321-8193-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0046.apcprd03.prod.outlook.com
 (2603:1096:203:2f::34) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 351b4f56-4a47-46be-62d1-08d761da3783
x-ms-traffictypediagnostic: AM0SPR01MB0033:|AM0SPR01MB0033:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0SPR01MB00333ED29C279F56C312482A887E0@AM0SPR01MB0033.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(136003)(39860400002)(396003)(189003)(199004)(2501003)(6436002)(44832011)(66556008)(486006)(6636002)(4744005)(4326008)(2616005)(476003)(478600001)(7416002)(6116002)(3846002)(6512007)(86362001)(36756003)(66446008)(186003)(26005)(64756008)(102836004)(386003)(6506007)(52116002)(50226002)(5660300002)(71200400001)(316002)(2201001)(8936002)(71190400001)(66066001)(99286004)(25786009)(66946007)(66476007)(110136005)(54906003)(8676002)(6486002)(81166006)(81156014)(2906002)(7736002)(305945005)(14454004)(256004)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0SPR01MB0033;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EYaCU5hGDZrGEWTsv5yTPZA9hNyaWjv0VLu9APE+PXZyJFPWBxP1LuPRYEH1PLV67lGHUhT/vaVv5HZGi73rCJorx4Do2aIQPEYj78ONEWVlOtVX98j+au+So/3Kaz/dgjiRnLrdQ8w9uuKka+qz16woQnjdHdexyD/JqLAQpW3xqJDXjrgohdKWjcfV1fqKz6HNpYStZz6nEpSb8emLxiJSnnXnlTZ610kKN+goWqyzngvLEAQNv/1N+N4zvOgHYlwUxt5+PyqOwcd5G/jIKGTnsSwhXWChtOaIuN9ovcYmTxq1ZqHSmb1rsH7WWWSEZsKosDkBHm6+KTFltx9K1CxkweTzfipcdBqt2MuBbWP6MRp9dzxRKfktwquWZkk9PqZVYhi9Ec7KGt1j9uX21KHiNiKDCiP4WOWDOKfyc5zjEti2yn5eB9tNSt6j5ivI
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 351b4f56-4a47-46be-62d1-08d761da3783
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 10:23:36.2714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tko5uDVdoM1nNcl6Y1i451v+Ug1i3fDVen1cAyD49HCVH9XaWFY7MgGcqGsT39cGrq2nwmtnckrZDq1GhR5NBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0SPR01MB0033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_022339_684434_60860ACE 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add imx8mq/m/n compatible string

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V1:
 imx8mq/m/n.dtsi already use this compatible string,
 but not listed in binding doc, so add it.

 Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
index f707b8bee304..2fb466ca2a9d 100644
--- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
+++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
@@ -18,6 +18,9 @@ Required properties:
 	       "fsl,imx6ull-usdhc"
 	       "fsl,imx7d-usdhc"
 	       "fsl,imx7ulp-usdhc"
+	       "fsl,imx8mq-usdhc"
+	       "fsl,imx8mm-usdhc"
+	       "fsl,imx8mn-usdhc"
 	       "fsl,imx8qxp-usdhc"
 
 Optional properties:
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
