Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F0E1CA0D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 04:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0ifC6QLnCGxwN6sieSj1IgwwVgqqt5pSlriwaSbkuI=; b=TLA70RDVPGpSUp
	cvn+HgnoQ7XUrggYfJ7YUi6IZcLidlsygFqIqaG48b/AvWCD1NwJNrBsVz+5t8bwYZriWHh0+TpkS
	a6Vkjfqy74TWE8Y7k0f5aDb0v0shw+EMTJCaiGLXG6tfim6xcnQYzjs1s7m+rbRzV3IwzKaH4pSji
	AnJeKGBkQxEQ4ZhkReo0yj2U8YkeZRKmzj/LXFe63czB+mS8ozZOZ731lSY600PaId135DVxSxJ2l
	S6MHy5Q+Qv3RRgDVp2jGBYrN7VNnrBqyvKTQJuuKWjCqDA+ljDbRbuztYc0/Wckm4aFj0wQTQUNxS
	h2Ns+uZAfnEZchTFaD6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWsfb-0004Si-AN; Fri, 08 May 2020 02:23:23 +0000
Received: from mail-db8eur05on2065.outbound.protection.outlook.com
 ([40.107.20.65] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWsev-00040r-TV
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 02:22:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gIgC3qhZIWAXt1DCfWq1BFPu+7UoZBSVkSBPRjLxlhvVWrgetVe9PB+PACoKCg7oMdLK1cgBS5O/VNsLt0SL/nSubohiIhBzZsqDUw2TRt70HJhBERrQjHSXGFeeOrYK9Lj3AT5pwWLmBJsLdgOTbUL0aTwfT5kYchm5QLWzv7fChj1Z/2Y0CGgLZG1bC6ItjmUPKTFNT92aOe7AiMOefPJ6pCvNsGGHluAqAlOmhj1lgJdD2y/WuUY5YmPa+u1alv8WJY0Z3Ye6nD5Il5xxdf1jR3AbaOzaKBz8hqamKWEESjwkMJMizrzDOKMX69GkNJ7lFzLRSWdkd1BNIgcJgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hy146qJF1ggdlfd5Ix84TSRjCy+CXdok5/6TpjLY5FE=;
 b=YPecIdlOdknQACU10m18L2F0G5LgbS2XTy4WJMegFWtAot+sI7+381kseI+wyv3ndicynu43h8MD/ZnTLsz6FCq46hdVbL/Qd0krDxFMm87rnvpugUYszZtUeclUlAaK6fe6ZjFAxke8yDru4r4YeJ4B/sUcqYEOpQp5VrW9MTVU2ZXr5rUZiC73gNV9EbRurbRO3XtH5cqhzxa2zrAIhnkkpLs/EAGw/1h4/7iBv63bJvaOf8D/NIdaXGBOpcq4FZtEyMonPnZKBZCfaJ1hzR96HqTT05hJiDtZX43Gk0NnRJjhS56h9BbjeLvvU26hTTHftrB4Y2inox9MSE3cfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hy146qJF1ggdlfd5Ix84TSRjCy+CXdok5/6TpjLY5FE=;
 b=C6AKvH4xH2XwYmTWYjkDnhfADuReCUbvdnCrWNqIxNNPqfH4lZOpj1YMiFSBBNAqNULFFvTTKEY0J2ec/C63mLS6Thn9EP1qopyb5GdW/OFxD0GCqPbJnoJCeNgELQwHEAKZEUtc6tGxNMz4odpzgz3Ovh1+Yajo8WhU+KB99f0=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5317.eurprd04.prod.outlook.com (2603:10a6:20b:10::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Fri, 8 May
 2020 02:22:39 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.2958.035; Fri, 8 May 2020
 02:22:39 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Andreas Kemnade <andreas@kemnade.info>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>, Anson Huang
 <anson.huang@nxp.com>, "aford173@gmail.com" <aford173@gmail.com>,
 "oleksandr.suvorov@toradex.com" <oleksandr.suvorov@toradex.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] ARM: imx_v6_v7_defconfig: extend RN5T618 PMIC family
 support
Thread-Topic: [PATCH] ARM: imx_v6_v7_defconfig: extend RN5T618 PMIC family
 support
Thread-Index: AQHWJLCfPqdj15yiT02mgtAd3mI8oKiddXPg
Date: Fri, 8 May 2020 02:22:39 +0000
Message-ID: <AM6PR04MB4966A052FEB3618BB3E5EED480A20@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <20200507204339.31253-1-andreas@kemnade.info>
In-Reply-To: <20200507204339.31253-1-andreas@kemnade.info>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kemnade.info; dkim=none (message not signed)
 header.d=none;kemnade.info; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 66f6fbb0-9646-4057-8db9-08d7f2f6ae4e
x-ms-traffictypediagnostic: AM6PR04MB5317:|AM6PR04MB5317:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB531788C975B6D5A84D85976480A20@AM6PR04MB5317.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:390;
x-forefront-prvs: 039735BC4E
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SfL1jJ7KByYtN5mSJEam9JcyVywSTMHYUAeXOqIOjPRikqaRfqppY7OCot+LyJ9FkIVxbmZSB67ySRUPzO8Di4f+amcEbzTRYJboGMvlYp6e0rZTEcclFDoZuE4kGygye4DgDnDddNOSUEAaOR1UHIw4vnmeX6VV7L7/EZte6ZOocZmup2Qv5NK5QtP2clF3+LHmtB71i/RFMz3493gRLkPBb6+ZCT1s7RLl/BTJaBcMXOOXYVnB8kJZQtvKQgJCTuEGTYsLpnT/MMLGBx2MNq6/0HUtTyvQGgEXzNyvei5qHOBlv9bLxwQSRJj8JcYaKMPvSUpif8kwUhTYd4pSsSH+Shm5o5aGYIu8potMToQNUVVCAlFv6TpXZCrTsopg1Rg+yqnR9WCS1OgCaLqVSuG5INobVxMkEHO+YTury/Yp0Be46/cCnE6025PEnNVtSMpVvrBYBPAuGo6Tgnc/n89ohsxFFjF/CMLkZ/LLbWtiplsXwzMeq+4Nck/3IxAo/lEu8tAtKJbbZDOldiiOvJ7ZtcLhSYn/GnEhP1etSpIRvMeGqw7Q/1XSTX878LpH+IR7h7jnb6NzHW83yPhTVA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(136003)(366004)(39860400002)(33430700001)(26005)(5660300002)(2906002)(7696005)(6506007)(44832011)(55016002)(186003)(558084003)(9686003)(8676002)(8936002)(66446008)(66556008)(66476007)(64756008)(76116006)(66946007)(478600001)(83310400001)(83280400001)(83290400001)(83300400001)(316002)(83320400001)(71200400001)(110136005)(33440700001)(33656002)(86362001)(7416002)(52536014)(921003)(6606295002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: /znKKcOeBaK86kSSfYtZ3CYHHAE0ExeKAJLc63igWEsrcFAAPeB+EIEDiDdpsWHIInNPkV2AcSVwpbmS6Y1qmN9cpFg/Xr5fzrgr63HB7ajDQPMY+JBm6Ihcq8skeVQfulVigVgZouVjUEmZsTxiK4ZMTzV5f1HDXwCwY8QXzSmyxjeaq4nvVMfIgTTFSyt/2Z0ScCpzdyQEk1LdfnWoSCCiOtZcFHuhaBHymcB52PZjFFohFJ8vtMreDZVa9a6RqWvNioPu9DxWb7kDrObio0cbEahB9KDHLXvBCEJbFL/MkJZoR9eV8AmRhzD38camUAQWis585NMxg4g2xojRmlk8KrUi2a7KHJhQJN2hfGOdk+lCxqWEY6NM/m3F3Gs1HYSSgsfRxd69tsK+7OfUh55QsaZmZzqie79jJHCyX83e30/QJWRS03vTeLVqdmV0+N4TZyb2nRDo7BtytBzWSCVQsBjOnY0Yu371iwAhd0iIq5EMPJVj2/EC9Bs8hUpP91FISscxjRZOcViKq9HaKsatHw6zSyOouaaiUVxYLZEXSRgGT/+Srnao3ShJijL7GRQd6XygJCWJBAsoMJKaXdoSUgkgm6xOWkO8VVEWYsInkjaq2mAeBZOsLhmWOGpBVvyqohoJpoDj3HX1zx/mj1DmKpk+aVJ/9O1Lvpqmwodc/VbMHC3zAjWb1ZqXatK/DargTMSou0ZIukExBT43LDf/QnpXVdb5ByhIzp6KJQWsGXkuQAJeRmzSfv1vJeKvHqJ7otSJzMbOJgwgzIH0PkrtP1ftWNooSPkAkZ8b2wo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66f6fbb0-9646-4057-8db9-08d7f2f6ae4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2020 02:22:39.5915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EkHnka6l/wVMJa8g/P/eF8DAXGMR6ibLP6gTkG5kr1TWlqASZfpUfcpkDMy3HmvJ5puNCxt22PNhgjqcUx0oCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5317
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_192242_032924_F020F2B6 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.65 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

> From: Andreas Kemnade <andreas@kemnade.info>
> Sent: Friday, May 8, 2020 4:44 AM
> 
> There are new drivers for functionality of that family (RTC and ADC), so enable
> them, since they are used by various i.MX6 boards.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
