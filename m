Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F3A1CE8E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 01:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzwBNAS3YJfcS63uv93Yb5QwNrKDliczRGubyHkC20M=; b=K+kP6blvVoez4V
	0t6i+0QGLbMKfXd5aBk/OjnEDFExWArplZT77sZRMTjKReuhwO+qUFnXETpYFDI/XsZpdzXsLEFdG
	jtBr8x9Y9XCDw+X/srDTWzNhAh7uY7F4CqzHkkKcD+DERyQ0i9x5UdzrwmG4n/OZwWcgYZsneoEP9
	crXFvBLTtf6r0xROVSpvxiqfdlVtmiyqhtZJ7/0TMvhR/3lquerD0ynOiKjEKMGhTDO4uoP1BvKJO
	NpIqDpP7OIcGfxuTd0fAeSw0yFwG9IHErMktEKVwPkKcS0Hqh7QoAz9x5bkPSgyhxS+ZDnCRNV6ZO
	smXA7O3gRuDuAdXurTTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYHbg-00071Z-UY; Mon, 11 May 2020 23:13:08 +0000
Received: from mail-oo1-f65.google.com ([209.85.161.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYHbY-00070H-KU; Mon, 11 May 2020 23:13:01 +0000
Received: by mail-oo1-f65.google.com with SMTP id c187so938926ooc.2;
 Mon, 11 May 2020 16:12:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YDsjgW4MArlBA1SB+uZg3khyj2WK0GRuGD4JKeBynv8=;
 b=jY12Na3ADfUQtCwzsZ9W0JxU4xAhUsWkjfYPgEFQfhyulVFxEq0T11HcWl+HtcCF8d
 eUyD9e+ktOYMLP54/0HNFvxQieAcVmkxZYeEVplWQhDoVrrxNdUp1vuXb3YOreVpnBkv
 XTnxwLDkL+0voQpMvTHEyh4qpB+GWxUsoE+uFZUL7HDS4K3ZwguCdEmImn6d15mNlD54
 7qMGk49MCKrL6PaMZ3Hfc8U91Gpz/4dSIVAaiC80Ib9e13mMYZ2jB2YP0OY+gNLmCI5E
 DiCRgaGo/C6R7VU5OVfxOnDMCTrOonbqHVZghWHxaDqEfLBzH4XL1LMiUJV/MlvSD9yg
 JMKA==
X-Gm-Message-State: AGi0Pubb2+6KNUVju4N5bMkFb7iyDmysSD5sH2nXsxrV3YAIiAuRsQei
 W0Jyx6AGSbbh/ehsp3VMEw==
X-Google-Smtp-Source: APiQypJYcIJELa5zMY/ISbRUVZAa+Q7Ic4+PGG1ZB0L0pvzkPLwl0FKURFdszYQ9BrNGvh3O0VOGQw==
X-Received: by 2002:a4a:af0d:: with SMTP id w13mr3249600oon.77.1589238776873; 
 Mon, 11 May 2020 16:12:56 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m65sm2138476oib.49.2020.05.11.16.12.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 16:12:56 -0700 (PDT)
Received: (nullmailer pid 11706 invoked by uid 1000);
 Mon, 11 May 2020 23:12:55 -0000
Date: Mon, 11 May 2020 18:12:55 -0500
From: Rob Herring <robh@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: leds: common: Drop enumeration for
 linux,default-triggers
Message-ID: <20200511231255.GA24112@bogus>
References: <20200427073132.29997-1-wens@kernel.org>
 <20200427073132.29997-2-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427073132.29997-2-wens@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_161300_673068_32DB8568 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>, linux-leds@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 03:31:30PM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The bindings currently list a very small subset of valid triggers for
> LEDs. Since many drivers or subsystems in Linux register custom
> triggers, the list would become very hard to maintain.

The idea was we'll consolidate around standardized names and that new 
users should use 'function' instead.

There was discussion around this when adding 'function'.

> 
> Instead, just drop the list and allow free form strings.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  .../devicetree/bindings/leds/common.yaml      | 21 +------------------
>  1 file changed, 1 insertion(+), 20 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
> index 4c270fde4567..3b3cdab3fc15 100644
> --- a/Documentation/devicetree/bindings/leds/common.yaml
> +++ b/Documentation/devicetree/bindings/leds/common.yaml
> @@ -79,26 +79,7 @@ properties:
>      description:
>        This parameter, if present, is a string defining the trigger assigned to
>        the LED.
> -    allOf:
> -      - $ref: /schemas/types.yaml#definitions/string
> -    enum:
> -        # LED will act as a back-light, controlled by the framebuffer system
> -      - backlight
> -        # LED will turn on (but for leds-gpio see "default-state" property in
> -        # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
> -      - default-on
> -        # LED "double" flashes at a load average based rate
> -      - heartbeat
> -        # LED indicates disk activity
> -      - disk-activity
> -        # LED indicates IDE disk activity (deprecated), in new implementations
> -        # use "disk-activity"
> -      - ide-disk
> -        # LED flashes at a fixed, configurable rate
> -      - timer
> -        # LED alters the brightness for the specified duration with one software
> -        # timer (requires "led-pattern" property)
> -      - pattern
> +    $ref: /schemas/types.yaml#definitions/string
>  
>    led-pattern:
>      description: |
> -- 
> 2.26.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
