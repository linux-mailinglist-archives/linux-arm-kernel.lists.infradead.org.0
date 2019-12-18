Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDD3125400
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 21:59:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJs239HEo7Wpv/FYmRDGQkT/mcl51seC4Kd/MA2lwpc=; b=WyAfmK2BUV5sg8
	4zRm88n+ghwvNgne9g+4sJ9grU3nizISEdG2a3LjQ4k9scG3gMCXFlRrlwfm2Jj3BSO9VUp44QkE4
	uTxSG9psiG5qFjayaGv1YOxXzpjCNdjyuzZVjBb/i8+0qcSJH1TkJuMg5bB/50eUXm72ToC9Nhv9K
	Y6RdOAlFSwpFcrpNguNIm3maxm5tDGXUmwL1WRUcyCIYA02tZYCyUEMNxWnCCJCCkmd+nPRzXTZNX
	+7Pj88uelqSgTdQP+IiKvpEJ6n5FXGmEwIKVprbGENPZutq3Zk226jR0mFjCXWLGwRU3fRv9e0iP3
	hpfcNUSqUacvEKCBhTIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihgQ8-0000iz-Az; Wed, 18 Dec 2019 20:59:48 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihgPx-0000iO-Mg
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 20:59:39 +0000
Received: by mail-ot1-f67.google.com with SMTP id w1so4130067otg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 12:59:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EOIM5ohVJuG8WUM6Uv/kRMmOO7OZqxuzI2GR/19vjz4=;
 b=IsVaRWrWamT4bEOYjjm0Rzi7n0NUobXMARmwOkzDW6Kzh/gDONLS24euey13tD7kwS
 yUhy2EKi4CKrRGzNejY8ul6h/3hiFoi8Xl0wdh+/rHbAx0f77uSRQus0ZZD19lr0R9tb
 Qu6/UVZGR05AkNPew3QE79ATQGmLxxXFgmc5flrqCzPQeA92YtVp/1CBFAmk8vdilEk0
 64EU3QihwAI5EaodV99nCrnLscAkRNhxikGkIvI3KJDabIxXlDKJxuou43sMQIyIurX8
 E9Bw99t+7WgUVI9vf9kTjROoPcbXVgKEh9UY/fjazUenp9JUV8pEAjaoV8Csd9tD0OF3
 67NA==
X-Gm-Message-State: APjAAAUJEuCiXzPkq6LQ9t04SHLQy0DcX9ahrTmYKXUsnbtIme0JlzS2
 3qwOviQmhuNpbryy6CukhA==
X-Google-Smtp-Source: APXvYqwdDGZoTBaty9DPSZdgYwCiElye4wqTApby9V2QTSges2/6Tjk/aNfYOvQ1w6UuiKIOxv/y9A==
X-Received: by 2002:a05:6830:2361:: with SMTP id
 r1mr4543788oth.88.1576702777020; 
 Wed, 18 Dec 2019 12:59:37 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n22sm1230679otj.36.2019.12.18.12.59.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 12:59:36 -0800 (PST)
Date: Wed, 18 Dec 2019 14:59:35 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v4 13/14] dt-bindings: phy: Document WIZ (SERDES wrapper)
 bindings
Message-ID: <20191218205935.GA5162@bogus>
References: <20191216095712.13266-1-kishon@ti.com>
 <20191216095712.13266-14-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216095712.13266-14-kishon@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_125937_741986_D6E457BB 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jyri Sarha <jsarha@ti.com>, Anil Varughese <aniljoy@cadence.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 03:27:11PM +0530, Kishon Vijay Abraham I wrote:
> Add DT binding documentation for WIZ (SERDES wrapper). WIZ is *NOT* a
> PHY but a wrapper used to configure some of the input signals to the
> SERDES. It is used with both Sierra(16G) and Torrent(10G) serdes.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> [jsarha@ti.com: Add separate compatible for Sierra(16G) and Torrent(10G)
>  SERDES]
> Signed-off-by: Jyri Sarha <jsarha@ti.com>
> ---
>  .../bindings/phy/ti,phy-j721e-wiz.yaml        | 204 ++++++++++++++++++
>  1 file changed, 204 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> new file mode 100644
> index 000000000000..fd4204a960a9
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
> +      enum:
> +          - ti,j721e-wiz-16g
> +          - ti,j721e-wiz-10g

Tab size is 2 spaces.

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
> +   "^pll[0|1]-refclk$":

Indentation

> +    type: object
> +    description: |

Don't need the '|' unless there's formatting or multiple paragraphs.

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
> +   "^cmn-refclk1?-dig-div$":

Indentation

> +    type: object
> +    description: |
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
> +   "^refclk-dig$":

Indentation

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
> +   "^serdes@[0-9a-f]+$":

...

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
> +
> +           pll0-refclk {
> +                  clocks = <&k3_clks 293 13>, <&dummy_cmn_refclk>;
> +                  #clock-cells = <0>;
> +                  assigned-clocks = <&wiz1_pll0_refclk>;
> +                  assigned-clock-parents = <&k3_clks 293 13>;
> +           };
> +
> +           pll1-refclk {
> +                  clocks = <&k3_clks 293 0>, <&dummy_cmn_refclk1>;
> +                  #clock-cells = <0>;
> +                  assigned-clocks = <&wiz1_pll1_refclk>;
> +                  assigned-clock-parents = <&k3_clks 293 0>;
> +           };
> +
> +           cmn-refclk-dig-div {
> +                  clocks = <&wiz1_refclk_dig>;
> +                  #clock-cells = <0>;
> +           };
> +
> +           cmn-refclk1-dig-div {
> +                  clocks = <&wiz1_pll1_refclk>;
> +                  #clock-cells = <0>;
> +           };
> +
> +           refclk-dig {
> +                  clocks = <&k3_clks 292 11>, <&k3_clks 292 0>, <&dummy_cmn_refclk>, <&dummy_cmn_refclk1>;
> +                  #clock-cells = <0>;
> +                  assigned-clocks = <&wiz0_refclk_dig>;
> +                  assigned-clock-parents = <&k3_clks 292 11>;
> +           };
> +
> +           serdes@5000000 {
> +                  compatible = "cdns,ti,sierra-phy-t0";
> +                  reg-names = "serdes";
> +                  reg = <0x5000000 0x10000>;
> +                  #address-cells = <1>;
> +                  #size-cells = <0>;
> +                  resets = <&serdes_wiz0 0>;
> +                  reset-names = "sierra_reset";
> +                  clocks = <&wiz0_cmn_refclk_dig_div>, <&wiz0_cmn_refclk1_dig_div>;
> +                  clock-names = "cmn_refclk_dig_div", "cmn_refclk1_dig_div";
> +           };
> +    };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
