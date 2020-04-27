Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E44FF1BA63D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 16:20:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2sJMbkuzBX4KNEPrDFvhBvN/QZCgnJhDJi8j57r8WaI=; b=RTvO5mYD5nYZWV
	V8omALB69CU/u9O11oho4qe27xoslNp/EQ0cGnHDXtcPHfufSVg3KPX+Z5ncFOe81azq9fT82yhmz
	MbQhd77i9EytbZXMpDO4gx1GZ7rR90prQRnXWdwC+q6zaduNtPTqWgTUBodJXUUTyyQJgTgOysbnu
	NyBVt+4mmvrA+Q7aXarZxepmr5kBeFtR2inkb1b7XVLDATw8aWJ/hUoanHSr+ieEkC1oVMTiOwhdq
	GWjK1rqboJDnK8YruJ/34HK70j1WMZ2qXSIHBCz86r1hA2iywC4T9UiX2CejgvjbaHl52iHQmUjsT
	UFsaf2yrYOrFK5dQxsUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT4ca-0001xl-Hy; Mon, 27 Apr 2020 14:20:32 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT4cR-0001x0-8n
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 14:20:24 +0000
IronPort-SDR: WcsK8aCxc9/uFw5/xLOJ+ichesr8K4ErYblb7kFRbQnn52vz+fa9YxLvuAzPVe+BcmrmWyPfPr
 747DKb+TdpCg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 07:20:22 -0700
IronPort-SDR: 8u1wBsafq06P0169Fc7siiQz4oMWyxRfwgSnFrh8Ubu0Mjj4U/MtW7K9ziKMJV+dXWKqcqRRXJ
 6ZY8xyXv+thA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,324,1583222400"; d="scan'208";a="431791909"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga005.jf.intel.com with ESMTP; 27 Apr 2020 07:20:21 -0700
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 27 Apr 2020 07:20:20 -0700
Received: from shsmsx102.ccr.corp.intel.com (10.239.4.154) by
 fmsmsx116.amr.corp.intel.com (10.18.116.20) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 27 Apr 2020 07:20:20 -0700
Received: from shsmsx108.ccr.corp.intel.com ([169.254.8.7]) by
 shsmsx102.ccr.corp.intel.com ([169.254.2.138]) with mapi id 14.03.0439.000;
 Mon, 27 Apr 2020 22:20:17 +0800
From: "Zhang, Rui" <rui.zhang@intel.com>
To: 'Andrzej Pietrasiewicz' <andrzej.p@collabora.com>,
 "'linux-pm@vger.kernel.org'" <linux-pm@vger.kernel.org>
Subject: RE: [PATCH v3 2/2] thermal: core: Stop polling DISABLED thermal
 devices
Thread-Topic: [PATCH v3 2/2] thermal: core: Stop polling DISABLED thermal
 devices
Thread-Index: AQHWGZBG4VqXwdwSNk6/8EtFFGs1V6iH9bQAgAUTBvA=
Date: Mon, 27 Apr 2020 14:20:17 +0000
Message-ID: <744357E9AAD1214791ACBA4B0B90926377CF9A10@SHSMSX108.ccr.corp.intel.com>
References: <a3998ad2-19bc-0893-a10d-2bb5adf7d99f@samsung.com>
 <20200423165705.13585-1-andrzej.p@collabora.com>
 <20200423165705.13585-3-andrzej.p@collabora.com>
 <744357E9AAD1214791ACBA4B0B90926377CF60E3@SHSMSX108.ccr.corp.intel.com>
In-Reply-To: <744357E9AAD1214791ACBA4B0B90926377CF60E3@SHSMSX108.ccr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_072023_322276_EBF9821E 
X-CRM114-Status: GOOD (  24.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: 'Heiko Stuebner' <heiko@sntech.de>, 'Peter Kaestle' <peter@piie.net>,
 "'platform-driver-x86@vger.kernel.org'"
 <platform-driver-x86@vger.kernel.org>,
 "'kernel@collabora.com'" <kernel@collabora.com>,
 'Fabio Estevam' <festevam@gmail.com>,
 'Amit Kucheria' <amit.kucheria@verdurent.com>,
 'Chunyan Zhang' <zhang.lyra@gmail.com>,
 'Daniel Lezcano' <daniel.lezcano@linaro.org>,
 "'linux-acpi@vger.kernel.org'" <linux-acpi@vger.kernel.org>,
 'NXP Linux Team' <linux-imx@nxp.com>, 'Orson Zhai' <orsonzhai@gmail.com>,
 'Len Brown' <lenb@kernel.org>,
 'Barlomiej Zolnierkiewicz' <b.zolnierkie@samsung.com>,
 'Sascha Hauer' <s.hauer@pengutronix.de>, 'Ido Schimmel' <idosch@mellanox.com>,
 'Jiri Pirko' <jiri@mellanox.com>, 'Darren Hart' <dvhart@infradead.org>,
 "'linux-arm-kernel@lists.infradead.org'"
 <linux-arm-kernel@lists.infradead.org>,
 'Support Opensource' <support.opensource@diasemi.com>,
 "'netdev@vger.kernel.org'" <netdev@vger.kernel.org>,
 "'Rafael J . Wysocki'" <rjw@rjwysocki.net>,
 'Pengutronix Kernel Team' <kernel@pengutronix.de>,
 'Baolin Wang' <baolin.wang7@gmail.com>, 'Shawn Guo' <shawnguo@kernel.org>,
 "'David S . Miller'" <davem@davemloft.net>,
 'Andy Shevchenko' <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Zhang, Rui
> Sent: Friday, April 24, 2020 5:03 PM
> To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>; linux-
> pm@vger.kernel.org
> Cc: Rafael J . Wysocki <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>;
> Jiri Pirko <jiri@mellanox.com>; Ido Schimmel <idosch@mellanox.com>; David
> S . Miller <davem@davemloft.net>; Peter Kaestle <peter@piie.net>; Darren
> Hart <dvhart@infradead.org>; Andy Shevchenko <andy@infradead.org>;
> Support Opensource <support.opensource@diasemi.com>; Daniel Lezcano
> <daniel.lezcano@linaro.org>; Amit Kucheria
> <amit.kucheria@verdurent.com>; Shawn Guo <shawnguo@kernel.org>;
> Sascha Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>; NXP
> Linux Team <linux-imx@nxp.com>; Heiko Stuebner <heiko@sntech.de>;
> Orson Zhai <orsonzhai@gmail.com>; Baolin Wang
> <baolin.wang7@gmail.com>; Chunyan Zhang <zhang.lyra@gmail.com>; linux-
> acpi@vger.kernel.org; netdev@vger.kernel.org; platform-driver-
> x86@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> kernel@collabora.com; Barlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> Subject: RE: [PATCH v3 2/2] thermal: core: Stop polling DISABLED thermal
> devices
> 
> Hi, Andrzej,
> 
> Thanks for the patches. My Linux laptop was broken and won't get fixed till
> next week, so I may lost some of the discussions previously.
> 
> > -----Original Message-----
> > From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > Sent: Friday, April 24, 2020 12:57 AM
> > To: linux-pm@vger.kernel.org
> > Cc: Zhang, Rui <rui.zhang@intel.com>; Rafael J . Wysocki
> > <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>; Jiri Pirko
> > <jiri@mellanox.com>; Ido Schimmel <idosch@mellanox.com>; David S .
> > Miller <davem@davemloft.net>; Peter Kaestle <peter@piie.net>; Darren
> > Hart <dvhart@infradead.org>; Andy Shevchenko <andy@infradead.org>;
> > Support Opensource <support.opensource@diasemi.com>; Daniel Lezcano
> > <daniel.lezcano@linaro.org>; Amit Kucheria
> > <amit.kucheria@verdurent.com>; Shawn Guo <shawnguo@kernel.org>;
> Sascha
> > Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> > <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>; NXP
> Linux
> > Team <linux-imx@nxp.com>; Heiko Stuebner <heiko@sntech.de>; Orson
> Zhai
> > <orsonzhai@gmail.com>; Baolin Wang <baolin.wang7@gmail.com>;
> Chunyan
> > Zhang <zhang.lyra@gmail.com>; linux- acpi@vger.kernel.org;
> > netdev@vger.kernel.org; platform-driver- x86@vger.kernel.org;
> > linux-arm-kernel@lists.infradead.org;
> > kernel@collabora.com; Andrzej Pietrasiewicz <andrzej.p@collabora.com>;
> > Barlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> > Subject: [PATCH v3 2/2] thermal: core: Stop polling DISABLED thermal
> > devices
> > Importance: High
> >
> > Polling DISABLED devices is not desired, as all such "disabled"
> > devices are meant to be handled by userspace. This patch introduces
> > and uses
> > should_stop_polling() to decide whether the device should be polled or
> not.
> >
> Thanks for the fix, and IMO, this reveal some more problems.
> Say, we need to define "DISABLED" thermal zone.
> Can we read the temperature? Can we trust the trip point value?
> 
> IMO, a disabled thermal zone does not mean it is handled by userspace,
> because that is what the userspace governor designed for.
> Instead, if a thermal zone is disabled, in thermal_zone_device_update(), we
> should basically skip all the other operations as well.
> 
I overlooked the last line of the patch. So thermal_zone_device_update() returns
immediately if the thermal zone is disabled, right?

But how can we stop polling in this case?
There is no chance to call into monitor_thermal_zone() in thermal_zone_device_update(),
or do I miss something?

> I'll try your patches and probably make an incremental patch.

I have finished a small patch set to improve this based on my understanding, and will post it
tomorrow after testing.

Thanks,
rui
> 
> Thanks,
> rui
> 
> > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > ---
> >  drivers/thermal/thermal_core.c | 16 ++++++++++++++--
> >  1 file changed, 14 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/thermal/thermal_core.c
> > b/drivers/thermal/thermal_core.c index a2a5034f76e7..03c4d8d23284
> > 100644
> > --- a/drivers/thermal/thermal_core.c
> > +++ b/drivers/thermal/thermal_core.c
> > @@ -305,13 +305,22 @@ static void
> > thermal_zone_device_set_polling(struct
> > thermal_zone_device *tz,
> >  		cancel_delayed_work(&tz->poll_queue);
> >  }
> >
> > +static inline bool should_stop_polling(struct thermal_zone_device
> > +*tz) {
> > +	return thermal_zone_device_get_mode(tz) ==
> > THERMAL_DEVICE_DISABLED; }
> > +
> >  static void monitor_thermal_zone(struct thermal_zone_device *tz)  {
> > +	bool stop;
> > +
> > +	stop = should_stop_polling(tz);
> > +
> >  	mutex_lock(&tz->lock);
> >
> > -	if (tz->passive)
> > +	if (!stop && tz->passive)
> >  		thermal_zone_device_set_polling(tz, tz->passive_delay);
> > -	else if (tz->polling_delay)
> > +	else if (!stop && tz->polling_delay)
> >  		thermal_zone_device_set_polling(tz, tz->polling_delay);
> >  	else
> >  		thermal_zone_device_set_polling(tz, 0); @@ -503,6 +512,9
> @@ void
> > thermal_zone_device_update(struct thermal_zone_device *tz,  {
> >  	int count;
> >
> > +	if (should_stop_polling(tz))
> > +		return;
> > +
> >  	if (atomic_read(&in_suspend))
> >  		return;
> >
> > --
> > 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
