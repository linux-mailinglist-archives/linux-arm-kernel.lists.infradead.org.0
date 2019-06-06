Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD7D371C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AoGzQPbEWhMWp4cht+9JAwDLpriTz9Y1qj0p0wjnWDc=; b=aCiLQXXqhm2Y0E
	MxqOKmVnNrLIIr8wfb+9bXh4DihAZ42NPrt0MirNCAQEhqIZri5Hh+863OxC2sV1ijLARYauDHuRN
	dI9No2Md5TxckloUmB5y6AuLN4eudEH4viWkEefTqHjIrv5Y9ovMPPe811IBe7Cn3P+urct1dStAz
	gWwWY+/IFV0+LahF4/ykAYT+IudkgkmLSe20duTava1Eg5zflEFHNo3SmSSuPn8Tyx2tgcArDzI34
	Ebc1KyoRBrllrluunJjk26t1CZ7m79am1Tl39r320Q7cqISrAcsEyGELXYUfD34vjOLMNYrSgxFfb
	Os5aNsi93rKimXGPPv4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpgQ-0001dd-7E; Thu, 06 Jun 2019 10:31:46 +0000
Received: from mail-eopbgr30114.outbound.protection.outlook.com
 ([40.107.3.114] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpgI-0001cN-G5
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 10:31:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mw38QVd8e3bSUoZjM49NbJC8vym0ck2Fdr8+B28hSAs=;
 b=tYZKiwj3R7n1/KEFGOAlimKHLD5qL2xAbrtm2SJfAi24mCuhkKVL9i/AT9OOq3eF6+/QSDThkpnGFUOAWM7nwrRhbaNw4esbmu1jPlo+pozStJr4aqd7o5NWyrU06kOSx1DYaL967MQFuwaqTc1bw/bn9Mq1OQ+RQ1yOEPaBOiw=
Received: from AM4PR05MB3299.eurprd05.prod.outlook.com (10.170.126.28) by
 AM4PR05MB3299.eurprd05.prod.outlook.com (10.170.126.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Thu, 6 Jun 2019 10:31:27 +0000
Received: from AM4PR05MB3299.eurprd05.prod.outlook.com
 ([fe80::9534:6aaa:4981:7f1d]) by AM4PR05MB3299.eurprd05.prod.outlook.com
 ([fe80::9534:6aaa:4981:7f1d%7]) with mapi id 15.20.1943.023; Thu, 6 Jun 2019
 10:31:27 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "igor.opaniuk@gmail.com"
 <igor.opaniuk@gmail.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ull-colibri: enable UHS-I for USDHC1
Thread-Topic: [PATCH 1/1] ARM: dts: imx6ull-colibri: enable UHS-I for USDHC1
Thread-Index: AQHVHEcZX+CmVGVmsUG2ShHZLDLIl6aObW2A
Date: Thu, 6 Jun 2019 10:31:27 +0000
Message-ID: <dc983cea041c3bbe354a62eb30a92b4c3d2734d6.camel@toradex.com>
References: <20190606090612.16685-1-igor.opaniuk@gmail.com>
In-Reply-To: <20190606090612.16685-1-igor.opaniuk@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [194.105.145.87]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 44654840-a8d5-468d-5ca1-08d6ea6a21e9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM4PR05MB3299; 
x-ms-traffictypediagnostic: AM4PR05MB3299:
x-microsoft-antispam-prvs: <AM4PR05MB3299348B8E892AE9595DC44AFB170@AM4PR05MB3299.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(346002)(376002)(136003)(39850400004)(189003)(199004)(36756003)(66066001)(25786009)(229853002)(4326008)(53936002)(76176011)(446003)(8936002)(99286004)(6512007)(6246003)(110136005)(54906003)(316002)(2906002)(91956017)(3846002)(73956011)(76116006)(6116002)(44832011)(71200400001)(478600001)(26005)(186003)(14444005)(256004)(64756008)(66556008)(476003)(2616005)(66446008)(66476007)(305945005)(11346002)(81156014)(7736002)(6436002)(5660300002)(66946007)(118296001)(486006)(6506007)(6486002)(102836004)(2201001)(8676002)(81166006)(7416002)(68736007)(14454004)(86362001)(2501003)(71190400001)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM4PR05MB3299;
 H:AM4PR05MB3299.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +M06av3T1YTe+8ATcVv5zRj2WoRLYIHL/4fKuUWaAvx5pZt64vK+gb1pdjv6ZGnI+9x9ZX6pRxna2tsHasyCXhDKfP4uG47KXIrCQ6xj+ZOU5qgsnfhJHDoVdzibfcP9M/Dle7ipqITh+J4Yyp7MCRId/N0zcvvhRxkTWfiKjq6UuuNQYy1zuTO8nAmlLFHNFu4Qo9qrgP/vUAddYBc9q57VowIx+E0TPGSWxkf1VlO2HYKvb21Bg+qxwrpMMDAU4XUdbHL2wikJm9Yee2nbGOs7NM2FDbK0ojQWi52JcLeXfea3fcLBWbQlCLjKK6FqclSPIZJMBmpSZlCUKZPSfFvEBZSTPvLN1KCc9c4py3WAaAvg5+uUOEQgvtYMl3g2w/9Jp/rFANl81nTINHY8wD1JQjkRLKJvtblUeo5gJhU=
Content-ID: <3A1C860EC93D44449ED1A15C1557280A@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44654840-a8d5-468d-5ca1-08d6ea6a21e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 10:31:27.5009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: marcel.ziswiler@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR05MB3299
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_033138_541976_1E33C18A 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.114 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "stefan@agner.ch" <stefan@agner.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-06-06 at 12:06 +0300, Igor Opaniuk wrote:
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> Allows to use the SD interface at a higher speed mode if the card
> supports it. For this the signaling voltage is switched from 3.3V to
> 1.8V under the usdhc1's drivers control.
> 
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>

Reviewed-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
>  arch/arm/boot/dts/imx6ul.dtsi                  |  4 ++++
>  arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 11 +++++++++--
>  arch/arm/boot/dts/imx6ull-colibri.dtsi         |  6 ++++++
>  3 files changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6ul.dtsi
> b/arch/arm/boot/dts/imx6ul.dtsi
> index fc388b84bf22..91a0ced44e27 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -857,6 +857,8 @@
>  					 <&clks IMX6UL_CLK_USDHC1>,
>  					 <&clks IMX6UL_CLK_USDHC1>;
>  				clock-names = "ipg", "ahb", "per";
> +				fsl,tuning-step= <2>;
> +				fsl,tuning-start-tap = <20>;
>  				bus-width = <4>;
>  				status = "disabled";
>  			};
> @@ -870,6 +872,8 @@
>  					 <&clks IMX6UL_CLK_USDHC2>;
>  				clock-names = "ipg", "ahb", "per";
>  				bus-width = <4>;
> +				fsl,tuning-step= <2>;
> +				fsl,tuning-start-tap = <20>;
>  				status = "disabled";
>  			};
>  
> diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> index 006690ea98c0..7dc7770cf52c 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> @@ -145,13 +145,20 @@
>  };
>  
>  &usdhc1 {
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz",
> "sleep";
>  	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_snvs_usdhc1_cd>;
> -	no-1-8-v;
> +	pinctrl-1 = <&pinctrl_usdhc1_100mhz &pinctrl_snvs_usdhc1_cd>;
> +	pinctrl-2 = <&pinctrl_usdhc1_100mhz &pinctrl_snvs_usdhc1_cd>;
> +	pinctrl-3 = <&pinctrl_usdhc1 &pinctrl_snvs_usdhc1_sleep_cd>;
>  	cd-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
>  	disable-wp;
>  	wakeup-source;
>  	keep-power-in-suspend;
>  	vmmc-supply = <&reg_3v3>;
> +	vqmmc-supply = <&reg_sd1_vmmc>;
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr50;
> +	sd-uhs-sdr104;
>  	status = "okay";
>  };
> diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> index 9ad1da159768..d56728f03c35 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> @@ -545,6 +545,12 @@
>  		>;
>  	};
>  
> +	pinctrl_snvs_usdhc1_sleep_cd: snvs-usdhc1-cd-grp-slp {
> +		fsl,pins = <
> +			MX6ULL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x0
> +		>;
> +	};
> +
>  	pinctrl_snvs_wifi_pdn: snvs-wifi-pdn-grp {
>  		fsl,pins = <
>  			MX6ULL_PAD_BOOT_MODE1__GPIO5_IO11	0x14
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
