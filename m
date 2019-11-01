Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89801EC10B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 11:08:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Olz24JVSal7c5wHraBb2Ef4KW9r2N0S8bjCrmRsPuc=; b=oVCmy9g33QUxN5
	iqtJpDxbZoCYfWoOdI7SbagtzYuqfZvn8O5aW9id6PWMjxTkHRXWh9IV+2MCMSLcpGlUjxigJL5UM
	n31PrhcKztVQSnbnIDkxIj8bBqRbiUFUMTXLuZJLSE2wMdWC2Eoy6vwIdOWgtVgv5VxNgsELxDtbL
	TmE2gYdsqdxnEdbp3p/yLXSnVbZ1Kyw7rxqwKbjfOImrwG2x2olmEY4ERPZho2PQoyprVXmVqdjTF
	Uuf6OWHx1rnG6GSGvp1QG0Fbk6/iQL8FwiYtWx0pgh5d9hkq1U/xk7XxXnx8piJC+jd4SgvIA2ImK
	3G61ORi1yuvHt57nNODQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQTr0-0001Th-Ci; Fri, 01 Nov 2019 10:08:26 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQTqu-0001Sl-5y; Fri, 01 Nov 2019 10:08:21 +0000
Received: by mail-oi1-f196.google.com with SMTP id i185so7707240oif.9;
 Fri, 01 Nov 2019 03:08:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+I3xQl9ln+lrGFb5a1qNX1dE+zwF+Br3GKgAcoIpVg0=;
 b=d2DByR5ZMRXHr+YEZ9ozLLeXTJe3QYWpLWLyCAU6DFIZA697tpwf5iNbrideKyCf6s
 VWBjoALwWtfA/BCxIiHjXn37VrfjYp1eHhfSe1+nIbN5DTxPYuZrp8yGFuHmeZaKUR89
 kFHheHDZqqz0JejP2PxQ9ne5NrEmM+CjUZyko0a/HpTgTrMWwEBlvQokxVUbmbX/noDi
 Pyr8O2/qPYhUfEazinbD3bjnf4Qpd5fxZrpScqqozFgnlaLKQZYjPyp9a96X6OLmKAe2
 kXdIb0/y7Cj1QY03C/rOLopFOPKymw6aRek5UkIscYk3a1QrKy2YW4Mz4ya+CIJEczKT
 gjmA==
X-Gm-Message-State: APjAAAXy6aZrIIIx61WjBWtjPuvQDbOXMVgsCIgk6lda9TsPJx7ZUNt5
 V9/kfaj9pKC3SP5AjW7dXtOivtPm/6gdsSuL4YU=
X-Google-Smtp-Source: APXvYqyFWgpB6XEGfMCjZsYPk2WDJOLqiGcZrURCT7LaEN/S0hFYXldPAmBySb2Ylqn/7Yv1GVxJdkW9M3x45yHrDHI=
X-Received: by 2002:aca:4ac5:: with SMTP id x188mr3592931oia.148.1572602898727; 
 Fri, 01 Nov 2019 03:08:18 -0700 (PDT)
MIME-Version: 1.0
References: <20191021161351.20789-1-krzk@kernel.org>
 <20191021161351.20789-4-krzk@kernel.org>
In-Reply-To: <20191021161351.20789-4-krzk@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 1 Nov 2019 11:08:07 +0100
Message-ID: <CAMuHMdXr7_HP5NUQ_0D76N-eBuootQqyPusqmf6nyDnLN__ORA@mail.gmail.com>
Subject: Re: [PATCH v4 4/7] dt-bindings: sram: Merge Renesas SRAM bindings
 into generic
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_030820_221143_6C1F7C33 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Mon, Oct 21, 2019 at 6:15 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> The Renesas SRAM bindings list only compatible so integrate them into
> generic SRAM bindings schema.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Thanks for your patch, whcih is now commit 0759b09eadd0d9a1 ("dt-bindings:
sram: Merge Renesas SRAM bindings into generic") in Rob's for-next branch.

> --- a/Documentation/devicetree/bindings/sram/renesas,smp-sram.txt
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -* Renesas SMP SRAM
> -
> -Renesas R-Car Gen2 and RZ/G1 SoCs need a small piece of SRAM for the jump stub
> -for secondary CPU bringup and CPU hotplug.
> -This memory is reserved by adding a child node to a "mmio-sram" node, cfr.
> -Documentation/devicetree/bindings/sram/sram.txt.
> -
> -Required child node properties:
> -  - compatible: Must be "renesas,smp-sram",
> -  - reg: Address and length of the reserved SRAM.
> -    The full physical (bus) address must be aligned to a 256 KiB boundary.
> -
> -
> -Example:
> -
> -       icram1: sram@e63c0000 {
> -               compatible = "mmio-sram";
> -               reg = <0 0xe63c0000 0 0x1000>;
> -               #address-cells = <1>;
> -               #size-cells = <1>;
> -               ranges = <0 0 0xe63c0000 0x1000>;
> -
> -               smp-sram@0 {
> -                       compatible = "renesas,smp-sram";
> -                       reg = <0 0x10>;
> -               };

> --- a/Documentation/devicetree/bindings/sram/sram.yaml
> +++ b/Documentation/devicetree/bindings/sram/sram.yaml

> @@ -186,3 +187,17 @@ examples:
>              reg = <0x1ff80 0x8>;
>          };
>      };
> +
> +  - |
> +    sram@e63c0000 {
> +        compatible = "mmio-sram";
> +        reg = <0xe63c0000 0x1000>;

Is there any specific reason you converted the example from 64-bit to
32-bit addressing?
All Renesas SoCs using this have #address-cells and #size-cells = <2>.

Thanks!

> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges = <0 0xe63c0000 0x1000>;
> +
> +        smp-sram@0 {
> +            compatible = "renesas,smp-sram";
> +            reg = <0 0x10>;
> +        };
> +    };

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
