Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BF08E965
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 12:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vA9r6gUyJHLLHgP2nvMjcIEJ51WYpsOXX8EM32jDmeA=; b=Ds8Xq1dMSJJNwF
	aFAmAj7SSqC1zzYbL3Er/sXusS+FZ2dPoHM9yqRfhJ+faSU/OHx/nO6Y84+0z3fdtTRwUMDEZqBlL
	FLdH1qVPsjlPgyCi8KNFQAC5XkSn6qSJULEWSsspfDhaPAFxUyDUGdCLaQtO4tY6DIKbyg1b63UKa
	NltJ6xOYYpRKVPpX3fHytbDSaGiP8WcojR7lo/TQcMQrojCcE52tKDXaTH165Gk00LAHb8BvPatik
	BwNE+UN3sTwBpnTF6tospSxU1aNfbFnc32tSxiNdyhqA1BI5gDByzYs2gXZeFe8RfCXlL6FJW/wnb
	+p/iJBlus51aDjLTeDCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDS2-0007Ru-F6; Thu, 15 Aug 2019 10:57:50 +0000
Received: from mail-eopbgr20090.outbound.protection.outlook.com ([40.107.2.90]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDRj-0007Ph-UU
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 10:57:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W7QbosQWUwO+p8aOuitkSLAP0D2yM2g/pIwoDUixUxJT61GqrP7i5k3q6WKYNx/mHwR8808cr4Teq1R48+g2AvUJ8zbbYxjyPvJWWTRezJLRYifPWj1fDwjOAT1TSbilBeuEfscUrD4w3I4V5wqt9dKBfEhd8sWtAfU2X74QUKvk8NsQCzQ/a4PQzf7VgahNvOwOwV80SijBeHHfUsB7yZZtgv48KalsVN5xl+pNl3mF96B/cQG58A8e7QuUsIb3W/pOQRtKlwekxEj45djDZnD+5ygBZpBC7jnJy1J1eqKkgfoNB8Fsh7yjVMb4MD7z/8AdnC/CfxaJ2R3HumNxfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tR4drwO2pECVlXf8muLob/2LjTtGlI5oD3W5a5diY9w=;
 b=XefhU8G5acRYjaaNRvvqQNmarxRGUEo03LB8sjRAW2TIxD9Kqj7pDiJtoFEYMlvaVBCpD9eVHSqBNUHIAElaw8xgnZBKEGvP3yxm0Re2FjTLUEYJQPz55h8iXsXIhZRJIpsOV8/Gthk5Fdr6yBBlUIKXk5Qw4OrXKlc86S/Jty7QveX1g87L9eXe29hv0dry4RFCfGH+18u7VKRAkCdBjJ3lJovoThEo9V0WBNsogJ/3NxLADWJX5RylFYwSrFaUDaOM9z19b44acfoilLhcwfwFxIxs/czyEP+sD/Q3IYX3Mnrtr7DQST+Enc4l6qcpl/PYPZp6GIEbIkCLq7558A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tR4drwO2pECVlXf8muLob/2LjTtGlI5oD3W5a5diY9w=;
 b=bOpxY1/x3txaECvJ+96f2Q8RrV4G5zbgU1CdGnboHLD6Vun26r1tdakzyT4j0dYtHjLSW4KQt2t+Nhlqi8wr9HS1sAzgtAxlCYERRumcEbcwXU4iWsApLYn6/3FA+ga3rfcU8a1tHYLcUANmRK6c2DfgOij1tdu0789tiBv29Ks=
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com (20.179.27.210) by
 VI1PR05MB6302.eurprd05.prod.outlook.com (20.179.24.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Thu, 15 Aug 2019 10:57:29 +0000
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9]) by VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9%4]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 10:57:30 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v4 12/21] ARM: dts: imx6-apalis: Add touchscreens used on
 Toradex eval boards
Thread-Topic: [PATCH v4 12/21] ARM: dts: imx6-apalis: Add touchscreens used on
 Toradex eval boards
Thread-Index: AQHVU1gyaZDzHRHaaUC3Kzkn91ZI5g==
Date: Thu, 15 Aug 2019 10:57:28 +0000
Message-ID: <CAGgjyvF+53CdYUB4QNJWfDqUigDyTi9G06i9wXW_3tmWM8ra=A@mail.gmail.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-13-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-13-philippe.schenker@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM3PR04CA0135.eurprd04.prod.outlook.com (2603:10a6:207::19)
 To VI1PR05MB6544.eurprd05.prod.outlook.com
 (2603:10a6:803:ff::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-gm-message-state: APjAAAX2EqgDjh0wPpPP+msmQe1Cw/WmVLN4MFgcUp9PA150221fMv7W
 3xCjatSRkFKvVa3OWsJdss4ejE+lkxlrDcHIokI=
x-google-smtp-source: APXvYqwqbYpSrZiP6BavBDffmbiAwf4lC+LyJxAotmzskoITlnYMw+W2c1ESatK3aEs5YsWi9t9jhtrgCnQR2MR6Xag=
x-received: by 2002:a17:906:9453:: with SMTP id
 z19mr3816701ejx.287.1565866646371; Thu, 15 Aug 2019 03:57:26 -0700 (PDT)
x-gmail-original-message-id: <CAGgjyvF+53CdYUB4QNJWfDqUigDyTi9G06i9wXW_3tmWM8ra=A@mail.gmail.com>
x-originating-ip: [209.85.208.41]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6bff1f34-9128-4fc4-4216-08d7216f5d18
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB6302; 
x-ms-traffictypediagnostic: VI1PR05MB6302:
x-microsoft-antispam-prvs: <VI1PR05MB6302188B441F577B0F93FF05F9AC0@VI1PR05MB6302.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(39840400004)(376002)(136003)(366004)(199004)(189003)(7736002)(61266001)(14444005)(8676002)(6436002)(55446002)(53546011)(81166006)(446003)(256004)(53936002)(386003)(61726006)(476003)(107886003)(54906003)(81156014)(486006)(102836004)(9686003)(5660300002)(6512007)(6486002)(186003)(11346002)(498394004)(26005)(76176011)(52116002)(2906002)(229853002)(305945005)(6246003)(66476007)(478600001)(316002)(6862004)(66946007)(3846002)(6506007)(66446008)(66556008)(86362001)(8936002)(6116002)(64756008)(4326008)(14454004)(44832011)(99286004)(71200400001)(66066001)(71190400001)(95326003)(6636002)(25786009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6302;
 H:VI1PR05MB6544.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ey1QF/1zYteE4lUHixZPgxN38XXTtnvSQUocYQnpEJNIPqhlf2Otss1/UfDMdNjzVvinS2X7H4FEHgBAu0wZE/7Iy2hF67RkDIcgkml5x3Y6UibWSIbf2Msd/mOGjd5kQtCDWreToqwiPxK5MLtHPzJPSVCaJHhnzIu+tKmoToqOHTiR26X86IEbj0BC+x3GRl5HQhgc1xjyAYNv+TyxUznZDVTXM7ke2P6jL3FgmKYbsanfIlzwcrgemjVWhcuOgDg11V+CisOTjMp3B7XK4mEIemCTixXFNP4KPjwtU+k4arxW9U9EicjIMENZpWecC0HlKCZDIr9khjV+visKOqdNcEif7A2kEyg5WjPFy0EjF3h0JKZMg/nMzXrTs4bvJPn8WtsqZGLXKBgyMxjvifEQRH0vG59b4iXBEk1iu+Y=
x-ms-exchange-transport-forked: True
Content-ID: <AD923A0843BFDF43AE34C7C81C95479F@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bff1f34-9128-4fc4-4216-08d7216f5d18
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 10:57:28.5080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7ll6ZvcPD2CpQSbqZ5fiV6q7OiZhe/77wQRkg0C+Us8xnwqpH8RtHV5I+Djbm5P+9XJlMmbqkoNFexK8L6bA4tbcq6JAEgZI9l2qZ4RxXgo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6302
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_035731_983159_4BF9F6D8 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.90 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?utf-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 5:23 PM Philippe Schenker
<philippe.schenker@toradex.com> wrote:
>
> This commit adds the touchscreens from Toradex so one can enable it.
>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

>
> ---
>
> Changes in v4:
> - Add Marcel Ziswiler's Ack
>
> Changes in v3:
> - Fix commit title to "...imx6-apalis:..."
>
> Changes in v2:
> - Deleted touchrevolution downstream stuff
> - Use generic node name
> - Put a better comment in there
>
>  arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts  | 31 +++++++++++++++++++
>  arch/arm/boot/dts/imx6q-apalis-eval.dts       | 13 ++++++++
>  arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts | 13 ++++++++
>  arch/arm/boot/dts/imx6q-apalis-ixora.dts      | 13 ++++++++
>  4 files changed, 70 insertions(+)
>
> diff --git a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> index 9a5d6c94cca4..763fb5e90bd3 100644
> --- a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> +++ b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> @@ -168,6 +168,21 @@
>  &i2c3 {
>         status = "okay";
>
> +       /*
> +        * Touchscreen is using SODIMM 28/30, also used for PWM<B>, PWM<C>,
> +        * aka pwm2, pwm3. so if you enable touchscreen, disable the pwms
> +        */
> +       touchscreen@4a {
> +               compatible = "atmel,maxtouch";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_pcap_1>;
> +               reg = <0x4a>;
> +               interrupt-parent = <&gpio1>;
> +               interrupts = <9 IRQ_TYPE_EDGE_FALLING>;         /* SODIMM 28 */
> +               reset-gpios = <&gpio2 10 GPIO_ACTIVE_HIGH>;     /* SODIMM 30 */
> +               status = "disabled";
> +       };
> +
>         /* M41T0M6 real time clock on carrier board */
>         rtc_i2c: rtc@68 {
>                 compatible = "st,m41t0";
> @@ -175,6 +190,22 @@
>         };
>  };
>
> +&iomuxc {
> +       pinctrl_pcap_1: pcap-1 {
> +               fsl,pins = <
> +                       MX6QDL_PAD_GPIO_9__GPIO1_IO09   0x1b0b0 /* SODIMM 28 */
> +                       MX6QDL_PAD_SD4_DAT2__GPIO2_IO10 0x1b0b0 /* SODIMM 30 */
> +               >;
> +       };
> +
> +       pinctrl_mxt_ts: mxt-ts {
> +               fsl,pins = <
> +                       MX6QDL_PAD_EIM_CS1__GPIO2_IO24  0x130b0 /* SODIMM 107 */
> +                       MX6QDL_PAD_SD2_DAT1__GPIO1_IO14 0x130b0 /* SODIMM 106 */
> +               >;
> +       };
> +};
> +
>  &ipu1_di0_disp0 {
>         remote-endpoint = <&lcd_display_in>;
>  };
> diff --git a/arch/arm/boot/dts/imx6q-apalis-eval.dts b/arch/arm/boot/dts/imx6q-apalis-eval.dts
> index 0edd3043d9c1..4665e15b196d 100644
> --- a/arch/arm/boot/dts/imx6q-apalis-eval.dts
> +++ b/arch/arm/boot/dts/imx6q-apalis-eval.dts
> @@ -167,6 +167,19 @@
>  &i2c1 {
>         status = "okay";
>
> +       /*
> +        * Touchscreen is using SODIMM 28/30, also used for PWM<B>, PWM<C>,
> +        * aka pwm2, pwm3. so if you enable touchscreen, disable the pwms
> +        */
> +       touchscreen@4a {
> +               compatible = "atmel,maxtouch";
> +               reg = <0x4a>;
> +               interrupt-parent = <&gpio6>;
> +               interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
> +               reset-gpios = <&gpio6 9 GPIO_ACTIVE_HIGH>; /* SODIMM 13 */
> +               status = "disabled";
> +       };
> +
>         pcie-switch@58 {
>                 compatible = "plx,pex8605";
>                 reg = <0x58>;
> diff --git a/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts b/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> index b94bb687be6b..a3fa04a97d81 100644
> --- a/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> +++ b/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> @@ -172,6 +172,19 @@
>  &i2c1 {
>         status = "okay";
>
> +       /*
> +        * Touchscreen is using SODIMM 28/30, also used for PWM<B>, PWM<C>,
> +        * aka pwm2, pwm3. so if you enable touchscreen, disable the pwms
> +        */
> +       touchscreen@4a {
> +               compatible = "atmel,maxtouch";
> +               reg = <0x4a>;
> +               interrupt-parent = <&gpio6>;
> +               interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
> +               reset-gpios = <&gpio6 9 GPIO_ACTIVE_HIGH>; /* SODIMM 13 */
> +               status = "disabled";
> +       };
> +
>         /* M41T0M6 real time clock on carrier board */
>         rtc_i2c: rtc@68 {
>                 compatible = "st,m41t0";
> diff --git a/arch/arm/boot/dts/imx6q-apalis-ixora.dts b/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> index 302fd6adc8a7..5ba49d0f4880 100644
> --- a/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> +++ b/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> @@ -171,6 +171,19 @@
>  &i2c1 {
>         status = "okay";
>
> +       /*
> +        * Touchscreen is using SODIMM 28/30, also used for PWM<B>, PWM<C>,
> +        * aka pwm2, pwm3. so if you enable touchscreen, disable the pwms
> +        */
> +       touchscreen@4a {
> +               compatible = "atmel,maxtouch";
> +               reg = <0x4a>;
> +               interrupt-parent = <&gpio6>;
> +               interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
> +               reset-gpios = <&gpio6 9 GPIO_ACTIVE_HIGH>; /* SODIMM 13 */
> +               status = "disabled";
> +       };
> +
>         eeprom@50 {
>                 compatible = "atmel,24c02";
>                 reg = <0x50>;
> --
> 2.22.0
>


-- 
Best regards
Oleksandr Suvorov

Toradex AG
Altsagenstrasse 5 | 6048 Horw/Luzern | Switzerland | T: +41 41 500
4800 (main line)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
