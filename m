Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C771C6F58
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:30:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4mjprRMtHe6XexGwWYU1w72o8n7P66Bob+HpU8Izu4=; b=UsE/F+ColjBqml
	3U+6huLKW449xbJh6/4yGUm3+aO3Yg0HFMISURMqpuHYBXDXyaeyiZxoUJngiKVvTRBxY01UkHCkz
	OD4YMgg0vQzUHtnp5p+cmGUFXohiXR6BYMw/VodpA3dd/mGpzVj2A9EjoO8N/O9Epe5R61/1BMg8L
	T04Fz4Sh/modWYCFl8uV2zTI7TGGZzf71HlolqL1so7iZl3xqCZ1Qo/orKbUOhcEX0fz1Sdku9E/1
	gu9V1XJmnGx2x8kH/NXdhxxHhvo1X0B2OkC5P9hbgTahVvpIzQbAkbkMJCQZMuA+QQ3dU9jSyVIOj
	ufq2tCyoNAiWTpUK3k5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIFh-0002ok-JI; Wed, 06 May 2020 11:30:13 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIFP-0002nW-IU
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 11:29:57 +0000
Received: by mail-ot1-x342.google.com with SMTP id j4so1012689otr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 04:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YSDapmMgNKW5r9KuP6TQNUmeTHZRb0J/HB9oD2+E5xY=;
 b=MQZj6pwlg0yTJaS9PRfkaH5gydyswEKWshRAcYFNNiG+FnRWt+d1I5K+uVTmAAh6HT
 uXDVK4EkwfhhFGpXOVRFBr1NJr8TwYUCRbww/eS8XKxDtm1eZ6fwKDQ4g1pvmlVy9CsY
 JDSEhZHdbN51G+MpZpuJ3qgO8THgeAxp77Z8yobpcfWhM/hizRI3Hb9YMwNjgnnnG9EH
 Ub6+n9Z7C9s9R/28/KrUcz6wsGEqhC0XTR/9pnaw5Hx2WYNAPK7mJ/dGiQTelDJ556jZ
 TkkKn5c5ntKQOC8jgFODOJjMAUEycj4khQ5qkYBju0gESsUmgv6fSO4Wa40Yjw/Twc+7
 G70Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YSDapmMgNKW5r9KuP6TQNUmeTHZRb0J/HB9oD2+E5xY=;
 b=iRluuUgjajJ5Uvd1V17e70Quid4/M+gyQkFlSzENnGyuL8ITJAy+lcDHA9f0mLnJyl
 tsLklDKqja4U3PjJevFhUzQADIXa4AkN1GaYfkrFTeMkf1XZ5i3Deb497yeaPMVKqyD7
 mU/tEIuM6dgAg/OGkaH11l7U9JL3ZyVI/q0crh7sy1p8Cr3KqZKoC8yJmkdSRwRSTY4K
 4YZ/mZJbrSwV+BEqLJQ8gPIEMa3DpPDSYrPjGIYoczhdjONQcBWaNOWW43rprvR7LUqN
 zZqvERYBJkdlX+p32+KrHenZUozjjxd4/Cy97sSWytvbQ73qrE+GikCVh6yxgXd8tV+D
 dUIw==
X-Gm-Message-State: AGi0Puak+e6pOfmGMh7S5AstGJ2Hi1T41tAAzp7CtVmOMuIl4vajP3oU
 xWkxYJ34dKjHDhWZ6cnDU5ai3kv6wZ0lW4adSHT53A==
X-Google-Smtp-Source: APiQypIGS3Olnt59XIqgX3m5pyxz9JgUlFMHAZAqicbZYG6FQMcwoTgHPVTzSA29qFYkRFUig7c8zx837fnoQ2EYvdI=
X-Received: by 2002:a05:6830:1e4e:: with SMTP id
 e14mr5760377otj.91.1588764594274; 
 Wed, 06 May 2020 04:29:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200505100129.104673-1-robert.foss@linaro.org>
 <20200505100129.104673-2-robert.foss@linaro.org>
 <1588679279.8804.133.camel@mhfsdcap03>
In-Reply-To: <1588679279.8804.133.camel@mhfsdcap03>
From: Robert Foss <robert.foss@linaro.org>
Date: Wed, 6 May 2020 13:29:43 +0200
Message-ID: <CAG3jFyvo3gmO3zLRUKQEdgRkmzvvvMTzDKV-LZAeKYFdOfCnEw@mail.gmail.com>
Subject: Re: [PATCH v10 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_042955_652105_31D66F3D 
X-CRM114-Status: GOOD (  19.90  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Marco Felsch <m.felsch@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Ben Kao <ben.kao@intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Dongchun,

Thanks for having a look at this series.

> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +
> > +    i2c {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        ov8856: camera@10 {
> > +            compatible = "ovti,ov8856";
> > +            reg = <0x10>;
> > +
> > +            reset-gpios = <&pio 111 GPIO_ACTIVE_LOW>;
>
> Apologies for missing to follow the earlier discussion related to this.
> I noticed the GPIO flag para and __ov8856_power_on() are aligned using
> ACTIVE_LOW.
>
> But from the datasheet, XSHUTDN pin is active-high for OV8856.
> It means devm_gpiod_get API (in probe func) should use GPIOD_OUT_LOW to
> initialize the GPIO as output with a value of 0.
> Otherwise it should use GPIOD_OUT_HIGH.
>
> There is one case for GPIO_ACTIVE_LOW setting:
> https://patchwork.linuxtv.org/patch/63460/
> https://patchwork.linuxtv.org/patch/63461/

We went back and forth about this a few times, and I switched to this
gpio setting after having worked through the device probing reset gpio
toggling. Semantically it seemed easier to understand in the driver,
since the gpio is called reset and not !shutdown.

Looking into devm_gpiod_get_optional(), the flag argument
GPIOD_OUT_LOW or HIGH for that matter is actually not used initialize
the output, but only used for an exclusivity check.
https://elixir.bootlin.com/linux/latest/source/drivers/gpio/gpiolib-devres.c#L109

If you prefer, I can invert the logic again. To me making the reset
gpio active resulting in the device being actually reset seems like
the most intuitive and easy to understand option.
The different OmniVision drivers seem to have different approaches to
this. The ov9640 driver for example is doing what this series
currently is doing.

>
> Sakari, Tomasz, am I right?
>
> > +            pinctrl-names = "default";
> > +            pinctrl-0 = <&clk_24m_cam>;
> > +
> > +            clocks = <&cam_osc>;
> > +            clock-names = "xvclk";
> > +            clock-frequency = <19200000>;
> > +
> > +            avdd-supply = <&mt6358_vcama2_reg>;
> > +            dvdd-supply = <&mt6358_vcamd_reg>;
> > +            dovdd-supply = <&mt6358_vcamio_reg>;
> > +
> > +            port {
> > +                wcam_out: endpoint {
> > +                    remote-endpoint = <&mipi_in_wcam>;
> > +                    data-lanes = <1 2 3 4>;
> > +                    link-frequencies = /bits/ 64 <360000000>;
> > +                };
> > +            };
> > +        };
> > +    };
> > +...
> > \ No newline at end of file
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 26f281d9f32a..84b262afd13d 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -12489,6 +12489,7 @@ L:    linux-media@vger.kernel.org
> >  S:   Maintained
> >  T:   git git://linuxtv.org/media_tree.git
> >  F:   drivers/media/i2c/ov8856.c
> > +F:   Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> >
>
> Had you run parse-maintainers.pl?
> The new item is supposed to be arranged in alphabetical order.

No, I have not. But upon running it now, it doesn't make suggest any
changes. But let me order the files manually in the next revision.

However, I noticed I removed the wrong person from the maintainers
file in this revision.
So, I'll correct that and add you Dongchun as the maintainer if that's ok.

>
> >  OMNIVISION OV9640 SENSOR DRIVER
> >  M:   Petr Cvek <petrcvekcz@gmail.com>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
