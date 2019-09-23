Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D3DBB0FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRV4KeB3HqSSyb0FjWXJgTTp78vdqQavmuiDWloNAeg=; b=ewiGVrZk0ip24W
	2bU7f0aBLrRmUh3YmR7xvBYMxi2/rMJuQFR6iifsx/4lfSiskri82ue6XSTh0yjzsC0dtxij1SaWA
	ZocRac+RUhjTiHwMFDv4CL4kA3X/d7CJIaYZPfdxW0H6P4S/Z/RWBxo0dLlCpQ46aotueA6g6LXFy
	4eDPol/iuDmEPFDaUhg5M2cUY7Mj1ifP8T5l/Hec1ieZYO1OsDSqdxF6OO1ulWHBZ7VKeU228tWQt
	JwBoLZNTRNIW9m7Y/9d41sApeeBlqdwdYsaE5gDGNxtfDfICLHFd6Id5ll4Sdk6VOXYw4M3N3QOLc
	xGOElwgltQxEDppRzw7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKKp-0005xp-Sq; Mon, 23 Sep 2019 09:08:44 +0000
Received: from mail-eopbgr40126.outbound.protection.outlook.com
 ([40.107.4.126] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKKN-0005kz-JX
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 09:08:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B8BCZtGcLuJQbCsAocpVC47suFg7xFCE55qna49lP9OkTu/Ms68IokXdjo65N+j+lpu/DgAQYKFZeSCHdvsX3TwRGJ8EIq9o6uy3kIfLysFSm4z89knf2nXgWR5bdpw6gg0DDwyALLS1zE/ysS+twqgGZYMWGj6YUKuR7uaBN9ivOc0NlBXECnHpY7Hp6QFs9XXWF4nC7A+K2GN29dpJ2wNyDKnwxtc/yyIiR3vA9OMOy54c4tQ28hx0z+QPvLhVC/5i9PytfL/ZzCGJy2hTCgb5kdCWjKmYBKwpw8yga5mgVpGIl19J6Awfb21xI0sCCbVq0xwfFDKslqstTDlZvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z525nnqfk77TAwtmkkDvXy77S2o0kls+e+xPihCBnPc=;
 b=YMTGELyNGrfsghQgm4iVEUbJTddU+5JWTvc87Hxk4YZFocmdeOjXju+fotyrO6YNyIq0AzQN179SkphoZLN5eclqF48OHt7OApSIKf0zAZugMUV+S1kQBcweGcV68VION+L4pLO4/AJ5CFMgqlJbnxCk9uud0mHmJEt6uOiIPERKRLh3audh1X/bUcJKWAR4vxjqz//GGd7mLL/ENZeV3SMH5m9fBO4BSxqbR0tKgPJu9LxPsXrmwAmZR5yLVj0JyoXMFBHm4Ac6e49JiIqZSFoZ2MWv70bzT0ZPjHhKqJpjvH5ZwiDQH3HbiwFd5gTzhA6EtkybdGXdYIx18uVwYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z525nnqfk77TAwtmkkDvXy77S2o0kls+e+xPihCBnPc=;
 b=vlwJQRxB0drG4cj3aNwp7q+DzFTrw4gzeEw6HOgU2pxpa16UIg4T4kAZX22YmRDFmrR8IPeaV+y+84l99NqbxzS+xEYZs9STb0gYrR2DAesWLSc6LBhhTfIonnxteeWbxWogE2WbFYvwLHhlBQsUrkEVZQNzr6DpI1aPLtrRHyw=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2943.eurprd05.prod.outlook.com (10.175.24.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Mon, 23 Sep 2019 09:08:10 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::1179:c881:a516:644d]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::1179:c881:a516:644d%3]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 09:08:10 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "marcel@ziswiler.com" <marcel@ziswiler.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH v1 2/2] drm/panel: simple: add display timings for logic
 technologies displays
Thread-Topic: [PATCH v1 2/2] drm/panel: simple: add display timings for logic
 technologies displays
Thread-Index: AQHVb4i+AFMG6Tf6HkW/qXEuG4gbDqc4/cUA
Date: Mon, 23 Sep 2019 09:08:10 +0000
Message-ID: <5a10bebc1e4c9e23221be9ebe6cdbbdaa2e21b13.camel@toradex.com>
References: <20190920075411.15735-1-marcel@ziswiler.com>
 <20190920075411.15735-2-marcel@ziswiler.com>
In-Reply-To: <20190920075411.15735-2-marcel@ziswiler.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2100ad2c-db03-462b-f4e7-08d740058ea7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2943; 
x-ms-traffictypediagnostic: VI1PR0502MB2943:
x-ms-exchange-purlcount: 4
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB2943A9CADFA948166C403394F4850@VI1PR0502MB2943.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(396003)(39840400004)(346002)(136003)(189003)(199004)(66476007)(110136005)(8676002)(2501003)(6306002)(86362001)(14454004)(36756003)(6486002)(76176011)(486006)(66446008)(91956017)(44832011)(7416002)(4326008)(81156014)(3846002)(26005)(8936002)(6436002)(966005)(99286004)(102836004)(229853002)(256004)(6246003)(5660300002)(6506007)(186003)(54906003)(71190400001)(6116002)(81166006)(66066001)(71200400001)(25786009)(2906002)(305945005)(7736002)(118296001)(316002)(476003)(66556008)(64756008)(11346002)(6512007)(2616005)(478600001)(66946007)(76116006)(446003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2943;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3YeIODIrowbGnr4LbPFxnPBGSGFDYohVMV0McxMdycjrpOPA64tw3JmaZvW5hUyZekrCFFQvevytSHKULGCasJkqdI80pgyL/GbBEjYs62fS0DR2KEui7RO25Hyt/sMdXfTgpzG/myaIhYTyXS3kO9hgxD8EwcetK2TCZZSBNkI/OXydtuY0Acr16e7IA/8zmFw5wpPOeJm7AOQ6urQ+jbjmdgWf4thUw3umzMD8v6RiSXb5jGmFIqnnWDMSzZITMUN8YuXQEj1inr/QI+dudYQFEdFqVYKizBMneyUM6ZS3LM8rvulxL722fB/DkBH1AqollgjFoqUTUcfODY4uxnUE+eAwcNgiuZaoOGmhOErxWvmO+dYUeb1UqWO2EETj0UofoLA9lU98fqYTDaYG4Wjz8tU+fjLXu6+IawvsfPs=
Content-ID: <7F0E200B057DD549B3AE60E846DEC987@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2100ad2c-db03-462b-f4e7-08d740058ea7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 09:08:10.6651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rU+95zq2yHv58kRGqukUEv1B9HI3OHaSEsV8N5nmqtaZU/1w71tbgGvx6n7tF/oV61Srk2dHfZ2uDrH7gYrbxApH1cxHS4uqk0nSmNXg5bQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2943
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_020815_645477_345EAB74 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.126 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "j.bauer@endrich.com" <j.bauer@endrich.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "info@logictechno.com" <info@logictechno.com>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "sam@ravnborg.org" <sam@ravnborg.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-09-20 at 09:54 +0200, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Add display timings for the following 3 display panels manufactured by
> Logic Technologies Limited:
> 
> - LT161010-2NHC e.g. as found in the Toradex Capacitive Touch Display
>   7" Parallel [1]
> - LT161010-2NHR e.g. as found in the Toradex Resistive Touch Display
> 7"
>   Parallel [2]
> - LT170410-2WHC e.g. as found in the Toradex Capacitive Touch Display
>   10.1" LVDS [3]
> 
> Those panels may also be distributed by Endrich Bauelemente Vertriebs
> GmbH [4].
> 
> [1] 
> https://docs.toradex.com/104497-7-inch-parallel-capacitive-touch-display-800x480-datasheet.pdf
> [2] 
> https://docs.toradex.com/104498-7-inch-parallel-resistive-touch-display-800x480.pdf
> [3] 
> https://docs.toradex.com/105952-10-1-inch-lvds-capacitive-touch-display-1280x800-datasheet.pdf
> [4] 
> https://www.endrich.com/isi50_isi30_tft-displays/lt170410-1whc_isi30
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Reviewed-by: Philippe Schenker <philippe.schenker@toradex.com>

> 
> ---
> 
>  drivers/gpu/drm/panel/panel-simple.c | 65
> ++++++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c
> b/drivers/gpu/drm/panel/panel-simple.c
> index 28fa6ba7b767..42bd0de25167 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2034,6 +2034,62 @@ static const struct panel_desc lg_lp129qe = {
>  	},
>  };
>  
> +static const struct display_timing logictechno_lt161010_2nh_timing =
> {
> +	.pixelclock = { 26400000, 33300000, 46800000 },
> +	.hactive = { 800, 800, 800 },
> +	.hfront_porch = { 16, 210, 354 },
> +	.hback_porch = { 46, 46, 46 },
> +	.hsync_len = { 1, 20, 40 },
> +	.vactive = { 480, 480, 480 },
> +	.vfront_porch = { 7, 22, 147 },
> +	.vback_porch = { 23, 23, 23 },
> +	.vsync_len = { 1, 10, 20 },
> +	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
> +		 DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
> +		 DISPLAY_FLAGS_SYNC_POSEDGE,
> +};
> +
> +static const struct panel_desc logictechno_lt161010_2nh = {
> +	.timings = &logictechno_lt161010_2nh_timing,
> +	.num_timings = 1,
> +	.size = {
> +		.width = 154,
> +		.height = 86,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
> +		     DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
> +		     DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
> +};
> +
> +static const struct display_timing logictechno_lt170410_2whc_timing =
> {
> +	.pixelclock = { 68900000, 71100000, 7340000 },
> +	.hactive = { 1280, 1280, 1280 },
> +	.hfront_porch = { 23, 60, 71 },
> +	.hback_porch = { 23, 60, 71 },
> +	.hsync_len = { 15, 40, 47 },
> +	.vactive = { 800, 800, 800 },
> +	.vfront_porch = { 5, 7, 10 },
> +	.vback_porch = { 5, 7, 10 },
> +	.vsync_len = { 6, 9, 12 },
> +	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
> +		 DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
> +		 DISPLAY_FLAGS_SYNC_POSEDGE,
> +};
> +
> +static const struct panel_desc logictechno_lt170410_2whc = {
> +	.timings = &logictechno_lt170410_2whc_timing,
> +	.num_timings = 1,
> +	.size = {
> +		.width = 217,
> +		.height = 136,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
> +		     DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
> +		     DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
> +};
> +
>  static const struct drm_display_mode mitsubishi_aa070mc01_mode = {
>  	.clock = 30400,
>  	.hdisplay = 800,
> @@ -3264,6 +3320,15 @@ static const struct of_device_id
> platform_of_match[] = {
>  	}, {
>  		.compatible = "lg,lp129qe",
>  		.data = &lg_lp129qe,
> +	}, {
> +		.compatible = "logictechno,lt161010-2nhc",
> +		.data = &logictechno_lt161010_2nh,
> +	}, {
> +		.compatible = "logictechno,lt161010-2nhr",
> +		.data = &logictechno_lt161010_2nh,
> +	}, {
> +		.compatible = "logictechno,lt170410-2whc",
> +		.data = &logictechno_lt170410_2whc,
>  	}, {
>  		.compatible = "mitsubishi,aa070mc01-ca1",
>  		.data = &mitsubishi_aa070mc01,
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
