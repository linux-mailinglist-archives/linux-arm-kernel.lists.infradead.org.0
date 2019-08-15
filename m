Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E128E680
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTA3Q87UpUriyJgUW87EWobAYGhmjEZByBPcPv8WlAA=; b=BPH8V7VlF14tKv
	yV87HFt7sd9Y8ptxQafKvrDi5dGk+419hCu46PF2A+m8MfM+xxhg0dPjfbXA4dNf63nRZCQ3x7Iub
	XzpNK7VRIakfhiGlTr9cJMOUXSs1ElpraIw/5+X4344ZFQHaOElkMDkk3L1iTqHhvFrnNFM8uq409
	99aquVKcfyQOyMWvTCgJ4QbdACxWJvfjMFFIgeKsGVIxkTpiRITRHya46yzYAfZJEljawNjZrp7P1
	yY1vQZBwkINE4vc2//RSwRI9o2k952zZWF555SaF0f0oAwxmsDdh3yzfbEIb7ULcAXP0CMud/5H9m
	Z/OOOgIL63Pq3nhRS0ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyBDz-0001Mh-01; Thu, 15 Aug 2019 08:35:11 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyBDh-0001Lu-C6
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 08:34:55 +0000
Received: by mail-ed1-f68.google.com with SMTP id x19so1465162eda.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 01:34:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vbUMFR/CGCvpvCBVKVjJLXYqx2oevZB4Y5/vjWqmzQw=;
 b=DJ5xvS5RrFt0AKfUHMABuqSBXC1YRcsMKRR6CLmr0ZPpkcS9hZvH4SviMHlHvQrMYA
 JSSkiVdisx/mS3qImyIf7CLgCGEZcET13ufodPKY7ft3YeJP2+QMBr1wgyz2hheV+1jC
 JXYtI4+9fIquDeRGQZV42Ck35PfQwOEtcHU2ZLvoQyjtRmZ0FYvUeVudGkaLgAdiJF6u
 ockX1kovwBB5T+puZodDpiU8YLpL160RBFALy8qoIPX5o3n/Y8y/8HesTlp4PaCsOPKu
 ndd75W3cFxlw7+niHPj7aMa57WYJ7PgTQvV9cSXuSFmmjmmPF/z9LgW40baOaIX6MjRI
 1jRA==
X-Gm-Message-State: APjAAAWvFV/5XNc1bpL9MQbpnSg6fJ0k8sGG6cmRxV72ok/95Dw0M/3e
 tl5pPjvdGzDD3zeQsjdhXRhnTZQzoNk=
X-Google-Smtp-Source: APXvYqzAAI8ua8JAKpFi2uOC5Rr3nyG5rST5fs30ayibJSB4mn3bGHif5vd6BBQOwD/1d0qonouTFQ==
X-Received: by 2002:a50:9999:: with SMTP id m25mr4145862edb.183.1565858091099; 
 Thu, 15 Aug 2019 01:34:51 -0700 (PDT)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com.
 [209.85.128.50])
 by smtp.gmail.com with ESMTPSA id m26sm435942edd.19.2019.08.15.01.34.50
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 01:34:50 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id 10so620863wmp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 01:34:50 -0700 (PDT)
X-Received: by 2002:a05:600c:292:: with SMTP id
 18mr1600234wmk.51.1565858090304; 
 Thu, 15 Aug 2019 01:34:50 -0700 (PDT)
MIME-Version: 1.0
References: <cover.34bcd988943a26671681eaf849aacab51fab1cfe.1562847292.git-series.maxime.ripard@bootlin.com>
 <110dd9ff1784c29fa16304825a41d1603a33f166.1562847292.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <110dd9ff1784c29fa16304825a41d1603a33f166.1562847292.git-series.maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 15 Aug 2019 16:34:36 +0800
X-Gmail-Original-Message-ID: <CAGb2v64nx2AuWZN+RxCneE0pqvXr_d7u6mQ+=nCHv2VJ1MNtrQ@mail.gmail.com>
Message-ID: <CAGb2v64nx2AuWZN+RxCneE0pqvXr_d7u6mQ+=nCHv2VJ1MNtrQ@mail.gmail.com>
Subject: Re: [PATCH v6 1/5] dt-bindings: media: Add Allwinner A10 CSI binding
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_013453_408097_975EDD38 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 devicetree <devicetree@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Rob Herring <robh@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Sorry for chiming in so late.

On Thu, Jul 11, 2019 at 8:15 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The Allwinner A10 CMOS Sensor Interface is a camera capture interface also
> used in later (A10s, A13, A20, R8 and GR8) SoCs.
>
> On some SoCs, like the A10, there's multiple instances of that controller,
> with one instance supporting more channels and having an ISP.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml | 94 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 94 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
>
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> new file mode 100644
> index 000000000000..97c9fc3b5050
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> @@ -0,0 +1,94 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/allwinner,sun4i-a10-csi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A10 CMOS Sensor Interface (CSI) Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +description: |-
> +  The Allwinner A10 and later has a CMOS Sensor Interface to retrieve
> +  frames from a parallel or BT656 sensor.
> +
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - allwinner,sun7i-a20-csi0
> +          - const: allwinner,sun4i-a10-csi0

CSI0 on the A10 has an ISP. Do we know if the one in the A20 does
as well? It certainly doesn't say so in the user manual. If not,
then we can't claim that A20 CSI0 is compatible with A10 CSI0.

> +
> +      - items:
> +          - const: allwinner,sun4i-a10-csi0
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: The CSI interface clock
> +      - description: The CSI module clock
> +      - description: The CSI ISP clock
> +      - description: The CSI DRAM clock
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: mod

I doubt this actually is a module clock. Based on the usage in your
device tree patch, and the csi driver in the old linux-sunxi kernel,
the clock rate is set to 24 MHz, or whatever the sensor requires for
MCLK.

ChenYu

> +      - const: isp
> +      - const: ram
> +
> +  resets:
> +    description: The reset line driver this IP
> +    maxItems: 1
> +
> +  pinctrl-0:
> +    minItems: 1
> +
> +  pinctrl-names:
> +    const: default
> +
> +  port:
> +    type: object
> +    additionalProperties: false
> +
> +    properties:
> +      endpoint:
> +        properties:
> +          bus-width:
> +            const: 8
> +            description: Number of data lines actively used.
> +
> +          data-active: true
> +          hsync-active: true
> +          pclk-sample: true
> +          remote-endpoint: true
> +          vsync-active: true
> +
> +        required:
> +          - bus-width
> +          - data-active
> +          - hsync-active
> +          - pclk-sample
> +          - remote-endpoint
> +          - vsync-active
> +
> +    required:
> +      - endpoint
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +additionalProperties: false
> +...
> --
> git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
