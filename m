Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9149A195559
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 11:33:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LD0zePMboqd54CCFD9x3fgUyK5K2aVxAv4E0V1+1CjM=; b=GL0flKtkrIfdzl
	C09zKqz0VhvJo3VUDSVFXmcDZbImNeb7s/h1Y/H8aYX1sZRv+6Xx9IsA79+VR6spH3iucabdWfhzF
	4ivcWKTe0bQSh4BRnOzw2cC1M9F7OhRCWbum3LjFbh0cxIe+vqzb0QcAEwt7Dw5VYM8koAkfgE/ou
	x0SQkpiKLKqdPJVDUEWrVFuo6qxKEWCx4g+T1oSEcTAjk+h4XDj5iKmUR/O2PXdPlsURzMyhrfJ+k
	Z4qEHY2gr5I28rOti035hWJRS/uvkRhwjn92hGD3ADlZKsHeBaJVmpoREW5xdbLjE2jDgXf4nwNDE
	qvbP8sESiaGBm4m33q7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmIF-0004t5-P0; Fri, 27 Mar 2020 10:32:51 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmI7-0004se-7G
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 10:32:44 +0000
Received: by mail-ot1-x342.google.com with SMTP id a49so9147996otc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 03:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YYF9IlkYIan1+UFMEoSWkc8FBz64pPNX5SeJSHAu8kg=;
 b=xXRePv+8SgkF6sJVJLkuv6mQ3y/WTJtU4pKOk2h/g4ZRRHoUdhWf7be/9xVvXKJdOJ
 39uHfWxJUgkVtpS11k+sbvlmqrHPQZp4BnoMDUn9WmW3l093QS/IYdfe9Ov6MsLD0orX
 w3om+wu4CpiMG2891c46ivxP+5hF4oDBg/2XwZVmw0wycDU+vm++0LepD4VMusQXW9M8
 3DH+9eMSAFaeaUdQAvQIXWhp1gr1VgSA3s58G7EWE8Lwv+23SbpOZn67vq4HXZzLA10c
 9m/EzI/Ld/dq/n+X1pjXT4ciAgnrosOzyR+x1GIxsSkrvCUkSM+eiZJ1mgeNdRZhOWaY
 lCgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YYF9IlkYIan1+UFMEoSWkc8FBz64pPNX5SeJSHAu8kg=;
 b=a0bRtGBbT7ud3g5Az4vAHzokOZ3cT+B4WYczMJVHGL4yYlnHMTFWLVo4FrWPUrz+Jv
 Q4eylCpq7J/jI7td3uQZR1tCJn3ViV5r1rGkA5+j2tRt7CLaOcc4gSUnw+65VMjpUDUP
 pmsyNd/CqUer/HQXxI+UZrUGXrcnRZJ1+92/AWcZwltB653QGpf0Ea2CQGARSAejNReK
 2GL4j1y/34E5HNj31XDCAl0Yr2Q9xNd6P6Y7PyCHHi+CSywYT7fa866mABvM21lVNGSM
 ytnji2WAbbIcFk0GHQNNUu6Mq7ZL+MkHsE5IEuuSVlRv8E/4s5QLQmPnnJjn+pl2qmZB
 tsgw==
X-Gm-Message-State: ANhLgQ18XAmsT76ikxKsZJEAIJ7dZVoTXbjZHUtOSqqdiHULwcvpMH5q
 XlXmIgq6QTlxu1MB9fL8E+cqWh9rQKiVBCfI/eeujA==
X-Google-Smtp-Source: ADFU+vseCXoMGXatVYtvuIKCvvYcHpzp5L/GUxqGEUSN7+BRDLJCxO7pyQfJM0X4rU4ScjZZJpwRtscCky9sePUUX9s=
X-Received: by 2002:a9d:27a7:: with SMTP id c36mr9836243otb.68.1585305162293; 
 Fri, 27 Mar 2020 03:32:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200313110350.10864-1-robert.foss@linaro.org>
 <20200313110350.10864-3-robert.foss@linaro.org>
 <20200313121746.GC5730@valkosipuli.retiisi.org.uk>
 <CAG3jFytpx8_+DKhUVZnUFeMYK82Z1hFWcEnbyD0=4a8p3ojteg@mail.gmail.com>
 <20200326144725.GA2394@valkosipuli.retiisi.org.uk>
In-Reply-To: <20200326144725.GA2394@valkosipuli.retiisi.org.uk>
From: Robert Foss <robert.foss@linaro.org>
Date: Fri, 27 Mar 2020 11:32:29 +0100
Message-ID: <CAG3jFyu=HOsWNeRFC2t4HjzYrFrLjsbXzAm4+zD50Xq48mqzcw@mail.gmail.com>
Subject: Re: [v2 2/3] media: ov8856: Add devicetree support
To: Sakari Ailus <sakari.ailus@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_033243_276135_0793678D 
X-CRM114-Status: GOOD (  23.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Mar 2020 at 15:47, Sakari Ailus <sakari.ailus@iki.fi> wrote:
>
> Hi Robert,
>
> On Thu, Mar 26, 2020 at 12:56:37PM +0100, Robert Foss wrote:
> ...
> > > > +static int __ov8856_power_on(struct ov8856 *ov8856)
> > > > +{
> > > > +     struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> > > > +     int ret;
> > > > +
> > > > +     ret = clk_prepare_enable(ov8856->xvclk);
> > > > +     if (ret < 0) {
> > > > +             dev_err(&client->dev, "failed to enable xvclk\n");
> > > > +             return ret;
> > > > +     }
> > > > +
> > > > +     gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
> > > > +
> > > > +     ret = regulator_bulk_enable(ARRAY_SIZE(ov8856_supply_names),
> > > > +                                 ov8856->supplies);
> > > > +     if (ret < 0) {
> > > > +             dev_err(&client->dev, "failed to enable regulators\n");
> > > > +             goto disable_clk;
> > > > +     }
> > > > +
> > > > +     gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_LOW);
> > > > +
> > > > +     usleep_range(1500, 1800);
> > >
> > > I think you could omit the delay on ACPI based systems. Or just bail out
> > > early in that case.
> >
> > I'll add a check for reset_gpio being NULL, and skip the sleep for that case.
>
> There could also be a regulator but no GPIO.
>
> I think if you don't have either, then certainly there's no need for a
> delay.

Removing the delay if no action is taken makes sense, but I'm not sure
how best to do it.
If there are no regulators dummy ones are created automatically, which
makes distinguishing between a little bit cumbersome. The regulator
structs could of course all be inspected, and if all are dummy ones,
the delay could be skipped. But is there a neater way of doing this?
Manually inspecting the regs strikes me as a bit inelegant.

>
> ...
>
> > > > +             ov8856->xvclk = NULL;
> > > > +     } else if (IS_ERR(ov8856->xvclk)) {
> > > > +             dev_err(&client->dev, "could not get xvclk clock (%ld)\n",
> > > > +                     PTR_ERR(ov8856->xvclk));
> > > > +             return PTR_ERR(ov8856->xvclk);
> > > > +     }
> > > > +
> > > > +     ret = clk_set_rate(ov8856->xvclk, OV8856_XVCLK_24);
> > >
> > > This should either come from platform data, or perhaps it'd be even better
> > > to get the clock rate and use assigned-clock-rates. I guess that's
> > > preferred nowadays.
> >
> > I'm a bit unsure about what this would look like.
> >
> > Are you thinking something like the way ext_clk is used in smiapp_core.c?
> > I went ahead and implemented support for retrieving and storing
> > 'clock-rates' during the ov8856_check_hwcfg() call, and then setting
> > the rate to the configured rate during probing.
>
> With assigned-clock-rates, you can simply use clk_get_rate().

Ah, I see.

I'll switch to that approach then.

>
> As you get the actual rate, it could be somewhat off of the intended one.
>
> --
> Kind regards,
>
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
