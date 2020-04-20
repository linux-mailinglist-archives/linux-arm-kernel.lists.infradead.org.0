Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCF21B02CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 09:23:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNIJuiBs3HewZkY1guOPQNqkFfHvd5a+Pe/VU5KaQJI=; b=q/0kpjE9SloVB5
	334MWgFvTpRDgHaoBVFf7Q/W7flwhcp+zr0Gp5ImbW4I7sNXDS5FAJyp5UG/TcjS3dlb0qPG3a09N
	2KRGhyMv73e+U0dwz0of51cYtHW7HH945JHS9SRvHOpZWQUJjM+poX8URR4rPN9lSZfCASyeI9wLY
	4NyOIUcvzheu+sGBVQsBQ4CuCU8Qx60yY5L5yEkhxqDm+HLTJSUwiSY/6prUtgBMxR2OQfb4KyTTI
	CT7u0QLMoK/h+vNYmGBBAQdvWcfgbTgPXR6hyD4pwSnbirurb7+6wMAKHK+izUZWV//Epz/mW4F30
	7XwD8M3pa3pj0Sbo+yow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQla-0004wx-7i; Mon, 20 Apr 2020 07:22:54 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQlP-0004th-Og; Mon, 20 Apr 2020 07:22:45 +0000
X-UUID: cbe0a0a29bdc453e91cfadc9662cdfc9-20200419
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=3LD7CNX1tT1TEHE4Zt32/D1W/JkKnJcoEIJqaN8Kp34=; 
 b=m3gNRm3TzTwCDsjftZfHiFv2wd1mKutwR7adD8Q9iHOxVAUNmgAkZrf5K9EzfAnSTm+BQqwhTdsa+um1wUF1NeLy1uC3qKFdfZE0XLcrxt26v3PLpU5pVgKji0z8M9akS6Z9RRsu+cbWbZQ5SGM6bE9sm/sTI7lQLRIiMBHA8qs=;
X-UUID: cbe0a0a29bdc453e91cfadc9662cdfc9-20200419
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 798499019; Sun, 19 Apr 2020 23:22:28 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 20 Apr 2020 00:22:34 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Mon, 20 Apr 2020 15:22:26 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 20 Apr 2020 15:22:26 +0800
Message-ID: <1587367314.8804.77.camel@mhfsdcap03>
Subject: Re: [V6, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Rob Herring <robh@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Sakari Ailus
 <sakari.ailus@linux.intel.com>
Date: Mon, 20 Apr 2020 15:21:54 +0800
In-Reply-To: <20200415161451.GB4438@bogus>
References: <20191211112849.16705-1-dongchun.zhu@mediatek.com>
 <20191211112849.16705-2-dongchun.zhu@mediatek.com>
 <CAAFQd5AnWZqjQEVvw8gv7JzOBHxJvsOWaGrbY8CXQ_87ap-ahA@mail.gmail.com>
 <CAAFQd5DHL3mXZGHW+XWMXTVfekamEvaEv3bLZt4Bg2UpKPohmA@mail.gmail.com>
 <1586437408.8804.62.camel@mhfsdcap03> <20200415161451.GB4438@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 568BDCBF247068F3C452B6639D2840568C06ADB8A8E66CAEBE6BBCECE9347C4B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_002243_811939_09A28E5B 
X-CRM114-Status: GOOD (  32.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Linus Walleij <linus.walleij@linaro.org>, Shengnan
 Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=A3=E7=94=B7=29?=
 <shengnan.wang@mediatek.com>, Tomasz Figa <tfiga@chromium.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, broonie@kernel.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-gpio@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Rob,

Thanks for the review.

On Wed, 2020-04-15 at 11:14 -0500, Rob Herring wrote:
> On Thu, Apr 09, 2020 at 09:03:28PM +0800, Dongchun Zhu wrote:
> > Hi Mauro, Sakari, Rob,
> > 
> > On Wed, 2020-04-08 at 14:49 +0200, Tomasz Figa wrote:
> > > On Tue, Dec 17, 2019 at 4:15 AM Tomasz Figa <tfiga@chromium.org> wrote:
> > > >
> > > > Hi Rob, Dongchun,
> > > >
> > > > On Wed, Dec 11, 2019 at 8:29 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > > > >
> > > > > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> > > > >
> > > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > ---
> > > > >  .../devicetree/bindings/media/i2c/ov02a10.txt      | 54 ++++++++++++++++++++++
> > > > >  MAINTAINERS                                        |  7 +++
> > > > >  2 files changed, 61 insertions(+)
> > > > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ov02a10.txt b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > > > > new file mode 100644
> > > > > index 0000000..18acc4f
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > > > > @@ -0,0 +1,54 @@
> > > > > +* Omnivision OV02A10 MIPI CSI-2 sensor
> > > > > +
> > > > > +Required Properties:
> > > > > +- compatible: shall be "ovti,ov02a10"
> > > > > +- clocks: reference to the eclk input clock
> > > > > +- clock-names: shall be "eclk"
> > > > > +- dovdd-supply: Digital I/O voltage supply, 1.8 volts
> > > > > +- avdd-supply: Analog voltage supply, 2.8 volts
> > > > > +- dvdd-supply: Digital core voltage supply, 1.8 volts
> > > > > +- powerdown-gpios: reference to the GPIO connected to the powerdown pin,
> > > > > +                  if any. This is an active low signal to the OV02A10.
> > > >
> > > > On the hardware level this pin is active high, i.e. the device is
> > > > powered down when the signal is high.
> > > >
> > > > > +- reset-gpios: reference to the GPIO connected to the reset pin, if any.
> > > > > +              This is an active high signal to the OV02A10.
> > > >
> > > > On the hardware level this pin is active low, i.e. the device is held
> > > > in reset when the signal is low.
> > > >
> > > > However, there is some confusion around how the polarity flag in the
> > > > GPIO specifier is supposed to be used.
> > > >
> > > > As per [1],
> > > >
> > > > "The gpio-specifier's polarity flag should represent the physical
> > > > level at the GPIO controller that achieves (or represents, for inputs)
> > > > a logically asserted value at the device. The exact definition of
> > > > logically asserted should be defined by the binding for the device."
> > > >
> > > > In this case it sounds like "logically asserted" means the device is
> > > > powered down or held in reset, respectively, which would suggest that
> > > > the specifiers should have GPIO_ACTIVE_HIGH and GPIO_ACTIVE_LOW
> > > > respectively. The latter would cause the GPIO subsystem to invert the
> > > > values set by the consumers, which would then be confusing from the
> > > > driver implementation point of view.
> > > >
> > > > Should the pin be renamed to "nreset"? It would change the meaning of
> > > > "logically asserted" to "device is not held in reset" and so
> > > > GPIO_ACTIVE_HIGH (or 0) would be the right value to use.
> > > >
> > > > [1] https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/gpio/gpio.txt#L83
> > > 
> > > + Bartosz, Linus, Sakari and the linux-gpio ML for a broader audience.
> > > 
> > > Would appreciate some feedback on what's the proper way of defining
> > > GPIO polarity. Thanks!
> > > 
> > > Best regards,
> > > Tomasz
> > > 
> > 
> > I have another question about OV02A10 CMOS sensor dt-binding.
> > As its text documentation was already reviewed by Rob on earlier
> > version:
> > https://patchwork.linuxtv.org/patch/59787/
> > I wonder whether we need to convert it to DT in YAML.
> 
> Yes.
> 

Okay.
Let's focus on the new DT binding in YAML for OV02A10.

> > In fact, I just submitted one conversion version.
> > https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/2143922
> > 
> > Unluckily make dt_binding_check still report errors temporarily.
> > It seems there is something wrong with the port property in DT.
> > Could anyone help provide some tips?
> > $make dt_binding_check
> > DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> >   SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
> > Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml: ignoring,
> > error in schema: properties: port: patternProperties: endpoint
> > warning: no schema found in file:
> > Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > make[2]: *** [Documentation/devicetree/bindings/processed-schema.yaml]
> > Error 255
> > make[1]: *** [dt_binding_check] Error 2
> > make: *** [sub-make] Error 2
> 
>     patternProperties:
>       endpoint:
>       type: object
>       additionalProperties: false
> 
> You need more indentation under 'endpoint'. Also, 'endpoint' is a fixed 
> string, so it should be under 'properties' rather than 'patternProperties'.
> 
> 

Thanks for the reminder.
Now we could run dt_binding_check pass for the required
property:endpoint.

> > 
> > In addition, as OV02A10 use one private property to distinguish
> > different projects that adopting different register settings,
> > I would appreciate the feedback on how to add private property to DT in
> > YAML.
> 
> Like any other property. Submit something for review.
> 

Could you have the permission to see the change:
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/2143922/3

This change is improved relative to earlier patchset.
But there are still some errors if we running dt_binding_check on the
change.
$make dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
  CHKDT   Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
/proj/mtk15013/new_dt_check/kernel_only_dev/kernel/mediatek/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml: Additional properties are not allowed ('optional' was unexpected)
/proj/mtk15013/new_dt_check/kernel_only_dev/kernel/mediatek/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml: Additional properties are not allowed ('optional' was unexpected)
/proj/mtk15013/new_dt_check/kernel_only_dev/kernel/mediatek/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml: properties:ovti,mipi-tx-speed: {'description': 'Indication of MIPI transmission speed select.'} is not valid under any of the given schemas (Possible causes of the failure):
        /proj/mtk15013/new_dt_check/kernel_only_dev/kernel/mediatek/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml: properties:ovti,mipi-tx-speed: 'not' is a required property

make[2]: ***
[Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.example.dts]
Error 1
make[1]: *** [dt_binding_check] Error 2
make: *** [sub-make] Error 2

It seems that we shall not use "optional" to describe private properties
for DT bindings in YAML.
Rob, could you help provide one example to tell us how to define new
properties?
Thanks a lot.

> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
