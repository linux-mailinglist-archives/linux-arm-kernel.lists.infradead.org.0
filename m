Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3B5139831
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 18:59:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHQ2jBg/mpWiKe1Km+SnMCtIghOBRhzhw7/9YmOwpPM=; b=Kf6Ld6k7qWMrgZ
	EQY6FuRx4fuibmi3DjERICx73zrCGXMfxjOxI2fIjkdhEY4I0lMq/OiRryMIRP1O+jPBk8W9Evw0G
	6KuGfPi+4VbUHztIV80o00rBCgHmX0uA8Tqe6lal1V8yQjVkvEUeadwY3saMr7wUJRCzTlOIUY1Cm
	kCo5IqGdDFJL59zGzmBUuSieLjFwhqY1XRmV11BI92ltpvikvsAyd/oEj9gpfxhTAMjPhUgZ+T2Yh
	a7ccCahRlPu1u1hefCfg66XNZXT85yWRxS3NASyVjMkyjgfLgCY98rx867AjQm/aEW1RaJhMRL1ek
	2qKhoZC50IvU3E7Uh02w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir3zv-0008SU-Lt; Mon, 13 Jan 2020 17:59:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir3zj-0008R8-Es
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 17:59:22 +0000
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
 [209.85.219.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3015C2187F
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 17:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578938358;
 bh=BvVwQDaXG7nwaYX7s05ct6eQ4sajxiQAfTIqBPjSazQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=TVamThhNpcOiouQ5EIgoTET4yaCryoc6Pao2h9UlS71C5yf1A+vYIZtyeIHNbHr+i
 ta/vR8+ga5cMTvxvM+Vg6JP5QpDwFZXGzXLuGw/l/e7ogDwkhmE1FFxF24YFj53zkO
 9HWJvIe5Sm2rqowNSujmvVhaRUa7DB6yBtPOGR+0=
Received: by mail-qv1-f42.google.com with SMTP id f16so4403074qvi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 09:59:18 -0800 (PST)
X-Gm-Message-State: APjAAAXQJOSZJLqAwKzad2naz6PKKvOMBbqGdt+rj4sLutK+/GcsJfmi
 L2By4vvAS93kIhZsVaCocYx7ZJOngNbC9ZMSDg==
X-Google-Smtp-Source: APXvYqxkC/xxiGwV4y31SedhMvlakVHw6kIvrXmJKJotUeMzr4RJqQNYzfbp6MAF0rK3ARaJW3fvP0OPAZP7qCIIIFg=
X-Received: by 2002:ad4:450a:: with SMTP id k10mr15796764qvu.136.1578938357304; 
 Mon, 13 Jan 2020 09:59:17 -0800 (PST)
MIME-Version: 1.0
References: <20191216095712.13266-14-kishon@ti.com>
 <20200102095631.1165-1-kishon@ti.com>
In-Reply-To: <20200102095631.1165-1-kishon@ti.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 13 Jan 2020 11:59:06 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJVmyXirczaWJb4hCsnVjXYt6ki22sBLe5D0240x4Xtzw@mail.gmail.com>
Message-ID: <CAL_JsqJVmyXirczaWJb4hCsnVjXYt6ki22sBLe5D0240x4Xtzw@mail.gmail.com>
Subject: Re: [PATCH v5 13/14] dt-bindings: phy: Document WIZ (SERDES wrapper)
 bindings
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_095919_544011_B3D620AF 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jyri Sarha <jsarha@ti.com>, Swapnil Kashinath Jakhade <sjakhade@cadence.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 3:54 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Add DT binding documentation for WIZ (SERDES wrapper). WIZ is *NOT* a
> PHY but a wrapper used to configure some of the input signals to the
> SERDES. It is used with both Sierra(16G) and Torrent(10G) serdes.
>
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> [jsarha@ti.com: Add separate compatible for Sierra(16G) and Torrent(10G)
>  SERDES]
> Signed-off-by: Jyri Sarha <jsarha@ti.com>
> ---
> Changes from v4:
> *) Fixed the indentation as suggested by Rob v4
>
>  .../bindings/phy/ti,phy-j721e-wiz.yaml        | 204 ++++++++++++++++++
>  1 file changed, 204 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
>
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> new file mode 100644
> index 000000000000..e010ea46b88d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> @@ -0,0 +1,204 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/ti,phy-j721e-wiz.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: TI J721E WIZ (SERDES Wrapper)
> +
> +maintainers:
> +  - Kishon Vijay Abraham I <kishon@ti.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,j721e-wiz-16g
> +      - ti,j721e-wiz-10g
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 3
> +    description: clock-specifier to represent input to the WIZ
> +
> +  clock-names:
> +    items:
> +      - const: fck
> +      - const: core_ref_clk
> +      - const: ext_ref_clk
> +
> +  num-lanes:
> +    minimum: 1
> +    maximum: 4
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +  "#reset-cells":
> +    const: 1
> +
> +  ranges: true
> +
> +  assigned-clocks:
> +    maxItems: 2
> +
> +  assigned-clock-parents:
> +    maxItems: 2
> +
> +patternProperties:
> +  "^pll[0|1]-refclk$":
> +    type: object
> +    description: |
> +      WIZ node should have subnodes for each of the PLLs present in
> +      the SERDES.
> +    properties:
> +      clocks:
> +        maxItems: 2
> +        description: Phandle to clock nodes representing the two inputs to PLL.
> +
> +      "#clock-cells":
> +        const: 0
> +
> +      assigned-clocks:
> +        maxItems: 1
> +
> +      assigned-clock-parents:
> +        maxItems: 1
> +
> +    required:
> +      - clocks
> +      - "#clock-cells"
> +      - assigned-clocks
> +      - assigned-clock-parents
> +
> +  "^cmn-refclk1?-dig-div$":
> +    type: object
> +    description:
> +      WIZ node should have subnodes for each of the PMA common refclock
> +      provided by the SERDES.
> +    properties:
> +      clocks:
> +        maxItems: 1
> +        description: Phandle to the clock node representing the input to the
> +          divider clock.
> +
> +      "#clock-cells":
> +        const: 0
> +
> +    required:
> +      - clocks
> +      - "#clock-cells"
> +
> +  "^refclk-dig$":
> +    type: object
> +    description: |
> +      WIZ node should have subnode for refclk_dig to select the reference
> +      clock source for the reference clock used in the PHY and PMA digital
> +      logic.
> +    properties:
> +      clocks:
> +        maxItems: 4
> +        description: Phandle to four clock nodes representing the inputs to
> +          refclk_dig
> +
> +      "#clock-cells":
> +        const: 0
> +
> +      assigned-clocks:
> +        maxItems: 1
> +
> +      assigned-clock-parents:
> +        maxItems: 1
> +
> +    required:
> +      - clocks
> +      - "#clock-cells"
> +      - assigned-clocks
> +      - assigned-clock-parents
> +
> +  "^serdes@[0-9a-f]+$":
> +    type: object
> +    description: |
> +      WIZ node should have '1' subnode for the SERDES. It could be either
> +      Sierra SERDES or Torrent SERDES. Sierra SERDES should follow the
> +      bindings specified in
> +      Documentation/devicetree/bindings/phy/phy-cadence-sierra.txt
> +      Torrent SERDES should follow the bindings specified in
> +      Documentation/devicetree/bindings/phy/phy-cadence-dp.txt
> +
> +required:
> +  - compatible
> +  - power-domains
> +  - clocks
> +  - clock-names
> +  - num-lanes
> +  - "#address-cells"
> +  - "#size-cells"
> +  - "#reset-cells"
> +  - ranges
> +
> +examples:
> +  - |
> +    #include <dt-bindings/soc/ti,sci_pm_domain.h>
> +
> +    wiz@5000000 {
> +           compatible = "ti,j721e-wiz-16g";
> +           #address-cells = <1>;
> +           #size-cells = <1>;
> +           power-domains = <&k3_pds 292 TI_SCI_PD_EXCLUSIVE>;
> +           clocks = <&k3_clks 292 5>, <&k3_clks 292 11>, <&dummy_cmn_refclk>;
> +           clock-names = "fck", "core_ref_clk", "ext_ref_clk";
> +           assigned-clocks = <&k3_clks 292 11>, <&k3_clks 292 0>;
> +           assigned-clock-parents = <&k3_clks 292 15>, <&k3_clks 292 4>;
> +           num-lanes = <2>;
> +           #reset-cells = <1>;
> +           ranges = <0x5000000 0x0 0x5000000 0x10000>;

This fails in linux-next:

Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.example.dts:30.16-59:
Warning (ranges_format): /example-0/wiz@50
00000:ranges: "ranges" property has invalid length (16 bytes) (parent
#address-cells == 1, child #address-cells == 1, #
size-cells == 1)

Please fix.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
