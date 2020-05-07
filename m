Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89F61C8E4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luhPsHIo8Qp5upd/6y7XFsqRq+3bExuN9f/hyWoDkuk=; b=epnmT4r0wuQQUt
	pCmC71qldrlrdisuPWlZcbvnRfpnj/Ny8xo9qNtuFBcldilqGXe8tYExasbl/1M33PvwDnHqpN5MF
	JKFY/5nxUw4H4KjRDjRM97qMGOu0dtvvytg0Y9EX94czqKSaVgBeA8in9iUHO5gGoETn/WdC22lY/
	JXUdv7jBbBJ0bebtxA/vM1zXO4BNlTt5e5BvjCiGBCz0io8WxrTWnToNAMSied1NZuSFGRu8EUKlB
	VIYUGDldpxzkaXXqRbWxiRykPgPH1ZRUyX6zChnTUhYa9MMqcyyVbrtLxceRC3J56Pn/aldMzGrdY
	QOi7ubXEk1yltMxHaJ2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhSn-0000ed-G6; Thu, 07 May 2020 14:25:25 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhSe-0000dE-PD
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:25:18 +0000
Received: by mail-ej1-x644.google.com with SMTP id a2so4741709ejx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 07:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ll5ZHgxCTQbof/AtoyqjsYrTVcOxespcFhggcUBqe5A=;
 b=KyTJVpYdiQiZ2naOvISh2nYJbcEYd3SezUeXrYuqg5BTwnm4t7zhD+bpkDRKoDMoOL
 eHTQoUgmutyG4x+6LT3PWq4d9FV149l+vE3UikCwmbzEIgnSe5QM0IStXI0e9nL4wVTX
 xHYn8duybiNu2TOu/3yuPcStCHcv2ea1p3J0Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ll5ZHgxCTQbof/AtoyqjsYrTVcOxespcFhggcUBqe5A=;
 b=SCnW+LSIeJLhENPDgv8XjtvH27CyVK82LUcZNVa5HslmxDa+vbzXd2NOSIHB2eMO9+
 leBp4kofLbjyfXQn0FDNQ6WcFTKX33FMu3Ny7AK3GBJ8Y/9IRqs+7dO8iMCsnpBvAPj6
 gVVMcZ4+Gf/T8OjhH7+yJMXiqk3NBVCuPb/lUzxeg0cnXvNnhojorxbLFi6s56llC7hn
 uFJOHbIgliiTXXB6QIyhiTNJsD7vgvcdiV9B9ukVabGxAn3jsaRShTGerkEdkYxmKrOY
 AGDOhH7wmKrmOa5JbjD1oI/cpFOmovTIciRDsh48KtVy7XlYLGhv+OQU9WpU2D/r72wY
 SuPw==
X-Gm-Message-State: AGi0PuZyXsdBPk1RRsKfFe4mdoBcapvKPcsysRWYyMBq7WXIltKKVaDh
 +CLsSSjhucWz+QXrrTsxJEKpz+Mzi0NQMQ==
X-Google-Smtp-Source: APiQypLtTXktOFwi4rG8KfHncPHqF5RhoZeoMN31SRptDkzlffYBkNRq3zY4SEMxzDGE2u95PGjgqA==
X-Received: by 2002:a17:906:6856:: with SMTP id
 a22mr12768050ejs.115.1588861514811; 
 Thu, 07 May 2020 07:25:14 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43])
 by smtp.gmail.com with ESMTPSA id i12sm597440edx.86.2020.05.07.07.25.13
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 07:25:13 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id e26so6768967wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 07:25:13 -0700 (PDT)
X-Received: by 2002:a7b:c38b:: with SMTP id s11mr10723255wmj.55.1588861512281; 
 Thu, 07 May 2020 07:25:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200430080924.1140-1-dongchun.zhu@mediatek.com>
 <20200430080924.1140-2-dongchun.zhu@mediatek.com>
 <20200505070451.GS9190@paasikivi.fi.intel.com>
 <1588688238.8804.150.camel@mhfsdcap03>
 <20200506112136.GV9190@paasikivi.fi.intel.com>
 <1588856325.8804.179.camel@mhfsdcap03>
 <CAAFQd5CXRD_j7Xkxb4=9kkd+pDy4W5pirAPSG8RsMVH6L-MU2w@mail.gmail.com>
 <20200507141147.GF9190@paasikivi.fi.intel.com>
In-Reply-To: <20200507141147.GF9190@paasikivi.fi.intel.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 7 May 2020 16:25:01 +0200
X-Gmail-Original-Message-ID: <CAAFQd5DgDk57MCc4vE9VmifZYjtO_SUFss+vc8W-28SFHbKDrA@mail.gmail.com>
Message-ID: <CAAFQd5DgDk57MCc4vE9VmifZYjtO_SUFss+vc8W-28SFHbKDrA@mail.gmail.com>
Subject: Re: [V7,
 1/2] media: dt-bindings: media: i2c: Document OV02A10 bindings
To: Sakari Ailus <sakari.ailus@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_072516_824848_59DCFB53 
X-CRM114-Status: GOOD (  35.25  )
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
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Louis Kuo <louis.kuo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 matrix.zhu@aliyun.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 7, 2020 at 4:12 PM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> Hi Tomasz, Dongchun,
>
> On Thu, May 07, 2020 at 03:50:40PM +0200, Tomasz Figa wrote:
> > Hi Sakari and Dongchun,
> >
> > On Thu, May 7, 2020 at 3:00 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > >
> > > Hi Sakari,
> > >
> > > Thanks for the review.
> > >
> > > On Wed, 2020-05-06 at 14:21 +0300, Sakari Ailus wrote:
> > > > Hi Dongchun,
> > > >
> > > > On Tue, May 05, 2020 at 10:17:18PM +0800, Dongchun Zhu wrote:
> > > > > Hi Sakari,
> > > > >
> > > > > Thanks for the review.
> > > > >
> > > > > On Tue, 2020-05-05 at 10:04 +0300, Sakari Ailus wrote:
> > > > > > Hi Dongchun,
> > > > > >
> > > > > > On Thu, Apr 30, 2020 at 04:09:23PM +0800, Dongchun Zhu wrote:
> > > > > > > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> > > > > > >
> > > > > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > > > ---
> > > > > > >  .../bindings/media/i2c/ovti,ov02a10.yaml           | 148 +++++++++++++++++++++
> > > > > > >  MAINTAINERS                                        |   7 +
> > > > > > >  2 files changed, 155 insertions(+)
> > > > > > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > > > >
> > > > > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > > > > new file mode 100644
> > > > > > > index 0000000..2be4bd2
> > > > > > > --- /dev/null
> > > > > > > +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > > > > @@ -0,0 +1,148 @@
> > > > > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > > > > +# Copyright (c) 2020 MediaTek Inc.
> > > > > > > +%YAML 1.2
> > > > > > > +---
> > > > > > > +$id: http://devicetree.org/schemas/media/i2c/ovti,ov02a10.yaml#
> > > > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > > > +
> > > > > > > +title: Omnivision OV02A10 CMOS Sensor Device Tree Bindings
> > > > > > > +
> > > > > > > +maintainers:
> > > > > > > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > > > +
> > > > > > > +description: |-
> > > > > > > +  The Omnivision OV02A10 is a low-cost, high performance, 1/5-inch, 2 megapixel
> > > > > > > +  image sensor, which is the latest production derived from Omnivision's CMOS
> > > > > > > +  image sensor technology. Ihis chip supports high frame rate speeds up to 30fps
> > > > > > > +  @ 1600x1200 (UXGA) resolution transferred over a 1-lane MIPI interface. The
> > > > > > > +  sensor output is available via CSI-2 serial data output.
> > > > > > > +
> > > > > > > +properties:
> > > > > > > +  compatible:
> > > > > > > +    const: ovti,ov02a10
> > > > > > > +
> > > > > > > +  reg:
> > > > > > > +    maxItems: 1
> > > > > > > +
> > > > > > > +  clocks:
> > > > > > > +    items:
> > > > > > > +      - description: top mux camtg clock
> > > > > > > +      - description: devider clock
> > > > > > > +
> > > > > > > +  clock-names:
> > > > > > > +    items:
> > > > > > > +      - const: eclk
> > > > > > > +      - const: freq_mux
> > > > > > > +
> > > > > > > +  clock-frequency:
> > > > > > > +    description:
> > > > > > > +      Frequency of the eclk clock in Hertz.
> > > > > > > +
> > > > > > > +  dovdd-supply:
> > > > > > > +    description:
> > > > > > > +      Definition of the regulator used as interface power supply.
> > > > > > > +
> > > > > > > +  avdd-supply:
> > > > > > > +    description:
> > > > > > > +      Definition of the regulator used as analog power supply.
> > > > > > > +
> > > > > > > +  dvdd-supply:
> > > > > > > +    description:
> > > > > > > +      Definition of the regulator used as digital power supply.
> > > > > > > +
> > > > > > > +  powerdown-gpios:
> > > > > > > +    description:
> > > > > > > +      The phandle and specifier for the GPIO that controls sensor powerdown.
> > > > > > > +
> > > > > > > +  reset-gpios:
> > > > > > > +    description:
> > > > > > > +      The phandle and specifier for the GPIO that controls sensor reset.
> > > > > > > +
> > > > > > > +  rotation:
> > > > > > > +    description:
> > > > > > > +      Definition of the sensor's placement, valid values are 0 and 180.
> > > > > > > +    allOf:
> > > > > > > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > > > > > > +      - enum:
> > > > > > > +          - 0    # Sensor Mounted Upright
> > > > > > > +          - 180  # Sensor Mounted Upside Down
> > > > > > > +
> > > > > > > +  ovti,mipi-tx-speed:
> > > > > > > +    description:
> > > > > > > +      Indication of MIPI transmission speed select.
> > > > > >
> > > > > > What exactly does this signify? And how do you come up with the number?
> > > > > >
> > > > >
> > > > > Apologies for not addressing this number clear.
> > > > >
> > > > > From the datasheet, P1:0xA1 register represents TX_SPEED_AREA_SEL with
> > > > > the default val: 0x03.
> > > > > The description of this RW register is as below:
> > > > > Bit[2:0]: MIPI transmission speed select.
> > > > >
> > > > > Thus the enum should be definited as [ 0, 1, 2, 3, 4, 5, 6, 7 ].
> > > > > This would be fixed in next release.
> > > > >
> > > > > In the meantime, as the default val of P1:0xA1 is 0x03, we hope to keep
> > > > > that value if there is no setting for this private property in DT.
> > > > > The caller in driver would be updated like this in next release.
> > > > > if (ov02a10->mipi_clock_tx_speed)
> > > > >     ret = i2c_smbus_write_byte_data(...,...);
> > > >
> > > > How did you pick the value in the example? And why do you believe it is
> > > > specific to a platform, and not e.g. a sensor mode?
> > > >
> > >
> > > We look into P1:0XA1, one register that defines MIPI transmission speed
> > > select.
> > > From the datasheet, we can get the possible values that could be set to
> > > P1:0xA1.
> > >
> > > Actually this register is an independent of sensor mode, it is just
> > > included in sensor mode's register setting table.
> > >
> > > In addition, this private DT Property is created to fix the MIPI test
> > > failure. The register values are adjusted and verified from vendor to
> > > make sensor signal meet MIPI specification.
> > >
> >
> > In theory the value could depend on the mode, because different link
> > rate could impose different requirements for the physical interface.
> > In practice, we haven't seen any hardware that would require different
> > values for different modes.
>
> The mode (possibly in conjunction with other information available to the
> driver via V4L2 fwnode interface) precisely defines the parameters of the
> CSI-2 bus --- apart from the possible exception of the bus timing related
> parameters but this is not supported by the name of the parameter.
>
> Therefore I don't see how this parameter, which supposedly is used to
> determine the CSI-2 transmissions speed, could be board specific and thus
> belong to DT.

According to the very imprecise information I have access to, it is
not about the CSI-2 bus itself, but rather some internal parameter of
the sensor's CSI interface. Unfortunately there isn't much information
on what this value exactly controls...

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
