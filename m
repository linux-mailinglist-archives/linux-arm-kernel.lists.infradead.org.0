Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 200DDB2F49
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 10:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WCL3rZlz5O/p+Cja1EMmAA9rhw/qd/FLo0L9LXIzxU=; b=lK3uNDFcrQthKw
	vN9HSmqMKd4KeVEk9miA//J9HARJFWF7EEGrsihzFub9Pv1p2ds7Xvseuj4eerTcX+gk0EmPohbfP
	fs7e50PHZI+FrMXM9ZPSdgQ7mJ0L06KC1CFpP9U8FnF3F0k8MbbLLsHhRd74NLhW0zDTWRwiNUBRp
	SEBDYanR1Y8e9eIyqi+ih/9iobfU+VDnfUZ3sEncKdejSXO39A7xzsI7YaBNFtz2+lBonoMbvgz0F
	rSVvgBxesRgaCemLRdxrpagHh6VG+59GrNi5KvPDQ2nUrTSJZNt0l7swnQKWNh7WAwutxSVdv6rLu
	bg9Cxc+BRRxLkZpzJuVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9QJO-0005TI-Tc; Sun, 15 Sep 2019 08:55:15 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9QIh-0005Sd-IJ
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 08:54:33 +0000
Received: by mail-ed1-f65.google.com with SMTP id i8so30422623edn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Sep 2019 01:54:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PWnzu3eflcbwSP6tx+4Ivb9O3SO0Lh/ZkIkmqyjnoX4=;
 b=fwAX0dxV7WoRGuV/HG//eCyIcG0HGwgcuEixZv9w3ZhdLp9E6/0Q+d2kBrxgHEMVM5
 ch7lFzsS/sUdp+AFaPrrtELPwu2AhDKSgs8HlKfSoqaH3+o1rs54eiZYH8k1C9dw9rAh
 DUkM2pEohoF8NtoU08sFMGMzzBwCp52GzJJbTgCKiA527dcNB/+S4Y0fhF6tDJhKxPAt
 YEcUx5X6Zil/lwQZ02pBKeN+NmAgd4kqNETxatT72VrfrFyYy0LT7OFCVk0Wsb3tiGkE
 j10Sdt+0RB39zlvc6hovM0PLVS8nEdQ7nC+zj82PzK7E8u/8xpTmqhDRxxsbkTzKocfv
 3WUQ==
X-Gm-Message-State: APjAAAVvNroSCjnrq9pxn4tAOIuKWBgeWHF+Y1zeN5RHwaxgT6LJRTB/
 GqbY/4bP5TKHFcVGsBJv9w+EWgvCl+I=
X-Google-Smtp-Source: APXvYqydUqObrzoYA553Eu0b7jntk81GaDuKomp8zQEg9YYCfh79+MP3KvChBL3Uj9tSopyuXWfDJw==
X-Received: by 2002:a17:906:3485:: with SMTP id
 g5mr44605478ejb.76.1568537668725; 
 Sun, 15 Sep 2019 01:54:28 -0700 (PDT)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com.
 [209.85.128.51])
 by smtp.gmail.com with ESMTPSA id j20sm6239220edy.95.2019.09.15.01.54.28
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 15 Sep 2019 01:54:28 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id y21so2666936wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Sep 2019 01:54:28 -0700 (PDT)
X-Received: by 2002:a1c:a54a:: with SMTP id o71mr10242857wme.51.1568537667994; 
 Sun, 15 Sep 2019 01:54:27 -0700 (PDT)
MIME-Version: 1.0
References: <cover.34bcd988943a26671681eaf849aacab51fab1cfe.1562847292.git-series.maxime.ripard@bootlin.com>
 <110dd9ff1784c29fa16304825a41d1603a33f166.1562847292.git-series.maxime.ripard@bootlin.com>
 <CAGb2v64nx2AuWZN+RxCneE0pqvXr_d7u6mQ+=nCHv2VJ1MNtrQ@mail.gmail.com>
In-Reply-To: <CAGb2v64nx2AuWZN+RxCneE0pqvXr_d7u6mQ+=nCHv2VJ1MNtrQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sun, 15 Sep 2019 16:54:16 +0800
X-Gmail-Original-Message-ID: <CAGb2v66Sin9HZ+QENegLQ3d7iiy278niwdr9rEZ0HwUfeQNFRQ@mail.gmail.com>
Message-ID: <CAGb2v66Sin9HZ+QENegLQ3d7iiy278niwdr9rEZ0HwUfeQNFRQ@mail.gmail.com>
Subject: Re: [PATCH v6 1/5] dt-bindings: media: Add Allwinner A10 CSI binding
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_015431_608438_2AF4D27A 
X-CRM114-Status: GOOD (  27.18  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 4:34 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> Hi,
>
> Sorry for chiming in so late.
>
> On Thu, Jul 11, 2019 at 8:15 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > The Allwinner A10 CMOS Sensor Interface is a camera capture interface also
> > used in later (A10s, A13, A20, R8 and GR8) SoCs.
> >
> > On some SoCs, like the A10, there's multiple instances of that controller,
> > with one instance supporting more channels and having an ISP.
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml | 94 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 94 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > new file mode 100644
> > index 000000000000..97c9fc3b5050
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > @@ -0,0 +1,94 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/allwinner,sun4i-a10-csi.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner A10 CMOS Sensor Interface (CSI) Device Tree Bindings
> > +
> > +maintainers:
> > +  - Chen-Yu Tsai <wens@csie.org>
> > +  - Maxime Ripard <maxime.ripard@bootlin.com>
> > +
> > +description: |-
> > +  The Allwinner A10 and later has a CMOS Sensor Interface to retrieve
> > +  frames from a parallel or BT656 sensor.
> > +
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - allwinner,sun7i-a20-csi0
> > +          - const: allwinner,sun4i-a10-csi0
>
> CSI0 on the A10 has an ISP. Do we know if the one in the A20 does
> as well? It certainly doesn't say so in the user manual. If not,
> then we can't claim that A20 CSI0 is compatible with A10 CSI0.
>
> > +
> > +      - items:
> > +          - const: allwinner,sun4i-a10-csi0
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: The CSI interface clock
> > +      - description: The CSI module clock
> > +      - description: The CSI ISP clock
> > +      - description: The CSI DRAM clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: bus
> > +      - const: mod
>
> I doubt this actually is a module clock. Based on the usage in your
> device tree patch, and the csi driver in the old linux-sunxi kernel,
> the clock rate is set to 24 MHz, or whatever the sensor requires for
> MCLK.

I'm working on adding support for this on the R40, and it seems with
this SoC the picture is much clearer. It has the same CSI interface
block, but the CCU has the clocks correctly named. We have:

  - CSI_MCLK0
  - CSI_MCLK1
  - CSI_SCLK

in addition to the bus clocks.

The CSI section also explains the clock signals:

    6.1.3.2. Clock Sources
    Two Clocks need to be configured for CSI controller. CSI0/1_MCLK
    provides the master clock for sensor and other devices. CSI_SCLK
    is the top clock for the whole CSI module.

So it would seem the ISP clock we currently have in the DT is simply
the module clock shared by all CSI-related hardware blocks, and the
module clock is bogus.

ChenYu

> ChenYu
>
> > +      - const: isp
> > +      - const: ram
> > +
> > +  resets:
> > +    description: The reset line driver this IP
> > +    maxItems: 1
> > +
> > +  pinctrl-0:
> > +    minItems: 1
> > +
> > +  pinctrl-names:
> > +    const: default
> > +
> > +  port:
> > +    type: object
> > +    additionalProperties: false
> > +
> > +    properties:
> > +      endpoint:
> > +        properties:
> > +          bus-width:
> > +            const: 8
> > +            description: Number of data lines actively used.
> > +
> > +          data-active: true
> > +          hsync-active: true
> > +          pclk-sample: true
> > +          remote-endpoint: true
> > +          vsync-active: true
> > +
> > +        required:
> > +          - bus-width
> > +          - data-active
> > +          - hsync-active
> > +          - pclk-sample
> > +          - remote-endpoint
> > +          - vsync-active
> > +
> > +    required:
> > +      - endpoint
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +
> > +additionalProperties: false
> > +...
> > --
> > git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
