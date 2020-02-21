Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C92F71689D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 23:12:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgafz7FPj1mk9bR4MevrUM0LBVaOmiuayp/YNSaHEwk=; b=UFAJw4rsr+yR/i
	ZHqVWgEJnYMyrJrIHxEqDyTGduZRkcYNms9j31qQ3GwTwsUHrCcJ54+d2WaWnwT4XYTaFpn4ppwTC
	PCqJ06IbMFneC7A+gyOSdYxTn1arDc6JxGnDDpsX8RtPv4vsTZbVAsEoEASesPB1KeWD+yKha8IM1
	1/lYjxqRIMfKx5PQLbJTzsfn85mnrV+rL94/jIgxSCvB9gHvi5qkTrEgOe0JIosbTlyVQYSCrS7mx
	ekJDOgh662QSBSzD0aldChx668+u0nKbWWosqujNnFTJHW5mt9ZQkFzHJKNi8Bbr3Hr29KnPJ6vkU
	L0r+yIdKe7Lxnx727cHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5GWg-00038p-SD; Fri, 21 Feb 2020 22:12:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5GWY-00038S-71; Fri, 21 Feb 2020 22:11:56 +0000
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
 [209.85.219.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20A8D24676;
 Fri, 21 Feb 2020 22:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582323113;
 bh=bf2RsaSvZhMI79nHgHionWDyrsV17B3qT+29dL6QM30=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=uLjEhdPGfBBs8J8kMdI9gKpPjMd/M6RazcBBvo02LI5gk5BBFs1us7fw56ebDGrNr
 hDqGewgjxff4DzdXTjm8dNTCjRJxHnGbNdbxaZF/ZCJqBbS4adXiRUSQWuVIIS7L26
 e7yPR4613FuK8IHfzY0sRp0MoZGPOYUofpaCd1UI=
Received: by mail-qv1-f47.google.com with SMTP id n8so1656530qvg.11;
 Fri, 21 Feb 2020 14:11:53 -0800 (PST)
X-Gm-Message-State: APjAAAXGhcUPfC+3xfS5Gia/oWbL3/jMf2cApNz19uxUD9y/p1j9acdV
 sT63qoDV+McdFe/H4ZVI5vwzIJJ+Y7mnK+uivg==
X-Google-Smtp-Source: APXvYqyYbXN85xYUMFaOgLv6Q5mUpNeZ8NyF/CcoNZ4CxdRu4RUYJEOgtcn8M4e8AKdcB5TiFQMt27ZRzzmiMvhInMw=
X-Received: by 2002:a0c:f68f:: with SMTP id p15mr31162876qvn.79.1582323112146; 
 Fri, 21 Feb 2020 14:11:52 -0800 (PST)
MIME-Version: 1.0
References: <20200221053802.70716-1-evanbenn@chromium.org>
 <20200221163717.v2.1.I02ebc5b8743b1a71e0e15f68ea77e506d4e6f840@changeid>
In-Reply-To: <20200221163717.v2.1.I02ebc5b8743b1a71e0e15f68ea77e506d4e6f840@changeid>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 21 Feb 2020 16:11:40 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL94vtBEmV2gNWx-D==sLiRXjxBBFZS8fw1cR6=KjS7XQ@mail.gmail.com>
Message-ID: <CAL_JsqL94vtBEmV2gNWx-D==sLiRXjxBBFZS8fw1cR6=KjS7XQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: Add mt8173, smc-wdt watchdog
To: Evan Benn <evanbenn@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_141154_297469_1B2FBB69 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Julius Werner <jwerner@chromium.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 11:38 PM Evan Benn <evanbenn@chromium.org> wrote:
>
> This watchdog can be used on ARM systems with a Secure
> Monitor firmware to forward watchdog operations to
> firmware via a Secure Monitor Call.
>
> Signed-off-by: Evan Benn <evanbenn@chromium.org>
> ---
>
> Changes in v2:
> - Change name arm > mt8173
>
>  .../bindings/watchdog/mt8173,smc-wdt.yaml     | 30 +++++++++++++++++++
>  MAINTAINERS                                   |  6 ++++
>  2 files changed, 36 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/mt8173,smc-wdt.yaml
>
> diff --git a/Documentation/devicetree/bindings/watchdog/mt8173,smc-wdt.yaml b/Documentation/devicetree/bindings/watchdog/mt8173,smc-wdt.yaml
> new file mode 100644
> index 0000000000000..ff45e13bc548b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/mt8173,smc-wdt.yaml
> @@ -0,0 +1,30 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/mt8173,smc-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM Secure Monitor Call based watchdog
> +
> +allOf:
> +  - $ref: "watchdog.yaml#"
> +
> +maintainers:
> +  - Julius Werner <jwerner@chromium.org>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - mt8173,smc-wdt

compatible strings are in the form <vendor>,<device>. 'mt8173' is not a vendor.

> +
> +required:
> +  - compatible
> +
> +examples:
> +  - |
> +    watchdog {

This should be a child of some Mediatek firmware node. I assume
watchdog is not the *only* function.

> +      compatible = "mt8173,smc-wdt";
> +      timeout-sec = <15>;
> +    };
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e48ab79879ace..59e8779363c12 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1421,6 +1421,12 @@ S:       Maintained
>  F:     Documentation/devicetree/bindings/interrupt-controller/amazon,al-fic.txt
>  F:     drivers/irqchip/irq-al-fic.c
>
> +ARM SMC WATCHDOG DRIVER
> +M:     Julius Werner <jwerner@chromium.org>
> +R:     Evan Benn <evanbenn@chromium.org>
> +S:     Maintained
> +F:     devicetree/bindings/watchdog/mt8173,smc-wdt.yaml
> +
>  ARM SMMU DRIVERS
>  M:     Will Deacon <will@kernel.org>
>  R:     Robin Murphy <robin.murphy@arm.com>
> --
> 2.25.0.265.gbab2e86ba0-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
