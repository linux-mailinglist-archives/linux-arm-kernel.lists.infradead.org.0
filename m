Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 018101FFB9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 21:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uU/rzcUMaTHDDJow86gqzjfc6gktMbvQsT6bTywckuU=; b=ujhuE5dhTnZ8Gf
	LHIUVczeYOLHKn5K2pGqjRpBJTgVVHtugbIttmqgUknyAAzVZMLXnUX8K2VcneU7yX2XMdY+i8Icg
	fjdnXlpXVUZlIbl7fP/m/nE589eNcxxAsZ/PxXp0y761f0NQBWnNFP8guUqzMCn9PQGcsBzuS0hmb
	HhRju/omV3kE86n8yJR1qMu9QWfioeP49SqAWlFOIJxyXQoBlz0//Zf6/GPeH1Ebcq8RXq32M+7Ho
	/44AMqWA2X5+6XvbTAUc1AJPd2w+1Wd39XbAiEumrypNUGXBDEHlWsDtv5hbaKokfl53ecLvus98o
	yhcXdYPJqa50ell8+xcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlzyw-0004Aa-2N; Thu, 18 Jun 2020 19:13:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlzyl-00049W-JU
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 19:13:41 +0000
Received: by mail-wr1-x443.google.com with SMTP id l10so7243148wrr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 12:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=w7ZzXm/x+S62UOvstcWj82fQZcaPM3JUhZPhHBThmZ4=;
 b=NOqFUseguuK/Se1yoTOh2UdWZ9pNBrt038Sywj2oS41eFLmh/U6q43aGTEoQP5jOql
 sC+rNNPymdYDagtcgW8Y/+zDQGn6GPvI4pz7is5d9yhUOPzoyTqL6h6Jd2iwePLK07fO
 vORkEN6nVqoAZC94xtTGOWGd4shaO6h7XUJ/U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=w7ZzXm/x+S62UOvstcWj82fQZcaPM3JUhZPhHBThmZ4=;
 b=trmniw1nRyp1YhMS7ypRQZIh0OC+wThKx0edpwsenf9W3i/h98rPJT3Y/meI1WLqH1
 1qoDi4MgPE1Q9nLiop35xbimX8QovgxIwGQ1p9bG/r+DdH+g12HOTbqH0Zy5fT0qGHtX
 MhyS15F1UBMUc0nEzsvIPR09iB7uyTp6zgAOX1h2F3PAPkGZ8FRll0DiJt8PXv3uKxyD
 olAaVu40U7Au+9WBtFnDG8jhj3ZCQi61XI0VF5ypAZ7Atdj6Daw5WQSA3GXX0xi9BSDq
 GtsOLga940qj7cOJV3P+cJn3LS4DKr3wWqlJSCRGvGi+4JG77bt54eYqkilHKIJL796/
 CuTQ==
X-Gm-Message-State: AOAM533gG3N4zSIvGAndxqtiAn3ikMorCFE2TyAS+56Pj9r+4KsLMYey
 DM0v6IyCR/73KWmpKY+loIILTA==
X-Google-Smtp-Source: ABdhPJxtePe8jNlcaDRZzkkWVLDnXp0YbUZHYQvnIoze3BeG8wHZ2ELCeZY2CEokFez7hj9uD7wdOA==
X-Received: by 2002:a5d:4dc2:: with SMTP id f2mr2615574wru.399.1592507613955; 
 Thu, 18 Jun 2020 12:13:33 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id s2sm4333182wmh.15.2020.06.18.12.13.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 12:13:33 -0700 (PDT)
Date: Thu, 18 Jun 2020 19:13:32 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [PATCH V10 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
Message-ID: <20200618191332.GB73379@chromium.org>
References: <20200615122937.18965-1-dongchun.zhu@mediatek.com>
 <20200615122937.18965-2-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615122937.18965-2-dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_121339_649879_D4D7E1E9 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, drinkcat@chromium.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, louis.kuo@mediatek.com, bgolaszewski@baylibre.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 sakari.ailus@linux.intel.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Mon, Jun 15, 2020 at 08:29:36PM +0800, Dongchun Zhu wrote:
> Add DT bindings documentation for Omnivision OV02A10 image sensor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  .../bindings/media/i2c/ovti,ov02a10.yaml           | 171 +++++++++++++++++++++
>  MAINTAINERS                                        |   7 +
>  2 files changed, 178 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> 

Thank you for the patch. Please see my comments inline.

> diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> new file mode 100644
> index 0000000..f84be1b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> @@ -0,0 +1,171 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright (c) 2020 MediaTek Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/ovti,ov02a10.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Omnivision OV02A10 CMOS Sensor Device Tree Bindings
> +
> +maintainers:
> +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> +
> +description: |-
> +  The Omnivision OV02A10 is a low-cost, high performance, 1/5-inch, 2 megapixel
> +  image sensor, which is the latest production derived from Omnivision's CMOS
> +  image sensor technology. Ihis chip supports high frame rate speeds up to 30fps
> +  @ 1600x1200 (UXGA) resolution transferred over a 1-lane MIPI interface. The
> +  sensor output is available via CSI-2 serial data output.
> +
> +properties:
> +  compatible:
> +    const: ovti,ov02a10
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: top mux camtg clock
> +      - description: divider clock
> +
> +  clock-names:
> +    items:
> +      - const: eclk
> +      - const: freq_mux
> +
> +  clock-frequency:
> +    description:
> +      Frequency of the eclk clock in Hertz.
> +
> +  dovdd-supply:
> +    description:
> +      Definition of the regulator used as Digital I/O voltage supply.
> +
> +  avdd-supply:
> +    description:
> +      Definition of the regulator used as Analog voltage supply.
> +
> +  dvdd-supply:
> +    description:
> +      Definition of the regulator used as Digital core voltage supply.
> +
> +  powerdown-gpios:
> +    description:
> +      Must be the device tree identifier of the GPIO connected to the
> +      PD_PAD pin. This pin is used to place the OV02A10 into Standby mode
> +      or Shutdown mode. As the line is active low, it should be
> +      marked GPIO_ACTIVE_LOW.

This line is not active low. It needs to be high for the powerdown mode
to be active.

> +    maxItems: 1
> +
> +  reset-gpios:
> +    description:
> +      Must be the device tree identifier of the GPIO connected to the
> +      RST_PD pin. If specified, it will be asserted during driver probe.
> +      As the line is active high, it should be marked GPIO_ACTIVE_HIGH.

This line is not active high. It needs to be low for the reset to be
active.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
