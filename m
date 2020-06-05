Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D571EF8B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRXooHtFoCGh0sffTSU54hi2euUCt7lgXynx1aghqPs=; b=nFhUsCUMBaaEre
	brxbN/TsyH/z3rNwp1QeL4tbzDh6Tn/AWPrQnR5vKl3uoF0yzZ24KvRuzN2oMk0a47YlHCxtgQ0ke
	R6Zif6k7lu3Z49DScXNeIzZSpqrYYDtLAX59afgLCqKGiuQxXYggJxvULo8HIwGFKMTZrn/W6yjYB
	hxxrG2fEepIexBt5LaEs0Jwd0cdCO7bneU87f4Ui8dU8xOAK8dtGajkJmE/U4LJ0f5rjFYCv2sJye
	HIYf5eOESHNuO9hSHMgoAFF1omNttlqzG8tNhLDO+9VQTp8nRuZ/SRdYpYXuEtMgavh0easF5xRdc
	QCZxW5/fbpiTE+0WJpnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhC7A-0006XM-QC; Fri, 05 Jun 2020 13:10:28 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhC6y-0006VG-97
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:10:19 +0000
Received: by mail-wr1-x42f.google.com with SMTP id c3so9680435wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 06:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ONcVi0Nh167uW5jvnDAvvL/9nwO9qJvjZBb+j6gK/m0=;
 b=F4Lgik0u6LwAU6Xf/6ApIw5It56BB+9tgE/OPpOJgLbUAtNYveMx4QPaScdOxL1Thc
 RpJYQRZYjDuW2mc+1HKFtdJ9+uQlGvj0JhsyXDCKzS0WP9TCv/B+IOzx0DhE1GbQZlJj
 FNwuohFAfHvUMOI8uAtrUY7s4RV6bFNs2MGic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ONcVi0Nh167uW5jvnDAvvL/9nwO9qJvjZBb+j6gK/m0=;
 b=pPnbiZIsrVnbkSjDt8ZeCpAf8bn5oMGSg6avFvIrxZl9xN4jpkewXTFAe2FazhA3rO
 Y+KRYdlL55hAmVbqaBFi2t8hq7wkTTQBGGhF5eFwaanlGF4dVB7/JCAzrKPVvF4i/ld+
 w618K/oMRvNh1a/J3Lk2K/8hxR3sWxgqgq3P6D7aspA8xlT6cwAcUvHvu5It3t1iBcuu
 YK7radP9WkdqxOhPLHIL+Z8PVlaznTsM4uaTO9NC43ZdSBrR1ShjnEer4SCS8IPqaBKT
 5k2nC0TWYgE3ZZlRoGKz3DQh2/uWJJwSBJ5VsXMCck16ZaxFAQx7/GwtpwVYhCuZwuVh
 9sVg==
X-Gm-Message-State: AOAM533yeBYQP/mVlg0p0Wl6aaAOSmflLU2f1KrAmzmQ2kifxwx/zkHE
 P035GM5riWe/rahiAR78krUsIA==
X-Google-Smtp-Source: ABdhPJxJLqnn0pRDZBM6sQWKB2YTytCBH8ALuyDGR/E1riv2Tvgz1fQv5KSxHLfxrKw0SsgRZUUGkQ==
X-Received: by 2002:adf:ec0a:: with SMTP id x10mr9431590wrn.130.1591362614372; 
 Fri, 05 Jun 2020 06:10:14 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id b14sm11311111wmj.47.2020.06.05.06.10.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Jun 2020 06:10:13 -0700 (PDT)
Date: Fri, 5 Jun 2020 13:10:12 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [V7, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
Message-ID: <20200605131012.GB6303@chromium.org>
References: <20200605105412.18813-1-dongchun.zhu@mediatek.com>
 <20200605105412.18813-3-dongchun.zhu@mediatek.com>
 <20200605124643.GG2428291@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605124643.GG2428291@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_061016_337718_AD74356D 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 srv_heupstream@mediatek.com, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, louis.kuo@mediatek.com, bgolaszewski@baylibre.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

On Fri, Jun 05, 2020 at 03:46:43PM +0300, Andy Shevchenko wrote:
> On Fri, Jun 05, 2020 at 06:54:12PM +0800, Dongchun Zhu wrote:
> > Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> > control to set the desired focus via IIC serial interface.
> 
> ...
> 
> > +config VIDEO_DW9768
> > +	tristate "DW9768 lens voice coil support"
> > +	depends on I2C && VIDEO_V4L2
> 
> No compile test?
> 
> > +	depends on PM
> 
> This is very strange dependency for ordinary driver.
> 
> > +	select MEDIA_CONTROLLER
> > +	select VIDEO_V4L2_SUBDEV_API
> > +	select V4L2_FWNODE
> 
> ...
> 
> > +/*
> > + * DW9768 requires waiting time (delay time) of t_OPR after power-up,
> > + * or in the case of PD reset taking place.
> > + */
> > +#define DW9768_T_OPR_US				1000
> > +#define DW9768_Tvib_MS_BASE10			(64 - 1)
> > +#define DW9768_AAC_MODE_DEFAULT			2
> 
> > +#define DW9768_AAC_TIME_DEFAULT			0x20
> 
> Hex? Why not decimal?
> 
> > +#define DW9768_CLOCK_PRE_SCALE_DEFAULT		1
> 
> ...
> 
> > +static int dw9768_mod_reg(struct dw9768 *dw9768, u8 reg, u8 mask, u8 val)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> > +	int ret;
> > +
> > +	ret = i2c_smbus_read_byte_data(client, reg);
> > +	if (ret < 0)
> > +		return ret;
> > +
> 
> > +	val = ((unsigned char)ret & ~mask) | (val & mask);
> 
> This cast is weird.
> 
> > +
> > +	return i2c_smbus_write_byte_data(client, reg, val);
> > +}
> 
> ...
> 
> > +			dev_err(&client->dev, "%s I2C failure: %d",
> > +				__func__, ret);
> 
> One line?
> 
> ...
> 
> > +static int dw9768_release(struct dw9768 *dw9768)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> > +	u32 move_delay_us = dw9768_cal_move_delay(dw9768->aac_mode,
> > +						  dw9768->clock_presc,
> > +						  dw9768->aac_timing) / 100;
> > +	int ret, val;
> > +
> > +	val = round_down(dw9768->focus->val, DW9768_MOVE_STEPS);
> > +	for ( ; val >= 0; val -= DW9768_MOVE_STEPS) {
> > +		ret = dw9768_set_dac(dw9768, val);
> > +		if (ret) {
> > +			dev_err(&client->dev, "I2C write fail: %d", ret);
> > +			return ret;
> > +		}
> > +		usleep_range(move_delay_us, move_delay_us + 1000);
> > +	}
> 
> 
> It will look more naturally in the multiplier kind of value.
> 
> 	unsigned int steps = DIV_ROUND_UP(...);
> 
> 	while (steps--) {
> 		...(..., steps * ..._MOVE_STEPS);
> 		...
> 	}
> 
> but double check arithmetics.
> 

First of all, thank for the review!

As for this particular change suggestion, I suspect this could be a
subjective thing, because for me the current code looks more naturally
and it's what the other VCM drivers do.

> > +	return 0;
> > +}
> 
> 
> Also it seems we need to have writex_poll_timeout() implementation (see
> iopoll.h).

What would it be supposed to do? readx_poll_timeout() repeats reading
the same registers and sleeping until a condition becomes true, which is
basically "polling". In this case we're not polling anything and we're
not writing the same value, but it's an explicit algorithm of this
driver to power down the VCM corectly.

However, given that it's quite common among VCMs to require this kind of
phased power down - we could indeed provide some V4L2 VCM helpers for open
and release.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
