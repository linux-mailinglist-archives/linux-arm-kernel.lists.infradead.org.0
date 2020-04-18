Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8401AEC68
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 14:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/UyIKN/Gr51harDqE+O+/6QIzgHZ/EMBdPdSbEeP9I=; b=rq62r7Zl7aDlgq
	eJMTcetEWWofHE51HaLah/39Wi+nZi1h4pRzBpM3kmWAOSCUB2riFKyq+aLSWuxfD5bpAQTJSaqoV
	I8wYYvsDjBBkTZj5O/HP0GapCecQYeGMyA0rlJonf1yhBgEaZmQVwifLeF1SFFT66GQ7VfxsERYxS
	AagM7/e0EEmNKZAufJGuvk4knYDT8wOsfn1SJjxDGy5bYEo+mmCP1EXfo8fwh/FntlrHM+ucbblVm
	lprWdWKpx9DV6wOPGYmmISiBD1vf/vB5bfKRoaAVZvOd2DalO+HvISCrHwHwSQ6uB1btB4e+l/WwR
	T2G2nqlqLNArvVuPdIDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPmaU-0002C3-Lx; Sat, 18 Apr 2020 12:28:46 +0000
Received: from mail-am6eur05on2089.outbound.protection.outlook.com
 ([40.107.22.89] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPmaM-0002B3-IP
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 12:28:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AirvPf7CnHz0VZUetLDv9SYK1Y6MqW+yOukN52gNM8QjRhtr/GNP8wgwsu21cevgfrDf64lwTEbgPXddGESKvpEk2T0kQTu0K+RnI76w84tKJJIo5fGEHyX/G2IDswfiGKBxSwzfT1zmFKuvfAUjUg8zGNBv3vWEylKJTuO/0bB6J789AAYNXwMJB98C3BneeScCYLnoBrg39s7u1hVXl1CA2WHVr4MxNCCd+pxl5XB6n9ZdVlVo8YkU5wvr+M9QnmhL0XQOQoxevL/U6yfS2LcpxVtgMOs33XK6eRljwcjJq8l6nfjbCiuKVttUqzszCf4q9BgQrBC3HwSXWFFBJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cR0jMAhfFbDk4gNaCRhrWzPf7oInTvy0WtusPX7ruCw=;
 b=XEboyJ0ujcLLDHR1QmS5OiokuR1dZ7IH6xrC3lSxSqgifrjg3Ult3aav2/kFvRp1obwHHbaESXduVQu9C3aOCv664E4IPyTgybOe4gjE2Krkj7B/ODVkrVP9pD4R5pmGQMxcesYjYbMZTJHw0n3AYeKxydXfVW6D/NZ/+pt4sq7t4mfR7pwurcNk0LNP/JRjmFKSuco6nG8pI+Jx1HquqNjUTkYQh91mNEXYSi5nTBKUR6OjtN3KPHL946dHzCoch7xWjysvXakDR3v1f8iiiVJdB5cuEYkTVLvDImf8DpEKrIHsoLwug1jHzHWyjhG0QrIeKHq/5ggwAjLNIsbhrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cR0jMAhfFbDk4gNaCRhrWzPf7oInTvy0WtusPX7ruCw=;
 b=Z1Rfa9vqaOHRGGP+ueL0ZEq142+3NK3qY/0CW5AHnXOtXDRxYuSL7JofoYn3bCkmpK7xWKdkOuxp8JjAdn2s004+3D6LYfbPxQ1tuudUTfZgwrnpxyjdMgOQdb/p8yTUHQuFZRTO+cPUftQprCvsYdj3DHC52xS2KZuDzG5mISg=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5752.eurprd04.prod.outlook.com (2603:10a6:20b:a7::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Sat, 18 Apr
 2020 12:28:31 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.027; Sat, 18 Apr 2020
 12:28:31 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, Leonard
 Crestez <leonard.crestez@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] arm64: dts: imx8qxp-mek: Sort labels alphabetically
Thread-Topic: [PATCH 1/2] arm64: dts: imx8qxp-mek: Sort labels alphabetically
Thread-Index: AQHWFHuqWzzklb0b6kSSZSO2avVUNKh+z3KA
Date: Sat, 18 Apr 2020 12:28:31 +0000
Message-ID: <AM6PR04MB496663AED27DFD38E648169C80D60@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587101946-19495-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1587101946-19495-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b8d16b8c-aa68-4890-9021-08d7e3940193
x-ms-traffictypediagnostic: AM6PR04MB5752:|AM6PR04MB5752:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB575227403CE6E87F42D1633C80D60@AM6PR04MB5752.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0377802854
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(366004)(376002)(39860400002)(8676002)(2906002)(478600001)(966005)(186003)(6506007)(110136005)(44832011)(8936002)(316002)(71200400001)(26005)(76116006)(81156014)(66476007)(66556008)(64756008)(66446008)(66946007)(55016002)(33656002)(9686003)(4326008)(86362001)(52536014)(5660300002)(7696005)(21314003)(921003)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: viExhar4rnDXOi2p8oPacKygjWaNHiUBpS+Pdp0ULpNjBmiGViV9NY5NF3qT4Jg4rNTFESW35TyM07Tceeo8kuh6WpKd+tcyzk+dxlgQGFrWuaTvQPRG0vCvTDPl7jQr2/+CNVQP0HHzF7AEXyBsYV7xQexWWldj6j7K4Y6Qq7ZqJX46r+nTrFznU5csdJjJEE3Q8JSnTjJ0DnUQqtr1S7tOPSbsB5ouet20XFhktNxbSSmFjPWFV62GG7cTq1JJUxUtbqyLo18OkPSBgXCpy/1bXEMUQdICR6LrOF1YTO/2SnxL4L2XFYWr7Es0dODKiOFuTbQdo8+OX60FxYMtO7nJmCFAAuz50sk5v7tc21ODaiKL6NRPGl5UyVUoyvcJH6KGQ5WwkIOHHEo3HJ6DcZXm2/lWQ3cfxHzjXz/mWoWwJOeJnlvtdQSBgmmXnqBsZY9z6LL5e/Miu94U/sX7YpSVOnq+cxmgbWG3eUQcZAKaPI9GdLVNs1mZjUGd4lafHNKI/lp57yHkzoVdRfQedvlOr6PpET0Py+uIwkgZWuGJu2Jg6cUJkWo4M6fZ4buvr1m0u1/n7TsBgXkg8p6BhowvtXoeXT9ZZq8TGeiu5n8=
x-ms-exchange-antispam-messagedata: GxhMbrb//DfGgH/iuAsWrozjULbQ0Hv9x9Rx5TVLVsXMhxm7pMAzxqPisypZacdlrZrSNryQlXLai8L80HZ55vudOZo2MTUM4y43GwUa8Bmv+o0i541iYlkEISXMyvEQAQlGsg1AorHEDY7lJrhyYQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8d16b8c-aa68-4890-9021-08d7e3940193
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2020 12:28:31.5760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dgT9q7N0HqPBqeHwuiU0J/IrE7rWtXQhfvmMrSKiSfE5LuUmUc24fJW3f5w/VrBn6i5s5LZ2g1Ewq+LfqeWjiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5752
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_052838_688532_3B28ECEA 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.89 listed in wl.mailspike.net]
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

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Friday, April 17, 2020 1:39 PM
> 
> Sort the labels alphabetically for consistency.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

This patch is meaningless as subsys prefix (e.g. adma_xxx) will be removed later
and devices nodes all moved into subsys dtsi.
I've replied this before:
https://lkml.org/lkml/2020/3/16/244

Regards
Aisheng

> ---
>  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 60
> +++++++++++++--------------
>  1 file changed, 30 insertions(+), 30 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> index 13460a3..2ed7aba 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> @@ -30,29 +30,8 @@
>  	};
>  };
> 
> -&adma_lpuart0 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_lpuart0>;
> -	status = "okay";
> -};
> -
> -&fec1 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_fec1>;
> -	phy-mode = "rgmii-id";
> -	phy-handle = <&ethphy0>;
> -	fsl,magic-packet;
> +&adma_dsp {
>  	status = "okay";
> -
> -	mdio {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		ethphy0: ethernet-phy@0 {
> -			compatible = "ethernet-phy-ieee802.3-c22";
> -			reg = <0>;
> -		};
> -	};
>  };
> 
>  &adma_i2c1 {
> @@ -131,6 +110,35 @@
>  	};
>  };
> 
> +&adma_lpuart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_lpuart0>;
> +	status = "okay";
> +};
> +
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec1>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy0>;
> +	fsl,magic-packet;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +		};
> +	};
> +};
> +
> +&scu_key {
> +	status = "okay";
> +};
> +
>  &usdhc1 {
>  	assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
>  	assigned-clock-rates = <200000000>;
> @@ -229,11 +237,3 @@
>  		>;
>  	};
>  };
> -
> -&adma_dsp {
> -	status = "okay";
> -};
> -
> -&scu_key {
> -	status = "okay";
> -};
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
