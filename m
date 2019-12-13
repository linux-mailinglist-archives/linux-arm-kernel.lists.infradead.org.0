Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F21C811E6E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 16:42:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ci4eMXrTPXNXh1/YAABdypBSZ1J2U/vKXdp/KTraG1E=; b=PklFkqUqkCkkEx
	B6ReGR7faU8UFuRqJO+HHL3vMMu2kYy7BwEcxnjhcj14yttw5YqvDF3gnxngSQTuGKFDCl1Z1CHkv
	ElY6RSqVqgEqpTVbDcVbgdb5rBjotFteQiNyfoJIXgnJ3gis91MKX/Gp7xcmunfmZljtWR1zom7Gp
	pd3xlt19lYG4pzm96Lg8T6Xor6FmrO0I22mmSTqwTENoolr328NkxF7mP6lx2qKVNRKcD4TV7M9mj
	kbkZezsXFRpugw4KfIxd+dQgIB4zqkb/qzwWJOxfytEzGbl9N3PrjLREyJLZ6Yb9Yhx0aNVBydMfN
	PcEgq1ThLQfEA+JWuLtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifn4z-0006V8-HS; Fri, 13 Dec 2019 15:42:09 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifn4p-0006UN-Rn
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 15:42:01 +0000
Received: by mail-il1-x144.google.com with SMTP id z12so2386947iln.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 07:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yHFriWwVf2bpxF8jwq7dYnH8TViQ3A2S0W8/bFkGrXk=;
 b=uy1iVBwF5qVEjnordVcIXzD6+GC42UB/aLnp1utugxlHKBypM+B2oVMmWYF9Fwhyck
 fzcQ/3dWMofY1YSJluLV0zdkMwBIs6YM27G1ksMcOmD4iNEgx73faeivK1equeR2rLay
 Jx1LboWVnDiCAOlZMzAlqOL7QcRqtEgr0LmVhQkcfXwpizeHvtmxh1x3TCYLRBPQeGsf
 CnWXzBO5soVgh93FPTDopuxNIC1euJ2ScGt6v4RQ3qBIldjr/A06HIEWH8TlMYwwUiLW
 WQV3j1KcU0HNCVHyjeTdtFpFD1wfg39bby/vYuZ3OcvJMiS+xAhr2VUpOzYJs6mAhLao
 PuIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yHFriWwVf2bpxF8jwq7dYnH8TViQ3A2S0W8/bFkGrXk=;
 b=Lx/5yJQg2ZizHM6qcuemCCgXFnUQ3XlW0MGrVYgRRp/Efj67oI9MEZUoHJJ/R9NQHK
 WhAcPJiQaklH3Pdvn75B6rKqY4twz2ucjc2DkcPEfgNW/DZkLKzuy6Oe7j5elcM0/HBY
 I2el6W2LLilbi0+XcDWJLoZvXmImPpFDMV7Sd9IBAOboKdjJWTrUII6y2+UjHPnRiGiu
 JL0oDeG8ovlu7t4l/uHovJ9SjLT/ChaoPp0iEUdWA/ltsH//A772oe7APr0mArpIbQIJ
 aGB8eVf8w8Px2kCEiidyYMmlz8wpXGLWP03S3cg2pAKn2J5qQy5Jqmp/iMiAvUqofLAH
 gTYw==
X-Gm-Message-State: APjAAAUvC2GLagqPjiEul2f2SU4fYrIkyqbzFpfBlKdXfumYFSPUlogO
 FfBxdu/lnXXjdx0xjEjfynnlrkRv0ICi/k2KmEQ=
X-Google-Smtp-Source: APXvYqzYQQrOqzq0lGlikGdKHOscdMMUlYZqW+h4DlZuPmBdDG28bYhGZKbxxSS7VizcvE2SXU3vAnQLc/C5vPctLEU=
X-Received: by 2002:a92:d38e:: with SMTP id o14mr14108231ilo.238.1576251718323; 
 Fri, 13 Dec 2019 07:41:58 -0800 (PST)
MIME-Version: 1.0
References: <20191213074533.27048-1-maxime@cerno.tech>
In-Reply-To: <20191213074533.27048-1-maxime@cerno.tech>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Fri, 13 Dec 2019 23:41:46 +0800
Message-ID: <CAEExFWunpXqKDyxqhHGJhtcQ7pwEYkWL0wvwUp==_jrd9wACbQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: interconnect: Convert Allwinner MBUS
 controller to a schema
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_074159_921349_BDE0605F 
X-CRM114-Status: GOOD (  20.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 georgi.djakov@linaro.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 3:45 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The older Allwinner SoCs have an MBUS controller that is used by Linux,
> with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../arm/sunxi/allwinner,sun4i-a10-mbus.yaml   | 65 +++++++++++++++++++
>  .../bindings/arm/sunxi/sunxi-mbus.txt         | 37 -----------
>  2 files changed, 65 insertions(+), 37 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml
>  delete mode 100644 Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt
>
> diff --git a/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml
> new file mode 100644
> index 000000000000..9370e64992dd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/sunxi/allwinner,sun4i-a10-mbus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner Memory Bus (MBUS) controller
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <mripard@kernel.org>
> +
> +description: |
> +  The MBUS controller drives the MBUS that other devices in the SoC
> +  will use to perform DMA. It also has a register interface that
> +  allows to monitor and control the bandwidth and priorities for
> +  masters on that bus.
> +
> +  Each device having to perform their DMA through the MBUS must have
> +  the interconnects and interconnect-names properties set to the MBUS
> +  controller and with "dma-mem" as the interconnect name.
> +
> +properties:
> +  "#interconnect-cells":
> +    const: 1
> +    description:
> +      The content of the cell is the MBUS ID.
> +
> +  compatible:
> +    enum:
> +      - allwinner,sun5i-a13-mbus
> +      - allwinner,sun8i-h3-mbus

Is there a driver in mainline  for it?

Thx,
Yangtao

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  dma-ranges:
> +    description:
> +      See section 2.3.9 of the DeviceTree Specification.
> +
> +required:
> +  - "#interconnect-cells"
> +  - compatible
> +  - reg
> +  - clocks
> +  - dma-ranges
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/sun5i-ccu.h>
> +
> +    mbus: dram-controller@1c01000 {
> +        compatible = "allwinner,sun5i-a13-mbus";
> +        reg = <0x01c01000 0x1000>;
> +        clocks = <&ccu CLK_MBUS>;
> +        dma-ranges = <0x00000000 0x40000000 0x20000000>;
> +        #interconnect-cells = <1>;
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt b/Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt
> deleted file mode 100644
> index 2005bb486705..000000000000
> --- a/Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt
> +++ /dev/null
> @@ -1,37 +0,0 @@
> -Allwinner Memory Bus (MBUS) controller
> -
> -The MBUS controller drives the MBUS that other devices in the SoC will
> -use to perform DMA. It also has a register interface that allows to
> -monitor and control the bandwidth and priorities for masters on that
> -bus.
> -
> -Required properties:
> - - compatible: Must be one of:
> -       - allwinner,sun5i-a13-mbus
> -       - allwinner,sun8i-h3-mbus
> - - reg: Offset and length of the register set for the controller
> - - clocks: phandle to the clock driving the controller
> - - dma-ranges: See section 2.3.9 of the DeviceTree Specification
> - - #interconnect-cells: Must be one, with the argument being the MBUS
> -   port ID
> -
> -Each device having to perform their DMA through the MBUS must have the
> -interconnects and interconnect-names properties set to the MBUS
> -controller and with "dma-mem" as the interconnect name.
> -
> -Example:
> -
> -mbus: dram-controller@1c01000 {
> -       compatible = "allwinner,sun5i-a13-mbus";
> -       reg = <0x01c01000 0x1000>;
> -       clocks = <&ccu CLK_MBUS>;
> -       dma-ranges = <0x00000000 0x40000000 0x20000000>;
> -       #interconnect-cells = <1>;
> -};
> -
> -fe0: display-frontend@1e00000 {
> -       compatible = "allwinner,sun5i-a13-display-frontend";
> -       ...
> -       interconnects = <&mbus 19>;
> -       interconnect-names = "dma-mem";
> -};
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
