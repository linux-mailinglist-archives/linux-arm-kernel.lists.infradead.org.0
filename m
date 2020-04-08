Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D1B1A2250
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:49:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CIhtt5FZtORCBvuUbLkq6MfrFClykGkKZmDPimPXkKs=; b=mZ/ApkDAbh6tHL
	uX6X1HnJTCzkU+JX0oMl38zAxTtUiI8kopmx+E5F1ywDKdDd9DPL968pjLvhh0iFaUsgJsvLeFVXV
	bxBr8BihiVKez/8c4d6gEAVOtON3Oeozo8Gp5R9OJIv3Z7/9PHAgd0dV6wJ4cf5bUplbHN510yfbu
	5/veq6EvEEl8G+y00hxduRBJSSptmXq3kKWY6p/umnzebJYYsuehH3NCqK4h5f5CqFUI2oHTSaVxj
	Onq2AoDeNErLuQHcS3J88yPRN876SSX0T022cxoFT7+MaB03jnrJnd/LvK6kjJAdCKKM7dPNKpfc8
	tWhzkIp2QvxkwQ2PFoLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMA94-0000za-M5; Wed, 08 Apr 2020 12:49:30 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMA8t-0000xn-8S
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 12:49:21 +0000
Received: by mail-ed1-x542.google.com with SMTP id e5so8414867edq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 05:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ImZqh6xFyWTP+hCLRseUGFfjvuATFwSzoN2jRckYzSk=;
 b=iuHWZKg+pIWEBlsACAQ4YXH2mS3QrCGDdCd463hpF4FaNiGuk9aFm0zDBV3zdeafgR
 3ZnImtuZ+wyMDDvmkR249YelH0aLXKbisp8ztrr4A0fBNyuZV+ObuE3T8OiMRRi340IU
 wd7vqFZZ9kxtDpuz9bj10oUv10rucFw5JlYIg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ImZqh6xFyWTP+hCLRseUGFfjvuATFwSzoN2jRckYzSk=;
 b=Jt1g9KGcz+UVN/xOfzB5OwOZ+YDKSc55FZlqDCIkNsglVWaU3JeDEHKJRdgzKusL1I
 0XxQtOzmRp4WATv5r6WGWa8zQ6a6P8U5i9aMRR1sue0Dm/iFFMpVKq0Bk9noDVNu6yx/
 J/Oc1pwOdrwKlMPZsRTCIIm9oqrYH8/4i3qoFuLSlsVcqe9swlB4pQfk5X6jnN8YWbXr
 IbJ9yRFqQKC44wlEtUBzWpZ+2H069Zk27DZ2Dp6UC8PE/8uXrVhoZddXQTThTI0IJWfD
 gSfg8pJAOX9LDKwjVodXgHUXjOfBLUZ/IFUps6idsSLAm453cDiaPsSa1efluFmiRT0f
 TigQ==
X-Gm-Message-State: AGi0PuZIHrCz3MWQqufWr6VRTDw80cyYTwv+ugFKwFrMpPFZVbmswNWo
 LfMFqt+/YQMdFpJWeAhaNMyEifGUNXKung==
X-Google-Smtp-Source: APiQypIAV10B25rcYV55MRme63jclUWzYBOBWDM/GyVVSzIqMpVtvSCWndav/ESIY8HzynRGtqq0yQ==
X-Received: by 2002:aa7:cd5b:: with SMTP id v27mr6192109edw.286.1586350157198; 
 Wed, 08 Apr 2020 05:49:17 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com.
 [209.85.128.52])
 by smtp.gmail.com with ESMTPSA id dj1sm2958645edb.70.2020.04.08.05.49.16
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Apr 2020 05:49:16 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id a81so5287551wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 05:49:16 -0700 (PDT)
X-Received: by 2002:a7b:c38b:: with SMTP id s11mr4529806wmj.55.1586350155398; 
 Wed, 08 Apr 2020 05:49:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191211112849.16705-1-dongchun.zhu@mediatek.com>
 <20191211112849.16705-2-dongchun.zhu@mediatek.com>
 <CAAFQd5AnWZqjQEVvw8gv7JzOBHxJvsOWaGrbY8CXQ_87ap-ahA@mail.gmail.com>
In-Reply-To: <CAAFQd5AnWZqjQEVvw8gv7JzOBHxJvsOWaGrbY8CXQ_87ap-ahA@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 8 Apr 2020 14:49:04 +0200
X-Gmail-Original-Message-ID: <CAAFQd5DHL3mXZGHW+XWMXTVfekamEvaEv3bLZt4Bg2UpKPohmA@mail.gmail.com>
Message-ID: <CAAFQd5DHL3mXZGHW+XWMXTVfekamEvaEv3bLZt4Bg2UpKPohmA@mail.gmail.com>
Subject: Re: [V6,
 1/2] media: dt-bindings: media: i2c: Document OV02A10 bindings
To: Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_054919_339007_771F32FF 
X-CRM114-Status: GOOD (  27.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-devicetree <devicetree@vger.kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, linux-gpio@vger.kernel.org,
 =?UTF-8?B?U2hlbmduYW4gV2FuZyAo546L5Zyj55S3KQ==?= <shengnan.wang@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Louis Kuo <louis.kuo@mediatek.com>, Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 4:15 AM Tomasz Figa <tfiga@chromium.org> wrote:
>
> Hi Rob, Dongchun,
>
> On Wed, Dec 11, 2019 at 8:29 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> >
> > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  .../devicetree/bindings/media/i2c/ov02a10.txt      | 54 ++++++++++++++++++++++
> >  MAINTAINERS                                        |  7 +++
> >  2 files changed, 61 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> >
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ov02a10.txt b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > new file mode 100644
> > index 0000000..18acc4f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > @@ -0,0 +1,54 @@
> > +* Omnivision OV02A10 MIPI CSI-2 sensor
> > +
> > +Required Properties:
> > +- compatible: shall be "ovti,ov02a10"
> > +- clocks: reference to the eclk input clock
> > +- clock-names: shall be "eclk"
> > +- dovdd-supply: Digital I/O voltage supply, 1.8 volts
> > +- avdd-supply: Analog voltage supply, 2.8 volts
> > +- dvdd-supply: Digital core voltage supply, 1.8 volts
> > +- powerdown-gpios: reference to the GPIO connected to the powerdown pin,
> > +                  if any. This is an active low signal to the OV02A10.
>
> On the hardware level this pin is active high, i.e. the device is
> powered down when the signal is high.
>
> > +- reset-gpios: reference to the GPIO connected to the reset pin, if any.
> > +              This is an active high signal to the OV02A10.
>
> On the hardware level this pin is active low, i.e. the device is held
> in reset when the signal is low.
>
> However, there is some confusion around how the polarity flag in the
> GPIO specifier is supposed to be used.
>
> As per [1],
>
> "The gpio-specifier's polarity flag should represent the physical
> level at the GPIO controller that achieves (or represents, for inputs)
> a logically asserted value at the device. The exact definition of
> logically asserted should be defined by the binding for the device."
>
> In this case it sounds like "logically asserted" means the device is
> powered down or held in reset, respectively, which would suggest that
> the specifiers should have GPIO_ACTIVE_HIGH and GPIO_ACTIVE_LOW
> respectively. The latter would cause the GPIO subsystem to invert the
> values set by the consumers, which would then be confusing from the
> driver implementation point of view.
>
> Should the pin be renamed to "nreset"? It would change the meaning of
> "logically asserted" to "device is not held in reset" and so
> GPIO_ACTIVE_HIGH (or 0) would be the right value to use.
>
> [1] https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/gpio/gpio.txt#L83

+ Bartosz, Linus, Sakari and the linux-gpio ML for a broader audience.

Would appreciate some feedback on what's the proper way of defining
GPIO polarity. Thanks!

Best regards,
Tomasz

>
> Best regards,
> Tomasz
>
> > +
> > +Optional Properties:
> > +- rotation: as defined in
> > +           Documentation/devicetree/bindings/media/video-interfaces.txt,
> > +           valid values are 0 (sensor mounted upright) and 180 (sensor
> > +           mounted upside down).
> > +
> > +The device node shall contain one 'port' child node with an
> > +'endpoint' subnode for its digital output video port,
> > +in accordance with the video interface bindings defined in
> > +Documentation/devicetree/bindings/media/video-interfaces.txt.
> > +
> > +Example:
> > +&i2c4 {
> > +       ov02a10: camera-sensor@3d {
> > +               compatible = "ovti,ov02a10";
> > +               reg = <0x3d>;
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&camera_pins_cam1_mclk_on>;
> > +
> > +               clocks = <&topckgen CLK_TOP_MUX_CAMTG2>,
> > +                       <&topckgen CLK_TOP_UNIVP_192M_D8>;
> > +               clock-names = "eclk", "freq_mux";
> > +               clock-frequency = <24000000>;
> > +
> > +               dovdd-supply = <&mt6358_vcamio_reg>;
> > +               avdd-supply = <&mt6358_vcama1_reg>;
> > +               dvdd-supply = <&mt6358_vcn18_reg>;
> > +               powerdown-gpios = <&pio 107 GPIO_ACTIVE_LOW>;
> > +               reset-gpios = <&pio 109 GPIO_ACTIVE_HIGH>;
> > +               rotation = <180>;
> > +
> > +               port {
> > +                       /* MIPI CSI-2 bus endpoint */
> > +                       ov02a10_core: endpoint {
> > +                               remote-endpoint = <&ov02a10_0>;
> > +                               link-frequencies = /bits/ 64 <390000000>;
> > +                       };
> > +               };
> > +       };
> > +};
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index bd5847e..92a868c 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -12130,6 +12130,13 @@ T:     git git://linuxtv.org/media_tree.git
> >  S:     Maintained
> >  F:     drivers/media/i2c/ov13858.c
> >
> > +OMNIVISION OV02A10 SENSOR DRIVER
> > +M:     Dongchun Zhu <dongchun.zhu@mediatek.com>
> > +L:     linux-media@vger.kernel.org
> > +T:     git git://linuxtv.org/media_tree.git
> > +S:     Maintained
> > +F:     Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > +
> >  OMNIVISION OV2680 SENSOR DRIVER
> >  M:     Rui Miguel Silva <rmfrfs@gmail.com>
> >  L:     linux-media@vger.kernel.org
> > --
> > 2.9.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
