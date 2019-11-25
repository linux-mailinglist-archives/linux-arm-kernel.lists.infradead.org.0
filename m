Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E09108AFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 10:34:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+A05jVvVeCyW2w/h5lHpA/JkvYDQdJn/rvgeqedbCBY=; b=MGj6LsrFhPjie1
	yjPuS3krpCxKVe2BkbGAAmRRhU7rIFDLvUeQH2dLtiLaowrrdNUUyDOmmrWzOSNxY2UeugbAgpym8
	lR/cYQ80jIdrIJKJl/LDTbGU98DYZ/kdI5mSU3BM9/aCJPVr9COVvoWpXBiXj8t/GFWRdLI3V3nPt
	e6wg1II1aHMeGuRAqDNkgtI7iYuxnHzTsQbAmu5ebMtwLi2en10qXGXr6nxnno4U8U4lms4APXsFH
	1DKCc3jJYEIgX2CtzWRpb44knpah1eSY//JA4zUU7qWYlBl3Pqyz4NYfG0LEXEo+WH+uE72Yhk//x
	XWZ0ijXWlD9uB3xMah+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZAlB-00031e-85; Mon, 25 Nov 2019 09:34:21 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZAkx-000308-1b
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 09:34:10 +0000
Received: by mail-ed1-x542.google.com with SMTP id f7so12049743edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 01:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5hxAPhYLgkjAC0glPWrMWh5sNJUjuPwkk/Zd+BYl4dA=;
 b=n0qMAxe/w0ZeKERleFOBgcA9JrLOVHkheN7cFtom/PmRGQrdhoib8QphXajnbHidBh
 D3TTGA10ICGPuYSWRn+Nx6shOwHUJo4Xsr4kKkihn9TRCO6mk4UKTDY61uMzh8rBHaB1
 ZAU1sCWOo6enIe29Pcnf4VAkh4QO7aAQBoaHI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5hxAPhYLgkjAC0glPWrMWh5sNJUjuPwkk/Zd+BYl4dA=;
 b=SLC1jlFrEYmYPFnIkVKIrfvpmYLlj86yakWFgsMAwZKNnDd5BX5EtJtc2A2OWGZde5
 UCBZBygpUjSfBfwbxvL78jqZxvji7mjgz0ew3fIvKplpbCJhr9zIEfFpHYYty1Vo7Vkk
 NdgB0HMjCLXE1aOKp0x4W8dkFh6xbSh5QtyAIrk3/55SzsNxvfWThNwC7XT30xkz3NUS
 iHJskih+AtI5ep6/XKenswL12Yfcr7b/IasISdlEjrdXfVuGlSwG0CvaZxogCHnsmXdU
 9Lf6El72HRuWrJJVFT+4Gk9+76I1WgcpMx102oW51F5QvKhoIw6OX1hknqcHVdy819JC
 HaqA==
X-Gm-Message-State: APjAAAWCs0SKq93d8mV0tCKlIO2o3NgM2a26xBJxnskuMiHsAr4IwqXz
 CKvRRLDcJR+HWnsKgEDhIht1U6kp5nS/bzkUww/HWA==
X-Google-Smtp-Source: APXvYqydDtp531AXtenv6mp5/TxUBdNXj0kZcXkFGGkNCV1naYHb2inz8WFVHVtUMbwv+kaqLxCZMeg6SBUFhIxhDSU=
X-Received: by 2002:a17:906:b856:: with SMTP id
 ga22mr17027902ejb.199.1574674444048; 
 Mon, 25 Nov 2019 01:34:04 -0800 (PST)
MIME-Version: 1.0
References: <20191031090213.27727-1-dongchun.zhu@mediatek.com>
 <20191031090213.27727-3-dongchun.zhu@mediatek.com>
In-Reply-To: <20191031090213.27727-3-dongchun.zhu@mediatek.com>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Mon, 25 Nov 2019 17:33:28 +0800
Message-ID: <CANdKZ0cMCWKmFcF44M0LBgwa6a3rvD0JdqFgkcjHqVHwMUS6yg@mail.gmail.com>
Subject: Re: [V3, 2/2] media: i2c: ov8856: Add support for more sensor modes
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_013409_199868_C3659D7E 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>, andriy.shevchenko@linux.intel.com,
 srv_heupstream@mediatek.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, shengnan.wang@mediatek.com,
 Tomasz Figa <tfiga@chromium.org>, louis.kuo@mediatek.com,
 =?UTF-8?B?U2ogSHVhbmcgKOm7g+S/oeeSiyk=?= <sj.huang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 sakari.ailus@linux.intel.com, Matthias Brugger <matthias.bgg@gmail.com>,
 bingbu.cao@intel.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:MEDIA INPUT INFRASTRUCTURE \(V4L/DVB\)"
 <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Thu, Oct 31, 2019 at 5:12 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> This adds two more sensor modes for Omnivision ov8856 image sensor,
> including the resolution of 1632*1224 and 3264*2448, both with the
> Bayer Order of BGGR.
>
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  drivers/media/i2c/ov8856.c | 661 ++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 652 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
> index 8655842..4815c26 100644
> --- a/drivers/media/i2c/ov8856.c
> +++ b/drivers/media/i2c/ov8856.c
> @@ -3,10 +3,13 @@
> [...]
> @@ -1189,6 +1768,42 @@ static int ov8856_probe(struct i2c_client *client)
>                 return -ENOMEM;
>
>         v4l2_i2c_subdev_init(&ov8856->sd, client, &ov8856_subdev_ops);
> +       ov8856->fmt.code = MEDIA_BUS_FMT_SGRBG10_1X10;
> +
> +       ov8856->xvclk = devm_clk_get(&client->dev, "xvclk");
> +       if (IS_ERR(ov8856->xvclk)) {
> +               dev_err(&client->dev, "failed to get xvclk\n");
> +               return -EINVAL;
> +       }
> +
> +       ret = clk_set_rate(ov8856->xvclk, OV8856_XVCLK_24);
> +       if (ret < 0) {
> +               dev_err(&client->dev, "failed to set xvclk rate (24MHz)\n");
> +               return ret;
> +       }
> +       if (clk_get_rate(ov8856->xvclk) != OV8856_XVCLK_24)
> +               dev_warn(&client->dev,
> +                        "xvclk mismatched, modes are based on 24MHz\n");
> +
> +       ov8856->n_shutdn_gpio = devm_gpiod_get(&client->dev, "reset",
> +                                              GPIOD_OUT_LOW);
> +       if (IS_ERR(ov8856->n_shutdn_gpio)) {
> +               dev_err(&client->dev, "failed to get reset-gpios\n");
> +               return -EINVAL;
> +       }
> +
> +       for (i = 0; i < OV8856_NUM_SUPPLIES; i++)
> +               ov8856->supplies[i].supply = ov8856_supply_names[i];
> +
> +       ret = devm_regulator_bulk_get(&client->dev, OV8856_NUM_SUPPLIES,
> +                                     ov8856->supplies);
> +       if (ret)
> +               dev_warn(&client->dev, "failed to get regulators\n");
> +
> +       ret = __ov8856_power_on(ov8856);
> +       if (ret)
> +               dev_warn(&client->dev, "failed to power on\n");
> +

__ov8856_power_off is missing on the error path after the __ov8856_power_on.

>         ret = ov8856_identify_module(ov8856);
>         if (ret) {
>                 dev_err(&client->dev, "failed to find sensor: %d", ret);
> @@ -1241,8 +1856,29 @@ static int ov8856_probe(struct i2c_client *client)
>         return ret;
>  }
>
> [...]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
