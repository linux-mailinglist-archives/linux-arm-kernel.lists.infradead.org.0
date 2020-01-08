Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E512134794
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:19:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAgcntwn9B8D3qgIdHKeG3DTzbZ20MPehysy0EIPVjs=; b=UHe+Glo9QzdlrX
	G24tS9rL7loohsejx1nc24/aPQ6pm9DhO+36TmYk9475K/OGWNuk2hh4vFaFd+JLwTPfXt+fG2aoN
	a3e2s3ejmF1Z0ejYFiHB6tGcppYG7Ej3X5ad35TqyFYfVPtKnBVV5cXvcdEs5XFt+CA0KJLIKv8Os
	GxhdDLgZO5bWd+DYbZBqmwmfMCjS6W6zqQ75Vj2kr+dQFJopKoZBnWKiHpY0O3iSzj6Ig8VYDlPBq
	+v2MVMgRKtWpCtelVijHfI8s3GYQ/UUu4U+FsmzOGNEo9mcAEdBkv34z+wxrksOSgvlYevqYBv4o0
	13kpLa+QKNHfqAsr7fOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipE3n-0007S8-8p; Wed, 08 Jan 2020 16:19:55 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipE3f-0007RO-A9
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 16:19:49 +0000
Received: by mail-oi1-f195.google.com with SMTP id n16so3069279oie.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 08:19:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GYY2CiFdIkACfo5Jd98wndqawL1c3UoSR/a/rU3NP9U=;
 b=mWritit8nhGun1FACd7Vcbfl2JEafz8a55egd/5FimOyvz7erkpLRG07LHwuBAgKIa
 G0Tto8op+KGHR8P4EfgPfEQuPDzOE8plGrF2cQ0KGpSya4/f/ZyP8Sr25S6wkOualj47
 ctc/C9FytxZEtvOZCodBsjk29nGTX3u10sRPLSvW61/p4WAJFcj7LBzgPQySi9BTmFvb
 F8aONL36soKoFmI2L8ws9ATLSh3kg+NJxokQ/Q2DaKxoDZ7ZB/gdAxyw8WHD/QERL/cz
 HGNPBNk0x+bhjYJ16NDDpOZMT6bJnizayOY9XqWiJRwwOqlE2MQPzvGvLnyDuSmfaA7i
 a5xg==
X-Gm-Message-State: APjAAAU6e2F0S1Lqa/ZcAgmGW78KMOY2ClBuyhGc+rDNzTcsuEIJDCiE
 bo1BqwCuxmhsl5mO7KidaxTDm/U=
X-Google-Smtp-Source: APXvYqwo3uQAFiQ4OEAbSmctM2O6gT5GOsUfSu5AxKsAuMn+maHopaTHWJ6+nmf0kHi78qruy5MQjQ==
X-Received: by 2002:aca:53c6:: with SMTP id h189mr3713213oib.11.1578500384414; 
 Wed, 08 Jan 2020 08:19:44 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z17sm1209197oib.3.2020.01.08.08.19.42
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 08:19:42 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22001a
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 08 Jan 2020 10:19:41 -0600
Date: Wed, 8 Jan 2020 10:19:41 -0600
From: Rob Herring <robh@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 03/13] dt-bindings: memory: Add Tegra186 memory subsystem
Message-ID: <20200108161941.GA10276@bogus>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
 <20191222141035.1649937-4-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191222141035.1649937-4-thierry.reding@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_081947_354194_738DC0B0 
X-CRM114-Status: GOOD (  21.66  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 22, 2019 at 03:10:25PM +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The NVIDIA Tegra186 SoC contains a memory subsystem composed of the
> memory controller and the external memory controller. The memory
> controller provides interfaces for the memory clients to access the
> memory. Accesses can be either bounced through the SMMU for IOVA
> translation or directly to the EMC.
> 
> The bulk of the programming of the external memory controller happens
> through interfaces exposed by the BPMP. Describe this relationship by
> adding a phandle reference to the BPMP to the EMC node.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  .../nvidia,tegra186-mc.yaml                   | 130 ++++++++++++++++++
>  1 file changed, 130 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
> new file mode 100644
> index 000000000000..b98a1d03410b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
> @@ -0,0 +1,130 @@
> +# SPDX-License-Identifier: (GPL-2.0)

Dual license new bindings:

(GPL-2.0-only OR BSD-2-Clause)

Though maybe this is a copy-n-paste of the other Tegra MC bindings?

With that sorted,

Reviewed-by: Rob Herring <robh@kernel.org>

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/nvidia,tegra186-mc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NVIDIA Tegra186 (and later) SoC Memory Controller
> +
> +maintainers:
> +  - Jon Hunter <jonathanh@nvidia.com>
> +  - Thierry Reding <thierry.reding@gmail.com>
> +
> +description: |
> +  The NVIDIA Tegra186 SoC features a 128 bit memory controller that is split
> +  into four 32 bit channels to support LPDDR4 with x16 subpartitions. The MC
> +  handles memory requests for 40-bit virtual addresses from internal clients
> +  and arbitrates among them to allocate memory bandwidth.
> +
> +  Up to 15 GiB of physical memory can be supported. Security features such as
> +  encryption of traffic to and from DRAM via general security apertures are
> +  available for video and other secure applications, as well as DRAM ECC for
> +  automotive safety applications (single bit error correction and double bit
> +  error detection).
> +
> +properties:
> +  $nodename:
> +    pattern: "^memory-controller@[0-9a-f]+$"
> +
> +  compatible:
> +    items:
> +      - enum:
> +          - nvidia,tegra186-mc
> +          - nvidia,tegra194-mc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 2
> +
> +  "#size-cells":
> +    const: 2
> +
> +  ranges: true
> +
> +  dma-ranges: true
> +
> +patternProperties:
> +  "^external-memory-controller@[0-9a-f]+$":
> +    description:
> +      The bulk of the work involved in controlling the external memory
> +      controller on NVIDIA Tegra186 and later is performed on the BPMP. This
> +      coprocessor exposes the EMC clock that is used to set the frequency at
> +      which the external memory is clocked and a remote procedure call that
> +      can be used to obtain the set of available frequencies.
> +    type: object
> +    properties:
> +      compatible:
> +        items:
> +          - enum:
> +              - nvidia,tegra186-emc
> +              - nvidia,tegra194-emc
> +
> +      reg:
> +        maxItems: 1
> +
> +      interrupts:
> +        maxItems: 1
> +
> +      clocks:
> +        items:
> +          - description: external memory clock
> +
> +      clock-names:
> +        items:
> +          - const: emc
> +
> +      nvidia,bpmp:
> +        $ref: /schemas/types.yaml#/definitions/phandle
> +        description:
> +          phandle of the node representing the BPMP
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/tegra186-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    memory-controller@2c00000 {
> +        compatible = "nvidia,tegra186-mc";
> +        reg = <0x0 0x02c00000 0x0 0xb0000>;
> +        interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
> +
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        ranges = <0x0 0x02c00000 0x02c00000 0x0 0xb0000>;
> +
> +        /*
> +         * Memory clients have access to all 40 bits that the memory
> +         * controller can address.
> +         */
> +        dma-ranges = <0x0 0x0 0x0 0x0 0x100 0x0>;
> +
> +        external-memory-controller@2c60000 {
> +            compatible = "nvidia,tegra186-emc";
> +            reg = <0x0 0x02c60000 0x0 0x50000>;
> +            interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks = <&bpmp TEGRA186_CLK_EMC>;
> +            clock-names = "emc";
> +
> +            nvidia,bpmp = <&bpmp>;
> +        };
> +    };
> +
> +    bpmp: bpmp {
> +        compatible = "nvidia,tegra186-bpmp";
> +        #clock-cells = <1>;
> +    };
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
