Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A2A11F9E3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:48:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7RA0zgXVro/bHAT8GEPbqytfvqh1IWXdRx7kpGbX+hQ=; b=czwxIxHVf0M5Pm
	e3tF0bHDymINGQpeSkxiFDAxSVxKR9oHGy9q84JOnfOahX4c31BWaDH1gSQJvP/FZSwIUfgCFPOpl
	pgzdfzbpxxP8eYJo4zzsc9As0iMPGjofnBa3Y1ObIDh06FD94IeIhDhfpCE1mmUbJ4OpIKn4GLJEx
	bOl/DcG8FcreIzf/JX8B7u2rH4uVrQW/xXLlTutmgQXU1i4aNuEFyaR3wc+UnS3mtgj5ncmQM5K6d
	OMSfU6541zNbUxYj/dsK/4tNShh9UFZLJvih6WwSUHiQnGmzyh3rRbMPQa5DGgZIEwFexz1xMFaMN
	l+hRUc0ojgYOPmoDxP6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igY0h-0001ot-Kg; Sun, 15 Dec 2019 17:48:51 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igY0Y-0001oW-Ju
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 17:48:44 +0000
Received: by mail-pg1-x543.google.com with SMTP id k3so2332476pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 09:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=w9+UiOGVkK1BZoeebEE52j+LZqBaO3qIB0OJdAQ3OHU=;
 b=nyJy/VlfYg60c83riZ6WZy+M02vBHoiD0UwM5JFAjdZE6E9/2/3sjWO/ZsgaKxoh7b
 Ss4TZIVXaUZHvc1ujHwyNkGhKa72hKg0l+cTjUg3A09eeGL6dffHqQNnlts5ssGwKXUU
 00PpDgXuK3QWfFF+F7cs51nZXkB7M/f8r9KF7EsS3JboQnWzs5JiYKd4i0bwf4ANOGLB
 K1haGK/YeFgz1F9Vl46XR8okDBHBuPkMEvv4Kga3torxhw4sMS/DkHTabIpk77dTIBlK
 8TwuDCtOAhkb6cprx76UaTnIaX8zx0MT9XF6eP+UOOprX0oCRpiDHVvt0zU0wYAhsE5k
 4m9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w9+UiOGVkK1BZoeebEE52j+LZqBaO3qIB0OJdAQ3OHU=;
 b=F9beOkZ2phGjfP6hy0S7/N2YNqIOETBnno5Ie/YGOgh1dE64+CeJkUig/SDnzr9Lv/
 T12GvmnfyXo08/vKzaPLqZsbQpKI+batpnmnzzXWyCwmbIqwj61gq/+m5tyRxUNvbj1+
 UUNBOs24N/Gave6pqoULH6OdZzXTfLVQxFe0teRVyrygYkey+ksgIHOakPxw4qCM9UTC
 zMOGIHzKXUuKz8qo7kt74OMpb4ulOFCKlyWj39DoJyOxlBV0Vg1sEQvBp3dkp+lJcWRo
 tUmuvTfiT1mp2YGuNpGYcnLeSG65tW2aFTsA5c3RGVOLp05EfYjpWFR4L4D8PPUYiH5e
 aRcQ==
X-Gm-Message-State: APjAAAWIWcuvCIRKgJtKFRl5GxjiUeqALRuAfL8Qe4FieThBGtYto/X1
 +bs8tuzGqwiiJSsS351z6q+b
X-Google-Smtp-Source: APXvYqzVi9Z9A1Z0HWXzz41ItmKgbO0s5dTv4qor5DHTibPPjPANNo4NnAp94xBbPHWUKBX5WeKHMQ==
X-Received: by 2002:a63:1f16:: with SMTP id f22mr12724174pgf.2.1576432121814; 
 Sun, 15 Dec 2019 09:48:41 -0800 (PST)
Received: from Mani-XPS-13-9360 ([2409:4072:78f:3e30:ad66:df45:6a09:a260])
 by smtp.gmail.com with ESMTPSA id g10sm18142126pgh.35.2019.12.15.09.48.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 09:48:41 -0800 (PST)
Date: Sun, 15 Dec 2019 23:18:34 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH 4/5] media: i2c: imx290: Add support to enumerate all
 frame sizes
Message-ID: <20191215174834.GD11427@Mani-XPS-13-9360>
References: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
 <20191129190541.30315-5-manivannan.sadhasivam@linaro.org>
 <20191203085604.GC5282@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203085604.GC5282@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_094842_754246_A3B4CD19 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

On Tue, Dec 03, 2019 at 10:56:04AM +0200, Sakari Ailus wrote:
> On Sat, Nov 30, 2019 at 12:35:40AM +0530, Manivannan Sadhasivam wrote:
> > Add support to enumerate all frame sizes supported by IMX290. This is
> > required for using with userspace tools such as libcamera.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  drivers/media/i2c/imx290.c | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> > 
> > diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
> > index d5bb3a59ac46..f26c4a0ee0a0 100644
> > --- a/drivers/media/i2c/imx290.c
> > +++ b/drivers/media/i2c/imx290.c
> > @@ -468,6 +468,25 @@ static int imx290_enum_mbus_code(struct v4l2_subdev *sd,
> >  	return 0;
> >  }
> >  
> > +static int imx290_enum_frame_size(struct v4l2_subdev *subdev,
> > +				  struct v4l2_subdev_pad_config *cfg,
> > +				  struct v4l2_subdev_frame_size_enum *fse)
> > +{
> > +	if ((fse->code != imx290_formats[0].code) &&
> > +	    (fse->code != imx290_formats[1].code))
> 
> Please use a loop over imx290_formats instead.
> 

May I know why? What benefit does it provide over current method?

Thanks,
Mani

> > +		return -EINVAL;
> > +
> > +	if (fse->index >= ARRAY_SIZE(imx290_modes))
> > +		return -EINVAL;
> > +
> > +	fse->min_width = imx290_modes[fse->index].width;
> > +	fse->max_width = imx290_modes[fse->index].width;
> > +	fse->min_height = imx290_modes[fse->index].height;
> > +	fse->max_height = imx290_modes[fse->index].height;
> > +
> > +	return 0;
> > +}
> > +
> >  static int imx290_get_fmt(struct v4l2_subdev *sd,
> >  			  struct v4l2_subdev_pad_config *cfg,
> >  			  struct v4l2_subdev_format *fmt)
> > @@ -820,6 +839,7 @@ static const struct v4l2_subdev_video_ops imx290_video_ops = {
> >  static const struct v4l2_subdev_pad_ops imx290_pad_ops = {
> >  	.init_cfg = imx290_entity_init_cfg,
> >  	.enum_mbus_code = imx290_enum_mbus_code,
> > +	.enum_frame_size = imx290_enum_frame_size,
> >  	.get_fmt = imx290_get_fmt,
> >  	.set_fmt = imx290_set_fmt,
> >  };
> 
> -- 
> Regards,
> 
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
