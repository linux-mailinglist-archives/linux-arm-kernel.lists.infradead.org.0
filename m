Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AB08AB53
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 01:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ib2KkUqMl7pxtxnvWTiVwMiHsd1MifVsi4hO4lLlXrs=; b=PuV/uaHLPzSP6W
	oqh/2BG+OqM6L4VXBgzqCkDCo8syt0CuKp84p4lJwnPn5FGZgJrU96ZiTiTaF7ZorzWfYQVs8xnFc
	4GSHpWcwnz+M4Blrhq5PIZC21Ot2+vYuqUynzBFtc7ork7OxM2RKMHOx22uDqzZwlenvxCMB6RgQY
	eOzefAbXAf0iRsDk18RE3X+EJa5ceKOKSuluwEK+e7VbuXsQ7xEusoQkp6d1Fs2QQwSvMJS37vXWS
	uiw1B6+boppywpNWSgTHhcMcq5qlkcqO+Cuh2T8Oc3sIckzp3hs8i+qzp2LHxTFPC0c80gp0pFBBt
	HjbtJew3IcMNrS56TG8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxJw6-0000iw-Ii; Mon, 12 Aug 2019 23:41:10 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxJvt-0000i6-T5
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 23:40:59 +0000
Received: by mail-ot1-x341.google.com with SMTP id k18so33570663otr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 16:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pPEYAuAye+0GqC7OnP9046qaqHZYqZpPqW1iRwks6UA=;
 b=Az/KAHeXWMTK6hZoEHd2o4MQYecAB/NgvnMRDnUZzVhXDkbMTvsthJSrrVcLyIVGuQ
 LVzU0ExEzwQNwWcILcnqpux7LRq7Pd1qSkB6eC+g6fwszr9wFB4ErXIhaGXDPYoCO0rv
 pMTcAXFbhCOg1XGFgjerQ+dc+mqA0hzjGc7BXUkfO6eMyx/1piKi9i9vK/U/kw6GE4gD
 773IvbSspzM4MSxA3WRpuHbv+AfIXIq4oeBOCH7MdYMlswP0aaiDugAkwcyxCvWhnBRv
 n0HaEonKGwLDsQznMyf3w0/GPE5m7PEZs6cCaPGYJy8lmgi5gsjsZxHu8AgF0+1x6gfL
 fVNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pPEYAuAye+0GqC7OnP9046qaqHZYqZpPqW1iRwks6UA=;
 b=GMr/eADUPN05RU8T+OrNBV/qU5gWqBiWP9RXPUCY+2FbVIOOpVpcB6OdFjE/+rc+3R
 IelH3G4sUKfmd9shMoSlqut7nuR028u0FR9B/Uw0q3Z/Y4oUh2Z+0g9vfXtusvPxC5IP
 99ec81uSNK5Cy6U3SisGIWmkUKLdTnkO9MLmQWBl31IKN9w9TCN7inZzdyQBX79XoJZF
 WOhhvQKq4xu982iyBoutuP7DPbQlMGH68g4U6yLUxajX/ydhFsRudZzyGWok1LOBEqaz
 aISzFlc2X7gXvEQUKoVoA/rRL7F9QgfH3K7JEB/Iap/n12oqEdPilXeZvFOuxHfHBjaN
 uEwg==
X-Gm-Message-State: APjAAAXqWJj7TZuHUIIyRl4cz/R/KtMrVF4TRgs2MwdNPYzaDh4fmJYs
 gcp7qVY7ayr61vmreTZnMlIWq5KsSe6c2J6yym4=
X-Google-Smtp-Source: APXvYqwdCwEVUV+9iATbwHthiTuqT8FRW51Zis4SYydD2va0Jx7WyHS0BxXBm3kCBot3qcQDULuG0pks3KT0NGUUszE=
X-Received: by 2002:a6b:fd13:: with SMTP id c19mr12236684ioi.168.1565653256193; 
 Mon, 12 Aug 2019 16:40:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-3-tiny.windzz@gmail.com>
 <20190812085604.ozhl35wwm3ehlvqn@flea>
In-Reply-To: <20190812085604.ozhl35wwm3ehlvqn@flea>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Tue, 13 Aug 2019 07:40:44 +0800
Message-ID: <CAEExFWswLiFknVpBEKF9c5yoFvvA4np-ivWYkQLcteYoM8qjfg@mail.gmail.com>
Subject: Re: [PATCH v5 02/18] dt-bindings: thermal: add binding document for
 h6 thermal controller
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_164057_965280_E8A058D2 
X-CRM114-Status: GOOD (  23.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Jonathan.Cameron@huawei.com,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 4:56 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Sat, Aug 10, 2019 at 05:28:13AM +0000, Yangtao Li wrote:
> > This patch adds binding document for allwinner h6 thermal controller.
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > ---
> >  .../bindings/thermal/sun8i-thermal.yaml       | 79 +++++++++++++++++++
> >  1 file changed, 79 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
> > new file mode 100644
> > index 000000000000..e0973199ba3c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
>
> We've used so far for the schemas the first compatible to introduce
> that controller as the filename, we should be consistent here. In that
> case that would be allwinner,sun8i-a23-ths.yaml
>
> > @@ -0,0 +1,79 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/thermal/sun8i-thermal.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner SUN8I Thermal Controller Device Tree Bindings
> > +
> > +maintainers:
> > +  - Yangtao Li <tiny.windzz@gmail.com>
> > +
> > +description: |-
> > +  This describes the device tree binding for the Allwinner thermal
> > +  controller which measures the on-SoC temperatures.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - allwinner,sun50i-h6-ths
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    const: bus
> > +
> > +  "#thermal-sensor-cells":
> > +    const: 1
> > +
> > +  nvmem-cells:
>
> You need a maxItems here too
>
> > +    description: ths calibrate data
>
> What about something like this:
>
> Calibration data for the thermal sensor
>
> > +
> > +  nvmem-cell-names:
> > +    const: calib
>
> I'm not sure we need a abbreviation here, calibration would be more
> explicit
>
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reset
> > +  - clocks
> > +  - clock-names
> > +  - interrupts
> > +  - "#thermal-sensor-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    ths: ths@5070400 {
> > +        compatible = "allwinner,sun50i-h6-ths";
> > +        reg = <0x05070400 0x100>;
> > +        clocks = <&ccu CLK_BUS_THS>;
> > +        clock-names = "bus";
> > +        resets = <&ccu RST_BUS_THS>;
> > +        interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
>
> Those examples won't compile.

Emmm, I have some questions about this.
I added this information and it can be compiled.

Yours,
Yangtao

>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
