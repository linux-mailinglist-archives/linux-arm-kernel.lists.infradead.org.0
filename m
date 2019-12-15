Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AA111F9DA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:46:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pl6kQK+PQbwuI8564GCgkJLtEg4iJ4ntgPB8RAGNr+c=; b=Lc2FDKo6+bB3cp
	alS82//XzkL/1qbmtJA8EvPTEEX29+YkYipqfTJiW3CT1bWM4RB4gsK/LDI/rNwfUAJaPDgyd/jLL
	YBl+KMgvC8FWsX4kkT3dGkNYRH9v9T5Hy8Fk6H9kQdqwlcJaN4cFGLzlC9DhcNH2NLyOZalPdQZ5P
	N4FHfZFi78TVFzl3KWwub4b2gQLtZ5738+ItdkdFasH7oBW+TtmQukzJ2KdKW1Jp/HcjkZhJa3M2I
	GLB7gIJ05Gjxfo6llVbEPT9Z9tZVX8DL+DplHhb7huOWaBDX/Sze0LhSLFDe7UuNt90sSIFv4OzOW
	hBI1Nq4G30ZW8db7xEVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXyP-0001He-Bq; Sun, 15 Dec 2019 17:46:29 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXyD-0001GM-DY
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 17:46:19 +0000
Received: by mail-pl1-x643.google.com with SMTP id c13so3465789pls.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 09:46:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=E0v8BsJYt4cJXe3rlwgSZiboiBQsoAsO6HkNzr+KGMs=;
 b=IiF1Q9f01EWMfmah72PemS4xhqWeS6mhP/Z6/UoCSOHpoiItwy//QR1eVMpTPP7xIw
 wnJ1hDanm8rig8mWoCAnUrkezM+9zlBi1/8HaUv9MLZRUsHKL2MGbLFLkyjKWWfzjBqi
 rtEnQ3A0dCZF8OFgisATogXORgvEKaswDmqided4Y72mJiniKvyEICN0Rf5RU2o3c3c2
 2zdN+z2mVDTel6OkveifdARpBEiyk88zSYFFBTY88JMIq2851eS05hox5ngYsssOk039
 seOO7NgogQBDHFy6xDhNP578zwOfDh2OZyMqSzhm7qHXwCequjKjuaiseFJRWeyyMGam
 5ygg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E0v8BsJYt4cJXe3rlwgSZiboiBQsoAsO6HkNzr+KGMs=;
 b=YbwS+uZM79xjoaMHfefGQ1Lng6+SyZSf8DjtmDw5uB1YeS9QuK11L5ughwnrB+6TTr
 NIKgPdt1bt1FxM4mKhIZn2dKrO5ee5Wkb/h9Ri1Ay+h0QDoDPDiNM5+rCtJfwGLbeca8
 v9qTObfGxSDpJT36jo/f6JWxfOb/vsY6oBBVXDmc6qYjUy3YTUrO+/1V6TogjkTKqzk+
 rNw4fcfcX0qSv82CfrDLZuud7RvWpekuoNeCgdT4G2Iumcbn2ira8m5fU5P2k5oSCGY+
 ImF0bBLIh6RzgkWUODdZ9gg2gtzu635Zb8eg3Ai81fKzYnAnGtpSuik9MsX0dDxH4qBQ
 XSOA==
X-Gm-Message-State: APjAAAWb9ZWUzFNz4wSHzNrKwN9ngbwOzVc5kfJfHxqxL6271ZY7tzZD
 VmWDKMZ/CVI0yOzm5C6ROE2a
X-Google-Smtp-Source: APXvYqxBGgk0qogpfgu/D5jEao5hhISZ5aQbGx9LJNIKdnEsjX1FnOawcpTEMyrJB0DQ2q4N2JkOXw==
X-Received: by 2002:a17:90a:21a1:: with SMTP id
 q30mr13335510pjc.8.1576431974335; 
 Sun, 15 Dec 2019 09:46:14 -0800 (PST)
Received: from Mani-XPS-13-9360 ([2409:4072:78f:3e30:ad66:df45:6a09:a260])
 by smtp.gmail.com with ESMTPSA id y197sm10426009pfc.79.2019.12.15.09.46.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 09:46:13 -0800 (PST)
Date: Sun, 15 Dec 2019 23:16:06 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH 3/5] media: i2c: imx290: Add RAW12 mode support
Message-ID: <20191215174606.GC11427@Mani-XPS-13-9360>
References: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
 <20191129190541.30315-4-manivannan.sadhasivam@linaro.org>
 <20191203085417.GB5282@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203085417.GB5282@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_094617_490823_4DE29D3A 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

On Tue, Dec 03, 2019 at 10:54:17AM +0200, Sakari Ailus wrote:
> Hi Manivannan,
> 
> On Sat, Nov 30, 2019 at 12:35:39AM +0530, Manivannan Sadhasivam wrote:
> > IMX290 is capable of outputting frames in both Raw Bayer (packed) 10 and
> > 12 bit formats. Since the driver already supports RAW10 mode, let's add
> > the missing RAW12 mode as well.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  drivers/media/i2c/imx290.c | 32 ++++++++++++++++++++++++++++++++
> >  1 file changed, 32 insertions(+)
> > 
> > diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
> > index e218c959a729..d5bb3a59ac46 100644
> > --- a/drivers/media/i2c/imx290.c
> > +++ b/drivers/media/i2c/imx290.c
> > @@ -75,6 +75,7 @@ struct imx290 {
> >  	struct clk *xclk;
> >  	struct regmap *regmap;
> >  	int nlanes;
> > +	u8 bpp;
> >  
> >  	struct v4l2_subdev sd;
> >  	struct v4l2_fwnode_endpoint ep;
> > @@ -98,6 +99,7 @@ struct imx290_pixfmt {
> >  
> >  static const struct imx290_pixfmt imx290_formats[] = {
> >  	{ MEDIA_BUS_FMT_SRGGB10_1X10 },
> > +	{ MEDIA_BUS_FMT_SRGGB12_1X12 },
> >  };
> >  
> >  static const struct regmap_config imx290_regmap_config = {
> > @@ -265,6 +267,18 @@ static const struct imx290_regval imx290_10bit_settings[] = {
> >  	{ 0x300b, 0x00},
> >  };
> >  
> > +static const struct imx290_regval imx290_12bit_settings[] = {
> > +	{ 0x3005, 0x01 },
> > +	{ 0x3046, 0x01 },
> > +	{ 0x3129, 0x00 },
> > +	{ 0x317c, 0x00 },
> > +	{ 0x31ec, 0x0e },
> > +	{ 0x3441, 0x0c },
> > +	{ 0x3442, 0x0c },
> > +	{ 0x300a, 0xf0 },
> > +	{ 0x300b, 0x00 },
> > +};
> > +
> >  /* supported link frequencies */
> >  static const s64 imx290_link_freq[] = {
> >  	IMX290_DEFAULT_LINK_FREQ,
> > @@ -550,6 +564,21 @@ static int imx290_write_current_format(struct imx290 *imx290,
> >  			dev_err(imx290->dev, "Could not set format registers\n");
> >  			return ret;
> >  		}
> > +
> > +		imx290->bpp = 10;
> > +
> > +		break;
> > +	case MEDIA_BUS_FMT_SRGGB12_1X12:
> > +		ret = imx290_set_register_array(imx290, imx290_12bit_settings,
> > +						ARRAY_SIZE(
> > +							imx290_12bit_settings));
> > +		if (ret < 0) {
> > +			dev_err(imx290->dev, "Could not set format registers\n");
> > +			return ret;
> > +		}
> > +
> > +		imx290->bpp = 12;
> > +
> >  		break;
> >  	default:
> >  		dev_err(imx290->dev, "Unknown pixel format\n");
> > @@ -910,6 +939,9 @@ static int imx290_probe(struct i2c_client *client)
> >  		goto free_err;
> >  	}
> >  
> > +	/* Default bits per pixel value */
> > +	imx290->bpp = 10;
> 
> Where is the format being initialised at the moment? Nowhere?
> 
> If that is the case, I think it should be fixed before this patch.
> 

Sorry, I don't quite understand what you're suggesting here. The bpp
is initialised because that's the default bit value at power up and
this value is being used below in imx290_calc_pixel_rate(). I'm not sure
why we need to initialise the format before set_fmt!

Thanks,
Mani

> > +
> >  	mutex_init(&imx290->lock);
> >  
> >  	v4l2_ctrl_handler_init(&imx290->ctrls, 4);
> 
> -- 
> Kind regards,
> 
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
