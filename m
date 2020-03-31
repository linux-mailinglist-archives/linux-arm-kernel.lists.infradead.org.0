Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F568199340
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 12:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8/UzWeyPqAvCJZ5667wfGyvv3EZwHRLGk9IkNXFs+A=; b=oYcXH2Mgdi0N1Y
	Z5k9UTU3O44jayDUQquK/rusZ54+KFbIcZ/SLj822UjmwcPzCf2A2cmBNGgvIKRzEgAYmoRHArJuv
	j+JXUvwSXnwBW2QGAmWK3nzEX6nmHcfMLnn0YEUMjJ1aYMm8vMrB9Eo3ngNhJ+HXejn9Vu0osp2ut
	ly3zsNgeev4fmlIduvWqmhUm5hBRRIYnYH/2FgurngRSQEMJZywsxrRL20D3Mcm3tbBdzecWim28L
	5LpVqiawJGxI8C6N2mAtNgTh6dppHd7EidlR9YnBwBmo2OJGvEqK7Ts2Hn2J9gPsY8e1rgd5iCSAZ
	79oiSTjkeVBoz7rCakYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJDvP-0003tS-FC; Tue, 31 Mar 2020 10:15:15 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJDv7-0003sy-VJ; Tue, 31 Mar 2020 10:14:59 +0000
IronPort-SDR: PDuqrSpYaQHsSUb7M7jHTmu6WD3lFVx1Gf1ZiYYFa41SDwBlBFqAKitb0zuqh4zbFuggH2JIJy
 NlMKKtpg6Cyg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 03:14:57 -0700
IronPort-SDR: xPCffzS9PbMWyCOuBM5F+UBfUSZP3WxETeayPQ8cYvYjCbEKXZqAJcpvXtk/wk5/CqL85my64e
 SlhEiGKl3dZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="241873299"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga008.fm.intel.com with ESMTP; 31 Mar 2020 03:14:54 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jJDv6-00ESFD-3H; Tue, 31 Mar 2020 13:14:56 +0300
Date: Tue, 31 Mar 2020 13:14:56 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V4, 2/2] media: i2c: Add DW9768 VCM driver
Message-ID: <20200331101456.GG1922688@smile.fi.intel.com>
References: <20200330123634.363-1-dongchun.zhu@mediatek.com>
 <20200330123634.363-3-dongchun.zhu@mediatek.com>
 <20200330135751.GQ1922688@smile.fi.intel.com>
 <1585620980.5781.80.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585620980.5781.80.camel@mhfsdcap03>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_031458_017092_34316798 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 10:16:20AM +0800, Dongchun Zhu wrote:
> On Mon, 2020-03-30 at 16:57 +0300, Andy Shevchenko wrote:
> > On Mon, Mar 30, 2020 at 08:36:34PM +0800, Dongchun Zhu wrote:
> > > This patch adds a V4L2 sub-device driver for DW9768 voice coil moter,
> > > providing control to set the desired focus via I2C serial interface.
> > 
> > ...
> > 
> > > +static const struct dev_pm_ops dw9768_pm_ops = {
> > > +	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> > > +				pm_runtime_force_resume)
> > > +	SET_RUNTIME_PM_OPS(dw9768_runtime_suspend, dw9768_runtime_resume, NULL)
> > > +};
> > > +
> > > +static struct i2c_driver dw9768_i2c_driver = {
> > > +	.driver = {
> > > +		.name = DW9768_NAME,
> > 
> > > +		.pm = IS_ENABLED(CONFIG_PM) ? &dw9768_pm_ops : NULL,
> > 
> > What is this conditional for?
> > 
> 
> For the dw9768_pm_ops, here my idea is to use an IS_ENABLED() check to
> avoid defining the structure when CONFIG_PM is not set.

Have you looked at the implementation of SET_SYSTEM_SLEEP_OPS() and another one?

Have you tried to actually compile with !CONFIG_PM? In your case the warning
should be issued.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
