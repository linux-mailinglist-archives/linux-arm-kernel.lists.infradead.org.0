Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70931A3C87
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9w+DTRZCl86btqjMlJ1lDfq+O8KpygL/Es2OtY1D/xo=; b=lD37hfj5iBupAh
	ksc7NSxi70txqsGnB3pRkSe0eS2jnJN0tEjp+8YPEBFi5BRChS/16e2wigUYSqNSJH6F07KMlp7gR
	HV1YTyrLCsq7cmPx3T6mpFI0n+jtOYdvZpv1TqJv4Frzun8Wy4QUgFv5rQl6cs6nVnJ8VkWXxi4Ct
	5C04jP3xwHI1zAeabHyxJ1RQYoWRZw/VZRQpjq8h8LHglIsJOPBED6I1JvG2tKGAbyMg4NGlV/prZ
	E1S/pqzY3bB+2HTUTjkdRAFwjQZ05PeLhd4jwGoIQdyc0+bYo/nLbBTod5+oZFWNhKmM1TBDzEhlU
	zF7+bW8FDIu4AExwYoKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3k5Q-00089T-PP; Fri, 30 Aug 2019 16:49:21 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3k4o-0007pi-H3
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:48:44 +0000
Received: by mail-pf1-x441.google.com with SMTP id q139so4968940pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 09:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Pk5V+7zqa1A7jxjsbjG2uhSw9j6dlDFBclUGejhv4g8=;
 b=hfeV8ETA4/yFa7bnnUmPSGglA2PvpWL9uUl3aKK022l+hcIbP8E6R/qPOZbY9pNDD+
 AxE4b4DseTq++lqUwXI7aDU4Wkgj5zpdyJJlZ4IfKRFEJaT04tnN0BoNUmUsHF4z85Gp
 pWYW/ZzMZYmxd92O4B/NsqYYQgcUlzHSLi7dLUjyLlYf70qseir0uLP1rqHnULm2SCnf
 6cITvevC3zCQLtWE9SYu9h+xQpC6Kg3ozhIc1spvom4ojR4FEtWvTHlikm1C3QbjBhSo
 PimITd09AuIgjF2R0Fv49MOiTsyBy8bhEsWgEv53TH5NPWTPshXzgpeN3ils3IE2nR7M
 ETwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Pk5V+7zqa1A7jxjsbjG2uhSw9j6dlDFBclUGejhv4g8=;
 b=FleLwsV35b22JY8QmSvIqGGtZaLODwLgWS9Rbexa/GQ3zk0lFpG1I1yG1X4Bm9Hsp7
 rz/Az+y9GhiOMzs190defMI/TCKQ5NhLQDz5+4cvi0UUrLDkyl03iYfkF/adqhbBSCNC
 axF+DV3UHBifkISJa0tYl+afJL4feYphztpCt9zVI3n0UXfn0W/pm5KZv6AAxGhcXg5K
 eJYXkLFPOZFwWDwLK2u0nT1ozQ1EfBlzWWAHaUbs685Fr0HTrCAKjxX72OxjnaO8x5iO
 JxhHY7HI/1t1R4uo8ehB8+loVSV5gF+4wP3AFTqTHDa7XdXz9x/YViajMZU5C3ekhEO0
 QeVg==
X-Gm-Message-State: APjAAAVxD5MpxxLROsMC3tHqzOKuaATHAJziOuHTPa3XdKqRQFvvgRS+
 l8GOeVKPhXQySJyYu5+P5NY=
X-Google-Smtp-Source: APXvYqzSW1fwYGfO9+zh5OWaAop3/qR5bz8ZgiTXNWF4yiHCTa+UfVOG4jLlpNMeZiTPPwjn+OHX8Q==
X-Received: by 2002:a62:4ed1:: with SMTP id
 c200mr19076386pfb.218.1567183722041; 
 Fri, 30 Aug 2019 09:48:42 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id b14sm6882987pfo.15.2019.08.30.09.48.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 09:48:41 -0700 (PDT)
Date: Fri, 30 Aug 2019 09:48:40 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH RESEND v2 4/6] dt-bindings: watchdog: sun4i: Add the
 watchdog clock
Message-ID: <20190830164840.GD7911@roeck-us.net>
References: <20190821143835.7294-1-mripard@kernel.org>
 <20190821143835.7294-4-mripard@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821143835.7294-4-mripard@kernel.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_094842_599567_3B28A56B 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 wim@linux-watchdog.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 04:38:33PM +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> The Allwinner watchdog has a clock that has been described in some DT, but
> not all of them.
> 
> The binding is also completely missing that description. Let's add that
> property to be consistent.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> 
Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> 
> Changes from v1:
>   - New patch
> ---
>  .../bindings/watchdog/allwinner,sun4i-a10-wdt.yaml           | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
> index 31c95c404619..3a54f58683a0 100644
> --- a/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
> @@ -31,12 +31,16 @@ properties:
>    reg:
>      maxItems: 1
>  
> +  clocks:
> +    maxItems: 1
> +
>    interrupts:
>      maxItems: 1
>  
>  required:
>    - compatible
>    - reg
> +  - clocks
>    - interrupts
>  
>  unevaluatedProperties: false
> @@ -47,6 +51,7 @@ examples:
>          compatible = "allwinner,sun4i-a10-wdt";
>          reg = <0x01c20c90 0x10>;
>          interrupts = <24>;
> +        clocks = <&osc24M>;
>          timeout-sec = <10>;
>      };
>  
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
