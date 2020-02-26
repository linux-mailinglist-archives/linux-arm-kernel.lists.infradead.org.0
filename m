Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AAB170B9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 23:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BnAYRgJ0qLl4az5v6AlKbx3Z84bHmsRVz+oi27h0Hrc=; b=CYccByZ8I1BZ5g
	vpA1T5IyX9nwuhrvpcAcv1FAIO8RTtdOKDlgX0MaFkauZV8lHqzuFX0WZEwqBKIo9OH6WVLrZKSOd
	gBgKiya6gbBTFMW2qwFmeNf5PkPkp917nldN+wJ2dAWRN5EaS3JkFdEtvDt6M/6ercuAo5VuZlirQ
	63j16ADX9Q0Ll8tfWlIvSwmP964feLCsvfiRdNUMI7NWbUZ0BM4d2Y8gagIOdE7G1D0R8m5s0GdTU
	ZYNdGloDLNcD2v8pbKZU93Fn2N1niA8wNp6tgbQAdpkGllBC86h+V1ApEkC0MECUSlS94+KtqljeE
	KDo+u4e0l33lFEOiAkDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j75Ca-0000rc-Mt; Wed, 26 Feb 2020 22:30:48 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j75CN-0000rF-JN
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 22:30:37 +0000
Received: by mail-oi1-f195.google.com with SMTP id p125so1214595oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 14:30:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZIlPjifus7WfeBj0gGi82kKOzq1wYnOIRClo35MBZc0=;
 b=U6rCddDXu/UrCyHwd6AEwr9nD9DyxfN4JiIj4C+hX/hVdEW1kSEq5oTaO6xx8h0Omv
 X2el6yvFv7DlW198cB1WajF4SQL6FHccxg+Zq5RlQQh3Bhzu2iADZBSRiQBmcpiDgvK+
 5OwpYSuDyOYIsxlJtaVnL410ngvsia61TDLgpqSSVRS1R3ap8lNOfObyKY3RDfkhL2xE
 xQIa6oG9UJnscS5tB7HnqpeMyzf5vYptO2OlDeYkrUwZWKS+ahz7k8Z2vwK/G0aqYLTS
 qTtstZtBrI5hKiPGMPWnvgGAxjgpJqzhHl0tbC+DSDJugH+BXjHMamVfANW0AFjVXGiw
 oYhQ==
X-Gm-Message-State: APjAAAU1+WoNmb/bcCDMeOmXl0iJDh+r85361ZnWJScbpYcuAD0kbPeb
 dN07sm88hNKqKvlfjULmXA==
X-Google-Smtp-Source: APXvYqxN8VRIZzGbJK5F6l4YjpqWBlSf2rbUDYu4nFqKC0CNhTmORVGaCz6j9VvqOV0Qu90LztjjPg==
X-Received: by 2002:aca:7591:: with SMTP id q139mr787618oic.54.1582756234681; 
 Wed, 26 Feb 2020 14:30:34 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h15sm1236359otq.67.2020.02.26.14.30.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 14:30:33 -0800 (PST)
Received: (nullmailer pid 19907 invoked by uid 1000);
 Wed, 26 Feb 2020 22:30:32 -0000
Date: Wed, 26 Feb 2020 16:30:32 -0600
From: Rob Herring <robh@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 1/4] dt-bindings: leds: Add a binding for AXP813 charger
 led
Message-ID: <20200226223032.GA13404@bogus>
References: <20200223131435.681620-1-megous@megous.com>
 <20200223131435.681620-2-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200223131435.681620-2-megous@megous.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_143035_638648_1124CD19 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Lee Jones <lee.jones@linaro.org>,
 linux-leds@vger.kernel.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 23, 2020 at 02:14:32PM +0100, Ondrej Jirman wrote:
> The AXP813 PMIC can control one LED. Add binding to represent the LED.
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  .../devicetree/bindings/leds/leds-axp20x.yaml | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/leds/leds-axp20x.yaml
> 
> diff --git a/Documentation/devicetree/bindings/leds/leds-axp20x.yaml b/Documentation/devicetree/bindings/leds/leds-axp20x.yaml
> new file mode 100644
> index 0000000000000..79282d55764bf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/leds/leds-axp20x.yaml
> @@ -0,0 +1,24 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings please:

(GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/leds/leds-axp20x.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: LED driver for AXP813 PMIC from X-Powers.
> +
> +maintainers:
> +  - Ondrej Jirman <megous@megous.com>
> +
> +description: |
> +  This module is part of the AXP20x MFD device. For more details
> +  see Documentation/devicetree/bindings/mfd/axp20x.txt.

Really, we should convert this first as this should either just be 
referenced from the MFD schema or just directly put into it.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
