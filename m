Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D89160FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5K4l9Dg/FNiCudIlTVCKUot2SbHWqlvXc92KwYrTPzI=; b=gnIWz+v5pIZDZV
	SEVchsWBpoYnJDF2aJIIu1EPNC3wU2EON39VVeFR+8MjV/9LQuIP2iGwVjMvZ+xopGDoXI36hXcVu
	r0BM1L+R/S4GCBAWrKIU4wU4Pthi+aRf9BDItgjqxDURmbK9LTcsvYD/BZoK1XKj1KF2wEGxJlDkN
	shR8bkartTxuzTe/fcyMry+zXlOvBErUXRaGT10IGtICnLev0KOuxTTsr/n6DeyfXr0xBwY0yVS+Y
	TQQjwJNyd7rVC4lTqqkPGZmZCkWbrcbY/TPesPjXGMk6/lWkxAu/VAigD8rP9F18GikHgtU+TeLKX
	ILCEtRSXupJ0c3hqi9oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwTL-0004WO-E4; Tue, 07 May 2019 09:33:15 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwT5-0004BU-NX
 for linux-arm-kernel@bombadil.infradead.org; Tue, 07 May 2019 09:32:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=scAqqGt5yoPaSrcQ2/nd3cG8Kz6Tt66Vsg7Gk4jfTV0=; b=NrMHMqjTYQodoaLQVm3FITfTwI
 HILWIars1ZxfdN5P47FLQWjG5Bkk+8iZVrx0GIpc4qyo4c9ODwI3MX5sQNo9FTsGUZ7yUcF1Ndxb/
 71W4J33zRuTG6h21pWXz/nLES6EgyU3Esl9ylhuC+d785fMKkqO5lvd1pNSIKkUXs2C7g49ZHx4YR
 oPvFtdrBF0XInr4x2jQBH+FVtX5lyz7c7EGlCWH02Tf8ysdczXjGw9AtXqVA1k/COh/pXd1OqhMpb
 k3SMyLwSO6hN9Do80DVdRHNgcyj+XKR9jXKQXW8qvnklQUsvQ7m1T4OVHe2ai/ZA4G12AIaGa8gBH
 R6EBPdEQ==;
Received: from mail-eopbgr40083.outbound.protection.outlook.com ([40.107.4.83]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwEb-0007bv-A0
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 09:18:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=scAqqGt5yoPaSrcQ2/nd3cG8Kz6Tt66Vsg7Gk4jfTV0=;
 b=Fq1WMua3iOnMUsxcybnu3u+p4Sfo7vaq0xdHZFTOIPrQw7ZGJ0CuROfFRYdmqJfnYWpTfpqY/vlW6/ngBhZSfyGcai3Sxnlw4ft5wcfelG1u+PGfjc0MddWVuZeQW3uOs6lJck2HsR2QfXEmfFR0xDJ9tGmgyBys7EvX6K46x6Y=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB5005.eurprd04.prod.outlook.com (20.177.49.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 09:16:57 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5d07:911b:18e1:1525]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5d07:911b:18e1:1525%4]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 09:16:57 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "robh@kernel.org" <robh@kernel.org>, "broonie@kernel.org"
 <broonie@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Subject: [PATCH v3 13/14] ARM: dts: imx6sll: correct sdma compatible
Thread-Topic: [PATCH v3 13/14] ARM: dts: imx6sll: correct sdma compatible
Thread-Index: AQHVBLWe5vdyXKfEb0GhX6YfVDDR5Q==
Date: Tue, 7 May 2019 09:16:57 +0000
Message-ID: <1557249513-4903-14-git-send-email-yibin.gong@nxp.com>
References: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0088.apcprd04.prod.outlook.com
 (2603:1096:202:15::32) To VI1PR04MB4543.eurprd04.prod.outlook.com
 (2603:10a6:803:6d::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 26486173-d82f-4598-012b-08d6d2ccc09e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5005; 
x-ms-traffictypediagnostic: VI1PR04MB5005:
x-microsoft-antispam-prvs: <VI1PR04MB50056A8CAE7F4A300FFCD7B989310@VI1PR04MB5005.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:392;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(366004)(136003)(39860400002)(396003)(199004)(189003)(386003)(6506007)(2501003)(36756003)(102836004)(6486002)(26005)(8676002)(4326008)(5660300002)(25786009)(68736007)(52116002)(76176011)(186003)(4744005)(2201001)(6512007)(53936002)(3846002)(71200400001)(14444005)(66556008)(86362001)(66446008)(64756008)(476003)(66476007)(7416002)(305945005)(2906002)(11346002)(7736002)(66066001)(6116002)(99286004)(54906003)(256004)(14454004)(2616005)(73956011)(110136005)(6436002)(50226002)(8936002)(81156014)(81166006)(66946007)(316002)(71190400001)(486006)(478600001)(446003)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5005;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: s/LXu9n/CZBDh/Wh0nBrjGVcny8GPYrln06UjnHjiw+5UW+rSnITJ9q1PO1t2mxeiI5h3Vd39P2SjQ/urBzcPLEkI9AzZ0XHfwE19voyyO2Aw2zCxon+7Fbl7JwC2ZY1H3CXPRSAViGwxvUaL8lOvAx1M/F75wXT0nJIc06kfaJLM7hAluGv/fef9YwdULSR+x+EBUi5cCiLTa0kNt+0so7VN2b5Oczr0i1bFQEs/2wSwbeM0jyPvSv9WkklL3p0epKP91u56mfMH8wU30Fm9Dro9tpGfsO7LVeUJ4hXr2/mU5TUrconhFKGBsrjs3ykDfmeB/f34ULMHDIQdT09Wph5GMW1ChLTcN5mw10Y+zzVAaxrfSf5CMOxiAqowq0WNUF2Tagpke7IGX1emqfUapyopbwCVTahjeBkHXqralg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26486173-d82f-4598-012b-08d6d2ccc09e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 09:16:57.0668 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_101801_417325_E897A893 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Correct sdma compatible since ecspi errata ERR009165 has been fixed
on i.mx6sll as i.mx6ul.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 arch/arm/boot/dts/imx6sll.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
index 1b4899f..d810e10 100644
--- a/arch/arm/boot/dts/imx6sll.dtsi
+++ b/arch/arm/boot/dts/imx6sll.dtsi
@@ -619,7 +619,7 @@
 			};
 
 			sdma: dma-controller@20ec000 {
-				compatible = "fsl,imx6sll-sdma", "fsl,imx35-sdma";
+				compatible = "fsl,imx6sll-sdma", "fsl,imx6ul-sdma";
 				reg = <0x020ec000 0x4000>;
 				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SLL_CLK_IPG>,
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
