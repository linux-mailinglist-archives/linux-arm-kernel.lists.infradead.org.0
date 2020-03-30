Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53371198781
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 00:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4dJqrVbtZr8XKIr0HbJ3auYrmzAnmXhr3/pHn+NJyA=; b=JSg0W232rueg35
	sHs5q8DOiOUKUTkoW2Wr/A/1gNuUSQ7E7NNh8QfSyRkuzHJZeoIarQI2uTXQQKGJwL3dbDn5hmHAD
	17KdRwj7GcB6P8xtXeH26ap2c+Uqj61IINej4XdxzQSgX3YSJI5ngSiykGOfgn04ZAuKBluRYfHLB
	MA0C6zpuBHwXuDUHWls6Yu2MtAT1tveqZRPmMIk0htgdu5ZycqWeOxgSAoK/+57ISHR2UD9M9BMY0
	RdFsEokZGVSZRCI2s9gDkZo9yRxzEzVA2RQ7OggHXn1SGj/DBVYHOUUzbnpwbUdK/14GljG01xApO
	XKDYd4uKm/JurjuNZIJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ30W-0003m6-Mc; Mon, 30 Mar 2020 22:35:48 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ30N-0003li-2m
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 22:35:40 +0000
Received: by mail-il1-f193.google.com with SMTP id 7so17548060ill.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 15:35:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=I5WWfs5YS24hDXKa/XtUGtXEdA3TZ6qAt3nvgnrU3Mg=;
 b=gAFMH82Gq63KdP4LIOykYCYeYvzZUpEQDZSl4zE8ZnCNv0ty8YnCkNSCsVQEtRcEZN
 k5GI0jIxo3CdZBKk3QK4MA9n5E42PQeI0wAfPKKGoZciZSa1r9LYa9pLjmHbIWGWiXF7
 usprjLV8WHNKlr7IvkXWkHKIc9iYdhOLUU1Y2OeFk44s/vZk/SpljeBuWh1cbePSwKsR
 MmMAqcFzjdGXI8LiHKI+nwcLc+hR14Nq5uHa0gkIBRkw57GOYOi3cuTdCND7aR+t7nyd
 6HiUo1t8uWQd1Y5JdcIDksgwp4WQ5UE0Y0CRQM/7YSSpi/oQQ3wnkFpNLJ0NLDC6yj7j
 za1g==
X-Gm-Message-State: ANhLgQ1xhhq/Ytyza9z5l44iHCkUqdWZ1tKVEfnW6sAVFdA1ngwXXlB0
 6Oa4kexPCOwem9gd2kh5eg==
X-Google-Smtp-Source: ADFU+vssbUqtDjk9LmSKnh6QyMy6yhoEjw71OJha0yhLNQZ1KYIfV2iGgJtR8LtRx2C40kLrzGDj9w==
X-Received: by 2002:a92:5e55:: with SMTP id s82mr12453797ilb.62.1585607737767; 
 Mon, 30 Mar 2020 15:35:37 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id x15sm5321840ilg.29.2020.03.30.15.35.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 15:35:37 -0700 (PDT)
Received: (nullmailer pid 18867 invoked by uid 1000);
 Mon, 30 Mar 2020 22:35:35 -0000
Date: Mon, 30 Mar 2020 16:35:35 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH 04/18] dt-bindings: mfd: Add bindings for sl28cpld
Message-ID: <20200330223535.GA31402@bogus>
References: <20200317205017.28280-1-michael@walle.cc>
 <20200317205017.28280-5-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317205017.28280-5-michael@walle.cc>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_153539_124581_39757522 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
Cc: linux-hwmon@vger.kernel.org, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Marc Zyngier <maz@kernel.org>,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 linux-gpio@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 09:50:03PM +0100, Michael Walle wrote:
> This adds device tree bindings for the board management controller found
> on the Kontron SMARC-sAL28 board.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  .../bindings/mfd/kontron,sl28cpld.yaml        | 143 ++++++++++++++++++
>  1 file changed, 143 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml b/Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml
> new file mode 100644
> index 000000000000..3b9cca49d2d6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml
> @@ -0,0 +1,143 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/kontron,sl28cpld.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Kontron's sl28cpld board management controller
> +
> +maintainers:
> +  - Michael Walle <michael@walle.cc>
> +
> +description: |
> +  The board management controller may contain different IP blocks like
> +  watchdog, fan monitoring, PWM controller, interrupt controller and a
> +  GPIO controller.
> +
> +properties:
> +  compatible:
> +    const: kontron,sl28cpld
> +
> +  reg:
> +    description:
> +      I2C device address.
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  "#interrupt-cells":
> +    const: 2
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  interrupt-controller: true
> +
> +patternProperties:
> +  "^gp(io|i|o)(@[0-9]+)?$":

Just 'gpio'. We don't need that level of distinguishing in node names.

> +    $ref: ../gpio/kontron,sl28cpld-gpio.yaml
> +
> +  "^hwmon(@[0-9]+)?$":
> +    $ref: ../hwmon/kontron,sl28cpld-hwmon.yaml
> +
> +  "^pwm(@[0-9]+)?$":
> +    $ref: ../pwm/kontron,sl28cpld-pwm.yaml
> +
> +  "^watchdog(@[0-9]+)?$":
> +    $ref: ../watchdog/kontron,sl28cpld-wdt.yaml

The patches for these files need to come first or validating this file 
fails. Really, you can just make all five files 1 patch.

> +
> +required:
> +  - "#address-cells"
> +  - "#size-cells"
> +  - compatible
> +  - reg
> +  - "#interrupt-cells"
> +  - interrupt-controller
> +
> +oneOf:
> +  - required:
> +    - interrupts
> +  - required:
> +    - interrupts-extended

Don't need to do this. Just make 'interrupts' required and you'll get 
interrupts-extended for free.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        sl28cpld@4a {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +            compatible = "kontron,sl28cpld";
> +            reg = <0x4a>;
> +            interrupts-extended = <&gpio2 6 IRQ_TYPE_EDGE_FALLING>;
> +
> +            #interrupt-cells = <2>;
> +            interrupt-controller;
> +
> +            gpio@0 {
> +                compatible = "kontron,sl28cpld-gpio";
> +                reg = <0>;
> +
> +                gpio-controller;
> +                #gpio-cells = <2>;
> +
> +                interrupt-controller;
> +                #interrupt-cells = <2>;
> +            };
> +
> +            gpio@1 {
> +                compatible = "kontron,sl28cpld-gpio";
> +                reg = <1>;
> +
> +                gpio-controller;
> +                #gpio-cells = <2>;
> +
> +                interrupt-controller;
> +                #interrupt-cells = <2>;
> +            };
> +
> +            gpo {
> +                compatible = "kontron,sl28cpld-gpo";
> +
> +                gpio-controller;
> +                #gpio-cells = <2>;
> +                gpio-line-names = "a", "b", "c";
> +            };
> +
> +            gpi {
> +                compatible = "kontron,sl28cpld-gpi";
> +
> +                gpio-controller;
> +                #gpio-cells = <2>;
> +            };
> +
> +            hwmon {
> +                compatible = "kontron,sl28cpld-fan";
> +            };
> +
> +            pwm@0 {

You already used the '0' address. You can't have 2 things at the 
same address. There's only one number space at a given level. 

All these child devices don't have any DT resources, so you don't really 
need them. The parent node could be a gpio and pwm provider and that's 
all you need in DT. Aside from DT resources, the only other reason 
to have all these child nodes are if the child blocks are going to get 
assembled in different combinations across a variety of h/w.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
