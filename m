Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 397111CEEE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 10:14:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRS/LnQuIIzwite7xn7ipmqooPQ3ZE81YzkfcIJ2GCw=; b=CuPtilTf/UNcsV
	gVyCYTwCKhxdfubOJCD448O0DmxDFwMlfWBB9XlkLXXWYWzXaPPrkwkJSxXYk/90AOzI00CJpoTjY
	uW4FftZIXZHWmxY2XtABD5ihw4ubdcqFri+r+Gru34LtCjBC3IbwhUyJ4pYErN+s1JWPq/mH1Y5YU
	3nagaCVOFnFDkWG7su5QGPf+t+3jbW+9zGj6CAOjVtsUQhSSnG3H+uSuPDa7XKv4mS8t5lslXXLYy
	4AESGnKuuZCw4Q8DuTnIhF0OdyyuIOQhnq7c5I//0PFugeTzToh9jdQ9yEllkmm3CStIIYM7estUB
	oaA9zqr78UIZDVmPA0cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQ2y-0002E5-4b; Tue, 12 May 2020 08:13:52 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQ2p-0002CZ-JM
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 08:13:45 +0000
Received: by mail-ot1-x344.google.com with SMTP id m33so9825437otc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 01:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+/M7ttbizVNgiq3E6e56DHlLpnfL10dXQ3P0u57oqQo=;
 b=B3m+V+H5gTjtrCKtwwO492HjhFTr38Y7VLdRIx8Tr0JsnUUVuJfvLNFpAjkYVRe/MU
 OGhuxIOgscPAJlStLNeONC5jnNM98kozL2u0pPS16qB774cjwhRApsJJSSoWukr1lnGH
 ndMSRfj/B/LQ6dcNI82uqbQkLohbgmAyXx7d4L3tgQ3l3nihXM9IjQ28IC8EK2tj/GD9
 iHnOYCeOgJr/UT9aaWtYgPY3TJC7SJd+g13SZ9TH5FPj9pe98IZSRDzO8BHktwFWhKDd
 X1cRshj6SP1m+RsHrtI3l2vN5q2jx7wmf8L2tcm6zsUJnPybnwRmro6/JKHf/oSS9sVT
 GmXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+/M7ttbizVNgiq3E6e56DHlLpnfL10dXQ3P0u57oqQo=;
 b=iIHcgIdWHsq7ivhatvST0XDJiP1LlAMq4xFAde4fByQdnhjIm4xnYKeiGw//WHDVX4
 esmYmqN/XRbWVXWHErDxlJdUhSyz9ud1XBVs9Bz1iAfoFQ/eA/rkF6qp12fopKcg15uA
 n7szcmeUepkQuZsvm4E2etabhpBpz6aMBH3RolKPm5VbCSsB4cRLO8K7AU696BhojzMM
 XuYIUv1nR2NeirawnpaCkq0zbmRl9UnKUlICGVMyw/5xvrfneAMMLcpl5xjrTIU64K7h
 USWsIMXbPKF3W5go+yfs8/0pSn3rFY7ozt+p+ggwbj/GLGVnsXuP9VK7ZBe7us55PB2w
 oUkA==
X-Gm-Message-State: AGi0PuakpA/efdxZX6w70THldoHigYDeNT233yH4v5BYqsoZ7C/O+U7D
 mVufdZKkqyQ/qgKeK1SSo0YHkKnRDTowFiglTMeSew==
X-Google-Smtp-Source: APiQypLADIaeTtFDiDZj0oHRCnE87JDFcA3KKjn9my/GbFnCnkWw5321wESGx5JUU0FJwwNUrkgSoNw73WHvEVtCGSA=
X-Received: by 2002:a9d:3462:: with SMTP id v89mr15637311otb.68.1589271222321; 
 Tue, 12 May 2020 01:13:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200511110350.11565-1-robert.foss@linaro.org>
 <20200511110350.11565-3-robert.foss@linaro.org>
 <20200512002518.GX867@valkosipuli.retiisi.org.uk>
In-Reply-To: <20200512002518.GX867@valkosipuli.retiisi.org.uk>
From: Robert Foss <robert.foss@linaro.org>
Date: Tue, 12 May 2020 10:13:31 +0200
Message-ID: <CAG3jFytw+GH4bXsUpS-=En52F67_1iPmOtOTo36ujE69j-9h3g@mail.gmail.com>
Subject: Re: [PATCH v8 2/3] media: ov8856: Add devicetree support
To: Sakari Ailus <sakari.ailus@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_011343_672600_91285DD1 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Ben Kao <ben.kao@intel.com>,
 Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 May 2020 at 02:26, Sakari Ailus <sakari.ailus@iki.fi> wrote:
>
> Hi Robert,
>
> On Mon, May 11, 2020 at 01:03:49PM +0200, Robert Foss wrote:
> > Add match table, enable ov8856_probe() to support
> > both ACPI and DT modes.
> >
> > ACPI and DT modes are primarily distinguished from
> > by checking for ACPI mode and by having resource like
> > be NULL.
> >
> > Signed-off-by: Robert Foss <robert.foss@linaro.org>
>
> Applied with this small diff --- please check with checkpatch.pl on the
> next time. Thanks!

Thanks Sakari, I appreciate it!

>
> diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
> index 1657e03d9a9d..4ca27675cc5a 100644
> --- a/drivers/media/i2c/ov8856.c
> +++ b/drivers/media/i2c/ov8856.c
> @@ -1226,8 +1226,7 @@ static int ov8856_get_hwcfg(struct ov8856 *ov8856, struct device *dev)
>         if (!fwnode)
>                 return -ENXIO;
>
> -       ret = fwnode_property_read_u32(fwnode, "clock-frequency",
> -               &xvclk_rate);
> +       ret = fwnode_property_read_u32(fwnode, "clock-frequency", &xvclk_rate);
>         if (ret)
>                 return ret;
>
> @@ -1244,10 +1243,11 @@ static int ov8856_get_hwcfg(struct ov8856 *ov8856, struct device *dev)
>         }
>
>         if (xvclk_rate != OV8856_XVCLK_19_2)
> -               dev_warn(dev, "external clock rate %d is unsupported", xvclk_rate);
> +               dev_warn(dev, "external clock rate %u is unsupported",
> +                        xvclk_rate);
>
>         ov8856->reset_gpio = devm_gpiod_get_optional(dev, "reset",
> -               GPIOD_OUT_LOW);
> +                                                    GPIOD_OUT_LOW);
>         if (IS_ERR(ov8856->reset_gpio))
>                 return PTR_ERR(ov8856->reset_gpio);
>
> --
> Kind regards,
>
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
