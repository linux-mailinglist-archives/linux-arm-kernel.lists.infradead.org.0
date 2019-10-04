Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88746CB4D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 09:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjvhRA8cni07pjFpjZakQd93UF2rpZpPeYtZLwyo64o=; b=UC6xsO7a4AAGKk
	JO6R5goy7h4KzBUeqNaTifpsycgmu6Irlgegqx0f2w5lkh5Qt6GMBZBlqzzSqqCJiOk0P+Bzh/z1a
	jacnAhu0hf41pOi3HSGxOG4joWkiTixhhQONaZPAMp1oKYACzhKCCzcRyJsO38pE0QucuhP1JerFO
	xwWWo4SWA+Y7amA1ls6oZh8PlsPS9wRdEYUPH6xKpddCiwqFuNtK+iJEwOtTCCURY3UUcuf8ANF8v
	EN9yFPhbd0HT7Gz9og/7NuZoYeQHJm4wYuTeLgxCssP6gColHOqUKaFJtf38jXFSx9J6AvBD4Zp1J
	ZnK9C3x8IzgSK0d67P2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGHii-0003ht-Bx; Fri, 04 Oct 2019 07:09:44 +0000
Received: from mail-eopbgr70128.outbound.protection.outlook.com
 ([40.107.7.128] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGHiW-0003hH-Uy
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 07:09:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VS7IF1hcLGZc6pFp1S+FrQNNZxUNvVRcWPNQyPTCjDS00cBKtSMpwDoAzSnzL6jvN7AWThNSr94nixPETIE4YGfTAGw0yPHR59RIIdkiNNCyA4K1FySCxKjK1fKD6Z2jyOn+cVn5KlYE4zlM9V2Qq27IORbWKBOL4BMRwyTnAf9Dj4k6e5+ke+LzsNjuUrB4vYgouP3y9sMFxi+oZazsTnFS8BAqjMQqdKVk0wm4VHi+z18eGRrJM1ib7taRE+4jvakrfH+WXIpJNfABNAnvjq95HIGI6kzzMO9uVHeq5hdxTR0TEPqrc/aaoT547lVaw9S4KBGyFQBm8OZhDhNZ3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bgv/Ea5BwbUhMrUuHgzDR90WUNFlwThnpgDBifDnCak=;
 b=WTMWP/3DI5FztGEKTdHvXD0NRtrJ2hwdxh7oftC2dLRzkgh0yaOoVBDgu8rLpoEAhPD+cypDIIeNZpCgr22+fiSbq0gv+DyMK49yXunciX0kkpWIWLJ3O42cXIJ6NZiZySNUDczluLzK34asCEkqxjCFFO5Z649Gkm1hwPBeY5tbNwigPJaWLF7HpIFxC7nePM6ytDTUJ2deKDR9r4x1qKVGzfoBL89QPzgWXOQOw8IfJ+jPAti+X/g0joFAlr0Z1H6gGS0umBfCmYsMd5L0gaS8iWutX4PF6KELutmnb2Z7rCRiYHxfVSIzWq+k5b0EN4Uay8h4l5t+IDm+TleckQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bgv/Ea5BwbUhMrUuHgzDR90WUNFlwThnpgDBifDnCak=;
 b=ZNe+YLSAkFIbnnsTv+z0NIo7gbI5GSY+QDOFd0gXhaaiE9DUvJEroik03CKSuJmGitDQ1G9LxdY9LFWaGtZRWNsYQHCPk27ddKuMMzHzTqGDrxatrnbZiPcLqf2QOFOCE4y5T9USoBs1bs62de2vMBYyyWjQVr34p78refYP4/U=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.19.20) by
 VI1PR0502MB3936.eurprd05.prod.outlook.com (52.134.8.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Fri, 4 Oct 2019 07:09:23 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f427:26bb:85cf:abad]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f427:26bb:85cf:abad%7]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 07:09:22 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "robh@kernel.org" <robh@kernel.org>
Subject: Re: [PATCH v1 2/2] drm/panel: simple: add display timings for logic
 technologies displays
Thread-Topic: [PATCH v1 2/2] drm/panel: simple: add display timings for logic
 technologies displays
Thread-Index: AQHVb4i+AFMG6Tf6HkW/qXEuG4gbDqdGaaaAgADPIICAAe87gIAA/jgA
Date: Fri, 4 Oct 2019 07:09:22 +0000
Message-ID: <f6f7055534e0843eaccd6269f867ef44e4953849.camel@toradex.com>
References: <20190920075411.15735-1-marcel@ziswiler.com>
 <20190920075411.15735-2-marcel@ziswiler.com> <20191001220539.GA16232@bogus>
 <e6fdfd7f46308dbc8fd33d4a2ff0b242ec39a84c.camel@toradex.com>
 <CAL_JsqKmCVP3Fc2sUY=FpM5-HLQ0-=uTf6PEwn0XzyC5BBHBOA@mail.gmail.com>
In-Reply-To: <CAL_JsqKmCVP3Fc2sUY=FpM5-HLQ0-=uTf6PEwn0XzyC5BBHBOA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 078c1e18-08af-47e7-0e1c-08d74899c8a7
x-ms-traffictypediagnostic: VI1PR0502MB3936:
x-ms-exchange-purlcount: 4
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB3936B0B9499BE1ED15A598F7F49E0@VI1PR0502MB3936.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39850400004)(396003)(366004)(376002)(346002)(189003)(199004)(102836004)(76176011)(11346002)(2616005)(446003)(25786009)(2351001)(44832011)(7416002)(256004)(476003)(36756003)(2906002)(118296001)(305945005)(186003)(66066001)(486006)(6436002)(6116002)(71190400001)(71200400001)(26005)(5660300002)(2501003)(7736002)(3846002)(229853002)(6486002)(6512007)(6246003)(5640700003)(99286004)(6306002)(6506007)(66946007)(4326008)(66476007)(53546011)(966005)(54906003)(66556008)(478600001)(66446008)(64756008)(6916009)(8676002)(316002)(76116006)(91956017)(8936002)(1730700003)(81156014)(81166006)(14454004)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3936;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N3ImLopR8lVNYSgERirl0N2Xc/L5O40gwmXT10wuV4Fxher7OnnQFjL+RblCLUQDzLHt6Z/oM8EOTTt440dEryfFueeRw+i5xIGt/p0c10lXVwc9pspgAQBV/IIXeRoquJto1rrVvf6LNoe/VSrJ4LlNzRdgHyOuCU69dnsQMySu1WAtnqZWOV4Gor7UH/vnxu5SO4b72vZ/8oFW/OQxCOPTsWQcSEPUNA6LfNO+WNQ7uA9K/8qiWH1sDeu1uYlX0VI2VZG4NxbeLwTb4hi806NLN2nPUeX+zI1JRq+V+p3MT4QbPPsSyx+PGVPfnyyrrRxKc/0qR4UPl2ZVgVSLIJhWPlSuskWXESgpybV2rP6o8eI8Nfrf+PtH4aTQZhTo77C7c6Zl/+3W6xz5fwx5aLBYxfaMeMDv1TRphlHNMP5pVSMHZ/0oTuo2UUwI3KMk
Content-ID: <8219941CBD310146973D8E8CCB36BEC4@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 078c1e18-08af-47e7-0e1c-08d74899c8a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 07:09:22.8262 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ONh1pG9zAZI7JRt/9zJU2YeVinVvVSOoZlT9eMCeHV+G8zYpgx3aPGidC947odzx+JfWUwXon5uCb/3XgWMJWh37l7lv0ze9C0qIZqHi10o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3936
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_000933_161224_C8C33A6C 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.128 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.128 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "airlied@linux.ie" <airlied@linux.ie>,
 "j.bauer@endrich.com" <j.bauer@endrich.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "info@logictechno.com" <info@logictechno.com>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "marcel@ziswiler.com" <marcel@ziswiler.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "sam@ravnborg.org" <sam@ravnborg.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-10-03 at 10:59 -0500, Rob Herring wrote:
> On Wed, Oct 2, 2019 at 5:27 AM Philippe Schenker
> <philippe.schenker@toradex.com> wrote:
> > On Tue, 2019-10-01 at 17:05 -0500, Rob Herring wrote:
> > > On Fri, Sep 20, 2019 at 09:54:11AM +0200, Marcel Ziswiler wrote:
> > > > From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > > > 
> > > > Add display timings for the following 3 display panels
> > > > manufactured
> > > > by
> > > > Logic Technologies Limited:
> > > > 
> > > > - LT161010-2NHC e.g. as found in the Toradex Capacitive Touch
> > > > Display
> > > >   7" Parallel [1]
> > > > - LT161010-2NHR e.g. as found in the Toradex Resistive Touch
> > > > Display
> > > > 7"
> > > >   Parallel [2]
> > > > - LT170410-2WHC e.g. as found in the Toradex Capacitive Touch
> > > > Display
> > > >   10.1" LVDS [3]
> > > > 
> > > > Those panels may also be distributed by Endrich Bauelemente
> > > > Vertriebs
> > > > GmbH [4].
> > > > 
> > > > [1]
> > > > https://docs.toradex.com/104497-7-inch-parallel-capacitive-touch-display-800x480-datasheet.pdf
> > > > [2]
> > > > https://docs.toradex.com/104498-7-inch-parallel-resistive-touch-display-800x480.pdf
> > > > [3]
> > > > https://docs.toradex.com/105952-10-1-inch-lvds-capacitive-touch-display-1280x800-datasheet.pdf
> > > > [4]
> > > > https://www.endrich.com/isi50_isi30_tft-displays/lt170410-1whc_isi30
> > > > 
> > > > Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > > > 
> > > > ---
> > > > 
> > > >  drivers/gpu/drm/panel/panel-simple.c | 65
> > > > ++++++++++++++++++++++++++++
> > > >  1 file changed, 65 insertions(+)
> > > > 
> > > > diff --git a/drivers/gpu/drm/panel/panel-simple.c
> > > > b/drivers/gpu/drm/panel/panel-simple.c
> > > > index 28fa6ba7b767..42bd0de25167 100644
> > > > --- a/drivers/gpu/drm/panel/panel-simple.c
> > > > +++ b/drivers/gpu/drm/panel/panel-simple.c
> > > > @@ -2034,6 +2034,62 @@ static const struct panel_desc lg_lp129qe
> > > > = {
> > > >     },
> > > >  };
> > > > 
> > > > +static const struct display_timing
> > > > logictechno_lt161010_2nh_timing
> > > > = {
> > > > +   .pixelclock = { 26400000, 33300000, 46800000 },
> > > > +   .hactive = { 800, 800, 800 },
> > > > +   .hfront_porch = { 16, 210, 354 },
> > > > +   .hback_porch = { 46, 46, 46 },
> > > > +   .hsync_len = { 1, 20, 40 },
> > > > +   .vactive = { 480, 480, 480 },
> > > > +   .vfront_porch = { 7, 22, 147 },
> > > > +   .vback_porch = { 23, 23, 23 },
> > > > +   .vsync_len = { 1, 10, 20 },
> > > > +   .flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
> > > > +            DISPLAY_FLAGS_DE_HIGH |
> > > > DISPLAY_FLAGS_PIXDATA_POSEDGE |
> > > > +            DISPLAY_FLAGS_SYNC_POSEDGE,
> > > > +};
> > > > +
> > > > +static const struct panel_desc logictechno_lt161010_2nh = {
> > > > +   .timings = &logictechno_lt161010_2nh_timing,
> > > > +   .num_timings = 1,
> > > > +   .size = {
> > > > +           .width = 154,
> > > > +           .height = 86,
> > > > +   },
> > > > +   .bus_format = MEDIA_BUS_FMT_RGB666_1X18,
> > > > +   .bus_flags = DRM_BUS_FLAG_DE_HIGH |
> > > > +                DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
> > > > +                DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
> > > > +};
> > > > +
> > > > +static const struct display_timing
> > > > logictechno_lt170410_2whc_timing
> > > > = {
> > > > +   .pixelclock = { 68900000, 71100000, 7340000 },
> > > > +   .hactive = { 1280, 1280, 1280 },
> > > > +   .hfront_porch = { 23, 60, 71 },
> > > > +   .hback_porch = { 23, 60, 71 },
> > > > +   .hsync_len = { 15, 40, 47 },
> > > > +   .vactive = { 800, 800, 800 },
> > > > +   .vfront_porch = { 5, 7, 10 },
> > > > +   .vback_porch = { 5, 7, 10 },
> > > > +   .vsync_len = { 6, 9, 12 },
> > > > +   .flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
> > > > +            DISPLAY_FLAGS_DE_HIGH |
> > > > DISPLAY_FLAGS_PIXDATA_POSEDGE |
> > > > +            DISPLAY_FLAGS_SYNC_POSEDGE,
> > > > +};
> > > > +
> > > > +static const struct panel_desc logictechno_lt170410_2whc = {
> > > > +   .timings = &logictechno_lt170410_2whc_timing,
> > > > +   .num_timings = 1,
> > > > +   .size = {
> > > > +           .width = 217,
> > > > +           .height = 136,
> > > > +   },
> > > > +   .bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
> > > > +   .bus_flags = DRM_BUS_FLAG_DE_HIGH |
> > > > +                DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
> > > > +                DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
> > > > +};
> > > > +
> > > >  static const struct drm_display_mode mitsubishi_aa070mc01_mode
> > > > = {
> > > >     .clock = 30400,
> > > >     .hdisplay = 800,
> > > > @@ -3264,6 +3320,15 @@ static const struct of_device_id
> > > > platform_of_match[] = {
> > > >     }, {
> > > >             .compatible = "lg,lp129qe",
> > > >             .data = &lg_lp129qe,
> > > > +   }, {
> > > > +           .compatible = "logictechno,lt161010-2nhc",
> > > > +           .data = &logictechno_lt161010_2nh,
> > > > +   }, {
> > > > +           .compatible = "logictechno,lt161010-2nhr",
> > > > +           .data = &logictechno_lt161010_2nh,
> > > > +   }, {
> > > > +           .compatible = "logictechno,lt170410-2whc",
> > > > +           .data = &logictechno_lt170410_2whc,
> > > 
> > > The vendor prefix wasn't documented, but the compatible string and
> > > rest
> > > already are?
> > 
> > Marcel added the vendor prefix in the first patch of the series [1]
> 
> Right, but where's the panel's binding documentation with the above
> compatible strings documented?
> 

That one is indeed missing, we will provide that week. Thanks for
pointing this out!

Philippe
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
