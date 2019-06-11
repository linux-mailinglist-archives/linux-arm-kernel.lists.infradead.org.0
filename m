Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 074E53C95C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mR38HxPRJ8a8ZAyEggbLgw6DNr6HtfuKAyoIAUFMvL0=; b=m+R6fIhO+8aA8a
	NEGjOXv2GvY5nauUxqsK4zPkOANDIn697CJDeJ2wxoHyVDW7BsxOfr0W91IVcyoMIHnHgG74ToGdP
	0sc/FjYeS56TWIf2hZq1V40hdAWEVS4eZTK9BoAzbxrm492keqgZ0P/exe1pz4I/HWo3iCoDCFinm
	EFTjuYtDAI+cD/DT8XgjbvGbuhhvQbhdsoAdBTjaxQzWZIYEoRl/esYLS9Zv22lBCDmYrvUeYdLOf
	PPBrdaZ/IDJJXLdlxr74l2OVsJVkMkmm6tPYQxQ1/mjMrlXYiDLou2eSXYqGY16CDk1RbQDW52/fo
	IfTB2Z07zu6MB3CaIZlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haeNu-0000KL-4C; Tue, 11 Jun 2019 10:52:10 +0000
Received: from mail-db5eur03on061e.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::61e]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haeNm-0000Ju-D0
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rPvnWu3FFfI5wL/TOLxlpYANYvESdJTFIUZyEBdJAs0=;
 b=RrepAC0Yn/zUfmOTDtWlMCrkU5d7evKC8+WfXnzqWa1ct/6ILLs8CjGmerbo3AuQKUDNUWcciK8XORCqpagAxWZ85G3pMRbbKVk8ShFyNjTBKzu72oQcxjHg3TjymRwqJ5YKRaI6Kge3FsbUmnWPptRDk4/qVp2IoZwG+RVbtWI=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4546.eurprd04.prod.outlook.com (52.135.149.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.17; Tue, 11 Jun 2019 10:51:58 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4%3]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 10:51:58 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "festevam@gmail.com"
 <festevam@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>, "olof@lixom.net"
 <olof@lixom.net>, "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 3/3] arm64: defconfig: Select CONFIG_PINCTRL_IMX8MN by
 default
Thread-Topic: [PATCH 3/3] arm64: defconfig: Select CONFIG_PINCTRL_IMX8MN by
 default
Thread-Index: AQHVFpRvb6leaT2HWESvmvTiSrMpmqaWWUQw
Date: Tue, 11 Jun 2019 10:51:58 +0000
Message-ID: <AM0PR04MB4211E5EC9392837648BB488880ED0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190530030546.9224-1-Anson.Huang@nxp.com>
 <20190530030546.9224-3-Anson.Huang@nxp.com>
In-Reply-To: <20190530030546.9224-3-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3d6ea856-371e-4aa6-266a-08d6ee5ad398
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4546; 
x-ms-traffictypediagnostic: AM0PR04MB4546:
x-microsoft-antispam-prvs: <AM0PR04MB4546650BB5BC8FCC9710B54B80ED0@AM0PR04MB4546.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:291;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(376002)(396003)(39860400002)(346002)(189003)(199004)(7416002)(74316002)(3846002)(33656002)(229853002)(6116002)(6436002)(256004)(14444005)(4744005)(71190400001)(66066001)(71200400001)(9686003)(4326008)(25786009)(55016002)(14454004)(8676002)(110136005)(99286004)(2906002)(53936002)(81166006)(8936002)(305945005)(81156014)(7736002)(6246003)(5660300002)(2501003)(476003)(26005)(478600001)(186003)(2201001)(486006)(66476007)(316002)(66446008)(68736007)(446003)(73956011)(86362001)(66946007)(7696005)(66556008)(102836004)(11346002)(76176011)(52536014)(44832011)(6506007)(64756008)(76116006)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4546;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hfC4yn+yl/PtgLd18ttIPEyjk2wZkrYUF4j2g8dUPD9qwTDyFADko8pRaudG71/+p4y86mu6OTnfIi7AOJ7iFqRuZ/8C/s2ez/7XR2oHNMDbopZdgnm7fHJQUyBmJH8zq2Gq8RMG2qm5OXQM98qKBW2Fo65f1wUGSqOiX1poB71avc66AZh2yeBIvBOqawkrPQtDxG++oQLr7gUpVAcUdwUFptLDqmLeAcZHw/bHyfH24dY/ZFAU9G5EeeBr5shQwsGowt3VO8u5WFKJDpvYkt6DbKmQx47JYt6kr0axcD1k4Ozo+v2SQNYZXW1WBSRQGX5vtYQILU68Ii3v+s4NrY4c2Z0b60cvSSv4fWbDSY4iEwczi/+QYeBTKPj1fLWDPSA7mM5l/RCBxEd4WIqHmcuOfGedlqGSOkavUWm0RHY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d6ea856-371e-4aa6-266a-08d6ee5ad398
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 10:51:58.3475 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4546
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_035202_447020_7F6D7AF3 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:61e listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson.Huang@nxp.com [mailto:Anson.Huang@nxp.com]
> Sent: Thursday, May 30, 2019 11:06 AM
> 
> Enable CONFIG_PINCTRL_IMX8MN by default to support i.MX8MN pinctrl
> driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Nitpick: please check the alphabetical order,
Otherwise:
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 7c7b6b5..8d4f25c 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -373,6 +373,7 @@ CONFIG_SPI_SUN6I=y
>  CONFIG_SPMI=y
>  CONFIG_PINCTRL_SINGLE=y
>  CONFIG_PINCTRL_MAX77620=y
> +CONFIG_PINCTRL_IMX8MN=y
>  CONFIG_PINCTRL_IMX8MM=y
>  CONFIG_PINCTRL_IMX8MQ=y
>  CONFIG_PINCTRL_IMX8QXP=y
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
