Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA53EE6A7E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 02:29:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=av3Ew+tXyvdclxPJfS1ggwnqs5b5Pe4bZ4dJEOgcl1s=; b=mYu7nBMGl+0bQg
	d0qczGc3QUVYuCfR2pdaYwFYDIxnQNEGrnNtxC6eQdA5i1K3YsFwruLBBvvXsKdjfNkwu5ThtjPuN
	Hu9gX+OuKQUGuyu9G+ZaxWajyCc4eFM+rACnG6AmiNZJV+nFgM09yJsNwnIaieTWXBP74u5IYSba1
	s8AN27lqonFWvRW7+tTyHg+bbbh0/5RZ4nDpHOQO8/hBL5uLOtDeGWjnnAUqGYykoX9oLvUp5Yc3U
	0bA1jP4ARAOheaIWwLyMVpKDcgJ6jCB0AlQrUzqgTQHI/1OGGBhxebbc6hbHSLTir2SwJnAIbgEku
	5LYGbSmAa4uBTHSKS1LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOtqx-0007a7-8m; Mon, 28 Oct 2019 01:29:51 +0000
Received: from mail-eopbgr70058.outbound.protection.outlook.com ([40.107.7.58]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOtqm-0007YP-Dt
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 01:29:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dvdYW6kP3NfcpFEp8UKcMLHpBUC4hjYBca6g3wVLa5puIpRtzrWZlyxSzXlWP18u+WpKrMr/xnxlOHWfLdvyV/VWyJ/+31P0PGBs4Cf2yam/6Pnb1tQ+6aB4Ofa3SBpoI6xZQYTMOEE66qK2c4f3v/6oN8q1OwIeSa5YP6CZh9IH+Iw+/9JH7FGQAn5bxouNPH1SrY/y3ljbVx0f39XVj7iW1ar2RxX1Vi35IGjZggGR20XRYgAoxCg4Nt6vaUnT4Z9somY6mNBpdHRVbDT1yIUc59zsPHu4O00UVGlJ8sSzyXYvq/dES8BLHcrvOPw8jHIkVVsEpQvOf7EEDswy0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b7WGYUz/2vMaHOb+JPlyee7shf80hGHvuSoxA35boT8=;
 b=hGCFPUWHjHJzsS4+AoMGi1YTzwhKIfQ1d1cwvkqi/6dk/cooq5Y4tb/IdGBk+uYXt9pjBOo7wjAbqKQMfONMJkFxKlL1mABG6Efg5Y3wZ5lJATqqfJoyTTWOJXQFOdkBcqlKy05MY1dtT+PSGIxAhligsbiPjrExeno17AzAKIpGJH/bzfTRKRFlbRIo2eR4PkKdKXQzaSpNsRtTq/jPLWpwinRYXeOHuacXcXwdpX6gP+ecsnnyPy2lbA138PU8ZjlP8iOUqwYFn2qDqb49LpGlM2IrL0NYGo96RDYbSnEPAonEmqDcKhFm8KWlNVCwC5I1T0tdTEVmOgtS0b5Quw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b7WGYUz/2vMaHOb+JPlyee7shf80hGHvuSoxA35boT8=;
 b=aL+lKuKqqtr8FxusaXJmGK4u+eW8UIyvQQU8+yYVffeBcn6OEBMsxWvB+YRYCvNeb/wCItZ96E+qXVmKwBRwWaiMBHEqb5uZ+1E7vmW/L43J6Gyj3Tl/Y/4vrjUDZP6mFrRpAz8JEHNY33ZloCG+RoFWcO/Jygqg+eawd7d3DuI=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3818.eurprd04.prod.outlook.com (52.134.71.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Mon, 28 Oct 2019 01:29:33 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2387.025; Mon, 28 Oct 2019
 01:29:33 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 1/5] arm64: dts: imx8qxp: Move usdhc clocks assignment to
 board DT
Thread-Topic: [PATCH 1/5] arm64: dts: imx8qxp: Move usdhc clocks assignment to
 board DT
Thread-Index: AQHVg8fdGEBsUBy5akS/O25W4TlgXads5MOAgAJw9VA=
Date: Mon, 28 Oct 2019 01:29:32 +0000
Message-ID: <DB3PR0402MB3916A2258E1E8B4690CC1B7DF5660@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1571192067-19600-1-git-send-email-Anson.Huang@nxp.com>
 <20191026120902.GL14401@dragon>
In-Reply-To: <20191026120902.GL14401@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ffdf5021-5e14-44cf-ea35-08d75b464935
x-ms-traffictypediagnostic: DB3PR0402MB3818:|DB3PR0402MB3818:|DB3PR0402MB3818:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB381877025C8927C2E0BDA805F5660@DB3PR0402MB3818.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0204F0BDE2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(376002)(366004)(39860400002)(189003)(199004)(229853002)(66946007)(55016002)(6116002)(66556008)(86362001)(66446008)(76116006)(4744005)(14454004)(25786009)(64756008)(5660300002)(81166006)(81156014)(8676002)(478600001)(4326008)(8936002)(6246003)(7416002)(52536014)(74316002)(7736002)(33656002)(186003)(6506007)(76176011)(446003)(7696005)(26005)(9686003)(6436002)(6916009)(256004)(102836004)(99286004)(316002)(2906002)(71200400001)(54906003)(71190400001)(305945005)(476003)(486006)(3846002)(66066001)(11346002)(44832011)(66476007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3818;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L9YM5f/YxpUcuI3naitHo3UxuU2uwLeGqGrwjqT+6NxRCtMU1gYd6hW7ga7TD7eZ/O7BQ2ucRoEEDYfyu2ZWoNI5+5wwtCqoI2DWseUe1gmhTNIRKX83Erscv9xvOIEiyup478WshYg3Jc363VvPO8x/JUPX/V7/kz54gRn19GaTthtw7sVOXWzNRa58lhypU0UHi2r5rQR8pWnjauHjzm6M8HWeEM0APekHL5G9+6MVyZLfRaeHi/Gm2XbD7BCDPbccKHzsE1IgEQGK/1LuXgh9m+rnhdeoVVrCcUvkloXcGmIIk0Z8pS/ZrnRDHfQbjVRLm664A90UcGf2dgJOYHvuX2sTSXZm88z1OXD+BZu7Sz9ABQ7yqoGtbJHIUK3kExJjJFwd8A6zv5YUB479jdcaJLyvsdJ3HMBUl96uF/66VDMFdJSd33nfg7LoM4ui
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffdf5021-5e14-44cf-ea35-08d75b464935
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2019 01:29:32.7314 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9Gvt96HYRpYRsqLi/r8tpiQoXvSjkJF1rEg7g8pAOYWagQFjXvpKv60MLG5VaRUWWoqPCPg8l/FgzcmbmZn/DA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3818
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_182940_471295_FAD25936 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "baruch@tkos.co.il" <baruch@tkos.co.il>,
 "dafna.hirschfeld@collabora.com" <dafna.hirschfeld@collabora.com>,
 Jacky Bai <ping.bai@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, "angus@akkea.ca" <angus@akkea.ca>,
 Peng Fan <peng.fan@nxp.com>, Gary Bisson <gary.bisson@boundarydevices.com>,
 "pavel@ucw.cz" <pavel@ucw.cz>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Richard Hu <richard.hu@technexion.com>, Abel Vesa <abel.vesa@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "jon@solid-run.com" <jon@solid-run.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "andradanciu1997@gmail.com" <andradanciu1997@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Troy Kisky <troy.kisky@boundarydevices.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, Jun Li <jun.li@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> On Wed, Oct 16, 2019 at 10:14:23AM +0800, Anson Huang wrote:
> > usdhc's clock rate is different according to different devices
> > connected, so clock rate assignment should be placed in board DT
> > according to different devices connected on each usdhc port.
> 
> I think it should be fine that we have a reasonable default settings in soc.dtsi,
> and boards that need a different setup can overwrite the settings in
> board.dts.

Someone was complaining about the usdhc clock assignment in soc.dtsi, because some
usdhc nodes are having clock assignments while some are NOT. That is why I did this
patch set. I agree that we can have default settings in soc.dtsi, so do you think it makes
sense to add default clock assignment to all usdhc nodes? If yes, I will redo the patch
set.

Thanks,
Anson. 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
