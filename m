Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEDF133C9E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 09:07:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goEiv5QzzABUHPql1+1J6JFykaP47E0+lP1OywWk/tU=; b=ECFQ7qnIXfO45K
	sRifOsCiD2metIU8Vx2eG3sSq7uG8+TsNUhp4vFCsUs4QhHDM9JH6grPBIoUgZIp6pE4HUTwG7R+d
	zHMpzubcy5aAhvN5V4fQJALK+ssst/h5sqBnAd5aBO6K8tEIOo1BcXRCvBMTlG1kS8FQ2l6YwZjep
	m8o5pqxo7g8h8wzXGc4mvw6kmGTVq9IcAXOdsVdWh73QN+gWHKA2irBUkLvI3tVP7ZCQijhzlW40N
	/BxlvrVxFtQSCid1fh43zuPvanGqLufaMY69RLkvPG94f4DeZDytmj+XmpwiP83T20kfXHDmUcEKo
	kdsSwKDN97imNY2AyM6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip6My-0005Zl-6l; Wed, 08 Jan 2020 08:07:12 +0000
Received: from mail-eopbgr70055.outbound.protection.outlook.com ([40.107.7.55]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip6Mp-0005Wr-FR
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 08:07:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iiDvzEHINJpmz7R91dglDGPADAv3rk7Trw+DgVZ2JtmUoGUVy9WAdcV7STPim3pjaDHiqNzlBVkEda3NhksWCsByG/cTXWq4dMalPUQiM8pkY8XONqG7nUQXov0HRpZjcXm+knfCkPEcjQmvN7k7UODPnh+SzKAjYpBszwXKwib2titVbAGf5fBoVjXuFcSnxT3Ic3ULXDRa/o4iq6iaviX2TFY/owJOsdf7aXC8hOIOvkvxEvW6gdb1hymr8d5SLcaBvhiAq2e49i7NP+nUh8CSJPEHOlF7hgU5u3nuDzZr0VbJnzuDeudvNl2xFb7Qly8XJC7pXTPsm9WPR1XCVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8fVRusU3Ysr1lOAZSoClSvcLgazR37Akzh/t2MUIxVo=;
 b=Ze5vAEYs/kVcfjwi36Q2CfD1t9k0U2QYktucp7yO9YrL0tkXhZdYeiJHhRQvU7GzJFaoNIzJ8i1UkAAnOrYFSQaJa9HaFKOiCD3DbRnwZorAqleqWNcK6BsdDWWiOxP5+nX6l3wgBDb6fPhiwRnLte+X/yzvH5QE2fuMPW94T3ydJqNmgf/HQTT87ejkAzvzrCQ9a+7JWdNrg45fsRkRoxUq6n44ANxTVntN9a/fKN5ZXLbmb5cVPgE9XOT/OwRu/EaedFUYQAY5JSDdXptUK7whgGlcZkDpRdWXZF1h3USbAyI5uC/VHzHUKSA94pmdpW4no/Muu5ITxEzWgWnHdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8fVRusU3Ysr1lOAZSoClSvcLgazR37Akzh/t2MUIxVo=;
 b=V5DlwxHZN6hrv0MRKrPXj0+RonM38VVxU027BNkd8ck26oFgfEUiHtXCY5gJDogMQRmFePJArgahJucqPATTk8MXGaY9J6EDPa4TdUwwSsxUJ0wd/6E5avOQwubacHYJJphA+aCexyMSA58VNCEbuLggk5W/+tfsCF0cCxR7EL0=
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3790.eurprd04.prod.outlook.com (52.134.18.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Wed, 8 Jan 2020 08:06:57 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1%4]) with mapi id 15.20.2602.015; Wed, 8 Jan 2020
 08:06:57 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, Jacky Bai <ping.bai@nxp.com>, Jun
 Li <jun.li@nxp.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>, Peng Fan
 <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "aford173@gmail.com" <aford173@gmail.com>, Anson Huang <anson.huang@nxp.com>, 
 "S.j. Wang" <shengjiu.wang@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mn: Memory node should be in board DT
Thread-Topic: [PATCH 2/2] arm64: dts: imx8mn: Memory node should be in board DT
Thread-Index: AQHVxfVfUECs4Yztu0ytYo6rsOYu6afgaUaA
Date: Wed, 8 Jan 2020 08:06:57 +0000
Message-ID: <d634927c27cfa91398e6d5c8be86dea29a21dbf1.camel@nxp.com>
References: <1578468329-9983-1-git-send-email-Anson.Huang@nxp.com>
 <1578468329-9983-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1578468329-9983-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 05e2a018-589e-42a9-91f4-08d79411bb98
x-ms-traffictypediagnostic: VI1PR0402MB3790:|VI1PR0402MB3790:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB37909B678BEEE5C0DADA4D7BF93E0@VI1PR0402MB3790.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(136003)(366004)(39860400002)(199004)(189003)(76116006)(71200400001)(26005)(66476007)(478600001)(2906002)(6506007)(7416002)(6512007)(66446008)(316002)(91956017)(66556008)(44832011)(2616005)(64756008)(66946007)(86362001)(110136005)(4326008)(36756003)(6486002)(8936002)(5660300002)(8676002)(186003)(81166006)(81156014)(99106002)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3790;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RJ8yf5EvEDB3QNK/oK7MxCSf06Y5Vr0cljTPb0vmDaVAVmoeb9z1Q3SizOSKQC2PH/0mLMc1c9t0WE5zDTkcNp7hdnMM26pH74Ihn/hhw6+mz0hR3Jm+1SvGe7r2KOMS0mm/ZtwLFk54b8xxXtIKbsUn69EN7dgr+vwXMFyesjp1jvBaNzOHUu8UWBDZSMl1bwg8DnS3Yx90M5+ny5lAUm2Pt17u+evEXoVitBcli4quJyI2MFT50cjztqjM5GfUxC6SwhfqzNJwP5rvTKZaizARrTeRrUdfn5hBG5FAlVj+S2TikfTexVMi5O/lj2/ZEK8ntheYa230cLZsFER+e1zwrhMdRfgzHnwhmSMphNEXK/aBpUloxDYrvxBgL4d8cRQNJ1qbM8x5id0QHK/XZ3fEUKpliDB/sA6HUzWXDW/7zBUPTkmldZZHbztjwoA2ov21epgiJa2+skr2qi9JqA6gheUVILqmSKEfa+WUJ2qGmkRkBhrQrxTiC4cwtSFHieLANQ+ir/th/bhyjtzkpXGcsdCfqKBD0vLFHmzfxkBl7srSWjL9dwF98zEyfQNE
Content-ID: <9B73BFDE07A3F542BE0CA79B9825F18B@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05e2a018-589e-42a9-91f4-08d79411bb98
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2020 08:06:57.7798 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BgXSUGmTgeyphT2jzeGK8AWqQyFtRySYeu6AmbtsyGfcYj9L5zNP1hSh8+ht6l2qPh0PH6aCS6O5qLpBz8Rh2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3790
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_000703_515172_505FFD8E 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Wed, 2020-01-08 at 15:25 +0800, Anson Huang wrote:
> Memory address/size depends on board design, so memory node should
> be in board DT.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>


> ---
>  arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi | 5 +++++
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi     | 5 -----
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
> index 7a92952..0d2ec4a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
> @@ -23,6 +23,11 @@
>  		};
>  	};
>  
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x0 0x40000000 0 0x80000000>;
> +	};
> +
>  	reg_usdhc2_vmmc: regulator-usdhc2 {
>  		compatible = "regulator-fixed";
>  		pinctrl-names = "default";
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> index cce65b9..4014029 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -139,11 +139,6 @@
>  		};
>  	};
>  
> -	memory@40000000 {
> -		device_type = "memory";
> -		reg = <0x0 0x40000000 0 0x80000000>;
> -	};
> -
>  	osc_32k: clock-osc-32k {
>  		compatible = "fixed-clock";
>  		#clock-cells = <0>;
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
