Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8672197DAC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 15:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8drH41NkvFGtL6vtIU/+GAjbU4uPWdQQkgkb2LerhhU=; b=styfvNbu+7/K7j
	sT1WWF/6H1kW5Cu7rau2DR2RVliu6JQdqyJeYA5g1ZbLoC4FWNXeGHXwONUDYzMTuzm0yCUQHTeIX
	DdJ2Ms1kcXLFm1fG8KmAhE7jFXhvHXIWu/Ae9vIsaMK1nudGVFCIzyGiXIExsF7ajtv57wp8kwbEE
	9hE4oNvWjwpV/TK+fK1pvf3D6IA4MGbdab6eXbi7aTBJn+7dOdpNc+4hS/bPMmPr6xs9fRudwgADw
	PeOu85SkiDkY59yt/4iz6EJGuRkwdyoHrnxLsjVk9fmieiXIR4vgk32NuNIq4sKit7+aq7+eYRVkk
	0ck+fblcpXCWaPt9C/SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIuvS-0006wZ-UV; Mon, 30 Mar 2020 13:58:02 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIuvJ-0006vz-Pk; Mon, 30 Mar 2020 13:57:54 +0000
IronPort-SDR: hi8yj3FSE53BE4Uua9s9ELuk/l5Xk3SDF5jAVfT4zCgGVbMex2ipeOlwda6LfEw+B34WXq5WUj
 2qT2ytpSrTvw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 06:57:52 -0700
IronPort-SDR: gpBtDX8eCH7FPm/oTANkhiBgT7C3LcYmTxj4V4fYHVRnHSmLlXU2EfOXWkjBLcFEkqq3cZ3hvj
 sR+HqgJrtWfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="449803069"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga006.fm.intel.com with ESMTP; 30 Mar 2020 06:57:49 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jIuvH-00EDZT-4T; Mon, 30 Mar 2020 16:57:51 +0300
Date: Mon, 30 Mar 2020 16:57:51 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V4, 2/2] media: i2c: Add DW9768 VCM driver
Message-ID: <20200330135751.GQ1922688@smile.fi.intel.com>
References: <20200330123634.363-1-dongchun.zhu@mediatek.com>
 <20200330123634.363-3-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330123634.363-3-dongchun.zhu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_065753_848582_598C536A 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 08:36:34PM +0800, Dongchun Zhu wrote:
> This patch adds a V4L2 sub-device driver for DW9768 voice coil moter,
> providing control to set the desired focus via I2C serial interface.

...

> +static const struct dev_pm_ops dw9768_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> +				pm_runtime_force_resume)
> +	SET_RUNTIME_PM_OPS(dw9768_runtime_suspend, dw9768_runtime_resume, NULL)
> +};
> +
> +static struct i2c_driver dw9768_i2c_driver = {
> +	.driver = {
> +		.name = DW9768_NAME,

> +		.pm = IS_ENABLED(CONFIG_PM) ? &dw9768_pm_ops : NULL,

What is this conditional for?

> +		.of_match_table = dw9768_of_table,
> +	},
> +	.probe_new  = dw9768_probe,
> +	.remove = dw9768_remove,
> +};

> +

Extra blank line.

> +module_i2c_driver(dw9768_i2c_driver);

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
