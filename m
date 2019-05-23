Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C11B274C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 05:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KCFkN7uUrj0nsSWtlRpM9N+gh+zblGCts4xJcPf5Uk=; b=rsVs1RHdI12OKx
	OdbVlOIgwt8LQn6q5VvQ7YOaw1eeLRk5NKqBmmaZQBS6ZT7Egsdz7cd5kLG8SwD3wp6rfBVTpmgGT
	TR4ATFOTG2UxIGqSYrJEqCSi3cLLmuVvp4DO+qBnLzEzbED4gb44QBawTKjCZl2XWHQJkKEkUpQRB
	sFXWKub9tZFzfB7F1+yHLK2VJ61ZTqQyxdaJSFUnqOaXpBRGnve3CioWySJ4/PUNEMqm2hwNr1AbF
	r5p/QFnMVN8MoCI052UeToanPWnKpPMshPZEGM3Pm7pFZwFNg150BnSbK2DnhpRfR7NsmRey9MblK
	Fu/xeRfhXmfzY+MXPH+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTeJs-00037K-T8; Thu, 23 May 2019 03:23:04 +0000
Received: from mail-eopbgr140054.outbound.protection.outlook.com
 ([40.107.14.54] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTeJl-00036q-4J
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 03:22:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I0rtOIBIqBF899Xf1I66bwMTzGs+Lq9hq0oUhmkYebo=;
 b=FcSdihHYjyznr9CIru/7rz09Zn0VC4TM4l2pZRcgrqYFWUPxbEV9U3eeSS8lo227O1RJz2c0sh5BwPZP0MdeZkBsBBtmqrtnE6KBR0LZ60siZFo3AsNzHfCaw5uu/Zunuf9HFdBPtki72EHL8YuieEcMRjBhiQ4vwsbVrU2xGAM=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6676.eurprd04.prod.outlook.com (20.179.255.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Thu, 23 May 2019 03:22:54 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 03:22:54 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "maxime.ripard@bootlin.com"
 <maxime.ripard@bootlin.com>, "agross@kernel.org" <agross@kernel.org>,
 "olof@lixom.net" <olof@lixom.net>, "horms+renesas@verge.net.au"
 <horms+renesas@verge.net.au>, "jagan@amarulasolutions.com"
 <jagan@amarulasolutions.com>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>, "enric.balletbo@collabora.com"
 <enric.balletbo@collabora.com>, Abel Vesa <abel.vesa@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, "robh@kernel.org"
 <robh@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V5 2/2] arm64: defconfig: Add i.MX SCU SoC info driver
Thread-Topic: [PATCH V5 2/2] arm64: defconfig: Add i.MX SCU SoC info driver
Thread-Index: AQHVEGblzlrg+sJQ0UyXeIb9I0g1x6Z4DK/g
Date: Thu, 23 May 2019 03:22:53 +0000
Message-ID: <AM0PR04MB4211D3E1C91551964062C7C180010@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1558505898-722-1-git-send-email-Anson.Huang@nxp.com>
 <1558505898-722-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1558505898-722-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: efa89dc6-da16-4479-caa3-08d6df2df1a8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6676; 
x-ms-traffictypediagnostic: AM0PR04MB6676:
x-microsoft-antispam-prvs: <AM0PR04MB6676C3984456FBA85696DC4380010@AM0PR04MB6676.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:350;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(136003)(396003)(39860400002)(189003)(199004)(186003)(44832011)(305945005)(8936002)(5660300002)(81156014)(7736002)(8676002)(25786009)(71200400001)(2201001)(71190400001)(74316002)(55016002)(81166006)(229853002)(316002)(26005)(11346002)(33656002)(446003)(256004)(66946007)(73956011)(4326008)(3846002)(76116006)(6116002)(52536014)(2501003)(558084003)(476003)(66066001)(2906002)(486006)(66556008)(64756008)(66446008)(66476007)(14454004)(6246003)(9686003)(110136005)(6506007)(99286004)(478600001)(6436002)(68736007)(7696005)(53936002)(102836004)(86362001)(76176011)(7416002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6676;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /lO6POIA9DwaRblDkWBnw9GfuHTiN4+moCkOtdGTOCm8TKniEYg89JsdGyDsMX35ByThqjMZIgTthGbn176C+p36lg6KCqg/VlKYGcdpO75e1ZGGpqRVUPrVFEtsQUVgO4dwv7/A+6tEHwsPAH6ltym1hKRpQiZlvRFjHC/EU3OT6HPVlu/DTiYNO0vmj0TSkMk3B0RmAFBadyWS2BlYtv1lytSbiZFO15wvgfd3p2rMcQGKxKVnaJqlyTjJrnsbqnh+dXUn/wiJ4sB+c3MUIEq+KFU1q2ImRDvKa3e5aFO5CG1SYOlC7Go7By78tQHV6KTD5rHqb5ZF46RlWmuGYfb3Dz4XYDvWIyZJ6S22+CYL/w/d9ZHSOfN7dO+C73ofq7oqtGRdRSO7uq5UPg8ChqYimnqQ4KK8ifvuL2EPV3M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efa89dc6-da16-4479-caa3-08d6df2df1a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 03:22:53.9587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6676
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_202257_741368_D4BE8DE2 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.54 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang
> Sent: Wednesday, May 22, 2019 2:24 PM
> 
> This patch selects CONFIG_IMX_SCU_SOC by default to support i.MX system
> controller unit SoC info driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
