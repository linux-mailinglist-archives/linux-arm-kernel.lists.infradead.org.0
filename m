Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED93C4B66
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 12:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/EcPi7DTIyCGsRWfbgM1MVz7Z91SLwnn9fCanEXXmAw=; b=czMdvzNUGjWpTG
	yZWCELo2pZWG2TSRrMm98NCyF7ZRJiofcd1BLjRFILhCM5FjFhNTEc/ZIiHs3r0QI3/rNNP2hhhJj
	F6/8idCe/Z0uDSggtXYWyIQOhPZ8/dY7gXD6fxGP89w68bBtNOLfw9GuWwNMwe1gUKNQT2ugsWeLf
	X4GGBEPlv0O97IdJ9+U0fBqERHPnnW01zqOkkaXSLvypK/CD1tT9zXFp941YhpVM0aW7aidu0jcGi
	Ss0eh+UusXhxJQLh53qH0fvO+f56dHBuUWXGwJM+bFcHE5XxU8c890J9tsLjK/dfWxn/eAMB6uWY0
	z+XxlGP4UX7cg0+v956w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFbqq-0006eX-8k; Wed, 02 Oct 2019 10:27:20 +0000
Received: from mail-am5eur02on0711.outbound.protection.outlook.com
 ([2a01:111:f400:fe07::711]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFbqh-0006cV-9O
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 10:27:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dGXhFrpFFT8MBODaPppTRv0TodReNo9YylGcTatZ8cy6xB+K25GZCclmhslxsV2JUDkzKFuW8XJlsibUAd7oHlt9NmXM6bfB4FHje8on1uN3YKq8Ljl1mto2A47fGcW7A26gUxM0MgMSBp+p3u8AnNnhDB+TvjoxRGS3f5S5ukLSnV09TuHXoH8qwudATNKkIaslQHi4FKD5WiEVUXv+o7VVm1pVaeQ2uAgLNs/CBCa6SOAzaXeYGFHT5yQax15Zn0K2Sua0MrFU3NM2MLt2AWBrzEt2PM2v/KGeSSvOh6aM9LI3BtbOKIX7yH+uYuyxHFnhsG64Nr32PXrVXs5pLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T0mvGMjtSZzZ6ei3bNFTvVYZBW5Eh6xrBGjTUPMZ3mw=;
 b=D2nfwMkAYbOpTAkjrL8q9uATqC6eL5yuHXhKN1qtT0/+iKDoWDxmoYN+BvSA/cGPKl0s8GSBzuqDOebKjYGMhU2lCoHHN0gJi3FFIULtTReD6/n6fRniVdIL5gFb9aDZIUZe2JcnVNOb9shPfKSlWwHZS77DJnRtAP2Z9XQG272S+PMLfG3HUdBASGdxz1h8rai7KaVCoDVlQc7zk9AxeL2Tb041QiRpN9VqcrdHOnXkbeomApOcDwn1Cq9dYx28cm8zSAER+gxE7d2L2iDHjq5P3R29TNRymbK0vNJlyKHfx2ISgtY1WuQZyTSqMzC+4vVW1GX5kujg56VUl93axw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T0mvGMjtSZzZ6ei3bNFTvVYZBW5Eh6xrBGjTUPMZ3mw=;
 b=a35TCs9HsEBKLiigAT7TlpmJVFhs9zG4I7DSaP0X2UuHnvVPSbrftktcIM/mpnpIaDTxIZhcE0UlVYhYHxsDJhqXbFJ0h3Ccwm0+DhHiYswjx0sTwKp+bFXLdiTf1m8RND9MxfUFVYveCWeMmXJjCYlKEA2i9kE7KE0OYiQvRb8=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.19.20) by
 VI1PR0502MB4096.eurprd05.prod.outlook.com (52.134.19.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Wed, 2 Oct 2019 10:27:00 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f427:26bb:85cf:abad]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f427:26bb:85cf:abad%7]) with mapi id 15.20.2305.017; Wed, 2 Oct 2019
 10:27:00 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "robh@kernel.org" <robh@kernel.org>, "marcel@ziswiler.com"
 <marcel@ziswiler.com>
Subject: Re: [PATCH v1 2/2] drm/panel: simple: add display timings for logic
 technologies displays
Thread-Topic: [PATCH v1 2/2] drm/panel: simple: add display timings for logic
 technologies displays
Thread-Index: AQHVb4i+AFMG6Tf6HkW/qXEuG4gbDqdGaaaAgADPIIA=
Date: Wed, 2 Oct 2019 10:27:00 +0000
Message-ID: <e6fdfd7f46308dbc8fd33d4a2ff0b242ec39a84c.camel@toradex.com>
References: <20190920075411.15735-1-marcel@ziswiler.com>
 <20190920075411.15735-2-marcel@ziswiler.com> <20191001220539.GA16232@bogus>
In-Reply-To: <20191001220539.GA16232@bogus>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4f15d255-e1c9-4abc-1c33-08d747230f57
x-ms-traffictypediagnostic: VI1PR0502MB4096:
x-ms-exchange-purlcount: 5
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB40969228AC2181E5BE9B3A8FF49C0@VI1PR0502MB4096.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0178184651
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(39840400004)(366004)(396003)(136003)(199004)(189003)(81156014)(4326008)(8676002)(6436002)(71200400001)(71190400001)(5660300002)(186003)(25786009)(36756003)(8936002)(44832011)(229853002)(81166006)(110136005)(486006)(118296001)(14454004)(966005)(446003)(478600001)(476003)(99286004)(11346002)(2616005)(316002)(6486002)(54906003)(3846002)(6116002)(6512007)(6306002)(256004)(26005)(7416002)(2906002)(6506007)(2501003)(7736002)(305945005)(6246003)(102836004)(76176011)(76116006)(64756008)(66446008)(86362001)(66066001)(66946007)(66476007)(66556008)(91956017);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB4096;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pwO/jSufG8D89yQnZnI3BRONcgXw9sqwVxEQkaqxFATMhJmFT6/ea3HZQCgVCkxTqcUlRTPcbddKp9mW5zD3bAqzGdVaDO3++dl4+CV9SwkM5661YsrTUctkLkGcs+4NXqZpjvSpYC0C7EDZeGMtUY8IDwRCLisHA5j7XKiQ30yzKPHfXYkOFazm/tdfWCeraqXipfpHLkf1p/KkUWK7b+otHfJPyD1QPvoUafAoWchnVYPi1lLq6LWs4u1s4Dnbqp7Upzj50HCkk4Eq8xwi/kxwLp8LJCoxEpQBy5G0TTVmw5v9gwuk8GFyvvecHalcyAcKAnkCgmcDVaAgmmbNJYE0JzQ+hvhKvxMvrfjTj6I/iOGx2EqAjL0+IqN1ToSQrbWkOdLb0XBxwrwdetQXDlwj8Wvh0HjbQL6uk/h98xkHLwjUlj57MWsEhG9i4/M/TLrE2XDj9kFK5/ww+Cng+Q==
Content-ID: <D3C60422FD7EBD47B696FB27DF221D96@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f15d255-e1c9-4abc-1c33-08d747230f57
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2019 10:27:00.1769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gq7TmBEgRf1NUtq9b+O6AJ/8KACub/tnZRDTeeBVlwyjAWHHRBNeJs/Y4uhWV/mhcbGPVkmPet2tOuMZRwVyNWaRxYnSrY2/1wBeBssWffE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB4096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_032711_332548_CCBCD7B4 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe07:0:0:0:711 listed in]
 [list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "j.bauer@endrich.com" <j.bauer@endrich.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "info@logictechno.com" <info@logictechno.com>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "sam@ravnborg.org" <sam@ravnborg.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-10-01 at 17:05 -0500, Rob Herring wrote:
> On Fri, Sep 20, 2019 at 09:54:11AM +0200, Marcel Ziswiler wrote:
> > From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > 
> > Add display timings for the following 3 display panels manufactured
> > by
> > Logic Technologies Limited:
> > 
> > - LT161010-2NHC e.g. as found in the Toradex Capacitive Touch
> > Display
> >   7" Parallel [1]
> > - LT161010-2NHR e.g. as found in the Toradex Resistive Touch Display
> > 7"
> >   Parallel [2]
> > - LT170410-2WHC e.g. as found in the Toradex Capacitive Touch
> > Display
> >   10.1" LVDS [3]
> > 
> > Those panels may also be distributed by Endrich Bauelemente
> > Vertriebs
> > GmbH [4].
> > 
> > [1] 
> > https://docs.toradex.com/104497-7-inch-parallel-capacitive-touch-display-800x480-datasheet.pdf
> > [2] 
> > https://docs.toradex.com/104498-7-inch-parallel-resistive-touch-display-800x480.pdf
> > [3] 
> > https://docs.toradex.com/105952-10-1-inch-lvds-capacitive-touch-display-1280x800-datasheet.pdf
> > [4] 
> > https://www.endrich.com/isi50_isi30_tft-displays/lt170410-1whc_isi30
> > 
> > Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > 
> > ---
> > 
> >  drivers/gpu/drm/panel/panel-simple.c | 65
> > ++++++++++++++++++++++++++++
> >  1 file changed, 65 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/panel/panel-simple.c
> > b/drivers/gpu/drm/panel/panel-simple.c
> > index 28fa6ba7b767..42bd0de25167 100644
> > --- a/drivers/gpu/drm/panel/panel-simple.c
> > +++ b/drivers/gpu/drm/panel/panel-simple.c
> > @@ -2034,6 +2034,62 @@ static const struct panel_desc lg_lp129qe = {
> >  	},
> >  };
> >  
> > +static const struct display_timing logictechno_lt161010_2nh_timing
> > = {
> > +	.pixelclock = { 26400000, 33300000, 46800000 },
> > +	.hactive = { 800, 800, 800 },
> > +	.hfront_porch = { 16, 210, 354 },
> > +	.hback_porch = { 46, 46, 46 },
> > +	.hsync_len = { 1, 20, 40 },
> > +	.vactive = { 480, 480, 480 },
> > +	.vfront_porch = { 7, 22, 147 },
> > +	.vback_porch = { 23, 23, 23 },
> > +	.vsync_len = { 1, 10, 20 },
> > +	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
> > +		 DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
> > +		 DISPLAY_FLAGS_SYNC_POSEDGE,
> > +};
> > +
> > +static const struct panel_desc logictechno_lt161010_2nh = {
> > +	.timings = &logictechno_lt161010_2nh_timing,
> > +	.num_timings = 1,
> > +	.size = {
> > +		.width = 154,
> > +		.height = 86,
> > +	},
> > +	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
> > +	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
> > +		     DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
> > +		     DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
> > +};
> > +
> > +static const struct display_timing logictechno_lt170410_2whc_timing
> > = {
> > +	.pixelclock = { 68900000, 71100000, 7340000 },
> > +	.hactive = { 1280, 1280, 1280 },
> > +	.hfront_porch = { 23, 60, 71 },
> > +	.hback_porch = { 23, 60, 71 },
> > +	.hsync_len = { 15, 40, 47 },
> > +	.vactive = { 800, 800, 800 },
> > +	.vfront_porch = { 5, 7, 10 },
> > +	.vback_porch = { 5, 7, 10 },
> > +	.vsync_len = { 6, 9, 12 },
> > +	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
> > +		 DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
> > +		 DISPLAY_FLAGS_SYNC_POSEDGE,
> > +};
> > +
> > +static const struct panel_desc logictechno_lt170410_2whc = {
> > +	.timings = &logictechno_lt170410_2whc_timing,
> > +	.num_timings = 1,
> > +	.size = {
> > +		.width = 217,
> > +		.height = 136,
> > +	},
> > +	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
> > +	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
> > +		     DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
> > +		     DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
> > +};
> > +
> >  static const struct drm_display_mode mitsubishi_aa070mc01_mode = {
> >  	.clock = 30400,
> >  	.hdisplay = 800,
> > @@ -3264,6 +3320,15 @@ static const struct of_device_id
> > platform_of_match[] = {
> >  	}, {
> >  		.compatible = "lg,lp129qe",
> >  		.data = &lg_lp129qe,
> > +	}, {
> > +		.compatible = "logictechno,lt161010-2nhc",
> > +		.data = &logictechno_lt161010_2nh,
> > +	}, {
> > +		.compatible = "logictechno,lt161010-2nhr",
> > +		.data = &logictechno_lt161010_2nh,
> > +	}, {
> > +		.compatible = "logictechno,lt170410-2whc",
> > +		.data = &logictechno_lt170410_2whc,
> 
> The vendor prefix wasn't documented, but the compatible string and
> rest 
> already are?

Marcel added the vendor prefix in the first patch of the series [1]

[1] https://lkml.org/lkml/2019/9/20/126

Philippe

> 
> Rob
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
