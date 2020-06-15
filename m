Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBB81F9EEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:59:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmroVFK1NcIG/gsk7J4ptB7IYwdEA+5In0g/aHo7Kp0=; b=KFQuTv1QwZCY+O
	j6gbPU8fKxk/GI0yFdAJtpvrpnS3eyiBLkgPkpcLVz4mbprcPx0q2yEnfA16Mk/N2LtGRAQfIeXyO
	gDdYKWuKtGHkJfKRZevf8Nx3ZS7fCr2e7HR58bniand5kLvSdGmshZvUU9yNVJbKPwIzv+g7HrqAX
	NCrMQV3gCSNd70e1S82qfPgqHsstdsW7gE5/SmUEOiPDps5JFSrA0R3EhwIvonYkPk005m510w20g
	bDSqdha1M0T34BlPZSrsnqmTo5B4TDgJpwbD7jJMuhpDWxndz+J8hL+hJqa7LnktG8TO+DiuhSXS9
	zzJwkSYySVUhk410T+PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jktNp-0000aM-4L; Mon, 15 Jun 2020 17:58:57 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jktNg-0000Zh-0n
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 17:58:49 +0000
Received: by mail-io1-f65.google.com with SMTP id u13so1288697iol.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 10:58:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/74HbfroHB61O/mrzbKJJjBB8AZlHWxP2oBPibXkxY8=;
 b=UD4vttqTPBbxmQ2Aul+edi2fVy+RJSpWfky0X2R+eIs5ZbHyOwQ5t0yj8pYjrOUARd
 w2biGD54/ctLxVXHoPJkkwqlXS5JGoHI/1v8rAnf0ykofZkOPSsbHOgG9OlpRzClZv0Q
 OVPWpzKuh/IqIRoLvn76Jh5iI6oVuke/7/h+hu/XHavOO3DWgpzB7U1bk/gVQcJ8ZFyJ
 XMPrGJ1bdGh283mQnnLFz55ybqoCaLi6Ev07ozS8gpSjcVdHIF9vcx0fFHhaRhaX6ea+
 ornL743p5HqoqFBJrH+8B9BmBfI44egKpoJIx9361COJW0bgUJLbUcm5Gr/DRXZnp9jM
 yOPg==
X-Gm-Message-State: AOAM533XVBmPZ/En68lfNhcFoGbXUr8kWiqN9kh0CqHShXf/QbiJ9ypz
 OhQZ9VN/4e8bN1BK5BJ6JA==
X-Google-Smtp-Source: ABdhPJzHHZp4+2D2CPnREtsOrP4HU0FKnjC7ZBKz9hcq/Ll5x38zJ+ihu5f8fyhIDgmwsspw8rJWgw==
X-Received: by 2002:a6b:91d4:: with SMTP id
 t203mr28373543iod.149.1592243927188; 
 Mon, 15 Jun 2020 10:58:47 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id p9sm8303940ile.87.2020.06.15.10.58.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 10:58:46 -0700 (PDT)
Received: (nullmailer pid 2044691 invoked by uid 1000);
 Mon, 15 Jun 2020 17:58:44 -0000
Date: Mon, 15 Jun 2020 11:58:44 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCHv2 3/6] power: supply: gpio-charger: add
 charge-current-limit feature
Message-ID: <20200615175844.GA2032047@bogus>
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
 <20200605224403.181015-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605224403.181015-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_105848_055680_9DF2E82F 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Sebastian Reichel <sre@kernel.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com, Robert Jarzmik <robert.jarzmik@free.fr>,
 Daniel Mack <daniel@zonque.org>, Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 06, 2020 at 12:44:00AM +0200, Sebastian Reichel wrote:
> Add new charge-current-limit feature to gpio-charger.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/power/supply/gpio-charger.yaml   |  31 ++++
>  drivers/power/supply/gpio-charger.c           | 140 ++++++++++++++++++
>  2 files changed, 171 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml b/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
> index 30eabbb14ef3..e11cfdc68a51 100644
> --- a/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
> +++ b/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
> @@ -39,6 +39,25 @@ properties:
>      maxItems: 1
>      description: GPIO indicating the charging status
>  
> +  charge-current-limit-gpios:
> +    minItems: 1
> +    maxItems: 32
> +    description: GPIOs used for current limiting
> +
> +  charge-current-limit-mapping:
> +    description: List of touples with current in uA and a GPIO bitmap (in

s/touples/tuples/

> +      this order). The touples must be provided in descending order of the

and here.

> +      current limit.
> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +    items:
> +      items:
> +        - description:
> +            Current limit in uA
> +        - description:
> +            Encoded GPIO setting. Bit 0 represents last GPIO from the
> +            charge-current-limit-gpios property. Bit 1 second to last
> +            GPIO and so on.

Seems a bit odd that bit N doesn't represent index N of the gpios.

> +
>  required:
>    - compatible
>  
> @@ -47,6 +66,12 @@ anyOf:
>      - gpios
>    - required:
>      - charge-status-gpios
> +  - required:
> +    - charge-current-limit-gpios
> +
> +dependencies:
> +  charge-current-limit-gpios: [ charge-current-limit-mapping ]
> +  charge-current-limit-mapping: [ charge-current-limit-gpios ]
>  
>  additionalProperties: false
>  
> @@ -60,4 +85,10 @@ examples:
>  
>        gpios = <&gpd 28 GPIO_ACTIVE_LOW>;
>        charge-status-gpios = <&gpc 27 GPIO_ACTIVE_LOW>;
> +
> +      charge-current-limit-gpios = <&gpioA 11 GPIO_ACTIVE_HIGH>,
> +                                   <&gpioA 12 GPIO_ACTIVE_HIGH>;
> +      charge-current-limit-mapping = <2500000 0x00>, // 2.5 A => both GPIOs low
> +                                     <700000 0x01>, // 700 mA => GPIO A.12 high
> +                                     <0 0x02>; // 0 mA => GPIO A.11 high
>      };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
