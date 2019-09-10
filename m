Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 424C2AF09E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 19:45:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+1wZBlTyN0quc4tcgB1hlOY6NtEJUcCTt8Ghqyrn48=; b=rkfIl9z/r0///z
	tPUh9GDkE07cU5Gl47lBzxq/SRjEuvUUQCC0ITMzdMW8KfduW3bCi09+V4cN7ZNKOe9id8/JwyvOR
	/NA8Xa+Ge9U8Jhk4bHmEswMyTKrywtQ+U0gpfugNugdDApgFTtS97pzvNQWCULZi5/GNEFK4Z221N
	fPTKTt39Q/r7OfKnu25VOSDf8xK1o2vZ0SMD1oplQwpJTmdNLmb3AkEZxPBVCkRbMQc6nwn53CNrm
	jXcPxcw1QwX/zv1NqLg4BPk8BvNIPM284CTSK4+ZO1mROThQeTEJMBujkgAKB5TV5lKizsbsNA9QJ
	bB+QOja9Xbu0ktZr1P4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7kCU-00050W-JZ; Tue, 10 Sep 2019 17:45:10 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7kCH-0004zr-93; Tue, 10 Sep 2019 17:44:58 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 10:44:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,490,1559545200"; d="scan'208";a="186924829"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga003.jf.intel.com with ESMTP; 10 Sep 2019 10:44:51 -0700
Received: from andy by smile with local (Exim 4.92.1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1i7kCA-0003u5-Ca; Tue, 10 Sep 2019 20:44:50 +0300
Date: Tue, 10 Sep 2019 20:44:50 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: dongchun.zhu@mediatek.com
Subject: Re: [V2, 2/2] media: i2c: Add more sensor modes for ov8856 camera
 sensor
Message-ID: <20190910174450.GJ2680@smile.fi.intel.com>
References: <20190910130446.26413-1-dongchun.zhu@mediatek.com>
 <20190910130446.26413-3-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910130446.26413-3-dongchun.zhu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_104457_360839_93EFF1BF 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 09:04:46PM +0800, dongchun.zhu@mediatek.com wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> 
> This patch mainly adds two more sensor modes for OV8856 CMOS image sensor.
> That is, the resolution of 1632*1224 and 3264*2448, corresponding to the bayer order of BGGR.
> The sensor revision also differs in some OTP register.

> +static int __ov8856_power_on(struct ov8856 *ov8856)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> +	int ret;
> +
> +	ret = clk_prepare_enable(ov8856->xvclk);
> +	if (ret < 0) {
> +		dev_err(&client->dev, "failed to enable xvclk\n");
> +		return ret;
> +	}
> +
> +	gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, GPIOD_OUT_LOW);
> +
> +	ret = regulator_bulk_enable(OV8856_NUM_SUPPLIES, ov8856->supplies);
> +	if (ret < 0) {
> +		dev_err(&client->dev, "failed to enable regulators\n");
> +		goto disable_clk;
> +	}
> +
> +	gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, GPIOD_OUT_HIGH);
> +

> +	usleep_range(1400, 1500);

This should be commented why this is needed and from where the requirement
comes from. Also, not, that 100us, which is only ~7%, is small margin.
Recommended one is ~20%.

> +
> +	return 0;
> +
> +disable_clk:
> +	clk_disable_unprepare(ov8856->xvclk);
> +
> +	return ret;
> +}

> +	ov8856->is_1B_revision = (val == OV8856_1B_MODULE) ? 1 : 0;

!! will give same result without using ternary operator.

> +	ov8856->xvclk = devm_clk_get(&client->dev, "xvclk");
> +	if (IS_ERR(ov8856->xvclk)) {
> +		dev_err(&client->dev, "failed to get xvclk\n");
> +		return -EINVAL;
> +	}

Previously it was optional.
How did it work before and why it's not optional?

> +	ov8856->n_shutdn_gpio = devm_gpiod_get(&client->dev, "reset",
> +					       GPIOD_OUT_LOW);
> +	if (IS_ERR(ov8856->n_shutdn_gpio)) {
> +		dev_err(&client->dev, "failed to get reset-gpios\n");
> +		return -EINVAL;
> +	}

Ditto.

> +static const struct of_device_id ov8856_of_match[] = {
> +	{ .compatible = "ovti,ov8856" },

> +	{},

No comma needed for terminator line.

> +};

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
