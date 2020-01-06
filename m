Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 685B2130F5E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 10:25:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYwdFzhUtC1gtw0GB2PLqR13UnDzFSo5vMDX17ys044=; b=KOhLxD3yoJKYf6
	nvVRzP5eTB/1+UKLx2ptwLqv/OJ04IBWbpgR0JygNLdrQqRgureZSDt4h5RY1evBZvW3jT2PSonnQ
	H5oTpuWzRbYeX9gtwCw4j3P9mFgBx+6qAIaTZkESSy5kPYQfwFmgqCdqxpQg8lthIZanOjhwfW0WJ
	Hzj/lKhuIi5l/BJyLMipLOrKfBsLAcHuAmQdWFYHwCjdyH8seh7VtDR2S4+4kdpfJWwC2V+GcmTHY
	qkMQ8pXPpBVPHaOYDj38rTVAQPO9h02u0zWCU+b2dGIbihg6RiI6vimyBQgGBoa0RKqqP0ZI5AEOP
	pZ3O06So9i1kZ3Flmztw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOdN-0005BW-Ms; Mon, 06 Jan 2020 09:25:13 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOdB-0004CU-Pg
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 09:25:05 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 2BZd56lg6Xwwa8rZYLVuK5VrQdQF5bOYDHhmpbOKV/XoeMce4UR78EEcktrv4UlQrXK5VterbO
 CqW2b8m1DpuCSzespbVRpzWwOxilI4EXO1wyRLU6xPggEHaGSZIaVXinxgtjPsfP23tZTnyVdN
 cm2Z/x4Q02wocirRRI7KQz0bRaj1Ro3FsfomVskoa4ErEFoAkAFhhOWjIaHhtlW68+MWnVPWWO
 lMfEoTekPm7AadUr0HBa2j3wnIwAghFL75Q/jZ3kQWkyr01nNcYS39b19uumvDtAvzfVX7WHsh
 444=
X-IronPort-AV: E=Sophos;i="5.69,402,1571727600"; d="scan'208";a="62299538"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jan 2020 02:24:57 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 6 Jan 2020 02:24:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 6 Jan 2020 02:24:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XlA7tPQ/IOe7ED1I5e0GA9p7SMbz1dwl7ReYpLxhKvmWVYStTQNOYG5TpekOZtsHcVspaj858Pub1s84Ob0pEgpdm5c2q1i0ESVd1l2Vc+FhR2UXwIYvSpIyU6hc3kSdN8fAj3ym9ATYXYgXy3jKFjGKDbfLsmCSZFRjbC2tvcWgDCWTwEW1J4juKAg0ovhoZhcL7qKpzVeCx4I3LIjbhXJ/MKvt6uMgoud0AaSsS7jloD+PrgC5ggwrrMskjHMZLYktR9WSxETOLuQLfDuTvnkzYodrjprFhoBt4IvyWhwW3Rf63g0tTWYQgjcvkcs0DrKrAV7q3grBp5lXD5dyJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/rh9aNqo5n5LkVfP2WVL1yJvZPQJn0nB6mkWJ0BhoAU=;
 b=IJHsLxddh3IPOyQlT9M+EMz8QODsK3OXiD88CYfirEwdKUBdn4Py/8YQlUqEyszJUmz72mDIKoiWB+q3KjzFjhCEmljd/5/vw+jBQkM34yzrh1WquX+YvbmShfALQJVk388P6P4q5Kn3PWWQOaiiH3+9a4zM7DzZ8+KB1IoCaCDb/Jcx001+NhhFeCT1d3WYo/Mfc1Ku9e8a08KnbFv1ctw7lYfTsx3Uj2dJTKoo/0zdEhQfyQYvJvK1fhCWE+cx5yXGiUZ9Src0ycXfdbWauq3Ttya5thz+JUavnNSolnzMh3OHQ8Am8UMrmwApyUDmhzwAI+MZ6i7718DfAYVpCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/rh9aNqo5n5LkVfP2WVL1yJvZPQJn0nB6mkWJ0BhoAU=;
 b=HitOQ6uZpPOwU3nasNvJsiCqHIMfxX/nAThfp8XZqv0phwqFenZ0cOgk9fM81u0zpjPr9vGbzvsQV9gFrUGucA8Y/2YaAPswrwJnZXb6xj3z7cOFSsIv7wyz8svP2RiRguzVjE6zzvMfa2JaJcq9k0Wsgx0AmDL1MoGw5NK/ROI=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB4267.namprd11.prod.outlook.com (52.132.248.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.13; Mon, 6 Jan 2020 09:24:52 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb%7]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 09:24:52 +0000
From: <Claudiu.Beznea@microchip.com>
To: <sam@ravnborg.org>
Subject: Re: [PATCH v3 5/6] drm: atmel-hlcdc: prefer a lower pixel-clock than
 requested
Thread-Topic: [PATCH v3 5/6] drm: atmel-hlcdc: prefer a lower pixel-clock than
 requested
Thread-Index: AQHVxHMmEp4Pw+8WakiQvTSsv/2xSA==
Date: Mon, 6 Jan 2020 09:24:52 +0000
Message-ID: <64902ae8-ef5a-a94a-8edf-05159699b72c@microchip.com>
References: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
 <1576672109-22707-6-git-send-email-claudiu.beznea@microchip.com>
 <20200102090848.GC29446@ravnborg.org>
In-Reply-To: <20200102090848.GC29446@ravnborg.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: da646c3e-f9b8-422e-b5aa-08d7928a48f5
x-ms-traffictypediagnostic: DM6PR11MB4267:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB42673924A3DA4C916580902A873C0@DM6PR11MB4267.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(396003)(39860400002)(136003)(199004)(189003)(6486002)(478600001)(31686004)(86362001)(6512007)(71200400001)(5660300002)(53546011)(6506007)(26005)(6916009)(2616005)(4326008)(76116006)(91956017)(36756003)(8936002)(316002)(66946007)(31696002)(66556008)(186003)(64756008)(2906002)(66476007)(81166006)(81156014)(8676002)(54906003)(66446008)(341764005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4267;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AtxUO7lJyPE/HmtazA5qu11dheXa94oParEFVZxe432vWXENVot+IvGzvjdDAMA0n5P0xE0PeYFeVQ9bDbjKI01bQ0jmRij3rJAPfNr5t8O9+Ti8pygHtKcg6a8wYPT27xT9X06UvxczIJFQzyEjY4cVU+fzqDtEbqUWlC4UT6rtUF8n7hMC5aZiGWoulzeye4bdlBAFVCu4saLcqQFr55FJRi9ypvnPruPDWTyi62gMAZVQa6LzovqcvEA3MP7wkGxfeem249vyamwS7NlA8Vz1YEqy0PCWjEpSqHajd+Xeu0qe7Xgdq4aTWmOpPC6pHg7uxxN6GW5rCq6DmHkEhNfbOdtqZCoC20pMR3OhJKPpVtef+vcsN1aNn0AxNXr2E0QNi/uM9DreebI78N7s1mSvcy7J/Q0r4ZaVv/ukVittLZA07vUukCSmRBH/1dtR6YiITKS4M8gEjooepYNmN0njWlJZnOvI5+AqalGao1icPF5nQHGavx96uf1jCF1O
Content-ID: <15361D37B1196A4E85FED38C025D31C9@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: da646c3e-f9b8-422e-b5aa-08d7928a48f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 09:24:52.3069 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bI+26/ilveq9TheOYFDbsu9FurIgSfcd943Sgj59RIotSRaHReiIEo405F9JuJIJAU2F9c3OGPH9X9nAJOCbeHAYgkqcTrMb/DKuwUx0BmA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4267
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_012501_879912_ED3EE31B 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexandre.belloni@bootlin.com, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 boris.brezillon@bootlin.com, lee.jones@linaro.org, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 02.01.2020 11:08, Sam Ravnborg wrote:
> On Wed, Dec 18, 2019 at 02:28:28PM +0200, Claudiu Beznea wrote:
>> From: Peter Rosin <peda@axentia.se>
>>
>> The intention was to only select a higher pixel-clock rate than the
>> requested, if a slight overclocking would result in a rate significantly
>> closer to the requested rate than if the conservative lower pixel-clock
>> rate is selected. The fixed patch has the logic the other way around and
>> actually prefers the higher frequency. Fix that.
>>
>> Fixes: f6f7ad323461 ("drm/atmel-hlcdc: allow selecting a higher pixel-clock than requested")
> The id is wrong here - the right one is: 9946a3a9dbedaaacef8b7e94f6ac144f1daaf1de

Right! Sorry for this one! Thank you for fixing it up.

Claudiu Beznea

> The wrong id above was used before - so I think it is a copy'n'paste
> thing.
> 
> Hint: try "dim fixes 9946a3a9dbedaaacef8b7e94f6ac144f1daaf1de"
> 
> If I get a quick response from Lee I can fix it up while applying.
> 
>         Sam
> 
>> Reported-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>> Tested-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>> Signed-off-by: Peter Rosin <peda@axentia.se>
>> ---
>>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
>> index 721fa88bf71d..10985134ce0b 100644
>> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
>> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
>> @@ -121,8 +121,8 @@ static void atmel_hlcdc_crtc_mode_set_nofb(struct drm_crtc *c)
>>               int div_low = prate / mode_rate;
>>
>>               if (div_low >= 2 &&
>> -                 ((prate / div_low - mode_rate) <
>> -                  10 * (mode_rate - prate / div)))
>> +                 (10 * (prate / div_low - mode_rate) <
>> +                  (mode_rate - prate / div)))
>>                       /*
>>                        * At least 10 times better when using a higher
>>                        * frequency than requested, instead of a lower.
>> --
>> 2.7.4
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
