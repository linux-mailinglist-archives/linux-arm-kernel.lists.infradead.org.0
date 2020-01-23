Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC836146951
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 14:40:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CrcshTrheppBfE8d/VMosM0AoOW1fiH+AXoglArrEuo=; b=qaQFUfGnfkky0q
	neSEvB+ZjKVEABnQp0Sg+HgJ4jdMihhZhw5vAViC5kbXMHmxU1w8Snf8AMcdYal9iD0YgU+NxcRLD
	IGoqO2ImBXRogBLLbqKiuz0n42RhUn0GklGXcDKnE/jKl2uq2bZufy02gyboVbJ552wsJK8g/EWVk
	2xgbVvVQzBukNduj3q2t9YHNR2pQQx8vmsdfHEMx8R38hAPua0+eY3tMbcvdTarpJBQ6QLutgvJk3
	J33+jAq4J3XqQt8sp+TMKqfIlWwRdFLMk9k40kefNSl4jqGKjlsb3g2dFruit33zENeRI+PSDEfYA
	Vunt9ZO3oL1aw1o8BHzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucid-0005Sj-SJ; Thu, 23 Jan 2020 13:40:23 +0000
Received: from mail-eopbgr20121.outbound.protection.outlook.com
 ([40.107.2.121] helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuciT-0005Rs-Sm
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 13:40:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=be72sIl8x/naPAvwyxZvcRQw0UxfS5Wglj3OwvD27x+EEC2LG29XAdD3Z8WuUPWTjC4WQ31WHZfHDcCqfztaoh7Q4TgIthPDGD9ejzZp2WHhUeOJU42PMd8A4Lfp+vNgHB1vnwzxgMwIws1D/s+/39Aou1H+NKUVbMIdHHzpapPfdEyRujpkIatI7az02w9cn7hgR8AfCseGEmj1MXiETodz8uxG7Wi1VxVxkfiCoGTnFgNTJnpexo3YSBnPqv1mvLl7BBhMiVckevXHoXxB0D9L/9QgZavkjdmfOEc19NMGjuCxaAysD4V8wKWuK+0zDKRapQnVOfVpecgY07P0bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NyGYRwUAdl76/dnRq7nb6vRVMIRVtsTopT3zpbP2Hoo=;
 b=bgiKyDZ3ZSosXxkfKLZVBjCH79kJRrgVAy49FO8MPADOw3n2WisrEZnFstxOpdAERVATojmh/uV+b7Nwyg/cJyUB2mWoa+npv+p2Aq68ItxOgf6S0+txL66PUefmf/90lXtFOV4TWFLghmHt9jcDQfvAswJP3CLPTVyk5NRqKtPjjPHSza0irzogisXRA6jNNLtoa1hTfmddynDWGtLQOFcqRnCg6Ui/wg/+nHGHFuDKBe6Q2offgYRUd1jG/qkrbeu+B2sVHNZLAoKYSvgl+25z4+qruOV1Mu0ow4vkoan4YaB8wNRm96snaQd7l+YOhFsx/uT3FM7wEVFqB5BdRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NyGYRwUAdl76/dnRq7nb6vRVMIRVtsTopT3zpbP2Hoo=;
 b=p1Rk2nUkkmdmew9Q8WiqZMqpGlbPkM874LMEFAlctMEec4K3H4QhrCQgsYo7xWTYtq/QF4yUFpYeaxWKH+b2H1UbvBKNiYRyWZXkOf95lJr5tiA7MBJcKowApJI+CgAG56VACtm2srvGcS9hY8TqfebuJ70uwbnxK1742X2wlvk=
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB4720.eurprd05.prod.outlook.com (20.176.6.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.22; Thu, 23 Jan 2020 13:40:10 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2644.027; Thu, 23 Jan 2020
 13:40:10 +0000
Received: from mail-io1-f47.google.com (209.85.166.47) by
 CH2PR18CA0010.namprd18.prod.outlook.com (2603:10b6:610:4f::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.20 via Frontend Transport; Thu, 23 Jan 2020 13:40:06 +0000
Received: by mail-io1-f47.google.com with SMTP id m25so2956340ioo.8 for
 <linux-arm-kernel@lists.infradead.org>; Thu, 23 Jan 2020 05:40:06 -0800 (PST)
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: Marcel Ziswiler <marcel@ziswiler.com>
Subject: Re: [PATCH v4 3/3] drm/panel: simple: add display timings for logic
 technologies displays
Thread-Topic: [PATCH v4 3/3] drm/panel: simple: add display timings for logic
 technologies displays
Thread-Index: AQHV0fGspUwBsIOC+UqtQgRpcBDVdg==
Date: Thu, 23 Jan 2020 13:40:06 +0000
Message-ID: <CAGgjyvH1TPgVevuXyjY-m-+gxokTZHf84bHLRxtm=v4gDnz2xQ@mail.gmail.com>
References: <20200120080100.170294-1-marcel@ziswiler.com>
 <20200120080100.170294-3-marcel@ziswiler.com>
In-Reply-To: <20200120080100.170294-3-marcel@ziswiler.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CH2PR18CA0010.namprd18.prod.outlook.com
 (2603:10b6:610:4f::20) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-gm-message-state: APjAAAVoV+OnFght3lphXe1wDkmZpj5O23mOfBeCl7sYi1v3rtsnK3qX
 ODGB0G0jCQ5OG5OW5kRvcEsndRgsE1mxJ95i3yk=
x-google-smtp-source: APXvYqzXleXgx8VP42yU4MjCDPR0mp2ou+BKiHP60Ca9SQfsUq2Yh11AaCQGH7/c7GbRFGHccrzRgt4kRsho3OmaGcw=
x-received: by 2002:a37:8ac4:: with SMTP id
 m187mr15707564qkd.277.1579786410499; Thu, 23 Jan 2020 05:33:30 -0800 (PST)
x-gmail-original-message-id: <CAGgjyvH1TPgVevuXyjY-m-+gxokTZHf84bHLRxtm=v4gDnz2xQ@mail.gmail.com>
x-originating-ip: [209.85.166.47]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 35e0a072-a3b8-4c06-1620-08d7a009c1ab
x-ms-traffictypediagnostic: VI1PR05MB4720:
x-microsoft-antispam-prvs: <VI1PR05MB4720FB67D468475CF7CA8B15F90F0@VI1PR05MB4720.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 029174C036
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(346002)(396003)(39840400004)(376002)(199004)(189003)(54906003)(9686003)(42186006)(966005)(316002)(5660300002)(66476007)(66556008)(81166006)(81156014)(66946007)(66446008)(6862004)(4326008)(478600001)(64756008)(8676002)(55446002)(186003)(8936002)(44832011)(86362001)(71200400001)(107886003)(52116002)(26005)(53546011)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4720;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aO6qhR2nCkDKg1F4EfTZMNt3OCgv7gnP/+7pY8N5vfyKm67hE3GsdQ0kGkjE6dWKAIRpBenGKjJt3tO6vYw53UyvU0V4c1ojTHLRY+i31ZRwnq/4IbXiuQylezX9qlt1Fj4eOwY8Sky7XzxmqF8bvpd9uFYfegYLlKGl0KnfKDdWwu88OEI+pDRXYxm0ec6B9tjqwWlFVu9hFqVzuz5RxFOh0fucvE4fBek5qEWTXyCHuOTn53JXGXA2tzZipyCqyT4XPpoa7JwktCMHyNW0Ym5vUuGIJGuNhDjl11Ng7K2Kan92GRTJiTC8rjxOYqkvvURPevv4kI1P9kWX+uEX9bbMPIWfM0y9QWShRSz30QyN3e4oWOBSFuFBFuJXAfWYElTDPegwXm+BsxVumOskQj42VATHZOtS8M1g7K8kMG2px83/0dY2XQufW8MYNaex9I9JQBfmwWIIMn0r5DAGFIvQWi9Lt+qTNvLbQIOfm/k=
x-ms-exchange-transport-forked: True
Content-ID: <3C76931F63884141ABA973A663A7B6FB@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35e0a072-a3b8-4c06-1620-08d7a009c1ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2020 13:40:08.3016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XJuLnhShRDciooWpdWhJ4myn7UTKkZyUtLqDilXvDfi5QQOnBklR4oC25JgJLGy9Bb+/0BXyKjoe2kOMCryT+6fqWLBIui2wsYr47yTgQb0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4720
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_054013_934675_592862B4 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.121 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "j.bauer@endrich.com" <j.bauer@endrich.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 "info@logictechno.com" <info@logictechno.com>,
 Thierry Reding <thierry.reding@gmail.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 10:02 AM Marcel Ziswiler <marcel@ziswiler.com> wrote:
>
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
>
> Add display timings for the following 3 display panels manufactured by
> Logic Technologies Limited:
>
> - LT161010-2NHC e.g. as found in the Toradex Capacitive Touch Display
>   7" Parallel [1]
> - LT161010-2NHR e.g. as found in the Toradex Resistive Touch Display 7"
>   Parallel [2]
> - LT170410-2WHC e.g. as found in the Toradex Capacitive Touch Display
>   10.1" LVDS [3]
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
> Reviewed-by: Philippe Schenker <philippe.schenker@toradex.com>

Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

>
> ---
>
> Changes in v4:
> - Added recently made mandatory connector_type information as pointed
>   out by Sam.
>
> Changes in v3:
> - Fix typo in pixelclock frequency for lt170410_2whc as recently
>   discovered by Philippe.
>
> Changes in v2:
> - Added Philippe's reviewed-by.
>
>  drivers/gpu/drm/panel/panel-simple.c | 67 ++++++++++++++++++++++++++++
>  1 file changed, 67 insertions(+)
>
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index d6f77bc494c7..a0dd84e11db7 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2107,6 +2107,64 @@ static const struct panel_desc lg_lp129qe = {
>         },
>  };
>
> +static const struct display_timing logictechno_lt161010_2nh_timing = {
> +       .pixelclock = { 26400000, 33300000, 46800000 },
> +       .hactive = { 800, 800, 800 },
> +       .hfront_porch = { 16, 210, 354 },
> +       .hback_porch = { 46, 46, 46 },
> +       .hsync_len = { 1, 20, 40 },
> +       .vactive = { 480, 480, 480 },
> +       .vfront_porch = { 7, 22, 147 },
> +       .vback_porch = { 23, 23, 23 },
> +       .vsync_len = { 1, 10, 20 },
> +       .flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
> +                DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
> +                DISPLAY_FLAGS_SYNC_POSEDGE,
> +};
> +
> +static const struct panel_desc logictechno_lt161010_2nh = {
> +       .timings = &logictechno_lt161010_2nh_timing,
> +       .num_timings = 1,
> +       .size = {
> +               .width = 154,
> +               .height = 86,
> +       },
> +       .bus_format = MEDIA_BUS_FMT_RGB666_1X18,
> +       .bus_flags = DRM_BUS_FLAG_DE_HIGH |
> +                    DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
> +                    DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
> +       .connector_type = DRM_MODE_CONNECTOR_DPI,
> +};
> +
> +static const struct display_timing logictechno_lt170410_2whc_timing = {
> +       .pixelclock = { 68900000, 71100000, 73400000 },
> +       .hactive = { 1280, 1280, 1280 },
> +       .hfront_porch = { 23, 60, 71 },
> +       .hback_porch = { 23, 60, 71 },
> +       .hsync_len = { 15, 40, 47 },
> +       .vactive = { 800, 800, 800 },
> +       .vfront_porch = { 5, 7, 10 },
> +       .vback_porch = { 5, 7, 10 },
> +       .vsync_len = { 6, 9, 12 },
> +       .flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
> +                DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
> +                DISPLAY_FLAGS_SYNC_POSEDGE,
> +};
> +
> +static const struct panel_desc logictechno_lt170410_2whc = {
> +       .timings = &logictechno_lt170410_2whc_timing,
> +       .num_timings = 1,
> +       .size = {
> +               .width = 217,
> +               .height = 136,
> +       },
> +       .bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
> +       .bus_flags = DRM_BUS_FLAG_DE_HIGH |
> +                    DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
> +                    DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
> +       .connector_type = DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>  static const struct drm_display_mode mitsubishi_aa070mc01_mode = {
>         .clock = 30400,
>         .hdisplay = 800,
> @@ -3417,6 +3475,15 @@ static const struct of_device_id platform_of_match[] = {
>         }, {
>                 .compatible = "logicpd,type28",
>                 .data = &logicpd_type_28,
> +       }, {
> +               .compatible = "logictechno,lt161010-2nhc",
> +               .data = &logictechno_lt161010_2nh,
> +       }, {
> +               .compatible = "logictechno,lt161010-2nhr",
> +               .data = &logictechno_lt161010_2nh,
> +       }, {
> +               .compatible = "logictechno,lt170410-2whc",
> +               .data = &logictechno_lt170410_2whc,
>         }, {
>                 .compatible = "mitsubishi,aa070mc01-ca1",
>                 .data = &mitsubishi_aa070mc01,
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
