Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A4D1197CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:36:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=jrB/h0jdsu5DgxdR2ELEfY/l1p5awVbVVBs4ZAmjTfE=; b=uNO1c23UPyxXl4
	05Dcp047UMwfMDKyaM15lviL5YQ+c3ETnD5yU2dUPBeuuZmqihsB/sAyQ3kHW1mKrTQFiHcgYkg/o
	hTEKTdf6VoNCie866Ty3i7mGvMO+fSeC99EvMvPh2xYnB76Zfv6S87Ma++/Fyxev4uXtNW+dvnLki
	qQwSPfO6TpJ41rmjFGZ92kpg7GqLrElrHmqo3SqgYIQDc1AOmVgeR6KajAXENtZI73URJnfnvTMtB
	oidZZAUBdN84d3ozXNDcvaILTrvkX+jSQP1gmTAuws7Woaf3r9OkPnzInG2jQxkn325F4Djlrkgqj
	joF6q0dcIDViAsQ467Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ienB9-0005Op-WE; Tue, 10 Dec 2019 21:36:24 +0000
Received: from mail-eopbgr40043.outbound.protection.outlook.com ([40.107.4.43]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ienA1-0003jq-Tq
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:35:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JKCdYHip9aAWl9zyHNqX7vjQ2LHSFK/2gLWfuSaN5EHkjhEdhfjVotuV4BjOtKdtHc6AejCqpjBmwfW+hH0gIjolZdMHlGnqBwdxHSw8AMXJXMBFUtPMuX0hW1U5zKJhamxwyAQHhM+DsqTb6tn6PbIiE6n296Qtt2BdXYwHsO3btsHqXFkjW7Pw4oErT4vy52rZcXgkLoEDKBINzjN9aBFcMTK5R4HbJ9Qoo9NIlS9ZgaKGh+ePEOXYXqdD5aMpoib8wy5ILbpl6UySGudR4pTw8w0TrXREM4khpw6KGCknL8nutPvWIYLZX8Qtb3LwNK5ALjZYeaYQNUhVJ75XTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GBa6W2EnmqyH/qIIPQSxXs1Hmfu9gT7EGy5p9BMuvXI=;
 b=mRyytKdWo2+QssO8mTXrxHGW/rrVUOAEL+xOsjBpUOu4WPqY75OVKU7TXaXySmgtI4Yr17v84kaibqBqc1qHCal5C3drA13W44OiaUU1vbGUbnCiftOozhZwP3ubxFTRCDJfw0NGI2PvjS2gN8MxOx9SY1rLbFGyTCdOjZ1jag7zA11eSf0gQD02fzT7D/dO0eOXrwfVJOII6KZ0F4kqWAEtEM4mqNQ6YPGlA8kLi650r3aBvjXeY0ConxGsXHBaeilO6IBO7GzqFBwThGpqnSq8UZN5Eb3fNGqOu47Mei/8KJqR/mhJA/5KTXUbs5tCXDXyx088arT38Sksxepzxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GBa6W2EnmqyH/qIIPQSxXs1Hmfu9gT7EGy5p9BMuvXI=;
 b=IHs2MlgG490+/i+vaKrreIwLPF1BHfSHvLeW6P3FFQQ56FZea4qkava52IeZ74bO7z1JHfUPtFMuDqfZrib7guzrdPidOqpw0M4gCNILVgU2MS7tRYv/c5/5IxVr8c7ccSraxIaF2O0HdmkvzvArd4t7PX66NIWbsxN2oAZlQ1c=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB3085.eurprd04.prod.outlook.com (10.170.227.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.17; Tue, 10 Dec 2019 21:35:05 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2516.018; Tue, 10 Dec 2019
 21:35:05 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: Re: [PATCH 1/3] ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO
 regulator
Thread-Topic: [PATCH 1/3] ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO
 regulator
Thread-Index: AQHVikhFuKo1SLIff0mMLrsG10nb5A==
Date: Tue, 10 Dec 2019 21:35:05 +0000
Message-ID: <VI1PR04MB7023CD288FCC57806F067FD9EE5B0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1571906920-29966-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d8575ba3-bd1d-4885-9d1a-08d77db8d259
x-ms-traffictypediagnostic: VI1PR04MB3085:|VI1PR04MB3085:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB308563EBBB3C8B7CC278C697EE5B0@VI1PR04MB3085.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(136003)(39860400002)(366004)(189003)(199004)(44832011)(186003)(53546011)(6506007)(91956017)(5660300002)(9686003)(52536014)(26005)(66946007)(478600001)(76116006)(66446008)(110136005)(66476007)(66556008)(64756008)(7696005)(54906003)(8936002)(4326008)(81156014)(33656002)(81166006)(55016002)(86362001)(316002)(2906002)(8676002)(71200400001)(32563001)(473944003)(414714003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3085;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CEW2d9IoSCK1DiSDbehpQun/hNpEMA0fzhVEYGn35QePVe6f4f8aFZ2c5D449pBhZ1eMwoBajgKD7yOnVbtMbLsih37VO0jXr62CIL7YHeBgfSKcYCAm8iedp/vPulYIgahw70jdHsve4yAhsDAJO2+2Fx2aMW3f1tHQ0Ms4Kr9EA0k0EvI5+x+QisLGORsDeQFbA/4Aq9CBsemyIWQXFxH/AQRLd0VReg3AJJmWUGnMps//SvhfRWDrriH/oULSub1hF8Jn6kGlsQnRtGrCQOzXXZFldo7suYVYHenIy24qxmU2eie1CX6OSU8d5rC5CMbF1hgil6hMJjWPLhFKv0mpO+UQL/hfdB8kIE0QqGOwuEfc7iaB9BQbY79Q7P18OLxlzrbkGpE6Ciz76K5C8f2TUz97GCcaVaO26/8JZH126AoPDfRd8rENx6Ec/lhEIIoShIv8jmDtZRKJXl0G2/OCUhdVKNtQPI0PV0e7BceV5O2HSkedTqrgGP1kQF6IxBWHyvAfWsgLsFSefckaACxXW63x5weg/v3UZoHtCgA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8575ba3-bd1d-4885-9d1a-08d77db8d259
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 21:35:05.1124 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ga9GvwvObAZ6hv+CV2sJB/a7CeV5zaP19u9ifHgd23xINcUDOMHFw23qMyF1VXuzi9pJ7OrkL0rqNq3DBVn9Vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_133514_097581_BC660292 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24.10.2019 11:51, Anson Huang wrote:
> On i.MX6UL 14x14 EVK board, sensors' power are controlled
> by GPIO5_IO02, add GPIO regulator for sensors to manage
> their power.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

For me this breaks network boot on imx6ul evk, relevant log snippet is this:

     fec 20b4000.ethernet eth0: Unable to connect to phy
     IP-Config: Failed to open eth0

Looking at schematics (SPF-28616_C2.pdf) I see that SNVS_TAMPER2 pin is 
connected to PERI_PWREN which controls VPERI_3V3 which is used across 
the board:
  * Sensors (VSENSOR_3V3)
  * Ethernet (VENET_3V3)
  * Bluetooth
  * CAN
  * Arduino header
  * Camera

Maybe there are board revision differences? As far as I can tell this 
regulator is not specific to sensors so it should be always on.

> ---
>   arch/arm/boot/dts/imx6ul-14x14-evk.dtsi | 16 ++++++++++++++++
>   1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> index c2a9dd5..4074570 100644
> --- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> +++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> @@ -30,6 +30,16 @@
>   		enable-active-high;
>   	};
>   
> +	reg_sensors: regulator-sensors {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_sensors_reg>;
> +		regulator-name = "sensors-supply";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio5 2 GPIO_ACTIVE_LOW>;
> +	};
> +
>   	reg_can_3v3: regulator-can-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "can-3v3";
> @@ -448,6 +458,12 @@
>   		>;
>   	};
>   
> +	pinctrl_sensors_reg: sensorsreggrp {
> +		fsl,pins = <
> +			MX6UL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x1b0b0
> +		>;
> +	};
> +
>   	pinctrl_pwm1: pwm1grp {
>   		fsl,pins = <
>   			MX6UL_PAD_GPIO1_IO08__PWM1_OUT   0x110b0
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
