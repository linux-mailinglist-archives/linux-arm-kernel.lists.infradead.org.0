Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C5A87C48
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+7R19zMZ/QbAKddDRrlsGZvfn0EDl+uBYDCMRfTglg=; b=Ri2LD4YkMnX7tP
	monGuNqRrhsUdsGVkNq/Mc0r9DUHJThZwAM/wS/Me1asAU6x9IFQhSDkOjPY04bCcnI764V9h+2Jv
	0xXPWrU9r66R28NS30tpVyW7Jw/udQxvi8Jyb2BHlbCIzGz4Sz7uvkwFYLQlM9aKC4ycYwsSDb0FL
	4dBZA2oyTpaAvk9rNzVjdoVEQswCnyAEDzqjReFRBfTSaCOGYxOaZ6tHWOviGmUFHX90Z9QP7NoSk
	9u/j5YxM5VBHal7goEvm0aDV/79eOPPyyLICv6VpveOA9BaNquLKozz0edIRg3GTV0m4HQcxnAVBT
	i0Fah6ilIlZsNJadIgsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw5YH-0007w2-1a; Fri, 09 Aug 2019 14:07:29 +0000
Received: from mail-db5eur01on0707.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::707]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw5Y6-0007va-Jo
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:07:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hqkx+/q2LHvTWC/7/mAi8Vkh9vkWwbcBmH2ChQEo4T7ejP109BmWm18U+XVNLdqyShdqCjpfS2cjHHrGMRHHvYWvs+zyVfEx7+Cnwqim+o826vNQJu1PW+XDJ+vBaaaXi2pfBDWiflxvJ0Tx+oGrffDElU5wHPH+7tv2i9+qf53x/fCP5RSNn8IvPynQAv25GrsbCnvpDoAFBEE3DGqOzCWqvbAk4rfnl8t5Rprpe3D12lwGg5Wxo2A5TLTrZ6Gj0tIQSueYmtzcuLd2NhRKfIOVMdU/fiJkHwwp6VSNwbVNYyY+6MVw2hNoJvDwp4HRAbz6Y9kxGnibllfb/58ymg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=chH+Y3xHAG2dV/7GhshlkXVzB3+JwtEP8Rbx90LLk9c=;
 b=N5gjj1ScDnT7pE9MbyhJDX0ZWVfgcf9yR6Bj2raHGrMLLWMajqDn4V78hhb3skWsC9Vt2IRtGj3qn3XPzwR5jmWFVuykZ6JYqzTk+iE5OewfW35AEOYjM5co/Ra3mJq+X66PEwnfymtwQIuX5q3IFuIOkohwfUxmjqvnZhJmOUzk2aL8URhUkbXQwcziByCyZer/9tvZmIxVoTucMbdQtdu2zRrYjmu+5Z6Tv3JLPHswRJcZ+klqsNzmtx4SRD+uHS5XbSDfzPbndooiI+aDT0KJkiHCGPN/jGh+gTF+5XmTe/TzWDeMlBq00H+EHJek71B3I9VirSW5uQuGHIxeJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=chH+Y3xHAG2dV/7GhshlkXVzB3+JwtEP8Rbx90LLk9c=;
 b=agef0fGBCorV9fEIWVTlORsG3l0GEGB7dRxYYVPHTQa8DnWgDCZunyVSSKJ6w4MXvY/OfQfskC+OaEokoiQPmR8dcP6M/wdk3Sn62YmNIR87sOxhEyz6CQ2puOpBwcsKGp9od4iYBtLMKpymyEbRYXdH+X8dR1fFqeG0PQvFKlQ=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB4157.eurprd05.prod.outlook.com (10.171.182.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Fri, 9 Aug 2019 14:07:14 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 14:07:14 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 03/21] ARM: dts: imx7-colibri: prepare module device
 tree for FlexCAN
Thread-Topic: [PATCH v3 03/21] ARM: dts: imx7-colibri: prepare module device
 tree for FlexCAN
Thread-Index: AQHVTPnGbE9U8cUOTEK0ccFwNcLdGaby3YiA
Date: Fri, 9 Aug 2019 14:07:14 +0000
Message-ID: <84c580aadaf4e3007cc43e5f73163bf24af4a1ca.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-4-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-4-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c17acd6a-0c2e-4afd-b468-08d71cd2e134
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB4157; 
x-ms-traffictypediagnostic: VI1PR05MB4157:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB41575A346C4E36E0FEE32C89FBD60@VI1PR05MB4157.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(366004)(136003)(39850400004)(199004)(189003)(86362001)(8936002)(446003)(6512007)(53936002)(118296001)(25786009)(99286004)(7736002)(476003)(71190400001)(71200400001)(46003)(6246003)(76176011)(102836004)(6506007)(44832011)(256004)(36756003)(14444005)(2501003)(486006)(4326008)(2616005)(11346002)(186003)(66946007)(66476007)(66556008)(64756008)(66446008)(91956017)(76116006)(5660300002)(7416002)(14454004)(2201001)(81166006)(6116002)(2906002)(81156014)(6436002)(6486002)(110136005)(316002)(54906003)(229853002)(305945005)(8676002)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4157;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4dpXwK0L1wxprrwEX70C2vZBXsIz3mOFSW4iZDdk1NaCFNLNhvl5x5gyc2jR8kcLH3C0IQd/RxQwswPSZy00HKcq+2xAvDZk3OPdoZMWpBTWWhazn93hpMYzYpoMmHIQAqOipztHfA68PZxXCvwAZa3AYV3QdcdB2ew7pD+QWEci+ELqx0PA8vMtqYfescK4nFITahylgjWQdlxGztvJ8hL+a02QIdZroavM0mMAZXZFFyFcpattXq4xViU1VAVX+S0ta5ZPe+Fd897wlsflWxSgBokUfcrnU/NVO3DHROMAtsBFLnfG95TaG7RO9EP8vztF1ffNbISFBGbbmmxL8XniPg4vlsOFBidv2X+pxC+HHdW2FA+mBH7wRlY0n5Xc+TYZcihtajdsQmlqEBy+tnVwfFfZAk0R30gXM8jGxO0=
Content-ID: <DCEC0E53FD0F3D46901555E1035A3587@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c17acd6a-0c2e-4afd-b468-08d71cd2e134
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 14:07:14.2242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0qRZo+2E0KYhfqC6t8qG+xC6mhvxFCz2a/j44ABgMIF6klOxTyu4B9DChCJL2oQiwWqNJLxUpvm/A49LrW4Yy20myjckenR8vUkjCeOL3po=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_070718_652703_7C5281D0 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:707 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-08-07 at 08:26 +0000, Philippe Schenker wrote:
> Prepare FlexCAN use on SODIMM 55/63 178/188. Those SODIMM pins are
> compatible for CAN bus use with several modules from the Colibri
> family.
> Add Better drivestrength and also add flexcan2.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx7-colibri.dtsi | 35 ++++++++++++++++++++++++---
> --
>  1 file changed, 30 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi
> b/arch/arm/boot/dts/imx7-colibri.dtsi
> index f7c9ce5bed47..52046085ce6f 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -117,6 +117,18 @@
>  	fsl,magic-packet;
>  };
>  
> +&flexcan1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan1>;
> +	status = "disabled";
> +};
> +
> +&flexcan2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan2>;
> +	status = "disabled";
> +};
> +
>  &gpmi {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> @@ -330,12 +342,11 @@
>  
>  &iomuxc {
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_gpio1 &pinctrl_gpio2 &pinctrl_gpio3
> &pinctrl_gpio4>;
> +	pinctrl-0 = <&pinctrl_gpio1 &pinctrl_gpio2 &pinctrl_gpio3
> &pinctrl_gpio4
> +		     &pinctrl_gpio7>;
>  
>  	pinctrl_gpio1: gpio1-grp {
>  		fsl,pins = <
> -			MX7D_PAD_ENET1_RGMII_RD3__GPIO7_IO3	0x74
> /* SODIMM 55 */
> -			MX7D_PAD_ENET1_RGMII_RD2__GPIO7_IO2	0x74
> /* SODIMM 63 */
>  			MX7D_PAD_SAI1_RX_SYNC__GPIO6_IO16	0x14 /*
> SODIMM 77 */
>  			MX7D_PAD_EPDC_DATA09__GPIO2_IO9		0x14
> /* SODIMM 89 */
>  			MX7D_PAD_EPDC_DATA08__GPIO2_IO8		0x74
> /* SODIMM 91 */
> @@ -416,6 +427,13 @@
>  		>;
>  	};
>  
> +	pinctrl_gpio7: gpio7-grp { /* Alternatively CAN1 */
> +		fsl,pins = <
> +			MX7D_PAD_ENET1_RGMII_RD3__GPIO7_IO3	0x14
> /* SODIMM 55 */
> +			MX7D_PAD_ENET1_RGMII_RD2__GPIO7_IO2	0x14
> /* SODIMM 63 */
> +		>;
> +	};
> +
>  	pinctrl_i2c1_int: i2c1-int-grp { /* PMIC / TOUCH */
>  		fsl,pins = <
>  			MX7D_PAD_GPIO1_IO13__GPIO1_IO13	0x79
> @@ -459,10 +477,17 @@
>  		>;
>  	};
>  
> +	pinctrl_flexcan1: flexcan1-grp {
> +		fsl,pins = <
> +			MX7D_PAD_ENET1_RGMII_RD3__FLEXCAN1_TX	0x79
> /* SODIMM 55 */
> +			MX7D_PAD_ENET1_RGMII_RD2__FLEXCAN1_RX	0x79
> /* SODIMM 63 */
> +		>;
> +	};
> +
>  	pinctrl_flexcan2: flexcan2-grp {
>  		fsl,pins = <
> -			MX7D_PAD_GPIO1_IO14__FLEXCAN2_RX	0x59
> -			MX7D_PAD_GPIO1_IO15__FLEXCAN2_TX	0x59
> +			MX7D_PAD_GPIO1_IO14__FLEXCAN2_RX	0x79 /*
> SODIMM 188 */
> +			MX7D_PAD_GPIO1_IO15__FLEXCAN2_TX	0x79 /*
> SODIMM 178 */
>  		>;
>  	};
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
