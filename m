Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB8E1AAD38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUMrOeV9cnufJVtGGdIAgsH7KO/BgI80pmvNhxhW8pI=; b=auq0oDrPkOchGk
	pgR6QHReB+kdHFOg7zAxmhkMCBcuHn6p2HAevkqgRx0nT9udfu/RvsSKcaWPHMxpZ/jGtdEGsoGeD
	iCZXA+6+x+6GMTEKcfbI8mP1tAUijuuKeT2syUL6NL9yqF5U5FKL5pGM0TWtDpNdOYTxLH2IgW3FD
	HCnd+b0kvEBdWszO8UUqsqMXfE7uZWUlC+2kDckgZhOnNIQdzBJg2Nn/9+BSDJz5YGtVS8bpZpIel
	/a58fxy94Hv9ti/kclDkWCaTv8mRpJAp9a2tuV00O6XfYDyDuX5BNpGY/TDlts75Avdab7c9fiXUF
	s1fG0VSOI0unkBMagH5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkhV-0003Gy-2X; Wed, 15 Apr 2020 16:15:45 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkgj-0000IB-8o; Wed, 15 Apr 2020 16:14:59 +0000
Received: by mail-ot1-f68.google.com with SMTP id k21so458113otl.5;
 Wed, 15 Apr 2020 09:14:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bg5RVnsOH1/BYZ54TEf38AsDwolBNR2BfaTkytyS7Z8=;
 b=hiqaqjSo0oTWs3Xk8mpjThVQstkprVR10p0G6703mRyM3MAyPX7y5tsksOofTzIud4
 mgx0NvsbuZ67mhbu8lM36NSjXNvY110ODn6bj1S0KxQVOvpFNw8jhnoHvJO+4nz9Lcco
 uDaSrBlcuOVqxDG3cVsLhG2CIug3pKVe97sdXbMG4a3T/BV9lZ3Zu1xeYRHfy9Ns5z7z
 u0zeYl4hhyDdJg1fbmAV5AWEtL/4eXb4lM4G7dQADfxXNzhEWETeDl/0gAbWD1SmRO7w
 23wILMZ8JYQOf/bCsUIRuA+Ek7E6GsmhgzqrgXLqOqJeAVxWhK8kqsTE+twcXgwtra/W
 TTAg==
X-Gm-Message-State: AGi0PuZt285kMaEkLgDy+pQwuwM6UIbaRjNnbkLP1dBqYv0b4GTDqlu9
 LmgVWpTSVOx40fif2RoKIg==
X-Google-Smtp-Source: APiQypIlx96HhaaXRfiiMSUdYVxp6kZM1e7hlq3zvdmUNi2vlLOj0GAbBkzuY8DROgSdeQjlY4JIjg==
X-Received: by 2002:a9d:5545:: with SMTP id h5mr23831959oti.323.1586967293897; 
 Wed, 15 Apr 2020 09:14:53 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 13sm2701531oiq.3.2020.04.15.09.14.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 09:14:53 -0700 (PDT)
Received: (nullmailer pid 19968 invoked by uid 1000);
 Wed, 15 Apr 2020 16:14:52 -0000
Date: Wed, 15 Apr 2020 11:14:51 -0500
From: Rob Herring <robh@kernel.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V6, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
Message-ID: <20200415161451.GB4438@bogus>
References: <20191211112849.16705-1-dongchun.zhu@mediatek.com>
 <20191211112849.16705-2-dongchun.zhu@mediatek.com>
 <CAAFQd5AnWZqjQEVvw8gv7JzOBHxJvsOWaGrbY8CXQ_87ap-ahA@mail.gmail.com>
 <CAAFQd5DHL3mXZGHW+XWMXTVfekamEvaEv3bLZt4Bg2UpKPohmA@mail.gmail.com>
 <1586437408.8804.62.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586437408.8804.62.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_091457_313373_7AB86535 
X-CRM114-Status: GOOD (  29.80  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Nicolas Boichat <drinkcat@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Louis Kuo <louis.kuo@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Shengnan Wang =?utf-8?B?KOeOi+Wco+eUtyk=?= <shengnan.wang@mediatek.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, broonie@kernel.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-gpio@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg  Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 09:03:28PM +0800, Dongchun Zhu wrote:
> Hi Mauro, Sakari, Rob,
> 
> On Wed, 2020-04-08 at 14:49 +0200, Tomasz Figa wrote:
> > On Tue, Dec 17, 2019 at 4:15 AM Tomasz Figa <tfiga@chromium.org> wrote:
> > >
> > > Hi Rob, Dongchun,
> > >
> > > On Wed, Dec 11, 2019 at 8:29 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > > >
> > > > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> > > >
> > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > ---
> > > >  .../devicetree/bindings/media/i2c/ov02a10.txt      | 54 ++++++++++++++++++++++
> > > >  MAINTAINERS                                        |  7 +++
> > > >  2 files changed, 61 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ov02a10.txt b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > > > new file mode 100644
> > > > index 0000000..18acc4f
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > > > @@ -0,0 +1,54 @@
> > > > +* Omnivision OV02A10 MIPI CSI-2 sensor
> > > > +
> > > > +Required Properties:
> > > > +- compatible: shall be "ovti,ov02a10"
> > > > +- clocks: reference to the eclk input clock
> > > > +- clock-names: shall be "eclk"
> > > > +- dovdd-supply: Digital I/O voltage supply, 1.8 volts
> > > > +- avdd-supply: Analog voltage supply, 2.8 volts
> > > > +- dvdd-supply: Digital core voltage supply, 1.8 volts
> > > > +- powerdown-gpios: reference to the GPIO connected to the powerdown pin,
> > > > +                  if any. This is an active low signal to the OV02A10.
> > >
> > > On the hardware level this pin is active high, i.e. the device is
> > > powered down when the signal is high.
> > >
> > > > +- reset-gpios: reference to the GPIO connected to the reset pin, if any.
> > > > +              This is an active high signal to the OV02A10.
> > >
> > > On the hardware level this pin is active low, i.e. the device is held
> > > in reset when the signal is low.
> > >
> > > However, there is some confusion around how the polarity flag in the
> > > GPIO specifier is supposed to be used.
> > >
> > > As per [1],
> > >
> > > "The gpio-specifier's polarity flag should represent the physical
> > > level at the GPIO controller that achieves (or represents, for inputs)
> > > a logically asserted value at the device. The exact definition of
> > > logically asserted should be defined by the binding for the device."
> > >
> > > In this case it sounds like "logically asserted" means the device is
> > > powered down or held in reset, respectively, which would suggest that
> > > the specifiers should have GPIO_ACTIVE_HIGH and GPIO_ACTIVE_LOW
> > > respectively. The latter would cause the GPIO subsystem to invert the
> > > values set by the consumers, which would then be confusing from the
> > > driver implementation point of view.
> > >
> > > Should the pin be renamed to "nreset"? It would change the meaning of
> > > "logically asserted" to "device is not held in reset" and so
> > > GPIO_ACTIVE_HIGH (or 0) would be the right value to use.
> > >
> > > [1] https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/gpio/gpio.txt#L83
> > 
> > + Bartosz, Linus, Sakari and the linux-gpio ML for a broader audience.
> > 
> > Would appreciate some feedback on what's the proper way of defining
> > GPIO polarity. Thanks!
> > 
> > Best regards,
> > Tomasz
> > 
> 
> I have another question about OV02A10 CMOS sensor dt-binding.
> As its text documentation was already reviewed by Rob on earlier
> version:
> https://patchwork.linuxtv.org/patch/59787/
> I wonder whether we need to convert it to DT in YAML.

Yes.

> In fact, I just submitted one conversion version.
> https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/2143922
> 
> Unluckily make dt_binding_check still report errors temporarily.
> It seems there is something wrong with the port property in DT.
> Could anyone help provide some tips?
> $make dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
> Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml: ignoring,
> error in schema: properties: port: patternProperties: endpoint
> warning: no schema found in file:
> Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> make[2]: *** [Documentation/devicetree/bindings/processed-schema.yaml]
> Error 255
> make[1]: *** [dt_binding_check] Error 2
> make: *** [sub-make] Error 2

    patternProperties:
      endpoint:
      type: object
      additionalProperties: false

You need more indentation under 'endpoint'. Also, 'endpoint' is a fixed 
string, so it should be under 'properties' rather than 'patternProperties'.


> 
> In addition, as OV02A10 use one private property to distinguish
> different projects that adopting different register settings,
> I would appreciate the feedback on how to add private property to DT in
> YAML.

Like any other property. Submit something for review.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
