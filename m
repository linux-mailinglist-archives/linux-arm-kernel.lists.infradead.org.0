Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D702DDED7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 15:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFspv+NmxIMatZvgtThChxQJRfybL7RXD42JTqm3UmU=; b=lWSR03v37LCg9m
	sluG1WvZZkvpwcS0/7FVDKLMa86V+LOnQ6swcmarS2ksXO0K+brHGPpi74hrrAc+hAy3xB/tasxy2
	IWioTxSysLeVQLvQkcWbLrCn1L5DYgaqVDEaVk1MkVV2Bpr9Ktkq1UbuzmWnO2LtcdRYwnEf3jFSm
	jzYOE+DTN61J+ZfAlMv7eJBDOX6hYg9HblLraTd7jCzTOwhqKpy80FQFePKZZbwVbpSvSQHeNH1di
	XDHgxhCAZm8Z56LYvXmuKUKpJGrdJrfJD0pEQaAglE2ZWB6ZPvE+9ehJVAzeDv7tRCKkU+pVN86Dv
	46ECCpVfk7rIJ1pPG65w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXh1-0000ky-Jp; Mon, 21 Oct 2019 13:25:51 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXgs-0000kS-MY
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 13:25:44 +0000
Received: by mail-ed1-f68.google.com with SMTP id s20so3996258edq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 06:25:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kbWYhDCDbV5qK8VclXFPP6NqeqAgLz5VFjeSpIHBB+s=;
 b=kYZxSKi1rkFdsd/9DyqehOjpEXG1ky4SB691ItBXRAk7UtTx1vzNYQuugVeG1paeYg
 MQb+TDx1vO8uooT77dzkV2HE8jyKuDIiILCiYljyUnuX7aa71Xds0rWCBy2fB5noQp2a
 lOa2C4AdSKo9cIrqsZj11QkVKEHGsKXcV52S2L5D9wlETgsiRAfQEaKF8VQDA33nw4M/
 RBUNZco2uUyV3qSdKEXQciVnWZWQmaoyQJj9TCcMJZG1JJ3L1tHBlchql4IxQ57TZmqu
 GnlhqoVy6M+SMWMONu253rYaBK4m/rXo/F8YB2dD2DACocrSpoM+GDoXaXCkXGqrUUKf
 r0Lg==
X-Gm-Message-State: APjAAAXTTuSMojCpTRClDNhF8nyDJdzhPmM5wC/kFrOPBjuZuh2SKKbi
 8CifcWqIaB7X8lF40WbWfX0=
X-Google-Smtp-Source: APXvYqyDVwXcr52I2wsb+Z4RGg4WcltwXXlohYeZzvFP+OKWg5ZNU8oHr/O1UXzcE6xe2rgQ+TiKng==
X-Received: by 2002:a17:906:2584:: with SMTP id
 m4mr22390782ejb.287.1571664340356; 
 Mon, 21 Oct 2019 06:25:40 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id s4sm344795edt.34.2019.10.21.06.25.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 06:25:39 -0700 (PDT)
Date: Mon, 21 Oct 2019 15:25:36 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 01/10] dt-bindings: sram: Convert SRAM bindings to
 json-schema
Message-ID: <20191021132536.GA2791@pi3>
References: <20191002164316.14905-1-krzk@kernel.org>
 <20191010191240.GA15006@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010191240.GA15006@bogus>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_062542_739230_647CA6A7 
X-CRM114-Status: GOOD (  30.44  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Tony Lindgren <tony@atomide.com>, Thierry Reding <thierry.reding@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Santosh Shilimkar <ssantosh@kernel.org>,
 linux-tegra@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 02:12:40PM -0500, Rob Herring wrote:
> On Wed, Oct 02, 2019 at 06:43:07PM +0200, Krzysztof Kozlowski wrote:
> > Convert generic mmio-sram bindings to DT schema format using
> > json-schema.  Require the address/size cells to be 1, not equal to root
> > node.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > 
> > ---
> > 
> > Changes since v2:
> > 1. Add Rob as maintainer,
> > 2. Use "contains" for compatible,
> > 3. Fix address and size cells to 1,
> > 4. Add maxitems to reg under children,
> > 5. Remove unneeded string type from label.
> > 
> > Changes since v1:
> > 1. Indent example with four spaces (more readable).
> > ---
> >  .../devicetree/bindings/sram/sram.txt         |  80 -----------
> >  .../devicetree/bindings/sram/sram.yaml        | 134 ++++++++++++++++++
> >  2 files changed, 134 insertions(+), 80 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/sram/sram.txt
> >  create mode 100644 Documentation/devicetree/bindings/sram/sram.yaml
> 
> 
> > diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
> > new file mode 100644
> > index 000000000000..a1c1ec2183f2
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/sram/sram.yaml
> > @@ -0,0 +1,134 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/sram/sram.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Generic on-chip SRAM
> > +
> > +maintainers:
> > +  - Rob Herring <robh@kernel.org>
> > +
> > +description: |+
> > +  Simple IO memory regions to be managed by the genalloc API.
> > +
> > +  Each child of the sram node specifies a region of reserved memory. Each
> > +  child node should use a 'reg' property to specify a specific range of
> > +  reserved memory.
> > +
> > +  Following the generic-names recommended practice, node names should
> > +  reflect the purpose of the node. Unit address (@<address>) should be
> > +  appended to the name.
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "^sram(@.*)?"
> > +
> > +  compatible:
> > +    contains:
> > +      enum:
> > +        - mmio-sram
> > +        - atmel,sama5d2-securam
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  "#address-cells":
> > +    const: 1
> > +
> > +  "#size-cells":
> > +    const: 1
> > +
> > +  ranges:
> > +    description:
> > +      Should translate from local addresses within the sram to bus addresses.
> > +
> > +  no-memory-wc:
> > +    description:
> > +      The flag indicating, that SRAM memory region has not to be remapped
> > +      as write combining. WC is used by default.
> > +    type: boolean
> > +
> > +patternProperties:
> > +  "^([a-z]*-)?sram@[a-f0-9]$":
> > +    type: object
> > +    description:
> > +      Each child of the sram node specifies a region of reserved memory.
> > +    properties:
> > +      reg:
> > +        description:
> > +          IO mem address range, relative to the SRAM range.
> > +        maxItems: 1
> > +
> > +      compatible:
> > +        $ref: /schemas/types.yaml#/definitions/string
> 
> No need to define the type again. We can say 'maxItems: 1' if we really 
> want to force it to 1 entry.

I'll fix it and integrate Samsung compatibles here.

> 
> > +        description:
> > +          Should contain a vendor specific string in the form
> > +          <vendor>,[<device>-]<usage>
> > +
> > +      pool:
> > +        description:
> > +          Indicates that the particular reserved SRAM area is addressable
> > +          and in use by another device or devices.
> > +        type: boolean
> > +
> > +      export:
> > +        description:
> > +          Indicates that the reserved SRAM area may be accessed outside
> > +          of the kernel, e.g. by bootloader or userspace.
> > +        type: boolean
> > +
> > +      protect-exec:
> > +        description: |
> > +          Same as 'pool' above but with the additional constraint that code
> > +          will be run from the region and that the memory is maintained as
> > +          read-only, executable during code execution. NOTE: This region must
> > +          be page aligned on start and end in order to properly allow
> > +          manipulation of the page attributes.
> > +        type: boolean
> > +
> > +      label:
> > +        description:
> > +          The name for the reserved partition, if omitted, the label is taken
> > +          from the node name excluding the unit address.
> > +
> > +      clocks:
> 
> Shouldn't this be up one level? Looks like this is the only case 
> (Marvell and i.MX are the only ones I see with clocks).

Yes, that's a mistake in original bindings.

> 
> > +        description:
> > +          A list of phandle and clock specifier pair that controls the
> > +          single SRAM clock.
> 
> maxItems: 1

Yes.

> 
> > +
> > +    required:
> > +      - reg
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - "#address-cells"
> > +  - "#size-cells"
> > +  - ranges
> 
> Does 'additionalProperties' work here and/or in the child node? I guess 
> not if we keep some node names.

It seems that it works.

> 
> > +
> > +examples:
> > +  - |
> > +    sram: sram@5c000000 {
> > +        compatible = "mmio-sram";
> > +        reg = <0x5c000000 0x40000>; /* 256 KiB SRAM at address 0x5c000000 */
> > +
> > +        #address-cells = <1>;
> > +        #size-cells = <1>;
> > +        ranges = <0 0x5c000000 0x40000>;
> > +
> > +        smp-sram@100 {
> > +            compatible = "socvendor,smp-sram";
> > +            reg = <0x100 0x50>;
> > +        };
> > +
> > +        device-sram@1000 {
> > +            reg = <0x1000 0x1000>;
> > +            pool;
> > +        };
> > +
> > +        exported@20000 {
> 
> This one doesn't match the pattern. That's fine I guess for dts files, 
> but examples should be good examples.

Sure.

Best regards,
Krzysztof

> 
> > +            reg = <0x20000 0x20000>;
> > +            export;
> > +        };
> > +    };
> > -- 
> > 2.17.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
