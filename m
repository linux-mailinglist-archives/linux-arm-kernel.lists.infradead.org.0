Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415E71983FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 21:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAcuaU0WJihGJyLCCRox4oc3BtabuJbDytJ4jeWOCMw=; b=mvB80TdBt1lT8k
	9Yoy2OUDocqwqkZ6H7tmXa6iYDKciOQm2j7rGOOsY+NHVnImA2meUPIfL0Vx72SWfZ/6+cD0sEkSv
	/63OgMQ/kjzfDKqA+JBLFxRny0nthBu3Asv8udz0i34GUTTeIyaDLwTF9/OVka0s9b/r5v7JsP4Ox
	wpfMop/V8uGHAzGSZbmw68hDVstWwDPNnN1Xfsfp68VjoeDjN1shtvmo/87gvYXc9RnP6ypmnfjhe
	9LNqnUUMaIBkqDplSmCB6medxCWidelyniZT6uGPe7hJ2tNWUy5HG9o+2qvW5Ys/9ZkUIXx1vpk+Q
	CYTUYIDbkyI5xY4KK5nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIzpL-0004GD-Ox; Mon, 30 Mar 2020 19:12:03 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIzoy-0004AF-5k
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 19:11:42 +0000
Received: by mail-io1-f67.google.com with SMTP id x9so12590374iom.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 12:11:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=naEzHVNq1KsTafl3xqH4koGPBy3a41PHj0Hsijlhu9s=;
 b=mPvrt4w6+P0IS7CCGja3osWZYd4ra0UZzEl86K8w9Jeh8W4rx+0q5BSe0iYUai4Q9d
 udM7fY2wclPwU3DCOxD94V/0v5FgdKWUTyNz7g4SwRfwRAKBWRUdcSdrJhTcy11Sm0E3
 Aein1PgPfujWMVL1818ki6jHcxfx1GO+qg/M9Gp7XtE4CmgSlYDBjbjQnOMrsO5UU3PH
 aTPL4rgksYLh+PXYsxyoBtL0FeX0wx4bgx8Yh3n5Mdf/MZJ4MDGIz5b3luXREkmH2wXh
 juWR4L4pnVPrpT9ro1J8iwUryz+6VtfwoteCaL8e+94VoffN1OnxZCC1Bj2HsCRa0jH8
 9oaQ==
X-Gm-Message-State: ANhLgQ2Go7zJxh4A33RfKxYSdn9lhqXfXqsDY3TU3PBVV5VFmGgDIH1+
 B7AsUounzJ+70M6vvunVgg==
X-Google-Smtp-Source: ADFU+vsYIatZ1bjntaO5hjkGBwkqDPSOhoxi4SXRJcj+KJOdK7tBb4Gb0GLh/lVqM6oByQICfnINPw==
X-Received: by 2002:a6b:8dc9:: with SMTP id p192mr11427400iod.90.1585595498899; 
 Mon, 30 Mar 2020 12:11:38 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id v80sm5125001ila.62.2020.03.30.12.11.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 12:11:37 -0700 (PDT)
Received: (nullmailer pid 6109 invoked by uid 1000);
 Mon, 30 Mar 2020 19:11:35 -0000
Date: Mon, 30 Mar 2020 13:11:35 -0600
From: Rob Herring <robh@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 1/2] dt-bindings: input: Update atmel, maxtouch.txt to YAML
Message-ID: <20200330191135.GA22010@bogus>
References: <20200315100416.14151-1-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200315100416.14151-1-paul@crapouillou.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_121140_235864_EF95E7DD 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nick Dyer <nick@shmanahar.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 15, 2020 at 11:04:15AM +0100, Paul Cercueil wrote:
> Update atmel,maxtouch.txt to YAML. The new 'vdd-supply' property was
> added in the process.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>  .../bindings/input/atmel,maxtouch.txt         | 41 -----------
>  .../bindings/input/atmel,maxtouch.yaml        | 68 +++++++++++++++++++
>  2 files changed, 68 insertions(+), 41 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/input/atmel,maxtouch.txt
>  create mode 100644 Documentation/devicetree/bindings/input/atmel,maxtouch.yaml
> 
> diff --git a/Documentation/devicetree/bindings/input/atmel,maxtouch.txt b/Documentation/devicetree/bindings/input/atmel,maxtouch.txt
> deleted file mode 100644
> index c88919480d37..000000000000
> --- a/Documentation/devicetree/bindings/input/atmel,maxtouch.txt
> +++ /dev/null
> @@ -1,41 +0,0 @@
> -Atmel maXTouch touchscreen/touchpad
> -
> -Required properties:
> -- compatible:
> -    atmel,maxtouch
> -
> -    The following compatibles have been used in various products but are
> -    deprecated:
> -	atmel,qt602240_ts
> -	atmel,atmel_mxt_ts
> -	atmel,atmel_mxt_tp
> -	atmel,mXT224
> -
> -- reg: The I2C address of the device
> -
> -- interrupts: The sink for the touchpad's IRQ output
> -    See ../interrupt-controller/interrupts.txt
> -
> -Optional properties for main touchpad device:
> -
> -- linux,gpio-keymap: When enabled, the SPT_GPIOPWN_T19 object sends messages
> -    on GPIO bit changes. An array of up to 8 entries can be provided
> -    indicating the Linux keycode mapped to each bit of the status byte,
> -    starting at the LSB. Linux keycodes are defined in
> -    <dt-bindings/input/input.h>.
> -
> -    Note: the numbering of the GPIOs and the bit they start at varies between
> -    maXTouch devices. You must either refer to the documentation, or
> -    experiment to determine which bit corresponds to which input. Use
> -    KEY_RESERVED for unused padding values.
> -
> -- reset-gpios: GPIO specifier for the touchscreen's reset pin (active low)
> -
> -Example:
> -
> -	touch@4b {
> -		compatible = "atmel,maxtouch";
> -		reg = <0x4b>;
> -		interrupt-parent = <&gpio>;
> -		interrupts = <TEGRA_GPIO(W, 3) IRQ_TYPE_LEVEL_LOW>;
> -	};
> diff --git a/Documentation/devicetree/bindings/input/atmel,maxtouch.yaml b/Documentation/devicetree/bindings/input/atmel,maxtouch.yaml
> new file mode 100644
> index 000000000000..1b138a9836bf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/atmel,maxtouch.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)

Do you have rights to relicense?

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/input/atmel,maxtouch.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Atmel maXTouch touchscreen/touchpad DT bindings
> +
> +maintainers:
> +  - Paul Cercueil <paul@crapouillou.net>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - atmel,maxtouch
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: Phandle to regulator providing power to the touchscreen
> +
> +  linux,gpio-keymap:
> +    minItems: 1
> +    maxItems: 8

Needs a type reference (uint32-array).

> +    description: >
> +      When enabled, the SPT_GPIOPWN_T19 object sends messages
> +      on GPIO bit changes. An array of up to 8 entries can be provided
> +      indicating the Linux keycode mapped to each bit of the status byte,
> +      starting at the LSB. Linux keycodes are defined in
> +      <dt-bindings/input/input.h>.
> +
> +      Note: the numbering of the GPIOs and the bit they start at varies between
> +      maXTouch devices. You must either refer to the documentation, or
> +      experiment to determine which bit corresponds to which input. Use
> +      KEY_RESERVED for unused padding values.
> +
> +  reset-gpios:
> +    description: GPIO specifier for the touchscreen's reset pin (active low)

maxItems: 1

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      mxt224-touchscreen@4a {

touchscreen@4a

> +        compatible = "atmel,maxtouch";
> +        reg = <0x4a>;
> +
> +        interrupt-parent = <&gpx0>;
> +        interrupts = <4 IRQ_TYPE_EDGE_FALLING>;
> +
> +        vdd-supply = <&tsp_reg>;
> +      };
> +    };
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
