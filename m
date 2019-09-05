Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F980AA198
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:37:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5vcnmXaUi51B0WoBdjJGOJY4cakk+7P9KoNLi6lXHM=; b=MZLNwex8BdgMsX
	6ZvLSLH6VMkVjbJDwLaIOeeeQ//+NkGEcj9JJLXw7GsM8RFAlqrSRSL40pM2x9fNwEkmnFFIfQ8JD
	khNgFlCuQNbVa97UnVvVJMYgvNi/KpwaNuFiJGg68evxazWavyOSbjRCJ3KOSAO9g43AdSPPS75sA
	eqhEMXm2Urq4vTN+U2UVMAcjIuiTyL7dGvEMTxmwt4fDapNqSv8g0B3sI9vxAe/H1je8IQGUPtVF9
	dVZ8stHpV2KbyO0n+sJpfwllWpsmWZUaeGIMl96O37LIJOcfKV9fFTBz4HKJuljXgOZW+lkMQeay3
	ZNnRJ9nOXe1QTmKAMkcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5q4U-0002DF-Op; Thu, 05 Sep 2019 11:37:02 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5q4F-0002Ci-9X; Thu, 05 Sep 2019 11:36:48 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 04:36:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="207841709"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga004.fm.intel.com with ESMTP; 05 Sep 2019 04:36:40 -0700
Received: from andy by smile with local (Exim 4.92.1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1i5q46-0007Dt-Tq; Thu, 05 Sep 2019 14:36:38 +0300
Date: Thu, 5 Sep 2019 14:36:38 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Javier Martinez Canillas <javierm@redhat.com>
Subject: Re: [V2, 2/2] media: i2c: Add DW9768 VCM driver
Message-ID: <20190905113638.GE2680@smile.fi.intel.com>
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-3-dongchun.zhu@mediatek.com>
 <20190905082134.GY5475@paasikivi.fi.intel.com>
 <20190905101908.GB2680@smile.fi.intel.com>
 <20190905104001.GZ5475@paasikivi.fi.intel.com>
 <ad357e27-3e51-6922-1924-5d2c2daf1934@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad357e27-3e51-6922-1924-5d2c2daf1934@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_043647_345891_C231EEE2 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, sam.hung@mediatek.com, shengnan.wang@mediatek.com,
 tfiga@chromium.org, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 12:57:34PM +0200, Javier Martinez Canillas wrote:
> On 9/5/19 12:40 PM, Sakari Ailus wrote:
> > On Thu, Sep 05, 2019 at 01:19:08PM +0300, Andy Shevchenko wrote:
> >> On Thu, Sep 05, 2019 at 11:21:34AM +0300, Sakari Ailus wrote:
> >>> On Thu, Sep 05, 2019 at 03:21:42PM +0800, dongchun.zhu@mediatek.com w=
rote:
> >>>> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> >>
> >>>> +static const struct i2c_device_id dw9768_id_table[] =3D {
> >>>> +	{ DW9768_NAME, 0 },
> >>>> +	{ },
> >>>
> >>> Could you drop the I=B2C ID table?
> >>
> >> But why?
> >> It will allow you to instanciate the device from user space.
> =

> Yes, the I2C device table is still needed if the device can be instantiat=
ed
> from user-space using the sysfs interface, or otherwise the module won't =
be
> automatically loaded.
> =

> Kieran posted a "[PATCH RFC] modpost: Support I2C Aliases from OF tables"
> patch that adds a MODULE_DEVICE_TABLE(i2c_of, ..) macro so modpost could
> add legacy I2C modalias using the information in the OF device ID tables:
> =

> https://patchwork.kernel.org/patch/11038861/
> =

> If that lands, then we could get rid of the I2C device tables altogether
> for non-legacy I2C drivers.
> =

> > =

> > The device is supposed to be present in DT (or ACPI tables) already.
> >
> =

> Agreed. Also by looking at the driver's probe function I see that the
> device lookups a 'vin' and 'vdd' regulators supplies and it fails if
> aren't defined, so it can't be instantiated from user-space anyways.

Thank you for clarifications!

So, it can use ->probe_new() in that case.

> =

> BTW, these two regulators supplies should be listed as 'vin-supply'
> and 'vdd-supply' as required properties in the DT binding document.

-- =

With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
