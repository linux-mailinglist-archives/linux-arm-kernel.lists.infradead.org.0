Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 693BE687E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 13:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RsUmN7aZBXCunbMjEE2c7Ne7YgLGHGsBHG4WVUS5JtE=; b=tl1ES5T3l4A1n2
	I2/s1B27xcADOJlwHPCD1S3bAbvnJve78bxpurr2Fer6REM0AucnRBV42FM7fiGxqSKmY5QK86uuJ
	jw8OBh6gxwqMZmJv4JF/ZAgJU2QjtVam80rU9cQRyMoXByiXdWvWGTL6toKID5xqzRJ01yAHWRLmT
	/TE1Q+7ym0o3uvBBNDAawu+64hC1BQucm2MrUUPjDAdEQ1RMRfJI96Uu/b32dErGbsREzJzFU5B5K
	wwWmj+Zp+KxuJZM+H/3GSaT1VE/S4Fgtc+9ma65GifwGga06q/m/xT30Cwn8xBTAAwfHFi2f22kDt
	n26YYJxuRLtPh5mfSIRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmysw-0003C4-FW; Mon, 15 Jul 2019 11:11:10 +0000
Received: from mail-eopbgr50060.outbound.protection.outlook.com ([40.107.5.60]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmysJ-0003Bg-0k
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 11:10:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tKziwcywrssm0dxIhnhfg0Y+NKkr3STw+WBNvsBQXrU=;
 b=ObDf2neaJnDzWT18L61iZPsWfmQ7u7QKnMrtlC/39F71Y2nxUYAihCKVjcj/gZIH3kS04BpLDIi7WOjZ8CryqDLbEdaxxD927SI7Lvrll00nlGakYwICaLM9ewaQVIWqBFN8qH0J3Eyjv4O8YbWA7Uddt6WAyrjVNB1/Wh7lmTM=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5041.eurprd04.prod.outlook.com (20.176.214.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Mon, 15 Jul 2019 11:10:28 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367%7]) with mapi id 15.20.2073.012; Mon, 15 Jul 2019
 11:10:28 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: =?iso-8859-1?Q?Guido_G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH v2 1/2] arm64: dts: imx8mq: Add MIPI D-PHY
Thread-Topic: [PATCH v2 1/2] arm64: dts: imx8mq: Add MIPI D-PHY
Thread-Index: AQHVOvoZN2tyYFG00UaL7nctnpGXwabLhduA
Date: Mon, 15 Jul 2019 11:10:27 +0000
Message-ID: <20190715111027.a4wlpzex3taxymyr@fsr-ub1664-175>
References: <cover.1563187253.git.agx@sigxcpu.org>
 <30c7622bf590670190b93c9b5b6dd1e8f809bbb2.1563187253.git.agx@sigxcpu.org>
In-Reply-To: <30c7622bf590670190b93c9b5b6dd1e8f809bbb2.1563187253.git.agx@sigxcpu.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9fcaa730-9ccd-43b7-2ca3-08d709150b09
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5041; 
x-ms-traffictypediagnostic: AM0PR04MB5041:
x-microsoft-antispam-prvs: <AM0PR04MB504107C66FCABA19235B61D4F6CF0@AM0PR04MB5041.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(346002)(396003)(136003)(366004)(39860400002)(376002)(189003)(199004)(76176011)(446003)(11346002)(25786009)(2906002)(476003)(91956017)(6506007)(102836004)(99286004)(76116006)(53546011)(6916009)(6116002)(6246003)(316002)(26005)(44832011)(64756008)(66446008)(33716001)(53936002)(66556008)(66946007)(66066001)(66476007)(6512007)(9686003)(486006)(54906003)(186003)(81156014)(81166006)(14444005)(6486002)(256004)(478600001)(68736007)(6436002)(8936002)(5660300002)(3846002)(7416002)(229853002)(66574012)(1076003)(71200400001)(8676002)(71190400001)(86362001)(4326008)(305945005)(7736002)(14454004)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5041;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mMlL5jWwCBlVc3nPF0yXT4/UVIciINMhDa58/t71xSU/9GoLZdVpnxRWVd0CCSqvX6zMR3HO/hf2OrXVwyV5zsZxNI1k7bUP3RdgkjUyVa5s2hZQkD/cWjzYi/W1ochUbBRkVDSizZjgfwv6GP90M0rXJGNJs11biJq4nIEN1HLbKk9v9smpt+fYaz0Ug1QdW4vbvyibFuCmnp65SfhXAa+GlYjOKwJDLXgRMFf8p4p+WflBjq6T5rsSoD4dXShjWn8xjlH19FHwAsTfmilf8bZTY3dxruhPKbL6O6iDf96dBdWU6Lc9nPv+apI4fWEhT1O+lr7SWXKRfKa80HQzYF92WXWGv+3LJcH9USWlO5OU6QKB0FqEszz9aesPZmtGILMy8DRMt/8jSAM2NXUI6NtAGZwOpK13Ycw7UzjF6Vk=
Content-ID: <4AB6BC72093B9A4CBF3A5D208EC97346@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fcaa730-9ccd-43b7-2ca3-08d709150b09
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 11:10:27.8739 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_041031_160607_DEA25499 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Pavel Machek <pavel@ucw.cz>, Anson Huang <anson.huang@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-07-15 12:43:05, Guido G=FCnther wrote:
> Add a node for the Mixel MIPI D-PHY, "disabled" by default.
> =

> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> Acked-by: Angus Ainslie (Purism) <angus@akkea.ca>
> ---
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> =

> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/=
dts/freescale/imx8mq.dtsi
> index d09b808eff87..891ee7578c2d 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -728,6 +728,19 @@
>  				status =3D "disabled";
>  			};
>  =

> +			dphy: dphy@30a00300 {
> +				compatible =3D "fsl,imx8mq-mipi-dphy";
> +				reg =3D <0x30a00300 0x100>;
> +				clocks =3D <&clk IMX8MQ_CLK_DSI_PHY_REF>;
> +				clock-names =3D "phy_ref";
> +				assigned-clocks =3D <&clk IMX8MQ_CLK_DSI_PHY_REF>;
> +				assigned-clock-parents =3D <&clk IMX8MQ_VIDEO_PLL1_OUT>;
> +				assigned-clock-rates =3D <24000000>;

We have the following in the clk-imx8mq in the vendor tree:

	clk_set_parent(clks[IMX8MQ_VIDEO_PLL1_BYPASS], clks[IMX8MQ_VIDEO_PLL1]);

This unbypasses the video pll 1. And then we also have this:

	/* config video_pll1 clock */
	clk_set_parent(clks[IMX8MQ_VIDEO_PLL1_REF_SEL], clks[IMX8MQ_CLK_27M]);
	clk_set_rate(clks[IMX8MQ_VIDEO_PLL1], 593999999);

But none of that is acceptable upstream since the clock provider should not
use clock consumer API.

So please update the assigned-clock* properties to something like this:
				assigned-clocks =3D <&clk IMX8MQ_VIDEO_PLL1_REF_SEL>,
						  <&clk IMX8MQ_VIDEO_PLL1_BYPASS>,
						  <&clk IMX8MQ_CLK_DSI_PHY_REF>,
						  <&clk IMX8MQ_VIDEO_PLL1>;
				assigned-clock-parents =3D <&clk IMX8MQ_CLK_27M>,
							 <&clk IMX8MQ_VIDEO_PLL1>,
							 <&clk IMX8MQ_VIDEO_PLL1_OUT>
							 <0>;
				assigned-clock-rates =3D <0>,
						       <0>,
						       <24000000>,             =

						       <593999999>;

I've written this without testing, so please do test it on your setup.

> +				#phy-cells =3D <0>;
> +				power-domains =3D <&pgc_mipi>;
> +				status =3D "disabled";
> +			};
> +
>  			i2c1: i2c@30a20000 {
>  				compatible =3D "fsl,imx8mq-i2c", "fsl,imx21-i2c";
>  				reg =3D <0x30a20000 0x10000>;
> -- =

> 2.20.1
> =

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
