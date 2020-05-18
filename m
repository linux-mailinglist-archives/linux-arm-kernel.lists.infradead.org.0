Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4F61D7B4A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 16:32:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nUd6VkhdS0YtC/+lOr4uvZwL1x5wYgDtsDXBb/eNa7Q=; b=PCbUwo6EFmVZ/C
	5vakX7a04iPM7iGyaamUEHNF56wdvXXmAgal0bfE0gO7HmROkbY+hOWU1RgdVJAJBpQjT2+ZIVpjk
	JRXphhmBfnU1tghWRdKvcQKKaXICyDxCOiuQbn88ebkmN2ZIzVlA8LETuKfXUlTrYAWREk/4SqTXc
	rbACebRBphtBPPwccpkxOA1HmZ5a8vdjQWcuLn1+oH/iZYUlvHi/DMtkYzoh0xLvCUCj98XtX+YAO
	dgaUSQg7JzsCUkzWtNmmYLW8/a0SLT+2KcIRKlZnGJ7LIduzU1B7KUoNsO/jFic5e6rFM4euEbOSo
	qONJ3ievVsyZd1eaJImw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jagoP-0008E6-Fw; Mon, 18 May 2020 14:32:13 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jagoG-0008Cn-2f; Mon, 18 May 2020 14:32:05 +0000
Received: by mail-io1-f67.google.com with SMTP id s10so10779521iog.7;
 Mon, 18 May 2020 07:32:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MpT+nu7nNOLKspYEkQrWYjY1RVTqlNGjWcECXgpB5yE=;
 b=fMtaWbDBkHkN3cfwJovXwHWrQUxftkAO3K2hMCMsmkkocKZPWq558mrbT8IH+Rw3iM
 tNrr1SNEtQf7znWEpfTPj/OZ/LCp1WEK9qY2XEenTpSdrNJyf3trYqn4CoF3Q0X1v8cm
 VZgAWid2FQfT0j2kEHSHJduipezI4A3v8L50UdTVWTqqmsMKkaEyUfLIei59rS03mqBd
 0kQxiElhWycgyMiR3VuxgOLIneXVqhJkYswttdClh/9x1nlkprJQIUat21dvdQpNfbO/
 qqG6OX2iclqvNEQSE9/wuL4j/E5ve8UkapYSftxhjTWfz8Sff0dtwAA11A//XCnJ8d2c
 oY9w==
X-Gm-Message-State: AOAM5339g6EbfuNkN9gv5zsTglg3JGwqq/MU/E0hcf6uQqVXMjeGMBX7
 f/IrLJVoHaNxBruiHkLjZg==
X-Google-Smtp-Source: ABdhPJwvbWX1i1YobTWJ2sW5L/vNBdw/cQ7LkbFo2JKkW8/BcRUhpnwK4wzuSXXypB3KuWClTxgjbA==
X-Received: by 2002:a6b:500e:: with SMTP id e14mr13295274iob.47.1589812322692; 
 Mon, 18 May 2020 07:32:02 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id a17sm1572365ild.31.2020.05.18.07.31.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 07:31:49 -0700 (PDT)
Received: (nullmailer pid 24775 invoked by uid 1000);
 Mon, 18 May 2020 14:31:48 -0000
Date: Mon, 18 May 2020 08:31:48 -0600
From: Rob Herring <robh@kernel.org>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [V6, 1/2] media: dt-bindings: media: i2c: Document DW9768 bindings
Message-ID: <20200518143148.GA18032@bogus>
References: <20200518132731.20855-1-dongchun.zhu@mediatek.com>
 <20200518132731.20855-2-dongchun.zhu@mediatek.com>
 <CAAFQd5Byvc8Fb0f3_81xSKsuyvsQJm-8g8y1Kx2aUcC=PwpS7w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5Byvc8Fb0f3_81xSKsuyvsQJm-8g8y1Kx2aUcC=PwpS7w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_073204_120115_C6C650D1 
X-CRM114-Status: GOOD (  20.66  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Shengnan Wang =?utf-8?B?KOeOi+Wco+eUtyk=?= <shengnan.wang@mediatek.com>,
 Louis Kuo <louis.kuo@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Nicolas Boichat <drinkcat@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 04:12:28PM +0200, Tomasz Figa wrote:
> Hi Dongchun,
> 
> On Mon, May 18, 2020 at 3:29 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> >
> > Add DeviceTree binding documentation for Dongwoon Anatech DW9768 voice
> > coil actuator.
> 
> Thanks for the patch. Please see my comments below.
> 
> >
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> 
> This version includes significant changes, so the reviewed-by tag
> shouldn't have been carried out.
> 
> > ---
> >  .../bindings/media/i2c/dongwoon,dw9768.yaml        | 105 +++++++++++++++++++++
> >  MAINTAINERS                                        |   7 ++
> >  2 files changed, 112 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > new file mode 100644
> > index 0000000..b909e83
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > @@ -0,0 +1,105 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright (c) 2020 MediaTek Inc.
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/i2c/dongwoon,dw9768.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Dongwoon Anatech DW9768 Voice Coil Motor (VCM) Lens Device Tree Bindings
> > +
> > +maintainers:
> > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > +
> > +description: |-
> > +  The Dongwoon DW9768 is a single 10-bit digital-to-analog (DAC) converter
> > +  with 100 mA output current sink capability. VCM current is controlled with
> > +  a linear mode driver. The DAC is controlled via a 2-wire (I2C-compatible)
> > +  serial interface that operates at clock rates up to 1MHz. This chip
> > +  integrates Advanced Actuator Control (AAC) technology and is intended for
> > +  driving voice coil lenses in camera modules.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      # for DW9768 VCM
> > +      - dongwoon,dw9768
> > +      # for GT9769 VCM
> > +      - giantec,gt9769
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  vin-supply:
> > +    description:
> > +      Definition of the regulator used as I2C I/O interface power supply.
> > +
> > +  vdd-supply:
> > +    description:
> > +      Definition of the regulator used as VCM chip power supply.
> > +
> > +  dongwoon,aac-mode:
> > +    description:
> > +      Indication of AAC mode select.
> > +    allOf:
> > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > +      - enum:
> > +          - 0    #  Direct (default)

Default can be expressed as 'default: 0'.

> > +          - 1    #  AAC2 (operation time# 0.48 x Tvib)
> > +          - 2    #  AAC3 (operation time# 0.70 x Tvib)
> > +          - 3    #  AAC4 (operation time# 0.75 x Tvib)
> > +          - 4    #  Reserved
> > +          - 5    #  AAC8 (operation time# 1.13 x Tvib)
> > +          - 6    #  Reserved
> > +          - 7    #  Reserved
> 
> I'll ultimately leave it to DT maintainers, but is there any reason to
> define the reserved values?

No.

> 
> > +
> > +  dongwoon,aac-timing:
> > +    description:
> > +      Indication of AAC Timing count, unit of 0.1 milliseconds.

Why not just use standard units (-us)?

> > +      Valid values vary from 0 to 63 (default 32).

Looks like constraints.

> > +    allOf:
> > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > +
> > +  dongwoon,clock-dividing-rate:
> > +    description:
> > +      Indication of VCM internal clock dividing rate select, as one multiple
> > +      factor to calculate VCM ring periodic time Tvib.
> > +    allOf:
> > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > +      - enum:
> > +          - 0    #  Dividing Rate -  2
> > +          - 1    #  Dividing Rate -  1 (default)
> > +          - 2    #  Dividing Rate -  1/2
> > +          - 3    #  Dividing Rate -  1/4
> > +          - 4    #  Dividing Rate -  8
> > +          - 5    #  Dividing Rate -  4
> > +          - 6    #  Dividing Rate -  Reserved
> > +          - 7    #  Dividing Rate -  Reserved
> 
> Ditto.
> 
> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
