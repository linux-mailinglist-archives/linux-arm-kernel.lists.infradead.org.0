Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84397C23B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:56:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c55CH81e7uvzHN3QyM8f8DhqUjAOfJIbCWB6Kbpw0Ak=; b=pjTDsmrzB5ppAi
	RcXOs65K/9MyEbjLZoJ7K8JV9Lw+/SF6vNpUkA+cSWkh+hm8zYgM+IxETOGLZPvOs8VgFPJMLJGiK
	ZX0+SHy3HAo48vrl96vRoFjnfkM7Bi02moUz4BIGXxgcXja2oSnxPFKdkJ1e7av+YiBDjYKeg0j1Z
	JNZAPTiyIEP5OYJSuJ+SK/zJMg2nG1boGGmXQRFl3lAcs1C8f3lWgjVYedCZRQOGRy0jedAbp4sl8
	CKP6IKbXf+Pnp8ZYAGbQRyMgPvVpN5JRtX4AIdhUHD7IAlOkS8Vfw2Vt+H7q9CmjdZ3h/MJzdHb5Y
	vhFFD6s7R+FuD4LIed9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEx6C-00007Y-68; Mon, 30 Sep 2019 14:56:28 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEx60-00006M-Ib
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:56:17 +0000
Received: by mail-oi1-f193.google.com with SMTP id e18so11394983oii.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 07:56:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BwA681HhYis/Fwr6rUVisbTJS/OHBKxj8dYqASkfvtk=;
 b=RMDJpvvwLNl/QFFiicY6Y4jujPqdt8gqxyf5S7Ih8MfFAMZYFCwUM7a9HSEcESJkNF
 gENI72Rn6MNQWplVlGGgmgqXYeQ4mX8+CT4B75yOycU4ThizlfZ97DzddYwT9TmMTH0/
 UZgGGuGXX9kaC88stwky0QRYFRiEDCyfln/QOZ9hUWDQMWL+ZaVIqVhORZNGMkqw7YxY
 4tpMDjCto/Q7STFowP3mvI8ug8Se5mNxscpdRSW+eVk/1SUs5xJCs1xeSV3BejK6LH3K
 eH8iodwegIVZVOFaGM3o187Y8CKDCXKOj3UcP0aE8QVZxX98vbOXX1MSqcsNi+YH+HxT
 diFg==
X-Gm-Message-State: APjAAAU4F5dH/WMdoeI9cp0OHdeETKpvY5Zj5UPgXPVDp7aTz8O13LRF
 XjUeTS2wtLTco9rm/FzhBw==
X-Google-Smtp-Source: APXvYqwLv4Y/czSKwivg0BhTvGD0JVI63oHqc+uuK2t3KytVcKxUUzmm4XvHqY6SDRpQT9booAv6KA==
X-Received: by 2002:a54:410f:: with SMTP id l15mr17456048oic.92.1569855374801; 
 Mon, 30 Sep 2019 07:56:14 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d194sm4443581oib.47.2019.09.30.07.56.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 07:56:14 -0700 (PDT)
Date: Mon, 30 Sep 2019 09:56:13 -0500
From: Rob Herring <robh@kernel.org>
To: Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: Re: [PATCH 1/3] dt-bindings: sdhci-of-at91: new compatible string
 and update properties
Message-ID: <20190930145613.GA11254@bogus>
References: <20190912200908.31318-1-ludovic.desroches@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912200908.31318-1-ludovic.desroches@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_075616_622878_E2F328DA 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 adrian.hunter@intel.com, claudiu.beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 10:09:06PM +0200, Ludovic Desroches wrote:
> There is a new compatible string for the SAM9X60 sdhci device. It involves
> an update of the properties about the clocks stuff.
> 
> Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> ---
>  .../devicetree/bindings/mmc/sdhci-atmel.txt   | 25 ++++++++++++++++---
>  1 file changed, 22 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> index 1b662d7171a0..364ceea330b6 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> @@ -5,12 +5,19 @@ Documentation/devicetree/bindings/mmc/mmc.txt and the properties used by the
>  sdhci-of-at91 driver.
>  
>  Required properties:
> -- compatible:		Must be "atmel,sama5d2-sdhci".
> +- compatible:		Must be "atmel,sama5d2-sdhci" or "microchip,sam9x60-sdhci".
>  - clocks:		Phandlers to the clocks.
> -- clock-names:		Must be "hclock", "multclk", "baseclk";
> +- clock-names:		Must be "hclock", "multclk", "baseclk" for
> +			"atmel,sama5d2-sdhci".
> +			Must be "hclock", "multclk" for "microchip,sam9x60-sdhci".
>  
> +Optional properties:
> +- assigned-clocks:	The same with "multclk".
> +- assigned-clock-rates	The rate of "multclk" in order to not rely on the
> +			gck configuration set by previous components.
>  
> -Example:
> +
> +Examples:
>  
>  sdmmc0: sdio-host@a0000000 {
>  	compatible = "atmel,sama5d2-sdhci";
> @@ -18,4 +25,16 @@ sdmmc0: sdio-host@a0000000 {
>  	interrupts = <31 IRQ_TYPE_LEVEL_HIGH 0>;
>  	clocks = <&sdmmc0_hclk>, <&sdmmc0_gclk>, <&main>;
>  	clock-names = "hclock", "multclk", "baseclk";
> +	assigned-clocks = <&sdmmc0_gclk>;
> +	assigned-clock-rates = <480000000>;
> +};
> +
> +sdmmc0: sdio-host@80000000 {

mmc@...

Though I don't see much value in a second example. Examples are not a 
complete enumeration of all possible dts entries.

> +	compatible = "microchip,sam9x60-sdhci";
> +	reg = <0x80000000 0x300>;
> +	interrupts = <12 IRQ_TYPE_LEVEL_HIGH 0>;
> +	clocks = <&pmc PMC_TYPE_PERIPHERAL 12>, <&pmc PMC_TYPE_GCK 12>;
> +	clock-names = "hclock", "multclk";
> +	assigned-clocks = <&pmc PMC_TYPE_GCK 12>;
> +	assigned-clock-rates = <100000000>;
>  };
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
