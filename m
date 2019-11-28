Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6728310C7C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 12:11:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V691KB0jc3ulf84vlPkkp32NsobewGlgwbhfdslu18o=; b=XUSaBnsXNPWCNi
	XNXZeist2pNIu/t++gxe85QJfi/Bgkb6SwQRkUqtKeBOFtf9to3okRf1IvL2b87NYr8+BpQIk561L
	Jl9Px9zU28Go4yUf0mBnl7NhdLrqIIeNcu09ncRgmWWA83W5eGt230BVx/M2Tw6F8aGKkHBCfH2U4
	ghPZ/CLIKmV4gJ5748xnCLut6qqosLyVeGT43rP/jlCKACqCSkNlG/fSobuB0X5SMY3hp/4Q/2w7i
	zja/HuUpqgWoit7l6kfk3nbg7Y3tTUh1mSdXnArzZMszVpYgqHjtS4Se0/+BZUAHH2k/k8LEkyQYv
	jETJ+ioAVfASQjwF8QpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaHhW-000258-Dw; Thu, 28 Nov 2019 11:11:10 +0000
Received: from mail-eopbgr130079.outbound.protection.outlook.com
 ([40.107.13.79] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaHhM-00024I-8t
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 11:11:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gYlukMgdZpVQZbLGc8U3g/BtrskaXUE0qXfD9ZiQXR5XQbRmMcKt0LeWi0NK0o9hXhI7ObBJ2W/4gmx2OV8KdD5Cx9qQAnu5+g/ftz+vhGzI8pUzTyXnbU5+Vu4Wdt5MJ/+kaC0HW/DebiLJ04TEQsBBUAWkqGgNG7Tv81BnBFXDxAe9QBLJBdcOtgSeT8gEtaon+InuK/+LYgQM9yT1Dvg2Fp+89fQZUqZpHYnm66NL4HUdPIpnUIHtF0gHHuwxYnch6fDJRNr3zfPQLpkr1144ch4PSY1dXJKnrUDS5HduszH5zz4gdakK43ZNXne/QdECPUyYL3RSPvegtorxuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zwyWQbpI4j0AgndHTNmuMBsjJGjACE1kNxOO3dSVdFs=;
 b=jwSfkQPcHZ6qXFDW0EANuLw2mHXWxY47kiQuuiI+T+6C30pdfdog7v5CRH+tp4EPmjDbJguyDnjjiLqMGXhS5icdRat/HBLgmPTD9do4MKscj5XTHtEYtKikXlE2XL3Btw4dXH143V3t9mHtv0kP/pLtF1v7chRjjyos/MOpVcuASNUN8GcHIcUMc7NyVECbRJHuG6gmlLTjhaP+CqY1Xu16sfvXD1zEcj3PjJVJhxNCCXBy9BTsELNPVyq4yJgn5+HBG71QUww7iXLKwI3fJlFS2ngIEbfXHkbP7gvMduRyGeuqo0cAciDMObXZx78ai0ylqBMjy7vPrNW+BR/FlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zwyWQbpI4j0AgndHTNmuMBsjJGjACE1kNxOO3dSVdFs=;
 b=CaBJEmSBqmzxm1lxDvg9/8ysuQ1rDVjfPypgIQQG2F0T+sD6aB1gWcdblm1nrLQYpFwqYO6EuuXoQ2DCOyxmy1A7JzKVLUN/qLNwcEzlQKg4T1xuh/dEbRyXgrq5hCuMuP7cmnVrNKdV54h5x0ZzJu0dlYywhZBe7OoGV/vT/DU=
Received: from DB3PR0402MB3835.eurprd04.prod.outlook.com (52.134.65.158) by
 DB3PR0402MB3914.eurprd04.prod.outlook.com (52.134.71.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.16; Thu, 28 Nov 2019 11:10:51 +0000
Received: from DB3PR0402MB3835.eurprd04.prod.outlook.com
 ([fe80::3846:d70b:d3ae:8e8]) by DB3PR0402MB3835.eurprd04.prod.outlook.com
 ([fe80::3846:d70b:d3ae:8e8%4]) with mapi id 15.20.2474.023; Thu, 28 Nov 2019
 11:10:51 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "l.stach@pengutronix.de" <l.stach@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: zii-ultra: add sound support
Thread-Topic: [PATCH 2/2] arm64: dts: zii-ultra: add sound support
Thread-Index: AQHVpU+AwS6/kOt5c0enxAaMeVWawaegblwA
Date: Thu, 28 Nov 2019 11:10:50 +0000
Message-ID: <0909b60cb5943007e1c3db31e3f6c91f289c85f9.camel@nxp.com>
References: <20191127182127.1204-1-l.stach@pengutronix.de>
 <20191127182127.1204-2-l.stach@pengutronix.de>
In-Reply-To: <20191127182127.1204-2-l.stach@pengutronix.de>
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
x-ms-office365-filtering-correlation-id: 3e80a599-41b3-490e-37e3-08d773f3a0ea
x-ms-traffictypediagnostic: DB3PR0402MB3914:|DB3PR0402MB3914:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3914820182052D781B41913FF9470@DB3PR0402MB3914.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0235CBE7D0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(396003)(39860400002)(346002)(136003)(199004)(189003)(76094002)(71200400001)(86362001)(54906003)(316002)(44832011)(110136005)(25786009)(2501003)(118296001)(478600001)(4001150100001)(6246003)(14454004)(8676002)(8936002)(6512007)(4326008)(81166006)(81156014)(50226002)(66946007)(91956017)(76116006)(76176011)(66556008)(66066001)(66476007)(64756008)(66446008)(2906002)(446003)(11346002)(256004)(5660300002)(26005)(7736002)(186003)(102836004)(6116002)(3846002)(2616005)(36756003)(305945005)(6486002)(99286004)(6436002)(229853002)(6506007)(71190400001)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3914;
 H:DB3PR0402MB3835.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mTgkUgNn9sC8pV+LArUxINBWf6mB0bPYB9xeAQe/9//A/t2R8QJzQtlUGhc77LwRJO2jB2VRBn8HJyPD+VdB4C/8O/rKUJHCFDXy9SWYg1ct6To/LVHV8Z1JVt6jWrl2rYMBBF9HIrpA3PSG7UcuyyMhELzrbCP5klrF/VB0rlMXy2C8fG/E611p2qIiasylTu4Js3/g5PUyvPIzj8gQC4q2HsUlExwJjn7OtopXpAF73YaLI+WXzP7nK1WxMFM0x63lup9bxd974oSNGOy2zjBB4Z6lqXNmzSMda0vI2r7CdS7YY8/0HdNgHwQuqU5hi48YOiyY/l+NuJ3gL7/ieq+6I5CXwzeBECwUTbLYfRR5s9oz5g56JHxNwhBNT1dvP8zJL8L9Q8QEJrhAnL82xFnv2r0nob2tvnDRy1+J5tbYDCrBMxqMbzPxyWjrsdMm
Content-ID: <6CD36DEA4EAC6A4D8C54F58632A3512E@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e80a599-41b3-490e-37e3-08d773f3a0ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2019 11:10:50.9446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c1Hy85IZ6l8sNrsFKYeconG+sFjAKcsZymMTJbXnNjbgMkSVxFyG9dZ6GID8Yf/0sVZatFoBhMqN1ZSTyNs7xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3914
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_031100_318587_6B9BF87A 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Few comments inline about the naming:

On Wed, 2019-11-27 at 19:21 +0100, Lucas Stach wrote:
> This adds all the necessary device nodes to get audio support on both
> the
> RMB3 and Zest boards.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../dts/freescale/imx8mq-zii-ultra-rmb3.dts   | 87 ++++++++++++++++
>  .../dts/freescale/imx8mq-zii-ultra-zest.dts   | 30 ++++++
>  .../boot/dts/freescale/imx8mq-zii-ultra.dtsi  | 98
> +++++++++++++++++++
>  3 files changed, 215 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts
> b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts
> index 6b3581366d67..d5e06885c683 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts
> @@ -10,6 +10,56 @@
>  / {
>  	model = "ZII Ultra RMB3 Board";
>  	compatible = "zii,imx8mq-ultra-rmb3", "zii,imx8mq-ultra",
> "fsl,imx8mq";
> +
> +	sound1 {

I find sound1 / sound2 pretty generic. Perhaps we can go with something
like sound-<codec_name>


> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "RMB3 audio front";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,bitclock-master = <&sound1_codec>;
> +		simple-audio-card,frame-master = <&sound1_codec>;
> +		simple-audio-card,widgets =
> +			"Headphone", "Headphone Jack Front";
> +		simple-audio-card,routing =
> +			"Headphone Jack Front", "HPA1 HPLEFT",
> +			"Headphone Jack Front", "HPA1 HPRIGHT",
> +			"HPA1 LEFTIN", "HPL",
> +			"HPA1 RIGHTIN", "HPR";
> +		simple-audio-card,aux-devs = <&hpa1>;
> +
> +		sound1_cpu: simple-audio-card,cpu {
> +			sound-dai = <&sai2>;
> +		};
> +
> +		sound1_codec: simple-audio-card,codec {
> +			sound-dai = <&codec1>;

Codec1 here is too generic. Perpahs we can add real code name.

> +			clocks = <&cs2000>;
> +		};
> +	};
> +
> +	sound2 {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "RMB3 audio back";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,bitclock-master = <&sound2_codec>;
> +		simple-audio-card,frame-master = <&sound2_codec>;
> +		simple-audio-card,widgets =
> +			"Headphone", "Headphone Jack Back";
> +		simple-audio-card,routing =
> +			"Headphone Jack Back", "HPA2 HPLEFT",
> +			"Headphone Jack Back", "HPA2 HPRIGHT",
> +			"HPA2 LEFTIN", "HPL",
> +			"HPA2 RIGHTIN", "HPR";
> +		simple-audio-card,aux-devs = <&hpa2>;
> +
> +		sound2_cpu: simple-audio-card,cpu {
> +			sound-dai = <&sai3>;
> +		};
> +
> +		sound2_codec: simple-audio-card,codec {
> +			sound-dai = <&codec2>;
Ditto.

> +			clocks = <&cs2000>;
> +		};
> +	};
>  };
>  
>  &ecspi1 {
> @@ -27,6 +77,23 @@
>  	};
>  };
>  
> +&i2c1 {
> +	codec2: codec@18 {

Here we might go with something like: 

tlv320dac3100: codec@18


> +		compatible = "ti,tlv320dac3100";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_codec2>;
> +		reg = <0x18>;
> +		#sound-dai-cells = <0>;
> +		HPVDD-supply = <&reg_3p3v>;
> +		SPRVDD-supply = <&reg_3p3v>;
> +		SPLVDD-supply = <&reg_3p3v>;
> +		AVDD-supply = <&reg_3p3v>;
> +		IOVDD-supply = <&reg_3p3v>;
> +		DVDD-supply = <&vgen4_reg>;
> +		gpio-reset = <&gpio3 4 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> 

This is just a thought, naming is hard. But it should help with
readability.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
