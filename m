Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 337E18E5BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 09:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GCU0toTXgET/TAfgn9KDUcik4ZuJt8W8UaQJW+RmFHs=; b=OaBkJT+64MdGx2
	oNMnCsrauXvXQTGeZC9hJvJ/+rn2HUwP6Si5usd/DMh3qgGXWdIEbiV+JrmUspfC7Mj+/Cm/gX5Mi
	CwISo5mrS8eAsu+AQZFwZWdKKsoSZBZsZR6MZ+te6wFHRDE878LeAlqFrwi/ZOWEV+Xo8VB/Q37w5
	ZVhzvG9PXdueN5vrBP43bEsMLAEpN9Maoz1TX55g/dXPU3qzXG1KaHalyvSrNdKO2N2VqTry3JZvA
	CkBZwUfNm8tdkV6uCwrCk8m0amKUp959KWt7rGmzWVxhKBV2AeJBJGYhbJ0isvevPKkeA1hCc9lO1
	JDjXxMA+/KTydE9Wj6tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyAVT-0008E1-LD; Thu, 15 Aug 2019 07:49:11 +0000
Received: from mail-eopbgr00120.outbound.protection.outlook.com
 ([40.107.0.120] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyAVF-0008DU-Ic
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 07:48:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WAxsGIhLwqOBqFQaQBX1ZXuk/4mCBsjitcGKEP7hYfN+2VALG7Jim2hUnErXR8AYN0WSW3+7irhDLEIOYzNjuXKb4jlEGe208n8ynqrOZx6/WlGxjGWYT2YPRi03hEzNMWHJp2fgC4opYb5PP10NFVgQb8kXHO4A0gZlrZcdm31Utdwu3QCEr+HWmdn06cZGx0TwWBAsVz5AA4mkrZNJLuzoA2IiSQRQqOO6Za5LhvTYY1MIvod5bf/tgtzceB6ITz83UkRmsxJzH10bQUd9NOvSisgSzQ/58nhKXY9KkMJGhBV6lAePV1UcY6u00aZECUHR60tH0p8sgeYLkdHaXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=svE1OLS8Z8Pte5T/2AGHzl5MKhKZonv/bSRijTuT4qk=;
 b=KNplypICbK85TyvkZU9TIljSdZnPhaZ7XelBFPrLxaMjjlNTle/xES7C3+/anucqWTyHTLv0Bk20oVygIf2DbIKUs0BXZw8pttPtCIrp5hes6T8iLJ+tmsWb5UJwgGAXOQuQj1qNtXhkT1mqy5T7gZbIoeztg2E6eaD+PbO0rq2eretxRn5Vt6rQDd8vqaFxCLJNAQFKAN76euoLcbActc6v113kZ8+Rgvax8DI47PMQKsXR23SXXsI7aNEjXIpIrMPIXKFpJBAgM+nOln7mdn3vWiL4+jgAaoSUH1j2w8hxNNn62gQ/2BZNALOiMcZKOrJwTrirqkgfvGAven6ufQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=svE1OLS8Z8Pte5T/2AGHzl5MKhKZonv/bSRijTuT4qk=;
 b=SZ88vVIuUfcVpJn6M20zdApT8rbfWz5FrSyWjZHEXAQcmsPueIzBRzlUuLz2CeV87Tpavb85acMGSR/igqwPalDX/mfsjFsUCitoiTWTrDc6EBOcwMFHwmYi9rqZlDo8ulxWQGRkCMTIvwbDNnaJ3fcJ8XkOpuHF0Inr11AI0tQ=
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com (20.179.27.210) by
 VI1PR05MB6253.eurprd05.prod.outlook.com (20.178.205.91) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 15 Aug 2019 07:48:54 +0000
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9]) by VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9%4]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 07:48:54 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v4 15/21] ARM: dts: imx6ull-colibri: reduce v_batt current
 in power off
Thread-Topic: [PATCH v4 15/21] ARM: dts: imx6ull-colibri: reduce v_batt
 current in power off
Thread-Index: AQHVUz3b4dDICZhooUyFMTSvItqHdg==
Date: Thu, 15 Aug 2019 07:48:54 +0000
Message-ID: <CAGgjyvHSdFCZOsc+QRFwDRn2w1+oxwXgoAM3fF-Wcqgt6spKFA@mail.gmail.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-16-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-16-philippe.schenker@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0501CA0044.eurprd05.prod.outlook.com
 (2603:10a6:200:68::12) To VI1PR05MB6544.eurprd05.prod.outlook.com
 (2603:10a6:803:ff::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-gm-message-state: APjAAAV5PP0Y821iZi/jB7httV+IwKdspdLinevi4OMvZRWvyiJbWo5m
 ZtukEOPhrra4jQ6rupJdEpeK22kngpb6Cy+eBEI=
x-google-smtp-source: APXvYqw6uTKq7qbmt+Jco9TYFKCTCkllA65ZHuwMsE1yhT6eOr/bX5jDAoOgO6ejXDGoQaXVccdbts3/o9KLMBZHfUw=
x-received: by 2002:aa7:c899:: with SMTP id p25mr3904868eds.41.1565855333367; 
 Thu, 15 Aug 2019 00:48:53 -0700 (PDT)
x-gmail-original-message-id: <CAGgjyvHSdFCZOsc+QRFwDRn2w1+oxwXgoAM3fF-Wcqgt6spKFA@mail.gmail.com>
x-originating-ip: [209.85.208.53]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c392eb83-d1d9-4ac6-eebc-08d72155052e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB6253; 
x-ms-traffictypediagnostic: VI1PR05MB6253:
x-microsoft-antispam-prvs: <VI1PR05MB625397A8352B705A647395F6F9AC0@VI1PR05MB6253.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39840400004)(136003)(396003)(376002)(366004)(346002)(189003)(199004)(53546011)(55446002)(386003)(81166006)(81156014)(6506007)(186003)(102836004)(26005)(229853002)(14454004)(86362001)(61726006)(99286004)(6862004)(6486002)(76176011)(52116002)(4326008)(5660300002)(6636002)(107886003)(6246003)(8676002)(478600001)(498394004)(9686003)(6512007)(316002)(6436002)(66066001)(61266001)(95326003)(2906002)(25786009)(54906003)(8936002)(3846002)(6116002)(71200400001)(71190400001)(256004)(44832011)(486006)(53936002)(11346002)(446003)(66476007)(66556008)(66446008)(66946007)(64756008)(7736002)(305945005)(476003)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6253;
 H:VI1PR05MB6544.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7LAbY+1qgr670g0PK27obKXV2fVf+VHOvt398fRvrtlglV6BxhyAlTmRwzO8DqJNAmkeGDKWKghkIq1nXai4e9oUfVM0iDT/cLLgFYPmD9BKpH9aRt66JyxPGocYvc8kRo+jk2Aiv21Ko6HIQcY49w1FNKL6xnKdAxXTrQZySuuhFHjIHfSKHsz4iRpJCZl76kA/YFiapmCAWNjuccH0utR9mhzlQqfV2hLnXVHrO1lRAy0B35gNJ+RHgJ4DP7V0q9Y7Ga6Y2NuQaYrbLOytJv9NxdGDEfDqNOSCE1TRUFd4KxHEZYedc6DlsmOe09QqQLs8n0peKI6FGHrc9UpH4N+IaY1TIJHre39BNp9T+JlfuVjSyUyCz//R1uBEuslmU4/ptgK1g9hb3QxOaK1E+oDVfc7NORdGbLgrWsUda48=
x-ms-exchange-transport-forked: True
Content-ID: <8CB5BD0E77A5184FB595F02EBA907202@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c392eb83-d1d9-4ac6-eebc-08d72155052e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 07:48:54.0852 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jO9svwoaz6er1g37yimmUI2yyPvOAxlvEQNYexSGdBaORQy8J0cliwJsq59kCRfHW9O7Ga+3In5io2jN/ie1KjhiQ6Bp//fANmBUVbbsARU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6253
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_004857_622208_9B1ED027 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.120 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Mon, Aug 12, 2019 at 5:24 PM Philippe Schenker
<philippe.schenker@toradex.com> wrote:
>
> From: Max Krummenacher <max.krummenacher@toradex.com>
>
> Reduce the current drawn from VCC_BATT when the main power on the 3V3
> pins to the module are switched off.
>
> This switches off SoC internal pull resistors which are provided on the
> module for TAMPER7 and TAMPER9 SoC pin and switches on a pull down
> instead of a pullup for the USBC_DET module pin (TAMPER2).
>
> Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

>
> ---
>
> Changes in v4:
> - Add Marcel Ziswiler's Ack
>
> Changes in v3: None
> Changes in v2: None
>
>  arch/arm/boot/dts/imx6ull-colibri.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> index 1019ce69a242..1f112ec55e5c 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> @@ -533,19 +533,19 @@
>
>         pinctrl_snvs_ad7879_int: snvs-ad7879-int-grp { /* TOUCH Interrupt */
>                 fsl,pins = <
> -                       MX6ULL_PAD_SNVS_TAMPER7__GPIO5_IO07     0x1b0b0
> +                       MX6ULL_PAD_SNVS_TAMPER7__GPIO5_IO07     0x100b0
>                 >;
>         };
>
>         pinctrl_snvs_reg_sd: snvs-reg-sd-grp {
>                 fsl,pins = <
> -                       MX6ULL_PAD_SNVS_TAMPER9__GPIO5_IO09     0x4001b8b0
> +                       MX6ULL_PAD_SNVS_TAMPER9__GPIO5_IO09     0x400100b0
>                 >;
>         };
>
>         pinctrl_snvs_usbc_det: snvs-usbc-det-grp {
>                 fsl,pins = <
> -                       MX6ULL_PAD_SNVS_TAMPER2__GPIO5_IO02     0x1b0b0
> +                       MX6ULL_PAD_SNVS_TAMPER2__GPIO5_IO02     0x130b0
>                 >;
>         };
>
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
