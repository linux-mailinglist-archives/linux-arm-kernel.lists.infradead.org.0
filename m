Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948391D4618
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 08:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skWkp3ngLhNVf5KWRsMEwWKCJhDjY/0q307KbtI5H3E=; b=EwtMXNFLuFlioJ
	bMOnILoRopk3e7cZ3qCoWHWojT+HJbjP1i07aAFAbs6EWy0JSNdlNc2dXTXray5yFo8kttuvzObPV
	tTkubKqV3JZblE5171H85aLbEtTQCy9d/W234uLT0pJmJqP9xMO0K84PBBzHJt0xY12dMCHTmsRaR
	gq+3S2ZzrUwY8ijylFLzQwio1CaHlbzVnNrX7OKoXX8XU8LN3njqFBZ5njDfRBDjl5d13IyLJKjKx
	2h+7yR6aHLuxbhIC1XlKBfAGDHniDQ0kxfP+BMeX3DPHfkxJAK2C5uXiO0NN5w+myXO6gfpBzfBAx
	rsqgSPjHoN/b3va4odcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZU4H-0003qY-M5; Fri, 15 May 2020 06:43:37 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZU41-0003nW-BO
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 06:43:25 +0000
Received: by mail-vs1-xe43.google.com with SMTP id g2so607265vsb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 23:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3u5biufGGoeHTr+TJL8nbm6kBJzdWnn/M3v0cfmw50s=;
 b=pD/NsOHgg9RiRzrmFZckLGgtKv4FNpjz6MHbVkQ9V5iKpGCmFLdD9+7u8AzgIJdOUx
 iLCRHKLZI6aJmLhCA4u/iuIgKUKWvgytv6eplSb4xpChzRdJZswwqTH+RGOkhfavvGxG
 9OqNaw3NjTjZyC88sDBbY/jwaH0osejduH/BQCz1vkUPR5thEUYmREH+nTWqA7nntaIY
 a91o5rJlHh3HrATc0gEZ14PJ7r4t+orDTaS7hQY6HaL8OQUj7ZESKlpDmHICKJ9Uwlxq
 TUnqSThoi6EzywAYWhMr/iHqiGIiOxZSwA34a4ST8G9x+/PeaFtKmyUNT/jJUwlFjN+g
 212Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3u5biufGGoeHTr+TJL8nbm6kBJzdWnn/M3v0cfmw50s=;
 b=tMp+F/TaRkqlAwSY0NmxT2W+cZH31+IYskZ4EphCBFy4WERpiujgunld6YtGLG1KbZ
 hRi/sQTfy3ZxaIzgAAIQhqo1EIDn0qbc8KKZRU08qxPQnxus8v7911JSQTAmFJrCJgAj
 WT3YV3VCDch5dpz4YQcvtpMt5ZSm2ahc20xoY9qkb+1yLVyT06ZgmfSpYYwOSUi7IEt5
 b8HsLmCBjNtij/Yha8Xm6QimpilfyjWyadS1T+GcubwOBtXXij5NYuI7bh3k3TK+a3rz
 HLcXL3yx+PAANAB8SHFNT6lRF0jOR5q+45DvVrLEnx+8f86R0QRVnFVuIfYXjkoCDXFs
 jbsA==
X-Gm-Message-State: AOAM532DqKVY1b9VXRFBJHPq5uWA2ha9A6Ncv045Izh7E/LsAb5CI4G2
 Jk9Q2W6yzJ7NyCqdqA82Fn1FkRdEtabwaPg36F8sKg==
X-Google-Smtp-Source: ABdhPJz1EnXjRX110fk6oUizGR6vyVuia3mcnLi7d3Ga6JMGWl+PQ5YITnQDF2FwN/zC8y0AEoQFGDiVNZgyE8UHtf8=
X-Received: by 2002:a67:42c6:: with SMTP id p189mr1528692vsa.9.1589525000316; 
 Thu, 14 May 2020 23:43:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200512132613.31507-1-narmstrong@baylibre.com>
 <20200512132613.31507-2-narmstrong@baylibre.com>
In-Reply-To: <20200512132613.31507-2-narmstrong@baylibre.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Fri, 15 May 2020 12:12:39 +0530
Message-ID: <CAHLCerMP2m1BfzNGoOzOe=4_zYr=i-kXOXnJ_WTN-f1L4N7SUg@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: mfd: add Khadas Microcontroller
 bindings
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_234321_394982_942818DE 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-amlogic@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 6:56 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This Microcontroller is present on the Khadas VIM1, VIM2, VIM3 and Edge
> boards.
>
> It has multiple boot control features like password check, power-on
> options, power-off control and system FAN control on recent boards.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  .../devicetree/bindings/mfd/khadas,mcu.yaml   | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
>
> diff --git a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
> new file mode 100644
> index 000000000000..a3b976f101e8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/khadas,mcu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Khadas on-board Microcontroller Device Tree Bindings
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +
> +description: |
> +  Khadas embeds a microcontroller on their VIM and Edge boards adding some
> +  system feature as PWM Fan control (for VIM2 rev14 or VIM3), User memory
> +  storage, IR/Key resume control, system power LED control and more.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - khadas,mcu # MCU revision is discoverable
> +
> +  "#cooling-cells": # Only needed for boards having FAN control feature
> +    const: 2
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      khadas_mcu: system-controller@18 {
> +        compatible = "khadas,mcu";
> +        reg = <0x18>;
> +        #cooling-cells = <2>;
> +      };
> +    };
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
