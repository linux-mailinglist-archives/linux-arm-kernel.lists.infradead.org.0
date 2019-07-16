Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E366A9B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 15:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qfpll359dU8GDIIjSIzSFMUgRnwpZWDX/MF581/UHQA=; b=CsO2yQlW7g29fq
	/9AIiitHjD/5ir9ebqRbI7I/gIT93VtUn9Q3lw3V+Qw2X33hcUUlYnltI91dzpqFHfWJPklJP7Wmm
	ARtc3ZpT/gkDe2R5HhtH4UnXWLPaktpdrh4mBT44v3dbXzBQ4a90fTTNJLmP/DDfpkngsHvhxvayY
	mwRqUyd1Z/Kf7+KDzPjhUTLgC/aJpw6bObZDUndCbdDqPTqEcA82ChwH5j57NHl4Dc6RcV5AudXPZ
	ZL3Sh9K/Jb+VX1F0BSMSOx84hj3wBilsD1xw6zj5yw/psrvwJtqVsxnliFjMdKspDKi1InsIpOuF0
	tWdAIKCvMEF9VjjGfWuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNcb-0003ut-Vm; Tue, 16 Jul 2019 13:35:58 +0000
Received: from mail-eopbgr30047.outbound.protection.outlook.com ([40.107.3.47]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNcN-0003tn-Hq
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 13:35:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vgGYiKRVvCWWit7dh4AHNSKJLkla6TDKAdgqJfYzvEM=;
 b=VB79YmjnttWFbFOcqkyxkMExO5laBfvUojc+xCgyaUS7/wwxW86CTjj1tewugFb2lb8rMzSyjhMHEfjZUB4yZQMYzmDfV7Z1WsG62vmkZetAmbvH9QOTjYCONFJ7kQ9BGPhQauRp9xWoOZhMvbN9O0oMEHBnOIe89acwen15+kw=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB4686.eurprd04.prod.outlook.com (20.177.56.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Tue, 16 Jul 2019 13:35:40 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::8577:908d:d4fa:67f4]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::8577:908d:d4fa:67f4%4]) with mapi id 15.20.2073.008; Tue, 16 Jul 2019
 13:35:40 +0000
From: Frank Li <frank.li@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo
 <shawnguo@kernel.org>, Will Deacon <will@kernel.org>
Subject: RE: [PATCH 3/3] arm64: defconfig: Build imx8 ddr pmu as module
Thread-Topic: [PATCH 3/3] arm64: defconfig: Build imx8 ddr pmu as module
Thread-Index: AQHVMkX5Fk1mD28qVUmXJH2urr0krabNUhQQ
Date: Tue, 16 Jul 2019 13:35:40 +0000
Message-ID: <VI1PR04MB4910CFB4D94CF4AE23A7F38A88CE0@VI1PR04MB4910.eurprd04.prod.outlook.com>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
 <e51a2f95044f0a9003c3be2e82c3c4b2653670a7.1562230183.git.leonard.crestez@nxp.com>
In-Reply-To: <e51a2f95044f0a9003c3be2e82c3c4b2653670a7.1562230183.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 00accb01-b823-4e73-1b20-08d709f27eba
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4686; 
x-ms-traffictypediagnostic: VI1PR04MB4686:
x-microsoft-antispam-prvs: <VI1PR04MB4686D582997D6B78215920C288CE0@VI1PR04MB4686.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 0100732B76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(376002)(39860400002)(396003)(346002)(13464003)(199004)(189003)(7696005)(68736007)(76176011)(3846002)(14454004)(6116002)(66066001)(33656002)(54906003)(110136005)(26005)(2906002)(74316002)(99286004)(186003)(316002)(102836004)(6506007)(53546011)(6246003)(256004)(55016002)(305945005)(7736002)(71190400001)(4326008)(71200400001)(86362001)(478600001)(9686003)(53936002)(81156014)(11346002)(25786009)(446003)(44832011)(76116006)(6436002)(66946007)(66446008)(64756008)(66556008)(66476007)(52536014)(476003)(8936002)(81166006)(8676002)(5660300002)(229853002)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4686;
 H:VI1PR04MB4910.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vmoUE8/6egoemHu+EKXPkLHxZ1wuuljEA1xmETxtMjhhF3Xx4FqJjCbdXDnG7O1E94IbiwRvcxquUL1sU0DDCWTsAAHOqe83ABoO9SJXMyZBLlEXPtTepizwFmdCOqTvwpkW/oxeGKm3f0c+lzdDoANoZEw5is4O3fwUdECpWWJCrZQTam9RdloH5o3bSIsozhuJuNVEYLlOwXrz1aMChONKQvwmgxAuW5oJsGo4clzAPA51HeSA/zJV0smHOIJMdEb2tcbuiAWVxZMrju6brLqIXNElJIkl+Y9NfVQgPlsZRAy3qPycsxWhoa5+rwzVXY/Lhw2FyXNfXS3aq3vv1vNWJNyGwkdofeYPugX5qphvuZ7UHnq5mEdnXdXkjZ+rmYYycOPszrNCWpnJKXTX25JIiZSnotWLX9z+pPlfA7Y=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00accb01-b823-4e73-1b20-08d709f27eba
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2019 13:35:40.7496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: frank.li@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4686
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_063543_586615_582FB2CA 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.47 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Leonard Crestez <leonard.crestez@nxp.com>
> Sent: Thursday, July 4, 2019 3:53 AM
> To: Shawn Guo <shawnguo@kernel.org>; Will Deacon <will@kernel.org>; Frank
> Li <frank.li@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>; Andrey Smirnov
> <andrew.smirnov@gmail.com>; Mark Rutland <mark.rutland@arm.com>;
> Aisheng Dong <aisheng.dong@nxp.com>; Fabio Estevam
> <fabio.estevam@nxp.com>; Jacky Bai <ping.bai@nxp.com>;
> devicetree@vger.kernel.org; kernel@pengutronix.de; dl-linux-imx <linux-
> imx@nxp.com>; linux-arm-kernel@lists.infradead.org
> Subject: [PATCH 3/3] arm64: defconfig: Build imx8 ddr pmu as module
> 
> This is available on all imx8 but is not "boot critical" in any way so build as a
> module.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Acked-by: Frank Li <frank.li@nxp.com>

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 812fe887477d..134a4067846f 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -766,10 +766,11 @@ CONFIG_PHY_ROCKCHIP_INNO_USB2=y
> CONFIG_PHY_ROCKCHIP_PCIE=m  CONFIG_PHY_ROCKCHIP_TYPEC=y
> CONFIG_PHY_UNIPHIER_USB2=y  CONFIG_PHY_UNIPHIER_USB3=y
> CONFIG_PHY_TEGRA_XUSB=y
> +CONFIG_FSL_IMX8_DDR_PMU=m
>  CONFIG_HISI_PMU=y
>  CONFIG_QCOM_L2_PMU=y
>  CONFIG_QCOM_L3_PMU=y
>  CONFIG_NVMEM_SUNXI_SID=y
>  CONFIG_NVMEM_IMX_OCOTP=y
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
