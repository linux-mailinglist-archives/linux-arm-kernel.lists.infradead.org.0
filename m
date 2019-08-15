Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077B98E96C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 12:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNaKd3vyg7zMNyEE5kYUq/sGD/5RQdyWidDUR9ykQD0=; b=sNHxbenOTEqvR+
	Pf6syDq3A7fWMVC8acGNfTiLUWlz74p7CNOf/hIXpfphCU+1Y1JFqxbvJYr8ltK63UXgUQipQBneV
	qhS3BbchECot9h0FBL6mB2reDmqOANqln77FfxNiB+zy6+IGOdOWwUgMmVbydh3AWrk+S7RsC0ATH
	4djts+IxPZzQstku6ABVYunOBErs/7ujXXZnP1pKyf7WOwMTlIrea6/aUZujZdoy3rYmpC/uaQ0pg
	OV5FgLSZ7RWCL5eRYRS7H74LtPCq0SsExvKKpPGqlf3cwUV4ZFk0A7mIE18IYTS1akOa1MzBlDnoy
	Uk75Njkks4TqphBkETeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDTS-0007nf-Sn; Thu, 15 Aug 2019 10:59:19 +0000
Received: from mail-he1eur02on0723.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::723]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDTD-0007nB-OR
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 10:59:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FvmS/sUlx7AEOz3HIm75d5/XzhgD4IdlBBvFP7O/X6gAkgrQAZHa/2UyezFPwRel6DhGbhr9O049PgnFHhAjdsbbn1pAa3Yk1LrGMKzfT99kQ8tpYsnGkTECFsMtHQQmn2opx3zz1ZLx5FzotmgswPlYUptdr7lAVeVjVg1sJphKoax4jU9C0rruLSjQzZX2LyO1K0W0hnyDvvzRLv90GAGoVhUNy0eI88vEZxwxyE1v3RT+HbPR72g/cBYk6LUgOicgMi3sJ+wJeD9dz/Kimi6PNHC/H84lYUAk2Gqxllc4zic/Jb0wTJrrTxpEmLNhsKiroMT98u0TnliNJB6pyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rRsitfbwK0K36D25sdakbwQbtkpudQhjDOvtF6V0ffo=;
 b=JbiJpcxaNr6xiGw0Li58WMjEInEtwEc2xjfb0Q634piRQLUFTh3uxS3ekHNebHAojX4baYoA9O74jN03O3ZO3BBJODGSfDB4WJnPSchPOE7uwTpVuVIKXg2MoiyyIYAy5VggtmUqeJfhRHjS7pTK+qT4bIXGz57kOV7ueaM5PAb50rzqmJwvS95t/TsHdZIPsIYM2k1YuZj8yl6QNHBoiETAl2iJrkqp6KbOpWBOnCrxCuvYGeSeO8MEUduDoxxScFaNQaM1CvzS5V8fsH4zGao//hMCg2vWLC5p7fY1GdvrjtoDE0FxgSdf9UjpoC5iFnCh7vcGg0gP+rKcFL7bFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rRsitfbwK0K36D25sdakbwQbtkpudQhjDOvtF6V0ffo=;
 b=RiVSScKVx1CAYbs70Wwlya11FGfBfcllBcPWDevwVdCVKhS5bJL9yRvvEszIdplvBX3+ikUOL2fqm/q9Fn5kI1Su+JlZ7SeFzcBqUlfKqdUqibJjUeIHKqb4V45QjMGWwS/kVfmOGvdiKEMFcft5sJ5616SP7OjEmORjVOcyl3k=
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com (20.179.27.210) by
 VI1PR05MB6302.eurprd05.prod.outlook.com (20.179.24.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Thu, 15 Aug 2019 10:59:00 +0000
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9]) by VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9%4]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 10:59:02 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v4 08/21] ARM: dts: imx7-colibri: Add touch controllers
Thread-Topic: [PATCH v4 08/21] ARM: dts: imx7-colibri: Add touch controllers
Thread-Index: AQHVU1d6YDs6uEjrfUCEF/Tm2eBgmA==
Date: Thu, 15 Aug 2019 10:59:01 +0000
Message-ID: <CAGgjyvEGqZ5qKeN9rOUQDWbb7X=LbeTAU4s01t18+B396Df_Lg@mail.gmail.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-9-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-9-philippe.schenker@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0902CA0001.eurprd09.prod.outlook.com
 (2603:10a6:200:9b::11) To VI1PR05MB6544.eurprd05.prod.outlook.com
 (2603:10a6:803:ff::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-gm-message-state: APjAAAXW+/+XavXILjSL5sd9w6VdSJqcVN5EaVnPCpK6IVzXyqJYdjyQ
 7HSF2IN6iwh4LgFiKWBAtA+ZAaLYAO1JKgxwIwI=
x-google-smtp-source: APXvYqxXU/DoVkHZl/unq6MdVzWMCMOBvcZfOeFbwI0z5dOks1Dbqwdq7qHumDr3cQb52horwaR08JClzPSVWCa3cU0=
x-received: by 2002:a17:906:9453:: with SMTP id
 z19mr3801902ejx.287.1565866337952; Thu, 15 Aug 2019 03:52:17 -0700 (PDT)
x-gmail-original-message-id: <CAGgjyvEGqZ5qKeN9rOUQDWbb7X=LbeTAU4s01t18+B396Df_Lg@mail.gmail.com>
x-originating-ip: [209.85.208.48]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f59bbb7e-c4eb-4dd1-1cc2-08d7216f94be
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB6302; 
x-ms-traffictypediagnostic: VI1PR05MB6302:
x-microsoft-antispam-prvs: <VI1PR05MB63024990C5E95DED05E2805CF9AC0@VI1PR05MB6302.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:308;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(39850400004)(396003)(346002)(376002)(136003)(366004)(199004)(189003)(7736002)(61266001)(14444005)(8676002)(6436002)(55446002)(53546011)(81166006)(446003)(256004)(53936002)(386003)(61726006)(476003)(107886003)(54906003)(81156014)(486006)(102836004)(9686003)(5660300002)(6512007)(6486002)(186003)(11346002)(498394004)(26005)(76176011)(52116002)(2906002)(229853002)(305945005)(6246003)(66476007)(478600001)(316002)(6862004)(66946007)(3846002)(6506007)(66446008)(66556008)(86362001)(8936002)(6116002)(64756008)(4326008)(14454004)(44832011)(99286004)(71200400001)(66066001)(71190400001)(95326003)(6636002)(25786009)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6302;
 H:VI1PR05MB6544.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CfSoFA5s8tTDCQ1kWeEAHuB3B13P7V7cg7I0p1OeMqP9NJACXxWChQLyLQzMFNr5NwcrY9efL4TKTjvrYqfIjc5OPHYMecVdL8xSs0YWcn73jEnpdMYUYnQZwYFNb8e+oxB3z/JIYLyvr1MbKTM4pI7ADWet1udX4aWihfps0culHZWot3JhvZnTTptQbYFy45X6kPrDkXaJkFh7bSMLz35fWIVQDd/AfXXk2F7AGKkXngDUOlHmFNkCIB+ROqV+kdpaR4w1WJfwHfw5C930GlPN1TPtrarqHa/taFNld5pwuhdouhlpoKa2d1kgtRFg4CNGkdIj21XXG8w4xWcR8OBXbfeyAX2bS69r2IgvQGKpEtpjTeKOBo6dMY00kXQNPffdj1pnSoIOLN6DgN2DTNdfSe4UdrnlwGk4bbtOPUA=
x-ms-exchange-transport-forked: True
Content-ID: <5EF4315B158F6A4D97BD31DA60DC4498@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f59bbb7e-c4eb-4dd1-1cc2-08d7216f94be
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 10:59:01.8477 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d4PwIyH+5JHbr/O7zA/wZaqdjWQllXqG9lIXpYuIkgkAn1JRzWtL5xC8xYoAFZAbti/+59lowEFGGvYqKFlMx3aPz2XlTtWqvWUZ/Uk+3do=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6302
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_035903_797990_C9AF8C78 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:723 listed in]
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
> Add touch controller that is connected over an I2C bus.
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
> - Fix commit message
>
> Changes in v2:
> - Deleted touchrevolution downstream stuff
> - Use generic node name
> - Better comment
>
>  arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 24 +++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> index d4dbc4fc1adf..576dec9ff81c 100644
> --- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> @@ -145,6 +145,21 @@
>  &i2c4 {
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
> +               interrupt-parent = <&gpio1>;
> +               interrupts = <9 IRQ_TYPE_EDGE_FALLING>;         /* SODIMM 28 */
> +               reset-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;     /* SODIMM 30 */
> +               status = "disabled";
> +       };
> +
>         /* M41T0M6 real time clock on carrier board */
>         rtc: m41t0m6@68 {
>                 compatible = "st,m41t0";
> @@ -200,3 +215,12 @@
>         vmmc-supply = <&reg_3v3>;
>         status = "okay";
>  };
> +
> +&iomuxc {
> +       pinctrl_gpiotouch: touchgpios {
> +               fsl,pins = <
> +                       MX7D_PAD_GPIO1_IO09__GPIO1_IO9          0x74
> +                       MX7D_PAD_GPIO1_IO10__GPIO1_IO10         0x14
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
