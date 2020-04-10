Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F31221A4915
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 19:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yyE/sx9KxkX1iVLEMLmNHBylKJr9DlhBa9XTgxJh6RE=; b=SS+0xhtt2bAoRY
	mF/4e2RQ7A5U49KvcsjpQx8RGesxUekJaNPeYpCrTf/BQ+YF6n5/FJsvodnklqYhPAldx0fCsSAc0
	tHQ9H+FTqGWF0LFDyA7UCCT/IGN21zljw4ZF6Tzbtloe27tHp5mVHIcqOaVo6UMcH2Qfpf6BbIn28
	gXwZOQv8BEHpFe0oz+lRe3YbS6mgVuBRBpo1ycVzJgDA4kLqsNImQWSHklEYLcMlAzUBhuLj/MxKL
	2WZmDnHyVgzjIlRw7y+H9bO7+iZVRN2xPMSxWkEiPO3fttTtyaCHuBHl8UvDzDJIiuAyoSnSEMIOr
	hrDpUdng7+PytIgveLhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMxaS-00063H-CU; Fri, 10 Apr 2020 17:37:04 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMxaG-00061C-Oi; Fri, 10 Apr 2020 17:36:54 +0000
Received: by mail-oi1-f193.google.com with SMTP id k133so1241817oih.12;
 Fri, 10 Apr 2020 10:36:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QBEtm9wj9+GCsvuO7AqmsQRpKjkshfnjy93bDn3pJjg=;
 b=mrKwzGO4zR4LmE3PcVo4aUvamCnjP1rJHqjjVMyBBZ+WQ9vluI9a2adBdf8IbcM33J
 awQCGIJ2ayP1ubiiYw+syfp0UtyFNfdnrdbCzR6gEY7VyAeuXMwV8NcDTImVFNh6ruGD
 23DM1g1k5KXTO9DWOqT4HgtstyjoCxOrc9DhKXMd5+ibFyRlufQuV827EczC+ak9wIlh
 qXpudfGdixJbT4Ko9khJQe5QGiI3rMsBlVqM14YU8evFzOjKssG5T7dImW5DBzQguexU
 CcWf9oxD6jv2cowaAf+pN+okBWIyDYEtFtddZgI1O3IIQOTz8hXhCZSBdtezkykP0FM3
 O49g==
X-Gm-Message-State: AGi0Pub56CdbrTbL/jprHipwm5uSk9R6NIwgnsBvN4fHL16gfGZLvifB
 t19XgRe9psqpwBXQ9mvoyQ==
X-Google-Smtp-Source: APiQypJvIzXiGQUkFI9BjUhby/lCJa4wLGEtjD/gV8K12mkSAWYPQSvkgPt6INjIArj9sD7aK4V+Kg==
X-Received: by 2002:aca:34c6:: with SMTP id b189mr4027120oia.63.1586540208773; 
 Fri, 10 Apr 2020 10:36:48 -0700 (PDT)
Received: from rob-hp-laptop (ip-99-203-29-27.pools.cgn.spcsdns.net.
 [99.203.29.27])
 by smtp.gmail.com with ESMTPSA id q187sm1541807oih.48.2020.04.10.10.36.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 10:36:47 -0700 (PDT)
Received: (nullmailer pid 27880 invoked by uid 1000);
 Fri, 10 Apr 2020 17:25:27 -0000
Date: Fri, 10 Apr 2020 12:25:27 -0500
From: Rob Herring <robh@kernel.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V4, 1/2] media: i2c: dw9768: Add DT support and MAINTAINERS entry
Message-ID: <20200410172527.GA24529@bogus>
References: <20200330123634.363-1-dongchun.zhu@mediatek.com>
 <20200330123634.363-2-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330123634.363-2-dongchun.zhu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_103652_801476_1AB72802 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com,
 andriy.shevchenko@linux.intel.com, tfiga@chromium.org, louis.kuo@mediatek.com,
 sj.huang@mediatek.com, linux-mediatek@lists.infradead.org,
 sakari.ailus@linux.intel.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 08:36:33PM +0800, Dongchun Zhu wrote:
> This patch is to add the Devicetreee binding documentation and
> MAINTAINERS entry for dw9768 actuator.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  .../bindings/media/i2c/dongwoon,dw9768.yaml        | 62 ++++++++++++++++++++++
>  MAINTAINERS                                        |  7 +++
>  2 files changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> new file mode 100644
> index 0000000..8a353dc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright (c) 2020 MediaTek Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/dongwoon,dw9768.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Dongwoon Anatech DW9768 Voice Coil Motor (VCM) Device Tree Bindings
> +
> +maintainers:
> +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> +
> +description: |-
> +  The Dongwoon DW9768 is a single 10-bit digital-to-analog (DAC) converter
> +  with 100 mA output current sink capability. VCM current is controlled with
> +  a linear mode driver. The DAC is controlled via a 2-wire (I2C-compatible)
> +  serial interface that operates at clock rates up to 1MHz. This chip
> +  integrates Advanced Actuator Control (AAC) technology and is intended for
> +  driving voice coil lenses in camera modules.
> +
> +properties:
> +  compatible:
> +    const: dongwoon,dw9768
> +
> +  reg:
> +    maxItems: 1
> +
> +  vin-supply:
> +    description:
> +      Definition of the regulator used as I2C I/O interface power supply.
> +    maxItems: 1

You can drop this. *-supply is always a single entry.

> +
> +  vdd-supply:
> +    description:
> +      Definition of the regulator used as VCM chip power supply.
> +    maxItems: 1

Same here.

> +
> +required:
> +  - compatible
> +  - reg
> +  - vin-supply
> +  - vdd-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c2: i2c@11009000 {

i2c {

> +        clock-frequency = <400000>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        dw9768: camera-lens@c {
> +            compatible = "dongwoon,dw9768";
> +            reg = <0x0c>;
> +
> +            vin-supply = <&mt6358_vcamio_reg>;
> +            vdd-supply = <&mt6358_vcama2_reg>;
> +        };
> +    };
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 38fe2f3..5e124d2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -5134,6 +5134,13 @@ S:	Maintained
>  F:	drivers/media/i2c/dw9714.c
>  F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9714.txt
>  
> +DONGWOON DW9768 LENS VOICE COIL DRIVER
> +M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
> +L:	linux-media@vger.kernel.org
> +S:	Maintained
> +T:	git git://linuxtv.org/media_tree.git
> +F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> +
>  DONGWOON DW9807 LENS VOICE COIL DRIVER
>  M:	Sakari Ailus <sakari.ailus@linux.intel.com>
>  L:	linux-media@vger.kernel.org
> -- 
> 2.9.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
