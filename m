Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A028E95E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 12:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xb4Z21tp7moM7UYP7r8uG8ZWeLGbwJG0uONpUeJuKLc=; b=H4caqXcF48eHaO
	MPvQ49mb1Dz995dsY3hujFoRPAo4ychPCgZq5D0fU0IEjMLxzY1YM1BmmwF7Yw70mTzdEoDwJLq1U
	g6hMsAxNxR7+d0OhYajj2tBXNj33kwy8WNfeZ0w2wjUWrn3g7a95LTuQzsRHh17UGN7aSvTeMIYoy
	1CCzpQDAef1EDni/6gq+JCnyJdPmFXdOOpltTP1sY7rEQjpzbFvL7owBoX7TPn7XpX7kHcBUpuY4o
	bgQs+BEBIdt9K5pEMoO91Bo9IRiyYdzlOty7QBk51WPyF+cpmzzINCVck826u98kv4Flk8FdROf+L
	BA9bvMZ6P7FDnkgD9vKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDQM-00065Q-Ek; Thu, 15 Aug 2019 10:56:06 +0000
Received: from mail-he1eur02on0711.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::711]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDPv-0005x6-SQ
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 10:55:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SoNljioGynhmYYotUqlTo3zsQlfGfOx9E84Pten1VTK+ubFMwrl/61MG5kKXah1qDvhqi+2CGYjDXBA/lalAdY2pT5zAf5zuPgqTGj2Mb+CgTNsvpBjuI9UVPaIjTqWA5V319IMQ4zTBVcjEzWghypq6orByfYmjUaTZD+R6CXmvovCrl/46/G4HkjDtr+R8cYfxIkqbLev7Q3R1UX4aQi33IPTAym6TUzynrYfzmdYp62ew/oFQdeI6FIFX5WqTnniPzWZ/pKV+DAq/VYKXcg36RcSqq2jjIEE0MRt2UxeI6MeLuW8y/Slmybh55korJw6Cn5t2NDX7R9u3Qeso2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2AXL2RaCjxFmW1S/GZh72Q6VEayvvcv89X9ptXDSwlQ=;
 b=mB8jmW/XXRDzCjvFOPzSjV8a1V3DzlajfzLgA/F6ZQ8NkkQhCRGYnGaMFVIg1R6xEU7RCwGz6S9HsJ2E2kb5N9XG39moXp3LvYIjXzuPp3aj5emaTKBTStMyLMbecDpAgDX23qIA7s8qn8OZlXLU/vSBwIW/YPAbgGWGKciVVTyUSTfzlXcOQWV2tldBIkN/SrRZa5Q1wNIa1XAYEAQBluHZfqL6YAVlnjd1I18h1fUZ7rTejW1hyEjnGkONidCR8m+SyGIYOOPUcmY84mLSWveVTkP8yC5ubB1IeFvks8SV9zhRNHFX49sX+Ypc2uYdy03b40t5reyXj5BsDriPPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2AXL2RaCjxFmW1S/GZh72Q6VEayvvcv89X9ptXDSwlQ=;
 b=dba4d1H/P67U/lpsmvP19AqbtkRtryREZdiVM99DG5UKLIdZLxwUcmcmOlvYGSOyPqFwXpvbdOHAfs9Vuu3w2HPTRYZDMg79L+53p6j//y+QaAuw1AYD8OeqmRsSFohAkp5iVFKo1f/P3ilqmFBR8QXc4DAvyg4yv44H1BQVKJo=
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com (20.179.27.210) by
 VI1PR05MB6302.eurprd05.prod.outlook.com (20.179.24.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Thu, 15 Aug 2019 10:55:36 +0000
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9]) by VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9%4]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 10:55:37 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v4 19/21] ARM: dts: imx6ull-colibri: Add touchscreen used
 with Eval Board
Thread-Topic: [PATCH v4 19/21] ARM: dts: imx6ull-colibri: Add touchscreen used
 with Eval Board
Thread-Index: AQHVU1f40kTsCjnFk0OpCJf7XHMhlQ==
Date: Thu, 15 Aug 2019 10:55:37 +0000
Message-ID: <CAGgjyvGggWwOy91gdhqrZ6TRaeQCox8_bCfMK7GCrPywUzqRJQ@mail.gmail.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-20-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-20-philippe.schenker@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR05CA0089.eurprd05.prod.outlook.com
 (2603:10a6:208:136::29) To VI1PR05MB6544.eurprd05.prod.outlook.com
 (2603:10a6:803:ff::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-gm-message-state: APjAAAVEvJQF3ZyHr90OXIk2Su7sVbBUAgzevh5H7lHmpHn05JscOUjJ
 6DMNp8APqHaIp4Py15P3RB18BN4l6sg5pB7VJpE=
x-google-smtp-source: APXvYqzELeiC2yM1ChST4cQmx4mNodLqpWyErz3h2qQ3fH2VDnmJ4SWBdByKZkN1OlJpVGVxOimBJJNuMvTK9PFfbPM=
x-received: by 2002:a17:906:12d7:: with SMTP id
 l23mr3751588ejb.282.1565866535893; Thu, 15 Aug 2019 03:55:35 -0700 (PDT)
x-gmail-original-message-id: <CAGgjyvGggWwOy91gdhqrZ6TRaeQCox8_bCfMK7GCrPywUzqRJQ@mail.gmail.com>
x-originating-ip: [209.85.208.52]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0be4d844-e94f-438d-ca2d-08d7216f1b10
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB6302; 
x-ms-traffictypediagnostic: VI1PR05MB6302:
x-microsoft-antispam-prvs: <VI1PR05MB6302D61A88AC8E57EAD3DED5F9AC0@VI1PR05MB6302.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(39840400004)(376002)(136003)(366004)(199004)(189003)(7736002)(61266001)(14444005)(8676002)(6436002)(55446002)(53546011)(81166006)(446003)(256004)(53936002)(386003)(61726006)(476003)(107886003)(54906003)(81156014)(486006)(102836004)(9686003)(5660300002)(6512007)(6486002)(186003)(11346002)(498394004)(26005)(76176011)(52116002)(2906002)(229853002)(305945005)(6246003)(66476007)(478600001)(316002)(6862004)(66946007)(3846002)(6506007)(66446008)(66556008)(86362001)(8936002)(6116002)(64756008)(4326008)(14454004)(44832011)(99286004)(71200400001)(66066001)(71190400001)(95326003)(6636002)(25786009)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6302;
 H:VI1PR05MB6544.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +AT/2LW1AhbABu9OBCBBdj6df2JeehistKZX1r9ui0NxOpmVuFDCrydxG7ouq3lNlz04vsYA+bmV/9onPrQ900KqBa8KRW1/JuqIlVEyiKqN7k8WFVuCtnjmj1vKOUF0qYgpQyrdpHroVTXM/fxNY8eONeowurIUzeFuVzymHJSM9I9SfSpPOgoa84ywvabdlwGoQX0DutvYp8iHzP78qlLr/dI0v32/0Aw+fVGTqtTULECerQ/So2T1WdeHQox2tGt8WNsct9wf/g2e0YDLmU6WelMNzWxIXn8rG4H15qcguIYO6/K0TgqrHs5mFU8dNuwfuKJICsKR1tVE9A6NQmITqK6m9/XcdPV+zwZK4cQw1hY0zFcZ08DdDaFUBy9pHtg7ZiYsxbqjL52mcZvqoX/qZj6EZyl4yeupKLvim6Y=
x-ms-exchange-transport-forked: True
Content-ID: <1D4979EA38C811428CB1F5D084206C5C@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0be4d844-e94f-438d-ca2d-08d7216f1b10
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 10:55:37.6965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uiD/BCEVMFX9EXXF2dNAS9DZD5IoeRU1FIoBTsbCJc8TEfKYDVrTjnWJzomQwO1bCyNNPnaLgXH8YO3ItbSWUq5HTCD2B7Y1Ako0AkZFnGE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6302
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_035540_035804_BBE0E555 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:711 listed in]
 [list.dnswl.org]
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
> This adds the common touchscreen that is used with Toradex's
> Eval Boards.
>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

>
> ---
>
> Changes in v4: None
> Changes in v3: None
> Changes in v2:
> - Removed f0710a, that is downstream only
> - Changed to generic node name
> - Better comment
>
>  .../arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> index a78849fd2afa..458a4084e53c 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> @@ -100,6 +100,21 @@
>  &i2c1 {
>         status = "okay";
>
> +       /*
> +        * Touchscreen is using SODIMM 28/30, also used for PWM<B>, PWM<C>,
> +        * aka pwm2, pwm3. so if you enable touchscreen, disable the pwms
> +        */
> +       touchscreen@4a {
> +               compatible = "atmel,maxtouch";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_gpiotouch>;
> +               reg = <0x4a>;
> +               interrupt-parent = <&gpio4>;
> +               interrupts = <16 IRQ_TYPE_EDGE_FALLING>;        /* SODIMM 28 */
> +               reset-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;      /* SODIMM 30 */
> +               status = "disabled";
> +       };
> +
>         /* M41T0M6 real time clock on carrier board */
>         m41t0m6: rtc@68 {
>                 compatible = "st,m41t0";
> @@ -176,3 +191,12 @@
>         sd-uhs-sdr104;
>         status = "okay";
>  };
> +
> +&iomuxc {
> +       pinctrl_gpiotouch: touchgpios {
> +               fsl,pins = <
> +                       MX6UL_PAD_NAND_DQS__GPIO4_IO16          0x74
> +                       MX6UL_PAD_ENET1_TX_EN__GPIO2_IO05       0x14
> +               >;
> +       };
> +};
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
