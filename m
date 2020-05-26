Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A94E1E266E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 18:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvHZ9ET2Y1aTt4xFYI1xt1kCw1k0U958G2+vE5b5tFI=; b=h7eQYUBekBCy0a
	r3N0Ps+BXsACkwnnAeUPWQIgNTX5hmJEcRnaz6XuqqUMRNLD1uZNtoCV2kR3lL99ZkDMTiLj/Pj9v
	3ivoDDOGKLfsODAAupHGaLYENbc4gsn1GrJoW9FnOJrIftxNUrfdWz8vEGEi0zk2TTvCyGf3ENbXU
	zz1vSLjwXFZBnRRU1Xokh/QIr8TnaC/PTMWHnxqJK9iOWAlE1aImV5d0sSQ/9Z9l2U4a4dZodyAkG
	DaNdQs/fGEBvBOF7Hfa9sJ20b9+ysz5mr/bWzZw0Ruf9Wn0Oi1KQZOR+FAGSrDkjFWC2sjYiZSBGn
	g7uGNztWpH/woSnnEOCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdc5a-0000oL-PD; Tue, 26 May 2020 16:06:02 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdc5O-0000nU-JO
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 16:05:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id t18so6876286wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 09:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7cPMOzmzrq5LcaA6afOlcnUvTlySbm2Zz5cRjRBFUB8=;
 b=hHB73bWGgQwTTVf8pYNmpNnooECAKXvA6l40jbW1uF1ZgSFspa4p5HEpzKOEmq5d20
 MbKb6r6mfL/O1NX8CgiiI9OI5qA9kXXUDrCA5TEtqQxuTV72NYqO6Z+iZYc/LUaJ2guQ
 v2/vgZVeEE5aloi0hzrlkeL0Mtu4rXHaBHDfm+P9FDl4IaBu1UlfIYP3ZH9KphTe2l0I
 l9f+H/yPg5k4Vhe9e0O5WU60ouZHRKLTzP3DmRQX7+vEVJI9CODui4DnmyDQGWvgRv/z
 BcWuO1KOXDQVFhhLDcTzU6ENEm3Bm3mo5s/exOQOZ/Qh68+Ka+fCJDgekxM4EdjrADko
 IIHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7cPMOzmzrq5LcaA6afOlcnUvTlySbm2Zz5cRjRBFUB8=;
 b=EzCGs2+Sd/24Ghi6hC4vy6Nb5jAXyfK42NHyOdJgT3qpBP7M8bO93lXw7XUuRZcJ+4
 6HgPDlp94vJd/CkVO95Pbw7xzOA7m3SRTnyIpEltQpd9l5mSxBfxklzmgWH/fQS9QLYI
 lpVcbIdLxALqXstBCU51/BVDcFaxAcwKUUT0smo9UEF90NArVZ1t3BGsKe7q7D+G+9Je
 b0EPURZOJfPEl+DOzyTjIZC+BfyR1mvJ0YSbs7MYVkZyNtjF62+M3b7zNaYUBcSH+xbo
 0Afg3Zqwp9lSClVDyRNy7QklI0DBSrnCLs5vIQ4bkKVfJseqRbGQwQWMuPLKy3QM8ZFt
 oivA==
X-Gm-Message-State: AOAM532QZer1fPPHipnJbQKvndT8GaKRNWHg43aTFy0bW3ySO2otLwVQ
 v/rUJ1HWQ4jHO6sAdH+9ZdPENZoprG4Yw2SB3//MpA==
X-Google-Smtp-Source: ABdhPJzbNZzcmv/E+mCoy9/ugd+2hWuRWbmHIetsobYOKHTzpGICK6/mhGNbuGycrtPlxefT05gv7k8iaVD6IUq7zHc=
X-Received: by 2002:a5d:500d:: with SMTP id e13mr12590422wrt.150.1590509148646; 
 Tue, 26 May 2020 09:05:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
 <20200524192505.20682-8-andrey.konovalov@linaro.org>
In-Reply-To: <20200524192505.20682-8-andrey.konovalov@linaro.org>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Tue, 26 May 2020 17:05:31 +0100
Message-ID: <CAPY8ntAW+yfxw0NTDi3yEwoZ+AqUuXD__pqB977bXgJr=jnNXg@mail.gmail.com>
Subject: Re: [PATCH v3 07/10] media: i2c: imx290: Add RAW12 mode support
To: Andrey Konovalov <andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_090550_688903_8E82DAD8 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 LKML <linux-kernel@vger.kernel.org>, a.brela@framos.com,
 Peter Griffin <peter.griffin@linaro.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 manivannan.sadhasivam@linaro.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrey

Thanks for the patch.

On Sun, 24 May 2020 at 20:26, Andrey Konovalov
<andrey.konovalov@linaro.org> wrote:
>
> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>
> IMX290 is capable of outputting frames in both Raw Bayer (packed) 10 and
> 12 bit formats. Since the driver already supports RAW10 mode, let's add
> the missing RAW12 mode as well.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
> ---
>  drivers/media/i2c/imx290.c | 36 +++++++++++++++++++++++++++++++++---
>  1 file changed, 33 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
> index 162c345fffac..6e70ff22bc5f 100644
> --- a/drivers/media/i2c/imx290.c
> +++ b/drivers/media/i2c/imx290.c
> @@ -71,6 +71,7 @@ struct imx290 {
>         struct clk *xclk;
>         struct regmap *regmap;
>         u8 nlanes;
> +       u8 bpp;
>
>         struct v4l2_subdev sd;
>         struct v4l2_fwnode_endpoint ep;
> @@ -90,10 +91,12 @@ struct imx290 {
>
>  struct imx290_pixfmt {
>         u32 code;
> +       u8 bpp;
>  };
>
>  static const struct imx290_pixfmt imx290_formats[] = {
> -       { MEDIA_BUS_FMT_SRGGB10_1X10 },
> +       { MEDIA_BUS_FMT_SRGGB10_1X10, 10 },
> +       { MEDIA_BUS_FMT_SRGGB12_1X12, 12 },
>  };
>
>  static const struct regmap_config imx290_regmap_config = {
> @@ -261,6 +264,18 @@ static const struct imx290_regval imx290_10bit_settings[] = {
>         { 0x300b, 0x00},
>  };
>
> +static const struct imx290_regval imx290_12bit_settings[] = {
> +       { 0x3005, 0x01 },
> +       { 0x3046, 0x01 },
> +       { 0x3129, 0x00 },
> +       { 0x317c, 0x00 },
> +       { 0x31ec, 0x0e },
> +       { 0x3441, 0x0c },
> +       { 0x3442, 0x0c },
> +       { 0x300a, 0xf0 },
> +       { 0x300b, 0x00 },
> +};
> +
>  /* supported link frequencies */
>  static const s64 imx290_link_freq_2lanes[] = {
>         891000000, /* 1920x1080 -  2 lane */
> @@ -421,7 +436,12 @@ static int imx290_set_ctrl(struct v4l2_ctrl *ctrl)
>                 } else {
>                         imx290_write_reg(imx290, IMX290_PGCTRL, 0x00);
>                         msleep(10);
> -                       imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW, 0x3c);
> +                       if (imx290->bpp == 10)
> +                               imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW,
> +                                                0x3c);
> +                       else /* 12 bits per pixel */
> +                               imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW,
> +                                                0xf0);
>                         imx290_write_reg(imx290, IMX290_BLKLEVEL_HIGH, 0x00);
>                 }
>                 break;
> @@ -496,7 +516,7 @@ static u64 imx290_calc_pixel_rate(struct imx290 *imx290)
>         u8 nlanes = imx290->nlanes;
>
>         /* pixel rate = link_freq * 2 * nr_of_lanes / bits_per_sample */
> -       return (link_freq * 2 * nlanes / 10);
> +       return (link_freq * 2 * nlanes / imx290->bpp);

This doesn't link on a 32bit system as it's a 64bit divide:
ERROR: "__aeabi_ldivmod" [drivers/media/i2c/imx290.ko] undefined!
It ought to be using do_div().

Admittedly it didn't compile before as you still had a s64 divide by
10, but I hadn't tried that :-)

  Dave

>  }
>
>  static int imx290_set_fmt(struct v4l2_subdev *sd,
> @@ -533,6 +553,7 @@ static int imx290_set_fmt(struct v4l2_subdev *sd,
>         } else {
>                 format = &imx290->current_format;
>                 imx290->current_mode = mode;
> +               imx290->bpp = imx290_formats[i].bpp;
>
>                 if (imx290->link_freq)
>                         __v4l2_ctrl_s_ctrl(imx290->link_freq,
> @@ -577,6 +598,15 @@ static int imx290_write_current_format(struct imx290 *imx290)
>                         return ret;
>                 }
>                 break;
> +       case MEDIA_BUS_FMT_SRGGB12_1X12:
> +               ret = imx290_set_register_array(imx290, imx290_12bit_settings,
> +                                               ARRAY_SIZE(
> +                                                       imx290_12bit_settings));
> +               if (ret < 0) {
> +                       dev_err(imx290->dev, "Could not set format registers\n");
> +                       return ret;
> +               }
> +               break;
>         default:
>                 dev_err(imx290->dev, "Unknown pixel format\n");
>                 return -EINVAL;
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
