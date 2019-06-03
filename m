Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB548329A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 09:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzMfwpypSyASaxDnnPaBkGmOtnREdIC6PGCqLvA9ZxI=; b=PaBCiKsVv/4w9d
	ffuefhQG+qxGyZjhWQ6dA29Oy5088L6ImYM68uu85Fpc7vnnLqzZH0V49AB2OVO2PIZLZS/wqn+At
	riUN7S7+bSIamLJN1Ig7YJPGh5jA7liEmDod5UyGy2WAGkUbFH6276QTBvKY8MjQ06TYa4S8/D4D7
	Gn9wMFDBaHU5kslXevLVnCNNpBJHzlHA5uGmFgOh3lACrS9y0CrBglW03o1Pl4zrMx5cyqy7Utl1D
	VJ4stTRVYCJDsprANQk/Lkg3sCmQQLc8cwGmMwNGqsfsrxAs5R7wxaxqrM0uds1lUrbryfP6DQHYI
	Rl0/02aPFtcwkQkiIRaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhSC-0003NC-73; Mon, 03 Jun 2019 07:32:24 +0000
Received: from mail-eopbgr60045.outbound.protection.outlook.com ([40.107.6.45]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhS5-0003Ms-JL
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 07:32:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5g4q9/O2dGLjm+Le6JzlgAyifZOQAHRKB743xmfbmoE=;
 b=MJMwKFHEp3ciWisy0oaaakdlLbHf/kAmz+KTtV2wqBOOfkKim59lh123TRGvsfpQQaVlqBD2bNrFEMIESbRRxM6qcNApKZ/tIELGs7C+rbJl8vlF3Kq1iRnDY7I5Fzw6RZGhlszTcCqRMWuVBjXOKOyUxHTA4lwnH94gLXkDKi0=
Received: from VI1PR04MB5790.eurprd04.prod.outlook.com (20.178.127.224) by
 VI1PR04MB4078.eurprd04.prod.outlook.com (10.171.183.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Mon, 3 Jun 2019 07:32:13 +0000
Received: from VI1PR04MB5790.eurprd04.prod.outlook.com
 ([fe80::607a:a473:5c73:7d7e]) by VI1PR04MB5790.eurprd04.prod.outlook.com
 ([fe80::607a:a473:5c73:7d7e%5]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 07:32:13 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V2 3/3] arm64: defconfig: Select CONFIG_CLK_IMX8MN by
 default
Thread-Topic: [PATCH V2 3/3] arm64: defconfig: Select CONFIG_CLK_IMX8MN by
 default
Thread-Index: AQHVGaxef4gq0FBOl0qNeIPzUu861qaJiZIA
Date: Mon, 3 Jun 2019 07:32:13 +0000
Message-ID: <20190603073212.hgdc4mwqwqvrc6kg@fsr-ub1664-175>
References: <20190603013503.40626-1-Anson.Huang@nxp.com>
 <20190603013503.40626-3-Anson.Huang@nxp.com>
In-Reply-To: <20190603013503.40626-3-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb8b84e5-1676-4817-04d8-08d6e7f5989b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB4078; 
x-ms-traffictypediagnostic: VI1PR04MB4078:
x-microsoft-antispam-prvs: <VI1PR04MB407811AFEED43EA1EBCA74C1F6140@VI1PR04MB4078.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:489;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(396003)(346002)(376002)(366004)(136003)(39860400002)(199004)(189003)(25786009)(99286004)(2906002)(305945005)(6436002)(71190400001)(4744005)(7736002)(476003)(71200400001)(7416002)(102836004)(6512007)(33716001)(9686003)(6862004)(8676002)(11346002)(81166006)(81156014)(53936002)(446003)(8936002)(6486002)(3846002)(1076003)(6246003)(6116002)(54906003)(6636002)(186003)(6506007)(486006)(66946007)(14454004)(76116006)(53546011)(66556008)(66476007)(66446008)(64756008)(86362001)(5660300002)(316002)(68736007)(478600001)(73956011)(66066001)(256004)(26005)(229853002)(4326008)(44832011)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4078;
 H:VI1PR04MB5790.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1Bb+8gDj0J1DBVLMaac/pvmazLYa+LMCcUSBb0L9wlpsdhen6zYi05rtQgqgFrIskep9xmWhGaUYyCn4PkNNA79RAoJYVi8CLAGZU+gG+0XLwNY6F2AOv01mKXcdb2YKzxB5GwYrbJqHOYmjUecj1D4UaQ84b9UWFR1vHAQv0pOwH88HjbyQoVxcVWOEFHvzUpGL0yNYwMaYzA6e6Kp9v7uCEt4KgWDNyyREP9LS83pnwmfiILs5WamysfsIzQ27iyrUA6faYz9+/f41W7M5Fi+QWrc/k828AhXTnr/67e2eQODdO2NFIgfAXCbuqIHE026KjeKxmJVe87aeUtt0v7fm3XHGuZTL0vefTg85rRkDb+eQmCNTRw46YbajR2feCq3HTebiPDS1XTl0+0fofOuDUsAXC8y2BZsd2KxMp1A=
Content-ID: <A1E0E3CAD1331D4C866338A97F69F3D0@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb8b84e5-1676-4817-04d8-08d6e7f5989b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 07:32:13.2154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_003217_638323_8E034B0E 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-06-03 09:35:03, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Enable CONFIG_CLK_IMX8MN to support i.MX8MN clock driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No changes.
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 8d4f25c..aef797c 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -654,6 +654,7 @@ CONFIG_COMMON_CLK_CS2000_CP=y
>  CONFIG_COMMON_CLK_S2MPS11=y
>  CONFIG_CLK_QORIQ=y
>  CONFIG_COMMON_CLK_PWM=y
> +CONFIG_CLK_IMX8MN=y

Nitpick: Move this after IMX8MM so it can stay alphabetically ordered.

>  CONFIG_CLK_IMX8MM=y
>  CONFIG_CLK_IMX8MQ=y
>  CONFIG_CLK_IMX8QXP=y
> -- 
> 2.7.4
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
