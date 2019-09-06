Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF19AB61A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 12:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=cAJBn/bZTllA4/JwO0k9HdYE1HM4anw6At7evZv9mx0=; b=K0CBapMJpdu2CJ
	KWmuLYDpuBMb4Q13VmtnY3/nNt09LWIA62RhoWK7Hsxr2SoDuWNuv0oZ/df4XaV0leXHqFUN8IHiF
	bO9QNg5V0VUjGeXFuy9w58z+g5QZz0w2vwx1KANzzGnF+COakVSwOHZwEaGhDcWH0j7r5FBpkSdbu
	KWbMN442QBd9xbjAfcbqaI9N9cB6ZESArrJFFfeCMAmZipMXXicl6iW3z0uR85lpjZPwg3X+SJ2Dt
	SqPv6ajBarSQglriT45u4U9tQ0mNuI/oWTwzUqs6kIv9MuxTaK8gmOjPj6OHW+forwPbgaMPaZAf3
	CYnZPMKBn7wcNWvhOT9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Bc9-00077C-7J; Fri, 06 Sep 2019 10:37:13 +0000
Received: from mail-eopbgr00075.outbound.protection.outlook.com ([40.107.0.75]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Bbu-00076l-PZ
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 10:37:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TxlAvxRG3qopazKbFsns+x/MlaoJVhqEW+ptg8UsG1JY+ARobWeGSd9MxJ+cOawDwokDhnb5/TQKd01pX2Vw+22xUoj3IpBVc8t4SHBaxPCik7fpgkvslJ4hiI29ONIKftKKVGMBtSKI5vtv7o1mMDVJx59GuOlX4XdluGVm7Ao6oa6DFt7KhTDBIc0a3tK1i60XbYFU8HqHh6daFU9KSGOhmaIJmgy/MANrFhbyTohZVP6kO58YyJE3JTRJmdYRIY5prRNms5asxOkJFlbg9u9uohc7kRz9C33Wyk3ER9o/LUch/6Bd4BuW/ZqBcocV0W5wDxXHSlSD9ZbyvQyIxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DqDjFZldFO74IkAUYJc5v88+gWIYINHXIYSObssg260=;
 b=U2vuT6Aahzrw7ePkP3TaJovMM+aW9sOWGJ8wZJRR6ZIjIPt51pGXfPpvLpYYOzPoqNtPBzHL8qzMnY/W4RTmgeNIoyd4QgyMvgB7sP3p8TbQLdpQBMWkjHQMV5G2irBebrJyHJkxBbED3J7Z58yrhz3uTsRCj65I47dZhGD9p8prlyu//AWTLQN5EWjbIT+C2XpPrPVeVQv5ysMOMjk0tt7Luyr0nvZTgMnMf7yd+8ZF8MwtG7zdcoW90ISCa9G0vqdlhOV0/pOzGnQ3eu4v8cABAB0YTmLFnylG9xqYdpPDyzV8iitG8weP+T3XHIaOxeIo9rzGUKaJVUPy1LBflg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DqDjFZldFO74IkAUYJc5v88+gWIYINHXIYSObssg260=;
 b=CE0iHkRp7E1gw5KGoD2w0cXqQ1o9LdnAv3rjf19jhvJlXaqvPmzi17CxLLZ5RFcs0k1LJ/ippLbfZoYIYFwp+krBjDAA+asRx4ZL+d1u9rJOwGHd388DD5CauJig6bVloLYAQgOLZIdYe9ysNjI4cVSmIy8qoLvS624HrHD9/J4=
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) by
 VI1PR0402MB3344.eurprd04.prod.outlook.com (52.134.8.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Fri, 6 Sep 2019 10:36:54 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::c1a3:2946:8fa8:bfc5]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::c1a3:2946:8fa8:bfc5%3]) with mapi id 15.20.2241.018; Fri, 6 Sep 2019
 10:36:54 +0000
From: Horia Geanta <horia.geanta@nxp.com>
To: Andrey Smirnov <andrew.smirnov@gmail.com>, Herbert Xu
 <herbert@gondor.apana.org.au>, Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] arm64: dts: imx8mq: Add CAAM node
Thread-Topic: [PATCH] arm64: dts: imx8mq: Add CAAM node
Thread-Index: AQHVX3YoDzlFnP6e30CCIqXKl5RGwQ==
Date: Fri, 6 Sep 2019 10:36:54 +0000
Message-ID: <VI1PR0402MB3485E83188A0972A2DA74C5D98BA0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
References: <20190830210139.7028-1-andrew.smirnov@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
x-originating-ip: [84.117.251.185]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a910bed2-695c-4f8f-426f-08d732b622b8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3344; 
x-ms-traffictypediagnostic: VI1PR0402MB3344:|VI1PR0402MB3344:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3344F4798E19C202B30100B798BA0@VI1PR0402MB3344.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(376002)(346002)(396003)(39860400002)(199004)(189003)(91956017)(76116006)(33656002)(86362001)(53546011)(6506007)(66446008)(64756008)(66476007)(66946007)(66556008)(14454004)(55016002)(26005)(6246003)(102836004)(53936002)(6306002)(5660300002)(7736002)(8676002)(81156014)(81166006)(8936002)(7416002)(256004)(14444005)(478600001)(9686003)(305945005)(52536014)(44832011)(486006)(99286004)(476003)(76176011)(446003)(66066001)(6436002)(7696005)(186003)(71200400001)(229853002)(25786009)(316002)(71190400001)(4326008)(110136005)(54906003)(966005)(2906002)(74316002)(6116002)(3846002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3344;
 H:VI1PR0402MB3485.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: C1sO3h0A8A9r3gHYGusrikVx7ppWTlQu3PAvx72M4R4ws1Zf4PDvjVwrla6iaCAeJpYAIkkf8XiOHPBf/gfplNlIrn/RNp3R6bPwgKqVZ/yFc0nZOJm5lAtYnxzY6FpVKoRpyokTlS0DupL1CRWdGdYW3NAauWuhZ0cjlKgNc9U2xhk6iX+nqfSXw77vi1OF2aE3LA3CyS7rLsIfOfDwHtYJ3OANt5hlQMgq3o8BTeCkJj42MXbKZdLwK+MdlbBbt2Tmo6pOQNwJn+WmfapRyYBrFGmK/bL6F4WzgckMt/GYfXv/7jqFiNyiV2+vzPIQTmhLwFsRxwhY9lDRzJm+BbUp0pDuDr7Ws3TGmTVJ+LuRQP0Gj0+WrHQBfr5gxmVz9fzNTbzDop1MDz3V9d5ORQoZdxLK3LMBQ2pqdOvA+jk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a910bed2-695c-4f8f-426f-08d732b622b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 10:36:54.3752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XBbuT3pXpKu2zDIwtf+dOmdBr8dDJWLz1RIvX7LBz7qnGEEdT23Sq5yjpmuIRLE4K9fGGlnZgK0yANa24dwuyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3344
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_033658_906931_3537FA30 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Cory Tusar <cory.tusar@zii.aero>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Iuliana Prodan <iuliana.prodan@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/31/2019 12:01 AM, Andrey Smirnov wrote:
> Add node for CAAM - Cryptographic Acceleration and Assurance Module.
> =

> Signed-off-by: Horia Geant=E3 <horia.geanta@nxp.com>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Cory Tusar <cory.tusar@zii.aero>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Herbert Xu <herbert@gondor.apana.org.au>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Iuliana Prodan <iuliana.prodan@nxp.com>
> Cc: linux-crypto@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> ---
> =

> Shawn:
> =

> Just a bit of a context: as per this thread
> https://lore.kernel.org/linux-crypto/20190830131547.GA27480@gondor.apana.=
org.au/
> I am hoping I can get and Ack from you for this patch, so it can go
> via cryptodev tree.
> =

Could we please get an Ack in time for v5.4?

Thanks,
Horia

> Thanks,
> Andrey Smirnov
> =

>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 30 +++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> =

> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/=
dts/freescale/imx8mq.dtsi
> index d09b808eff87..752d5a61878c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -728,6 +728,36 @@
>  				status =3D "disabled";
>  			};
>  =

> +			crypto: crypto@30900000 {
> +				compatible =3D "fsl,sec-v4.0";
> +				#address-cells =3D <1>;
> +				#size-cells =3D <1>;
> +				reg =3D <0x30900000 0x40000>;
> +				ranges =3D <0 0x30900000 0x40000>;
> +				interrupts =3D <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks =3D <&clk IMX8MQ_CLK_AHB>,
> +					 <&clk IMX8MQ_CLK_IPG_ROOT>;
> +				clock-names =3D "aclk", "ipg";
> +
> +				sec_jr0: jr@1000 {
> +					compatible =3D "fsl,sec-v4.0-job-ring";
> +					reg =3D <0x1000 0x1000>;
> +					interrupts =3D <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
> +				};
> +
> +				sec_jr1: jr@2000 {
> +					compatible =3D "fsl,sec-v4.0-job-ring";
> +					reg =3D <0x2000 0x1000>;
> +					interrupts =3D <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
> +				};
> +
> +				sec_jr2: jr@3000 {
> +					compatible =3D "fsl,sec-v4.0-job-ring";
> +					reg =3D <0x3000 0x1000>;
> +					interrupts =3D <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
> +				};
> +			};
> +
>  			i2c1: i2c@30a20000 {
>  				compatible =3D "fsl,imx8mq-i2c", "fsl,imx21-i2c";
>  				reg =3D <0x30a20000 0x10000>;
> =



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
