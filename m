Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89108146926
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 14:33:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAPVj4ZyFxWPRVVPi1AGxcKBimTTfuErLt/b/fXncf8=; b=SkHUEa/gyJgAG6
	/VkOOuCPmHqyteDUMdAXimPK+FDcDEoNjRJg5rTBnCVKYroE/+5aCmjZODxGsyyb7nTyYXptBCw3Q
	bkfEztmnBND1b2YIh81uKy+7EtW9BDNeG+vQme3prwHEIwZ608kCqng8QotFxumGl3TgEWxNzsUA9
	ZY9kp/oEvLGYZzq+Nse/0yG+xzXPkDkIE+CkjXRjPBFQF1KGslkKPCR60U06CIQcp99FcttWgYArk
	l//XcTUT/LsxKYXtkI9w0V+hmDzraztmxoC34dea3Ml5WmjwUw550WHTYZElNJaX5yKOnzlYTgFsc
	HNjHFBvSPQI7aHv8qVRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucbd-0001TS-NM; Thu, 23 Jan 2020 13:33:09 +0000
Received: from mail-eopbgr50108.outbound.protection.outlook.com
 ([40.107.5.108] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucbT-0001Sz-H1
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 13:33:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sp/AjJgunOTKI6VEqBeur4U6Bb9Q9aP2jQ8PbuXrMaf2qamIdThs2gTheNNLDqNZlOKZedQifV896KKYOmGD+P6wMHUtmZt/VwufrN5fmdLmQbNT5bi3DmACzSy+rU3eEcuEz/6JRpSZHwos+g9nDPtfbnpf4wff2BjxGwM4CkMX5bgfjx7jK7FMCTUcZMlF+wa+mfwgEn9bpnsZ2KL1AEwowjpiauhkYeInKqdRW59I0CWipSh/IQ5BPBEh4KvWQCo694kirlWGXuk8HCEOF3bk/P7ongQqF+/MEAxWFgmfZrJrsEUe2phEKXtVyfjtdvQN7k5hVoGWKpyCWntQ0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2s3tlYFhgdSiLQm4ik4h3D6zxaVWhtbGDckbK+wvSM0=;
 b=YBONNzgcLcFI2rX0w76/vKydWZbA45AG8pX+lVn5SXKZGFPwKlCHH59JZlFPP5o1e7OcA6dQdgIdB/f8x7WC3D3riT5sy3qmel1G+o1jEVFrkDlPhUxHTBq+wLEXzf5DbMoMGcR1NP3vtMpWoFIhuoWDI/2rkZIz7smB1YPdCAUJo3hQlaEgd8Aftsif6+vws3Ci4tK9G+JpZUUr1tpIJgzr9xn7Y8BUhAlFQgjbCXg2qdH/3/CCRce4Y34mV17O82CVdft0uly9axwqrPloVw+hm1ssWaxyrmrgh+YL3OnYk3MYeSDxEflSA4M9fjQpV06OjoD/hlikTdT1WzVYmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2s3tlYFhgdSiLQm4ik4h3D6zxaVWhtbGDckbK+wvSM0=;
 b=lKkn6eOPFChLYJVfW7FxfKGtJh1ezahvOfRNGTyUIIaktwq2ENmNQFNmiNGnn8XnLVGcZYZ/zX0NMTSR2Ou51lCIbYJqo0+RkXCG/D/z6tmLZ5m8CHidcELl/+2hESRMmd2NRdBuu4Uk8Sf+TpKQQ05qshld5Ua8lpdPPDKLEFc=
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB6768.eurprd05.prod.outlook.com (10.186.163.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.28; Thu, 23 Jan 2020 13:32:55 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2644.027; Thu, 23 Jan 2020
 13:32:55 +0000
Received: from mail-qt1-f175.google.com (209.85.160.175) by
 MN2PR10CA0023.namprd10.prod.outlook.com (2603:10b6:208:120::36) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.20 via Frontend
 Transport; Thu, 23 Jan 2020 13:32:51 +0000
Received: by mail-qt1-f175.google.com with SMTP id k40so2412145qtk.8 for
 <linux-arm-kernel@lists.infradead.org>; Thu, 23 Jan 2020 05:32:51 -0800 (PST)
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: Marcel Ziswiler <marcel@ziswiler.com>
Subject: Re: [PATCH v4 2/3] dt-bindings: panel-simple: add bindings for logic
 technologies displays
Thread-Topic: [PATCH v4 2/3] dt-bindings: panel-simple: add bindings for logic
 technologies displays
Thread-Index: AQHV0fGSiCgG8q+p4k6l4T/A2wrxsg==
Date: Thu, 23 Jan 2020 13:32:51 +0000
Message-ID: <CAGgjyvGJr+Yvn6D8i6k7N=uTNq7uWAqyJQv-Bn+samMn_km2BA@mail.gmail.com>
References: <20200120080100.170294-1-marcel@ziswiler.com>
 <20200120080100.170294-2-marcel@ziswiler.com>
In-Reply-To: <20200120080100.170294-2-marcel@ziswiler.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MN2PR10CA0023.namprd10.prod.outlook.com
 (2603:10b6:208:120::36) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-gm-message-state: APjAAAUPdMTIUuBYQgg04MHmhVQe+1vejg9D4gsVpccqv04GBU0oRXWB
 mWZhit7COuOO6YNgH4AuJpW1NvRjXLkG4cXP2j8=
x-google-smtp-source: APXvYqwHdoIm2gkZNB9+mft6eWjNU94wAAqcKZh4qyseww49f2rOVJB/HGbiuT0g+joW6oQL6DibWmbKodut6OB/6BM=
x-received: by 2002:ac8:1851:: with SMTP id
 n17mr16327905qtk.305.1579786367031; Thu, 23 Jan 2020 05:32:47 -0800 (PST)
x-gmail-original-message-id: <CAGgjyvGJr+Yvn6D8i6k7N=uTNq7uWAqyJQv-Bn+samMn_km2BA@mail.gmail.com>
x-originating-ip: [209.85.160.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2afb64bb-d6e6-49a4-8b3e-08d7a008be75
x-ms-traffictypediagnostic: VI1PR05MB6768:
x-microsoft-antispam-prvs: <VI1PR05MB676800B4A5B8B97CEF297822F90F0@VI1PR05MB6768.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:400;
x-forefront-prvs: 029174C036
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39840400004)(396003)(136003)(346002)(366004)(376002)(199004)(189003)(8936002)(26005)(52116002)(186003)(53546011)(55236004)(54906003)(42186006)(71200400001)(8676002)(316002)(44832011)(6862004)(107886003)(9686003)(4326008)(66446008)(66476007)(66556008)(64756008)(86362001)(55446002)(966005)(81166006)(81156014)(2906002)(66946007)(478600001)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6768;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0/8fd49SIBP77KZC9KKvHfUby7zJyqGvuFQa5RIVEnzrbVaqG5/aHuD09Fqmthw2C7q7ht9EkkBVV3CcnPZKsLbN/vJNf0WqV7oUOnpBWyAwUQA4XI+JjrdIK8SYytbPbFX5zXw68xzEcdROYjiRxATvjm5EQEVnq02CHszcraGUWGnfOu3YaZcSCFJyVIFxgvdxkD77AcAIW/xlWS89fPMJ6mRO4R4Xo6XK0BB/4yywPhIRNquiCa+ZakO8slZauA3U2HA2ZcniMczucFV9qQy12HzHWaYusgD0c0QIUa+WOEoraylmhGBAFV755RDQxSeo4PTq+J5KaT5/14oZt53+zE3whNM8f/R9UjHClB9unPsdlUWicEUjWYSunmghOXTDVxUPIPNl+jikl/F05XMKX/O4lsAfbBdrh+LA0Ucb/qIF842E10KIi+6fVzfw1di+IyTgbPbMPKAdkrNPGOMzlk75MI9ULOnFeg2pX58=
x-ms-exchange-transport-forked: True
Content-ID: <2CA010C86E909F40B4DE52AAF9A4BCCD@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2afb64bb-d6e6-49a4-8b3e-08d7a008be75
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2020 13:32:51.4269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BqIRIFLftJMPZPOqQWtEI0mJp8lkYWIrNAgga3dabhSkOwxyLttea8QtveQvwmp/ILFwjbwyB6JT69sS7vtu3CJFR6f7SDtvXvEDVsqNpO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6768
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_053259_621383_B975D9EC 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.108 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "j.bauer@endrich.com" <j.bauer@endrich.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>, "info@logictechno.com" <info@logictechno.com>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 10:02 AM Marcel Ziswiler <marcel@ziswiler.com> wrote:
>
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
>
> Add bindings for the following 3 to be added display panels manufactured
> by Logic Technologies Limited:
>
> - LT161010-2NHC e.g. as found in the Toradex Capacitive Touch Display
> 7" Parallel [1]
> - LT161010-2NHR e.g. as found in the Toradex Resistive Touch Display 7"
> Parallel [2]
> - LT170410-2WHC e.g. as found in the Toradex Capacitive Touch Display
> 10.1" LVDS [3]
>
> Those panels may also be distributed by Endrich Bauelemente Vertriebs
> GmbH [4].
>
> [1] https://docs.toradex.com/104497-7-inch-parallel-capacitive-touch-display-800x480-datasheet.pdf
> [2] https://docs.toradex.com/104498-7-inch-parallel-resistive-touch-display-800x480.pdf
> [3] https://docs.toradex.com/105952-10-1-inch-lvds-capacitive-touch-display-1280x800-datasheet.pdf
> [4] https://www.endrich.com/isi50_isi30_tft-displays/lt170410-1whc_isi30
>
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
>
> ---
>
> Changes in v4:
> - Re-ordered commits as suggested by Sam and re-worded commit message.
>
> Changes in v3:
> - Add it to recently introduced panel-simple.yaml instead as suggested
>   by Sam.
>
> Changes in v2:
> - New patch adding display panel bindings as well as suggested by Rob.
>
>  .../devicetree/bindings/display/panel/panel-simple.yaml     | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 4a8064e31793..f33c5d979f96 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -41,6 +41,12 @@ properties:
>        - frida,frd350h54004
>          # GiantPlus GPM940B0 3.0" QVGA TFT LCD panel
>        - giantplus,gpm940b0
> +        # Logic Technologies LT161010-2NHC 7" WVGA TFT Cap Touch Module
> +      - logictechno,lt161010-2nhc
> +        # Logic Technologies LT161010-2NHR 7" WVGA TFT Resistive Touch Module
> +      - logictechno,lt161010-2nhr
> +        # Logic Technologies LT170410-2WHC 10.1" 1280x800 IPS TFT Cap Touch Mod.
> +      - logictechno,lt170410-2whc
>          # Satoz SAT050AT40H12R2 5.0" WVGA TFT LCD panel
>        - satoz,sat050at40h12r2
>          # Sharp LS020B1DD01D 2.0" HQVGA TFT LCD panel
> --
> 2.24.1
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
