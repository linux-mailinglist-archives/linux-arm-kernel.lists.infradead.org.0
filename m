Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BB71846DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:28:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+U5cad+o26sA9tYslIefjjBJ4No3dOTaYC8FBtSV7Tc=; b=cPca5X3xkIxffV
	39Sq4enC3Ea/D/vS/wf6k5rlxOvmgXzUllb/Aa9G8WHH5oLD5fuiB40/Ylwt9IAUF4BpX4uAcFaaT
	OK1DWpPymgmikm8oKc2mllOSHcPtxRQEgTNi3NXckXSoFeTCaK41wyrOYm6+E8GmKf/I5+Om8usyn
	61iKkG22GpZRRIV7fGJi9rMdXwmcsgsnGMFiPkleshI5KkSUHzqsFYSuBQ6Cco7JgBcmSJafIh+7X
	w/2YK78pDMxb1RRZKXTl7fhCnL/AboRn058VbdzUZcC1WBo69oMuKClSVjJPNbJ3M04gVwwqn0Kh2
	c2ozKgz8P7y01NeYyIPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjQK-0004SV-Fg; Fri, 13 Mar 2020 12:28:20 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjQA-0004RB-Ol
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:28:11 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 05:28:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,548,1574150400"; d="scan'208";a="290013497"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Mar 2020 05:28:04 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jCjQ6-009G8T-69; Fri, 13 Mar 2020 14:28:06 +0200
Date: Fri, 13 Mar 2020 14:28:06 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v2 2/3] media: ov8856: Add devicetree support
Message-ID: <20200313122806.GT1922688@smile.fi.intel.com>
References: <20200313110350.10864-1-robert.foss@linaro.org>
 <20200313110350.10864-3-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313110350.10864-3-robert.foss@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_052810_816479_2C4364BA 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 12:03:49PM +0100, Robert Foss wrote:
> Add devicetree match table, and enable ov8856_probe()
> to initialize power, clocks and reset pins.

Thanks for an update.
My comments below.

...

> +	ov8856->xvclk = devm_clk_get(&client->dev, "xvclk");

In many frameworks we have '_optional' variants of API. Please use it instead
of open coded approach.

> +	if (PTR_ERR(ov8856->xvclk) == -ENOENT) {
> +		dev_info(&client->dev, "xvclk clock not defined, continuing...\n");
> +		ov8856->xvclk = NULL;
> +	} else if (IS_ERR(ov8856->xvclk)) {
> +		dev_err(&client->dev, "could not get xvclk clock (%ld)\n",
> +			PTR_ERR(ov8856->xvclk));
> +		return PTR_ERR(ov8856->xvclk);
> +	}
> +
> +	ret = clk_set_rate(ov8856->xvclk, OV8856_XVCLK_24);
> +	if (ret < 0) {
> +		dev_err(&client->dev, "failed to set xvclk rate (24MHz)\n");
> +		return ret;
> +	}
> +

> +	ov8856->reset_gpio = devm_gpiod_get(&client->dev, "reset",
> +					       GPIOD_OUT_HIGH);

Same here.

> +	if (IS_ERR(ov8856->reset_gpio)) {
> +		dev_err(&client->dev, "failed to get reset-gpios\n");
> +		return PTR_ERR(ov8856->reset_gpio);
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(ov8856_supply_names); i++)
> +		ov8856->supplies[i].supply = ov8856_supply_names[i];
> +

> +	ret = devm_regulator_bulk_get(&client->dev,
> +				      ARRAY_SIZE(ov8856_supply_names),
> +				      ov8856->supplies);

Luckily regulator framework will create dummy ones if there is none found.

> +	if (ret) {
> +		dev_warn(&client->dev, "failed to get regulators\n");
> +		return ret;
> +	}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
