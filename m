Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D23D977B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 13:07:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vuyUULg2s7NDYclpYyZNy9MLwszw2gAWaquQ7WYsS7E=; b=Cj9yx+TRo0xtUH
	ouKECOzmFhQBw4zePQ9qXQU8zZ41L1pLen1mt1MjA+wJ7mrMqosHviMCyZelDVvxaQCdgXK/HPCZ1
	NW3i5X4piSL8o5/YhtNk52h+GROY2hq3Mz7TqE1PBpFus/xGGPqjT8iNTFCHE3ei39fWOeuLIHN+E
	xQvdfxfjzUyPbApw7o4BFqSC1RYmRwVwu4LHo03xpvqmrc5U+nPiu4soMaTZCxpzDpqOH7pLLXFpl
	U1rJJ4vGmMrWWrtYW5hQRusYZBY4/t0tkNDO3JqgACS1zC6ftOWmyTQksqvF/0rBh2Fuu7IsukBX6
	3ckFPUsW4s+EW5bKe8cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0OS0-0006iD-Ic; Wed, 21 Aug 2019 11:06:48 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0OR4-0006hc-Hg; Wed, 21 Aug 2019 11:05:51 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 04:05:48 -0700
X-IronPort-AV: E=Sophos;i="5.64,412,1559545200"; d="scan'208";a="378910592"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 04:05:45 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 1884A208DD; Wed, 21 Aug 2019 14:05:43 +0300 (EEST)
Date: Wed, 21 Aug 2019 14:05:43 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [V3, 2/2] media: i2c: Add Omnivision OV02A10 camera sensor driver
Message-ID: <20190821110542.GD31967@paasikivi.fi.intel.com>
References: <20190819034331.13098-1-dongchun.zhu@mediatek.com>
 <20190819034331.13098-3-dongchun.zhu@mediatek.com>
 <20190821103038.GA148543@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821103038.GA148543@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_040550_598703_073045B8 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

On Wed, Aug 21, 2019 at 07:30:38PM +0900, Tomasz Figa wrote:
...
> > +
> > +/*
> > + * xvclk 24Mhz
> 
> This seems to assume 24MHz, but the driver allows a range in probe. Is that
> correct?

I think it'd be better to check for an exact frequency: this is board
specific and its exact value is known.

...

> > +static int __ov02a10_power_on(struct ov02a10 *ov02a10)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > +	struct device *dev = &client->dev;
> > +	int ret;
> > +
> > +	ret = clk_prepare_enable(ov02a10->xvclk);
> > +	if (ret < 0) {
> > +		dev_err(dev, "Failed to enable xvclk\n");
> > +		return ret;
> > +	}
> 
> Is it really correct to enable the clock before the regulators?
> 
> According to the datasheet, it should be:
>  - PD pin HIGH,
>  - nRST pin LOW,
>  - DVDDIO and AVDD28 power up and stabilize,
>  - clock enabled,
>  - min 5 ms delay,
>  - PD pin LOW,
>  - min 4 ms delay,
>  - nRST pin HIGH,
>  - min 5 ms delay,
>  - I2C interface ready.
> 
> > +
> > +	/* Note: set 0 is high, set 1 is low */
> 
> Why is that? If there is some inverter on the way that should be handled
> outside of this driver. (GPIO DT bindings have flags for this purpose.
> 
> If the pins are nRESET and nPOWERDOWN in the hardware datasheet, we should
> call them like this in the driver too (+/- the lowercase and underscore
> convention).
> 
> According to the datasheet, the reset pin is called RST and inverted, so we should
> call it n_rst, but the powerdown signal, called PD, is not inverted, so pd
> would be the right name.

For what it's worth sensors generally have xshutdown (or reset) pin that is
active high. Looking at the code, it is not the case here. It's a bit odd
since the usual arrangement saves power when the camera is not in use; it's
not a lot but still. Oh well.

...

> > +static struct i2c_driver ov02a10_i2c_driver = {
> > +	.driver = {
> > +		.name = "ov02a10",
> > +		.pm = &ov02a10_pm_ops,
> > +		.of_match_table = ov02a10_of_match,
> 
> Please use of_match_ptr() wrapper.

Not really needed; the driver does expect regulators, GPIOs etc., but by
leaving out of_match_ptr(), the driver will also probe on ACPI based
systems.

-- 
Regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
