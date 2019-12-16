Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E930E11FD6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 05:05:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LldEN41NSHG/MwkKS6ukIEFAeEwuC5hYyMAr+LyeomQ=; b=k/Sh1+N14Zp0wC
	Cx2HY4jDvZWKlz6DufOccuI+ofixXW3rHKeEzY7Sm3n1qjaihbAYM6kM9Us7Mq0fRIfrFxhvbp+8N
	SpbS0ywrypWScI4Axq//A2rmOXRIhP38BH3Hr8R+AQA2d3kMKs0XQ5EnG0G5dpXRD1XJ7ZNmHTeDd
	WfDBMVemBxsPcmqrKaha7YFPjW3ZJuh/wzl2qsQBAM+rfIMad1TNS0e5BqJPh64FvH77+l8vXEevL
	Ri9LNwjMOV82Y6gOpubHMJIP0ARNJKWu/qcAYg+8NWRINwy5zHLe9Uid575E+65EYqqAZz72dlFkv
	UmEJu7B+5vUfaAqswihg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ighcu-000509-Ry; Mon, 16 Dec 2019 04:04:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ighck-0004zl-Ob
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 04:04:48 +0000
Received: by mail-pf1-x443.google.com with SMTP id 2so4830538pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 20:04:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KahZqBcsSeKct0EiqWh21SP8RWNU6LEX1G6vgvPIaWU=;
 b=kGwLd5atrUc73L3QDEe7IMwNAXlqPT7cFEDLFPFPUXSsHutHgEC2AwTFxI/8VI+KQn
 iPEHYAOrXYVuYu6BVCM+RofvQdR1HSJ65F7IOjR0VY2VBWfdQC/xxujDPNoz+pcVV5tH
 iGF/BFq+NZosrFooUh0y88Mv2AI4mN0k4s/masJGoL+CTBYIBkF7b5M28IJQFurpuagy
 04HZG76QJ0Lpt6u/axhtJI7XnmlHNsyhq7U2WQ+dc7Lo1VLQptTYkAj9NkLkeIcyJrfs
 IVhsNjaw+gS3tdlGE7mmg1hK5ftiznqpMdPFSttg7rACDfQTOGvPqlEmBgsy8lggHuE5
 dALQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KahZqBcsSeKct0EiqWh21SP8RWNU6LEX1G6vgvPIaWU=;
 b=fzlkOD/n126K8Z+eE1dyInn23GNo21rTin/+uXFaGsd9amluAK6L/F8EWuv4YH0kRo
 CoWrkB23e/R+dx4dqPntwk2i0ZdbxyT7rxq8MbuQDM6SeK+98O3Aqk37GM7wAN67+n+v
 u0oZTQsCV2+KG4Fw6yr71QUeo7eHZbirZVPDUWPZDtNyP/YQs7RTYBbQ2RzhbQntoCdC
 66oJxStxnnpEfBqO9xsQM9HL+NVeZts+7EK7VRrYgwgEL0xZhk/skzjd7N/fJbiB2mtP
 gnePH2vqQUpvjUj/UoEKJJjURE8RbeVAzXgsTDjFhOZ/fzQVMxc5UCimIS0HN73JOKjL
 8bQg==
X-Gm-Message-State: APjAAAX3gUMw6VJxZPCGznzBf/xTCHInR6f6ojDoecMIhjRGZHt4B7R2
 5IA/7QUnPxvxi+y/1FrVNNNQ
X-Google-Smtp-Source: APXvYqyVi0+Wbe50rt3k5sbyx+Sr5W0wpzKMSIEk9kmraZfdbZ3nxQhfzWFDFBYzxcKOueAOPfg6eg==
X-Received: by 2002:a63:9d8f:: with SMTP id i137mr15549868pgd.33.1576469085659; 
 Sun, 15 Dec 2019 20:04:45 -0800 (PST)
Received: from Mani-XPS-13-9360 ([2409:4072:797:cc22:ad66:df45:6a09:a260])
 by smtp.gmail.com with ESMTPSA id g191sm19637765pfb.19.2019.12.15.20.04.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 20:04:44 -0800 (PST)
Date: Mon, 16 Dec 2019 09:34:34 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: karthik poduval <karthik.poduval@gmail.com>
Subject: Re: [PATCH 4/5] media: i2c: imx290: Add support to enumerate all
 frame sizes
Message-ID: <20191216040434.GA14778@Mani-XPS-13-9360>
References: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
 <20191129190541.30315-5-manivannan.sadhasivam@linaro.org>
 <20191203085604.GC5282@valkosipuli.retiisi.org.uk>
 <20191215174834.GD11427@Mani-XPS-13-9360>
 <CAFP0Ok8Vqze8ZRyT1WvMXZeBLcx7oKcTO1Kad4kSFLbpHkok-A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFP0Ok8Vqze8ZRyT1WvMXZeBLcx7oKcTO1Kad4kSFLbpHkok-A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_200446_813338_D4E42992 
X-CRM114-Status: GOOD (  21.60  )
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
 Sakari Ailus <sakari.ailus@iki.fi>, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 15, 2019 at 03:52:37PM -0800, karthik poduval wrote:
> What if someone adds RAW8 or RAW14 formats in future the enum frame sizes
> code doesn't have to be patched again if written using a loop on formats
> array.
> 

Please don't top post :)

IMX290 only supports RAW10 and RAW12 formats. And I don't think this driver
can handle any other CMOS sensors from Sony, so looping over imx290_formats
seems unnecessary to me.

Thanks,
Mani

> On Sun, Dec 15, 2019, 9:49 AM Manivannan Sadhasivam <
> manivannan.sadhasivam@linaro.org> wrote:
> 
> > Hi Sakari,
> >
> > On Tue, Dec 03, 2019 at 10:56:04AM +0200, Sakari Ailus wrote:
> > > On Sat, Nov 30, 2019 at 12:35:40AM +0530, Manivannan Sadhasivam wrote:
> > > > Add support to enumerate all frame sizes supported by IMX290. This is
> > > > required for using with userspace tools such as libcamera.
> > > >
> > > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org
> > >
> > > > ---
> > > >  drivers/media/i2c/imx290.c | 20 ++++++++++++++++++++
> > > >  1 file changed, 20 insertions(+)
> > > >
> > > > diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
> > > > index d5bb3a59ac46..f26c4a0ee0a0 100644
> > > > --- a/drivers/media/i2c/imx290.c
> > > > +++ b/drivers/media/i2c/imx290.c
> > > > @@ -468,6 +468,25 @@ static int imx290_enum_mbus_code(struct
> > v4l2_subdev *sd,
> > > >     return 0;
> > > >  }
> > > >
> > > > +static int imx290_enum_frame_size(struct v4l2_subdev *subdev,
> > > > +                             struct v4l2_subdev_pad_config *cfg,
> > > > +                             struct v4l2_subdev_frame_size_enum *fse)
> > > > +{
> > > > +   if ((fse->code != imx290_formats[0].code) &&
> > > > +       (fse->code != imx290_formats[1].code))
> > >
> > > Please use a loop over imx290_formats instead.
> > >
> >
> > May I know why? What benefit does it provide over current method?
> >
> > Thanks,
> > Mani
> >
> > > > +           return -EINVAL;
> > > > +
> > > > +   if (fse->index >= ARRAY_SIZE(imx290_modes))
> > > > +           return -EINVAL;
> > > > +
> > > > +   fse->min_width = imx290_modes[fse->index].width;
> > > > +   fse->max_width = imx290_modes[fse->index].width;
> > > > +   fse->min_height = imx290_modes[fse->index].height;
> > > > +   fse->max_height = imx290_modes[fse->index].height;
> > > > +
> > > > +   return 0;
> > > > +}
> > > > +
> > > >  static int imx290_get_fmt(struct v4l2_subdev *sd,
> > > >                       struct v4l2_subdev_pad_config *cfg,
> > > >                       struct v4l2_subdev_format *fmt)
> > > > @@ -820,6 +839,7 @@ static const struct v4l2_subdev_video_ops
> > imx290_video_ops = {
> > > >  static const struct v4l2_subdev_pad_ops imx290_pad_ops = {
> > > >     .init_cfg = imx290_entity_init_cfg,
> > > >     .enum_mbus_code = imx290_enum_mbus_code,
> > > > +   .enum_frame_size = imx290_enum_frame_size,
> > > >     .get_fmt = imx290_get_fmt,
> > > >     .set_fmt = imx290_set_fmt,
> > > >  };
> > >
> > > --
> > > Regards,
> > >
> > > Sakari Ailus
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
