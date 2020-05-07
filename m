Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE871C8CFE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzILYdbQ6dVDZyh9cfBZAkqyEwZxThzheh2s8lhay3w=; b=IOqvzsYFPp/hlN
	jUYOXLgLsT3HCRjTIsmVQe1ewU0ApHgtAQqmYGgQGTaj4g95gc5fpcfNqIdX+Ir6mAdmSISeGb8zG
	nv6t+gjWyxpwEwbP75uFbP4VFAhqj5lsyurAtxwxXXT6hSH1nP6sk4C7740wpMlet/l+WEU/u3pKc
	awdZvNXBVDJmA5uTfT2cBpfDAC3d+45EOTyU3lU9PGUxcRHhXeUU3lsrkej9rtUBvDQQFRRMAJiWB
	xF/B9LCT7rY5Hn1Ou+GOgJeB0bkSCQUqI7aHK/KXQvviWweVRQdzTxuPl39hTr6v58P5BVDtiyVpB
	nHY9T57+Er6zlqZPlY7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgvY-0006jI-Bz; Thu, 07 May 2020 13:51:04 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgvO-0006iU-SG
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:50:56 +0000
Received: by mail-ej1-x644.google.com with SMTP id s3so4611481eji.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 06:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TW9WsBOdli761TaDE56+H/z6K3hRAe6UVln2voBA/lw=;
 b=fFeXVj6TfW2eQOHbOgnx+s4LDQqoGobFKi0n8Oo8wV6qnlnJRftFwmiIlkEX+TD9oa
 HAa46eHh6vzXk+dPq6Q99XwTrlHvHYMtmRBQZlSAwNxPiFLVMB2r/UX07DsCVGE+LpfV
 ZDwGApTc4eyCzayupDH150mXfW1NWA2OCSKOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TW9WsBOdli761TaDE56+H/z6K3hRAe6UVln2voBA/lw=;
 b=mgvSDcJ9bRFqT9TtaFmnFnPdOxC2aHb68BZNOe2crbFLNM4Vro0iX8tINaxynjE9Dw
 F7hI+/bSX21XViWwS/vE3fA3zJ+t1aWl7n3WAG4onxq8rHAIbuIoS6WwQQflKysS2llP
 wi7FgIG9cfSdP/OMOmKQ+P4ll4YV/dRm31kb/xG3S/xI35zzbIH4da4xXNQOtImo6sRa
 0C+zhqaNX8KzDNOsj4MQI9j0O5HTNOcjZaATqQix1u2f6yrFsiUVVJANHmIvLGHtEyqT
 QGYCYyqdPkt5+1P+nxVyTMfgd7JulUMGCbvDbQAJ6met/0tf61RZb8EZFsS9E9DFGLpU
 VlWQ==
X-Gm-Message-State: AGi0PuYuhjVkk3GhQqcMmz6gT9TSTBuWAY5PjU7QwKump2mOcUDGCY3D
 O+6K/90qKFeW+VnOEyhSBVXJquX9cnDnHA==
X-Google-Smtp-Source: APiQypKbgJWYtGvMn3vES8lZiV8ejYXTYP1LtZo9EY01q+u1njPGnTM0dn3RZo0VY7Znua8lgI7lcQ==
X-Received: by 2002:a17:906:cf8a:: with SMTP id
 um10mr11859767ejb.60.1588859452935; 
 Thu, 07 May 2020 06:50:52 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53])
 by smtp.gmail.com with ESMTPSA id u15sm64370edr.95.2020.05.07.06.50.51
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 06:50:52 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id i15so6057162wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 06:50:51 -0700 (PDT)
X-Received: by 2002:a5d:4ccd:: with SMTP id c13mr7348965wrt.415.1588859451032; 
 Thu, 07 May 2020 06:50:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200430080924.1140-1-dongchun.zhu@mediatek.com>
 <20200430080924.1140-2-dongchun.zhu@mediatek.com>
 <20200505070451.GS9190@paasikivi.fi.intel.com>
 <1588688238.8804.150.camel@mhfsdcap03>
 <20200506112136.GV9190@paasikivi.fi.intel.com>
 <1588856325.8804.179.camel@mhfsdcap03>
In-Reply-To: <1588856325.8804.179.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 7 May 2020 15:50:40 +0200
X-Gmail-Original-Message-ID: <CAAFQd5CXRD_j7Xkxb4=9kkd+pDy4W5pirAPSG8RsMVH6L-MU2w@mail.gmail.com>
Message-ID: <CAAFQd5CXRD_j7Xkxb4=9kkd+pDy4W5pirAPSG8RsMVH6L-MU2w@mail.gmail.com>
Subject: Re: [V7,
 1/2] media: dt-bindings: media: i2c: Document OV02A10 bindings
To: Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_065054_923448_98A52A14 
X-CRM114-Status: GOOD (  33.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Nicolas Boichat <drinkcat@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?B?U2hlbmduYW4gV2FuZyAo546L5Zyj55S3KQ==?= <shengnan.wang@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Louis Kuo <louis.kuo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Cao Bing Bu <bingbu.cao@intel.com>, matrix.zhu@aliyun.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari and Dongchun,

On Thu, May 7, 2020 at 3:00 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Hi Sakari,
>
> Thanks for the review.
>
> On Wed, 2020-05-06 at 14:21 +0300, Sakari Ailus wrote:
> > Hi Dongchun,
> >
> > On Tue, May 05, 2020 at 10:17:18PM +0800, Dongchun Zhu wrote:
> > > Hi Sakari,
> > >
> > > Thanks for the review.
> > >
> > > On Tue, 2020-05-05 at 10:04 +0300, Sakari Ailus wrote:
> > > > Hi Dongchun,
> > > >
> > > > On Thu, Apr 30, 2020 at 04:09:23PM +0800, Dongchun Zhu wrote:
> > > > > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> > > > >
> > > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > ---
> > > > >  .../bindings/media/i2c/ovti,ov02a10.yaml           | 148 +++++++++++++++++++++
> > > > >  MAINTAINERS                                        |   7 +
> > > > >  2 files changed, 155 insertions(+)
> > > > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > > new file mode 100644
> > > > > index 0000000..2be4bd2
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > > @@ -0,0 +1,148 @@
> > > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > > +# Copyright (c) 2020 MediaTek Inc.
> > > > > +%YAML 1.2
> > > > > +---
> > > > > +$id: http://devicetree.org/schemas/media/i2c/ovti,ov02a10.yaml#
> > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > +
> > > > > +title: Omnivision OV02A10 CMOS Sensor Device Tree Bindings
> > > > > +
> > > > > +maintainers:
> > > > > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > +
> > > > > +description: |-
> > > > > +  The Omnivision OV02A10 is a low-cost, high performance, 1/5-inch, 2 megapixel
> > > > > +  image sensor, which is the latest production derived from Omnivision's CMOS
> > > > > +  image sensor technology. Ihis chip supports high frame rate speeds up to 30fps
> > > > > +  @ 1600x1200 (UXGA) resolution transferred over a 1-lane MIPI interface. The
> > > > > +  sensor output is available via CSI-2 serial data output.
> > > > > +
> > > > > +properties:
> > > > > +  compatible:
> > > > > +    const: ovti,ov02a10
> > > > > +
> > > > > +  reg:
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  clocks:
> > > > > +    items:
> > > > > +      - description: top mux camtg clock
> > > > > +      - description: devider clock
> > > > > +
> > > > > +  clock-names:
> > > > > +    items:
> > > > > +      - const: eclk
> > > > > +      - const: freq_mux
> > > > > +
> > > > > +  clock-frequency:
> > > > > +    description:
> > > > > +      Frequency of the eclk clock in Hertz.
> > > > > +
> > > > > +  dovdd-supply:
> > > > > +    description:
> > > > > +      Definition of the regulator used as interface power supply.
> > > > > +
> > > > > +  avdd-supply:
> > > > > +    description:
> > > > > +      Definition of the regulator used as analog power supply.
> > > > > +
> > > > > +  dvdd-supply:
> > > > > +    description:
> > > > > +      Definition of the regulator used as digital power supply.
> > > > > +
> > > > > +  powerdown-gpios:
> > > > > +    description:
> > > > > +      The phandle and specifier for the GPIO that controls sensor powerdown.
> > > > > +
> > > > > +  reset-gpios:
> > > > > +    description:
> > > > > +      The phandle and specifier for the GPIO that controls sensor reset.
> > > > > +
> > > > > +  rotation:
> > > > > +    description:
> > > > > +      Definition of the sensor's placement, valid values are 0 and 180.
> > > > > +    allOf:
> > > > > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > > > > +      - enum:
> > > > > +          - 0    # Sensor Mounted Upright
> > > > > +          - 180  # Sensor Mounted Upside Down
> > > > > +
> > > > > +  ovti,mipi-tx-speed:
> > > > > +    description:
> > > > > +      Indication of MIPI transmission speed select.
> > > >
> > > > What exactly does this signify? And how do you come up with the number?
> > > >
> > >
> > > Apologies for not addressing this number clear.
> > >
> > > From the datasheet, P1:0xA1 register represents TX_SPEED_AREA_SEL with
> > > the default val: 0x03.
> > > The description of this RW register is as below:
> > > Bit[2:0]: MIPI transmission speed select.
> > >
> > > Thus the enum should be definited as [ 0, 1, 2, 3, 4, 5, 6, 7 ].
> > > This would be fixed in next release.
> > >
> > > In the meantime, as the default val of P1:0xA1 is 0x03, we hope to keep
> > > that value if there is no setting for this private property in DT.
> > > The caller in driver would be updated like this in next release.
> > > if (ov02a10->mipi_clock_tx_speed)
> > >     ret = i2c_smbus_write_byte_data(...,...);
> >
> > How did you pick the value in the example? And why do you believe it is
> > specific to a platform, and not e.g. a sensor mode?
> >
>
> We look into P1:0XA1, one register that defines MIPI transmission speed
> select.
> From the datasheet, we can get the possible values that could be set to
> P1:0xA1.
>
> Actually this register is an independent of sensor mode, it is just
> included in sensor mode's register setting table.
>
> In addition, this private DT Property is created to fix the MIPI test
> failure. The register values are adjusted and verified from vendor to
> make sensor signal meet MIPI specification.
>

In theory the value could depend on the mode, because different link
rate could impose different requirements for the physical interface.
In practice, we haven't seen any hardware that would require different
values for different modes.

Best regards,
Tomasz

> > >
> > > > > +    allOf:
> > > > > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > > > > +      - enum: [ 3, 4 ]
> > > > > +
> > > > > +  # See ../video-interfaces.txt for details
> > > > > +  port:
> > > > > +    type: object
> > > > > +    additionalProperties: false
> > > > > +
> > > > > +    properties:
> > > > > +      endpoint:
> > > > > +        type: object
> > > > > +        additionalProperties: false
> > > > > +
> > > > > +        properties:
> > > > > +          remote-endpoint: true
> > > > > +          link-frequencies: true
> > > > > +
> > > > > +    required:
> > > > > +      - endpoint
> > > > > +
> > > > > +required:
> > > > > +  - compatible
> > > > > +  - reg
> > > > > +  - clocks
> > > > > +  - clock-names
> > > > > +  - clock-frequency
> > > > > +  - dovdd-supply
> > > > > +  - avdd-supply
> > > > > +  - dvdd-supply
> > > > > +  - powerdown-gpios
> > > > > +  - reset-gpios
> > > > > +  - port
> > > > > +
> > > > > +additionalProperties: false
> > > > > +
> > > > > +examples:
> > > > > +  - |
> > > > > +    #include <dt-bindings/clock/mt8183-clk.h>
> > > > > +    #include <dt-bindings/gpio/gpio.h>
> > > > > +
> > > > > +    i2c {
> > > > > +        clock-frequency = <400000>;
> > > > > +        #address-cells = <1>;
> > > > > +        #size-cells = <0>;
> > > > > +
> > > > > +        ov02a10: camera-sensor@3d {
> > > > > +            compatible = "ovti,ov02a10";
> > > > > +            reg = <0x3d>;
> > > > > +            pinctrl-names = "default";
> > > > > +            pinctrl-0 = <&clk_24m_cam>;
> > > > > +
> > > > > +            clocks = <&topckgen CLK_TOP_MUX_CAMTG>,
> > > > > +                     <&topckgen CLK_TOP_UNIVP_192M_D8>;
> > > > > +            clock-names = "eclk", "freq_mux";
> > > > > +            clock-frequency = <24000000>;
> > > > > +
> > > > > +            rotation = <180>;
> > > > > +            ovti,mipi-tx-speed = <3>;
> > > > > +
> > > > > +            dovdd-supply = <&mt6358_vcamio_reg>;
> > > > > +            avdd-supply = <&mt6358_vcama1_reg>;
> > > > > +            dvdd-supply = <&mt6358_vcn18_reg>;
> > > > > +            powerdown-gpios = <&pio 107 GPIO_ACTIVE_LOW>;
> > > > > +            reset-gpios = <&pio 109 GPIO_ACTIVE_HIGH>;
> > > > > +
> > > > > +            port {
> > > > > +                wcam_out: endpoint {
> > > > > +                    remote-endpoint = <&mipi_in_wcam>;
> > > > > +                    link-frequencies = /bits/ 64 <390000000>;
> > > > > +                };
> > > > > +            };
> > > > > +        };
> > > > > +    };
> > > > > +
> > > > > +...
> > > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > > index e64e5db..63a2335 100644
> > > > > --- a/MAINTAINERS
> > > > > +++ b/MAINTAINERS
> > > > > @@ -12389,6 +12389,13 @@ M:     Harald Welte <laforge@gnumonks.org>
> > > > >  S:     Maintained
> > > > >  F:     drivers/char/pcmcia/cm4040_cs.*
> > > > >
> > > > > +OMNIVISION OV02A10 SENSOR DRIVER
> > > > > +M:     Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > +L:     linux-media@vger.kernel.org
> > > > > +S:     Maintained
> > > > > +T:     git git://linuxtv.org/media_tree.git
> > > > > +F:     Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > > +
> > > > >  OMNIVISION OV13858 SENSOR DRIVER
> > > > >  M:     Sakari Ailus <sakari.ailus@linux.intel.com>
> > > > >  L:     linux-media@vger.kernel.org
> > > >
> > >
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
