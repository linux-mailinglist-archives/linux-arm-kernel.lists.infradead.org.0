Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F1F10B708
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 20:49:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WsG62n5cRstS3f0cVxp7+SVF28TBjy1qjF9iAE6uCDM=; b=coPHaZKMu0zVtV
	KjZBREOU9q+SBQWauMZqSnR+X53vTl8GTdqqKVJn8TdWoeJrCQj0qxkPomcRRKdj3NNw5mcU+JDte
	qmWjd/G1cV1SHagJXPsGDVhuKYpH5dzsSBVhf1RcbrGCpV0nPEvO0Bue6MKQgUGzNZ2gybKQ4fuJS
	4egtGrUv6jrYETmSRpxLp5Dg9LgDCm7RNfqxz23kEPgJxOi7sqA2cQKzyq09Ar09nwglVMz6eOb3e
	eKIeDw8E9beK74xp3vk4twtTFIfHB6GjYLOQN5YR3y4uGnZOK/jZI+2W6TrvZVGzbGXYL1v8m6JY3
	6EHXjwtPlSc06T0f61NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia3JH-0002v5-AG; Wed, 27 Nov 2019 19:49:11 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia3J5-0002uU-4M
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 19:49:00 +0000
Received: by mail-oi1-x244.google.com with SMTP id n14so21135553oie.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 11:48:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hJQOsjHUQwGyDgldLtvmDQQC956sPZlhFuJn6q/Fye4=;
 b=UHQm3Z4sQErDpbdcFsI5LZbvUBE5BhMXUdsIzb7O41xb6Fspwq2A1/BPVDQTjXSLdr
 ikEI2AYLU+Ctu05Qf5u6bYWG5Lv63zshN411Mdsn1W+4fPFdDgMahME+EZCOJoU1CwJE
 35v5Ycykph2Hq7xeEUKlTOBl/6E7kGL1nu5zSgrq7Xb8TN+sHbdlAw19oDeYA+AjLBgT
 uqu17Y9ld56yXwu9aHlpdmiTJDgzKXhhd9fayPZmR2GSNicg68x2CeUBNU6BukSF4B2/
 Uwsg1kCy2nPtULkc6eJeqq+y+2aHS3iyXlg2wQC2DR7fcJBxqjd2FJ5aYi/hj+VnLm4B
 SzVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hJQOsjHUQwGyDgldLtvmDQQC956sPZlhFuJn6q/Fye4=;
 b=XysGL3Kno0ttfmmYtX68nPonnuQ+wJGh5ueAa+D4j0Lbc3VAnTYhLOv3yq7pXYA1qq
 7IWxR1Cf5ie+3yoR3NecqVji8054lOCf0P3hEkiGdMFFNTI1siddn/MaCt798Opxx6QT
 cEQX5vBZpAQck/RHcBU+rAynOHXgpaBKT1M494bbkIEAkgKFK0Nd4NiUfAlXqPPaPwns
 umJslcDdryfYa7uQ0RIir8HyXVSp+mHd5+2NHKJrr5BneGQoJxRyRcLIFgcDfLYgvTsa
 nZKaoplr0fIezmaYSHDytjUugdt3SJfM1gn8wA7e2xpXnnboUvQPnOhEu4jM2bXgq3sc
 6sYA==
X-Gm-Message-State: APjAAAWDIR5AzP6Gld1zum60+N8psP8N9ZTE5Vvsr8v0lxXkM6bxp7t7
 2i5iwarouKc7UfO45Qh9QV2I0DbKpormTKkGw6g=
X-Google-Smtp-Source: APXvYqyED1U8iGKLv5Q8myGQWskAymaEmPDOweek/ULUMOk2izeVMnMgtOcUrHFsfo71UXovu5AJlOMgACDpkBnTwd4=
X-Received: by 2002:aca:5e03:: with SMTP id s3mr5733588oib.88.1574884137631;
 Wed, 27 Nov 2019 11:48:57 -0800 (PST)
MIME-Version: 1.0
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-2-anarsoul@gmail.com>
 <20191127111419.z5hfu5soxceiivg6@core.my.home>
 <20191127173547.ch3pcv3lxgdcrfnu@gilmour.lan>
 <CAEExFWvG-Af4qtUrxQV4ssNQCVQAmpXfxB+92wX+6ZxUNfX-Jw@mail.gmail.com>
In-Reply-To: <CAEExFWvG-Af4qtUrxQV4ssNQCVQAmpXfxB+92wX+6ZxUNfX-Jw@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 27 Nov 2019 11:48:32 -0800
Message-ID: <CA+E=qVcdwQO3Y8ismmBN-gRVNMs1Thx+TPLqstKM9fYf2_0qFQ@mail.gmail.com>
Subject: Re: [PATCH v6 1/7] thermal: sun8i: add thermal driver for
 H6/H5/H3/A64/A83T/R40
To: Frank Lee <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_114859_175546_FE8DBADB 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 11:44 AM Frank Lee <tiny.windzz@gmail.com> wrote:
>
> Hello Vasily,
>
> Thank you very much for your work on this.
> This looks good to me.

Thanks!

> By the way, I would like to ask comments about adding the following code.

Can we add it as follow up patch? I don't think that I have a device
with working suspend to test it and I'm hesitant to add any code that
I can't test.

>
> diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> index c0ed60782b11..579dde5e0701 100644
> --- a/drivers/thermal/sun8i_thermal.c
> +++ b/drivers/thermal/sun8i_thermal.c
> @@ -629,11 +629,63 @@ static const struct of_device_id of_ths_match[] = {
>  };
>  MODULE_DEVICE_TABLE(of, of_ths_match);
>
> +static int __maybe_unused sun8i_thermal_suspend(struct device *dev)
> +{
> + struct ths_device *tmdev; = dev_get_drvdata(dev);
> +
> + clk_disable(tmdev->mod_clk);
> + clk_disable(tmdev->bus_clk);
> +
> + reset_control_assert(tmdev->reset);
> +
> + return 0;
> +}
> +
> +static int __maybe_unused sun8i_thermal_resume(struct device *dev)
> +{
> + struct ths_device *tmdev; = dev_get_drvdata(dev);
> + int error;
> +
> + error = reset_control_deassert(tmdev->reset);
> + if (error)
> + return error;
> +
> + error = clk_enable(tmdev->bus_clk);
> + if (error)
> + goto assert_reset;
> +
> + clk_set_rate(tmdev->mod_clk, 24000000);
> + error = clk_enable(tmdev->mod_clk);
> + if (error)
> + goto bus_disable;
> +
> + sun8i_ths_calibrate(tmdev);
> +
> + ret = tmdev->chip->init(tmdev);
> + if (ret)
> + goto mod_disable;
> +
> + return 0;
> +
> +mod_disable:
> + clk_disable(tmdev->mod_clk);
> +bus_disable:
> + clk_disable(tmdev->bus_clk);
> +assert_reset:
> + reset_control_assert(tmdev->reset);
> +
> + return 0;
> +}
> +
> +static SIMPLE_DEV_PM_OPS(sun8i_thermal_pm_ops,
> + sun8i_thermal_suspend, sun8i_thermal_resume);
> +
>  static struct platform_driver ths_driver = {
>   .probe = sun8i_ths_probe,
>   .remove = sun8i_ths_remove,
>   .driver = {
>   .name = "sun8i-thermal",
> + .pm = &sun8i_thermal_pm_ops,
>   .of_match_table = of_ths_match,
>   },
>  };
>
> Yangtao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
