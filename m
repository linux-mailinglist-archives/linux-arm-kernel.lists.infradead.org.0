Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21ACD1DD75D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 21:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ZNKJ1dC1Hj0aGSzOGdSYDQjnX1+fENyUlLLvhdu2uo=; b=bGrRhm3gNw6Lhp
	Ot49+eSUPRNuXaBloZh8UcVMPq73vZ362D0bsWhanc+/j27Fvoy/cwmmMbE3SIrWiEg3cEybb2YLZ
	SiMyp0jFN/ZL3eext/ySBrJkmJ+5LIlgBThpli7F8qCn+FeVvrSWZ7FBCHl4ARMqOrM0RR2TLS1MB
	Clyzubt9AM5ZRgl6Y7Was50ZL2EpGW4t9CqVD/cOMCIPIKLrrXKBQ7e6Yw8F+tSdhLA3t9ZGHaDlX
	efMIkwTWCvjWqvyTXCNEgqlYjA88Pa9iJnv1+4kxnghDhV670AFOMWh3dPDBwxhVCyEX+vR0ZoWfe
	l3Ix41AFMWr95wEjYI7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqz4-0007P3-RT; Thu, 21 May 2020 19:36:02 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqyW-00079S-Sc
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 19:35:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id l18so7815009wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 12:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0PiSvAPliSpHmXCPHW82OGwvgeGu3nV4fisqX0ukMVE=;
 b=Mn2izAUaruoDbLEVtEGYwGj8L0xkVVzhfObauat4/vcNCP+EPMEoexK54nlo2t3NO0
 LTIUQPGxAXNwtxA3U2FY3JUp36JClziXCcHERZ6A90YjM36CtMX2opVFVkMQ4L3e/C1r
 9uUYpJi87nLJ5Do9/kd318Qkzfn2oKXsfkMJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0PiSvAPliSpHmXCPHW82OGwvgeGu3nV4fisqX0ukMVE=;
 b=QsrT5a928eEUxv2fTpQoc1AQRUCCGsZOCbEb7bHY1c0B8eXHkrQ4ah2KshP5lbImTo
 fN9HQGDzkPG70Phyffm+DFFtqEh8GK7h66uxjqCuFIblnuZIKdX6oDBYA76l/4eO75Ch
 k/0xjvfVb3ESrlx56LiGjNiWkqgApAK4ebgTtp23443QmFVpR92zYjGFqrgxm78dCZ4j
 4YuICgmYcdTQQWc2IFG8wkTtTySBnJTNpA6GsEJwZWeZfce4cstm878dkKFcBlN9V5QW
 Dsr/ZoNXQlU2eNL0tW0SOBXJfIwck32I+7a+gZv3tPBA1Xu47Hm7b72PvMbRKjrCUXBA
 6I7A==
X-Gm-Message-State: AOAM533tkWh+E1sU1v6F1teEa9gRUVTMB/fyjWtPsLD8vS4IX1RoSgqt
 mnpkLyvgZVVFcx0x/I4w+d9xXw==
X-Google-Smtp-Source: ABdhPJwRx3aYOU3qs7IEJXRm00NEpqShHLzsIlN+v+IXDKvfgZ02NPQmcQhc20kurysHzVjxZtUHQg==
X-Received: by 2002:adf:d0cb:: with SMTP id z11mr182088wrh.116.1590089727185; 
 Thu, 21 May 2020 12:35:27 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id d126sm7967920wmd.32.2020.05.21.12.35.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 12:35:26 -0700 (PDT)
Date: Thu, 21 May 2020 19:35:25 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [V8, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
Message-ID: <20200521193525.GB14214@chromium.org>
References: <20200509080627.23222-1-dongchun.zhu@mediatek.com>
 <20200509080627.23222-2-dongchun.zhu@mediatek.com>
 <20200511160207.GA32476@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511160207.GA32476@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_123528_954771_AE6F1E6A 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 linus.walleij@linaro.org, shengnan.wang@mediatek.com, louis.kuo@mediatek.com,
 bgolaszewski@baylibre.com, sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 sakari.ailus@linux.intel.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Mon, May 11, 2020 at 11:02:07AM -0500, Rob Herring wrote:
> On Sat, May 09, 2020 at 04:06:26PM +0800, Dongchun Zhu wrote:
> > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  .../bindings/media/i2c/ovti,ov02a10.yaml           | 184 +++++++++++++++++++++
> >  MAINTAINERS                                        |   7 +
> >  2 files changed, 191 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > new file mode 100644
> > index 0000000..5468d1b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > @@ -0,0 +1,184 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright (c) 2020 MediaTek Inc.
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/i2c/ovti,ov02a10.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Omnivision OV02A10 CMOS Sensor Device Tree Bindings
> > +
> > +maintainers:
> > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > +
> > +description: |-
> > +  The Omnivision OV02A10 is a low-cost, high performance, 1/5-inch, 2 megapixel
> > +  image sensor, which is the latest production derived from Omnivision's CMOS
> > +  image sensor technology. Ihis chip supports high frame rate speeds up to 30fps
> > +  @ 1600x1200 (UXGA) resolution transferred over a 1-lane MIPI interface. The
> > +  sensor output is available via CSI-2 serial data output.
> > +
> > +properties:
> > +  compatible:
> > +    const: ovti,ov02a10
> > +
> > +  reg:
> > +    description: I2C device address
> 
> Drop this. Nothing specific to this device.
> 
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: top mux camtg clock
> > +      - description: devider clock
> 
> typo
> 
> > +
> > +  clock-names:
> > +    items:
> > +      - const: eclk
> > +      - const: freq_mux
> > +
> > +  clock-frequency:
> > +    description:
> > +      Frequency of the eclk clock in Hertz.
> > +
> > +  dovdd-supply:
> > +    description:
> > +      Definition of the regulator used as interface power supply.
> > +
> > +  avdd-supply:
> > +    description:
> > +      Definition of the regulator used as analog power supply.
> > +
> > +  dvdd-supply:
> > +    description:
> > +      Definition of the regulator used as digital power supply.
> > +
> > +  powerdown-gpios:
> > +    maxItems: 1
> > +
> > +  reset-gpios:
> > +    maxItems: 1

I asked a question about defining GPIO polarities some time ago, but I
guess it slipped through.

The chip documentation calls the reset pin as "RST_PAD (low level
reset)". Where should the inversion be handled, in the driver or here,
by having the DT include a necessary flag in the specifier?

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
