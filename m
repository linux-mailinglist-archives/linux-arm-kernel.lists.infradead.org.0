Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB91211F9B3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:34:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQvW06u8f3SajBRsXpaQf9ZBCHrNHW+xum0pNH1Na8E=; b=nhBNsAcdyJJE+p
	gurBfk6v+yXNjIPPOiM6RwShidDoOVWpy2DWfw8n/aMssbcd74cW3TeR4KWM9feOv/KKdiOc73Pad
	+GAMVHezjH6PLcEO3x0CMYNwRrLNv5r6LJpUGzErrD91lPlvq3MHc/nuGuXP//eovTu/2mxcGVomA
	9cW00F0tM9hMmKT/Vx/QOuox+R6dAX2wnXT23TsAxfI2+RGEeLRSX7fFFpWhDRhHP13/xTvK5WOQG
	RwSxHIgQyxNu3vi6k4pA9qBiWNfjzX3T0Mv1Avsa+bMEzU26WqxjgcOSpw/ryzQ76YmAn1U4Lwbw2
	Fn68GxgzrC1lpGizy4Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXn5-0004k5-Ps; Sun, 15 Dec 2019 17:34:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXmw-0004jW-KZ
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 17:34:40 +0000
Received: by mail-pf1-x443.google.com with SMTP id l127so2528913pfl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 09:34:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6ujSsSDcBK3n4Bqga7fblzha00kGWmWX/mW5knjSwJI=;
 b=fKV7iVkg13oi3VruUvio7vqK8Q2GWFGCtNPCZ0HOvf1in8V7rly04vSo4vslMzhp06
 D2KT5fcASGtjlxvFvUuy+dPePqli/AWrf7usu7sXa5Hi2yZD6N3SfMAFgK1Q2btTli3u
 seQC10OwxDddTwndiPRo0qfBsNqHSBhMeJ2twxVULPp3y+6Vv9fGsz5sghc9VhuymnN0
 zyqkdkRg5YDRGs2DIBvCUIPs099QX0kWhU+EOE6jBNvieO4yX1rtGTiQoOhblZDKxaYW
 SUtN0CeytIh2QeBni/yLEIairIY8jrRh9AgcK+oQJRkwePC6+yaJfbbm/LKdL9a9BZmN
 CznQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6ujSsSDcBK3n4Bqga7fblzha00kGWmWX/mW5knjSwJI=;
 b=mz+I2dkKJJV86HlrRkpOQJ90lftfOjAdWvCCNGHVg253HJOfJBzKSYP6x6zubEja/C
 qPwFnGEa5f4YK1d0GGx04NhjvwE150kc3LsCyQH8l7GvKWA/Z6Iy1DYfmWNI7B+/DuI/
 dycTpF7zOtj8pBkLTb6FNe0Plhm9nF3dFeeY+ZmFFlxp4JZgag7sDAseaI5eyLtSSeV4
 cAbr7/YDJ0oaV02ZZbtjn0aeUgzsyGgvwpjCAKfSDs8wtaVgnt6UuLjaeKrNi/uLRvY6
 Yi5Kn9v5/lpSuJHUM2hjLO60RjNF74Lv/1upiDbN1c9OWAo2FimSprz2+X8u4Xqzrzqg
 s4ow==
X-Gm-Message-State: APjAAAWVQ8YKigBEoG8ZWnxRfMsWQbzPXKzJdshjUfNIxJz462fs5orp
 cA9cEIBQJ7dcLdQPfdHOSs6KuZ/zVFWy
X-Google-Smtp-Source: APXvYqwwXd8GtkKGFw4dphFWy1z9O5IvZPRJrfF08u65UmzJenhFAZT/srpftlljFJd8KFgNGCFA0Q==
X-Received: by 2002:a63:7045:: with SMTP id a5mr13479457pgn.49.1576431277135; 
 Sun, 15 Dec 2019 09:34:37 -0800 (PST)
Received: from Mani-XPS-13-9360 ([2409:4072:78f:3e30:ad66:df45:6a09:a260])
 by smtp.gmail.com with ESMTPSA id q21sm18928635pff.105.2019.12.15.09.34.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 09:34:35 -0800 (PST)
Date: Sun, 15 Dec 2019 23:04:27 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH 1/5] media: i2c: imx290: Add support for 2 data lanes
Message-ID: <20191215173427.GA11427@Mani-XPS-13-9360>
References: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
 <20191129190541.30315-2-manivannan.sadhasivam@linaro.org>
 <20191203084520.GP833@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203084520.GP833@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_093438_774185_DB7F4DA0 
X-CRM114-Status: GOOD (  28.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

On Tue, Dec 03, 2019 at 10:45:20AM +0200, Sakari Ailus wrote:
> Hi Manivannan,
> 
> Thanks for the patchset.
> 
> On Sat, Nov 30, 2019 at 12:35:37AM +0530, Manivannan Sadhasivam wrote:
> > The IMX290 sensor can output frames with 2/4 CSI2 data lanes. This commit
> > adds support for 2 lane mode in addition to the 4 lane and also
> > configuring the data lane settings in the driver based on system
> > configuration.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  drivers/media/i2c/imx290.c | 130 ++++++++++++++++++++++++++++++++++---
> >  1 file changed, 121 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
> > index f7678e5a5d87..1d49910937fb 100644
> > --- a/drivers/media/i2c/imx290.c
> > +++ b/drivers/media/i2c/imx290.c
> > @@ -25,7 +25,18 @@
> >  #define IMX290_STANDBY 0x3000
> >  #define IMX290_REGHOLD 0x3001
> >  #define IMX290_XMSTA 0x3002
> > +#define IMX290_FR_FDG_SEL 0x3009
> >  #define IMX290_GAIN 0x3014
> > +#define IMX290_HMAX_LOW 0x301c
> > +#define IMX290_HMAX_HIGH 0x301d
> > +#define IMX290_PHY_LANE_NUM 0x3407
> > +#define IMX290_CSI_LANE_MODE 0x3443
> > +
> > +/* HMAX fields */
> > +#define IMX290_HMAX_2_1920 0x1130
> > +#define IMX290_HMAX_4_1920 0x0898
> > +#define IMX290_HMAX_2_720 0x19C8
> > +#define IMX290_HMAX_4_720 0x0CE4
> >  
> >  #define IMX290_DEFAULT_LINK_FREQ 445500000
> >  
> > @@ -56,6 +67,7 @@ struct imx290 {
> >  	struct device *dev;
> >  	struct clk *xclk;
> >  	struct regmap *regmap;
> > +	int nlanes;
> 
> You're using u8 for another small (unsigned) integer later. How about u8
> here?
> 

Yeah, this is a left over. I was initially trying to use some error
checking with this! Will change it to u8.

> >  
> >  	struct v4l2_subdev sd;
> >  	struct v4l2_fwnode_endpoint ep;
> > @@ -89,14 +101,11 @@ static const struct regmap_config imx290_regmap_config = {
> >  
> >  static const struct imx290_regval imx290_global_init_settings[] = {
> >  	{ 0x3007, 0x00 },
> > -	{ 0x3009, 0x00 },
> >  	{ 0x3018, 0x65 },
> >  	{ 0x3019, 0x04 },
> >  	{ 0x301a, 0x00 },
> > -	{ 0x3443, 0x03 },
> >  	{ 0x3444, 0x20 },
> >  	{ 0x3445, 0x25 },
> > -	{ 0x3407, 0x03 },
> >  	{ 0x303a, 0x0c },
> >  	{ 0x3040, 0x00 },
> >  	{ 0x3041, 0x00 },
> > @@ -169,7 +178,6 @@ static const struct imx290_regval imx290_1080p_settings[] = {
> >  	{ 0x3164, 0x1a },
> >  	{ 0x3480, 0x49 },
> >  	/* data rate settings */
> > -	{ 0x3009, 0x01 },
> >  	{ 0x3405, 0x10 },
> >  	{ 0x3446, 0x57 },
> >  	{ 0x3447, 0x00 },
> > @@ -187,8 +195,6 @@ static const struct imx290_regval imx290_1080p_settings[] = {
> >  	{ 0x3453, 0x00 },
> >  	{ 0x3454, 0x17 },
> >  	{ 0x3455, 0x00 },
> > -	{ 0x301c, 0x98 },
> > -	{ 0x301d, 0x08 },
> >  };
> >  
> >  static const struct imx290_regval imx290_720p_settings[] = {
> > @@ -210,7 +216,6 @@ static const struct imx290_regval imx290_720p_settings[] = {
> >  	{ 0x3164, 0x1a },
> >  	{ 0x3480, 0x49 },
> >  	/* data rate settings */
> > -	{ 0x3009, 0x01 },
> >  	{ 0x3405, 0x10 },
> >  	{ 0x3446, 0x4f },
> >  	{ 0x3447, 0x00 },
> > @@ -228,8 +233,6 @@ static const struct imx290_regval imx290_720p_settings[] = {
> >  	{ 0x3453, 0x00 },
> >  	{ 0x3454, 0x17 },
> >  	{ 0x3455, 0x00 },
> > -	{ 0x301c, 0xe4 },
> > -	{ 0x301d, 0x0c },
> >  };
> >  
> >  static const struct imx290_regval imx290_10bit_settings[] = {
> > @@ -522,6 +525,25 @@ static int imx290_write_current_format(struct imx290 *imx290,
> >  	return 0;
> >  }
> >  
> > +static int imx290_set_hmax(struct imx290 *imx290, u32 val)
> > +{
> > +	int ret;
> > +
> > +	ret = imx290_write_reg(imx290, IMX290_HMAX_LOW, (val & 0xff));
> > +	if (ret) {
> > +		dev_err(imx290->dev, "Error setting HMAX register\n");
> > +		return ret;
> > +	}
> > +
> > +	ret = imx290_write_reg(imx290, IMX290_HMAX_HIGH, ((val >> 8) & 0xff));
> > +	if (ret) {
> > +		dev_err(imx290->dev, "Error setting HMAX register\n");
> > +		return ret;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> >  /* Start streaming */
> >  static int imx290_start_streaming(struct imx290 *imx290)
> >  {
> > @@ -551,6 +573,40 @@ static int imx290_start_streaming(struct imx290 *imx290)
> >  		return ret;
> >  	}
> >  
> > +	switch (imx290->nlanes) {
> > +	case 2:
> > +		if (imx290->current_mode->width == 1920) {
> > +			ret = imx290_set_hmax(imx290, IMX290_HMAX_2_1920);
> > +			if (ret < 0)
> > +				return ret;
> > +		} else {
> > +			ret = imx290_set_hmax(imx290, IMX290_HMAX_2_720);
> > +			if (ret < 0)
> > +				return ret;
> > +		}
> > +
> > +		break;
> > +	case 4:
> > +		if (imx290->current_mode->width == 1920) {
> > +			ret = imx290_set_hmax(imx290, IMX290_HMAX_4_1920);
> > +			if (ret < 0)
> > +				return ret;
> > +		} else {
> > +			ret = imx290_set_hmax(imx290, IMX290_HMAX_4_720);
> > +			if (ret < 0)
> > +				return ret;
> > +		}
> > +
> > +		break;
> > +	default:
> > +		/*
> > +		 * We should never hit this since the data lane count is
> > +		 * validated in probe itself
> > +		 */
> > +		dev_err(imx290->dev, "Lane configuration not supported\n");
> > +		return -EINVAL;
> > +	}
> > +
> >  	/* Apply customized values from user */
> >  	ret = v4l2_ctrl_handler_setup(imx290->sd.ctrl_handler);
> >  	if (ret) {
> > @@ -607,6 +663,49 @@ static int imx290_get_regulators(struct device *dev, struct imx290 *imx290)
> >  				       imx290->supplies);
> >  }
> >  
> > +static int imx290_set_data_lanes(struct imx290 *imx290)
> > +{
> > +	int ret = 0, laneval, frsel;
> > +
> > +	switch (imx290->nlanes) {
> > +	case 2:
> > +		laneval = 0x01;
> > +		frsel = 0x02;
> > +		break;
> > +	case 4:
> > +		laneval = 0x03;
> > +		frsel = 0x01;
> > +		break;
> > +	default:
> > +		/*
> > +		 * We should never hit this since the data lane count is
> > +		 * validated in probe itself
> > +		 */
> > +		dev_err(imx290->dev, "Lane configuration not supported\n");
> > +		ret = -EINVAL;
> > +		goto exit;
> > +	}
> > +
> > +	ret = imx290_write_reg(imx290, IMX290_PHY_LANE_NUM, laneval);
> > +	if (ret) {
> > +		dev_err(imx290->dev, "Error setting Physical Lane number register\n");
> > +		goto exit;
> > +	}
> > +
> > +	ret = imx290_write_reg(imx290, IMX290_CSI_LANE_MODE, laneval);
> > +	if (ret) {
> > +		dev_err(imx290->dev, "Error setting CSI Lane mode register\n");
> > +		goto exit;
> > +	}
> > +
> > +	ret = imx290_write_reg(imx290, IMX290_FR_FDG_SEL, frsel);
> > +	if (ret)
> > +		dev_err(imx290->dev, "Error setting FR/FDG SEL register\n");
> > +
> > +exit:
> > +	return ret;
> > +}
> > +
> >  static int imx290_power_on(struct device *dev)
> >  {
> >  	struct i2c_client *client = to_i2c_client(dev);
> > @@ -703,6 +802,16 @@ static int imx290_probe(struct i2c_client *client)
> >  		goto free_err;
> >  	}
> >  
> > +	/* Get number of data lanes */
> > +	imx290->nlanes = imx290->ep.bus.mipi_csi2.num_data_lanes;
> > +	if (imx290->nlanes != 2 && imx290->nlanes != 4) {
> > +		dev_err(dev, "Invalid data lanes: %d\n", imx290->nlanes);
> > +		ret = -EINVAL;
> > +		goto free_err;
> > +	}
> > +
> > +	dev_dbg(dev, "Using %u data lanes\n", imx290->nlanes);
> > +
> >  	if (!imx290->ep.nr_of_link_frequencies) {
> >  		dev_err(dev, "link-frequency property not found in DT\n");
> >  		ret = -EINVAL;
> > @@ -822,6 +931,9 @@ static int imx290_probe(struct i2c_client *client)
> >  		goto free_entity;
> >  	}
> >  
> > +	/* Set data lane count */
> > +	imx290_set_data_lanes(imx290);
> 
> The sensor is likely (but not necessarily) about to be powered off here.
> Wouldn't this also belong to be put to the power on sequence?
> 

Agree, will add.

Thanks,
Mani

> > +
> >  	pm_runtime_set_active(dev);
> >  	pm_runtime_enable(dev);
> >  	pm_runtime_idle(dev);
> 
> -- 
> Regards,
> 
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
