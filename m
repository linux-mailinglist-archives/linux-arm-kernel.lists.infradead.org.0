Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12868172AFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 23:22:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0vieQQTJA/hp44cHRC8Hi7SgUrxznBG818R+OHTTN0=; b=kow9/fwgZ+q19G
	IokHyaHw8tZZeiUsic0sX+CBrwDGw/7Y2V41pGqhEGdPN8pStMdsD/7GgOkFpj+fwcz3/crF6GI+W
	qtx0yMLvGOM5pjPxan2No5yHDLGbn5NyqCASFNdsKhKNH9gLbRUNRKbMSbvFUQLUGlV68b1yr2pfi
	D6xznPg0N97XfuleZcBCjuSP5P/A4WtPDpsfXMNGt+vucDCL9TtkZ89c2WOfCaAgNSofur7WpCCPj
	7bEMJ4C8oJvuO3kDN+qzfYbrLIRrGQdXa54ToqMm8z1wAXGc+lgccUAGR8BLB1flHqtJy3Hs3ZG7L
	dwm+AiieTmWxdjUfRLDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7RXa-00072T-Ov; Thu, 27 Feb 2020 22:21:58 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7RXP-00071o-N5
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 22:21:49 +0000
Received: by mail-oi1-f194.google.com with SMTP id v19so848475oic.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 14:21:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=du04IHx+HutirdW4IRyHgf7LAWxcnOztVFIEX1SqbB8=;
 b=mPqujroejGZYp8fXjqTZcLnjffYZd+QCOKlCD9Qb6vHtfrt9Ubwk79eMqkW14gcor8
 yds0CMtHUGzuAju84IznbsVHfzYc1xV3UgRpn3NA1MZrEM7TB2FNra/G+acvDixAn2kk
 1t1byFbnDFatnKx1TawqyGv4gSXBgNCw00FIDNhhsxbyvQ10C5C59O2tMjIGMIhYhuo4
 jPRjNF+hDa2/z/y8xIpEHa48DipicoGbCA8qB3veYLjMMaQts+oi16OhLHBeXVhol1bK
 pyPpxPu+dAYM1JgBqMtmcsOkbgdUoH1Pa4Wk63/s8eM7CHJdKxQx50mNcQnoLaIZuoVd
 AGGw==
X-Gm-Message-State: APjAAAUo+hCI+wAdNqouAU14vyep9vvF2PfQWplFHQWjIUOhCcL9kvSb
 cLwSIHtPk3Me9B0YaiUKUg==
X-Google-Smtp-Source: APXvYqyEkDcaG0j8dAL0P9PQF1fWf4H41MVvV6Cb5ceuV0GzrQuoqmkuHkhHkuOq7dxd45/LCQIhtw==
X-Received: by 2002:a54:4106:: with SMTP id l6mr956240oic.76.1582842106769;
 Thu, 27 Feb 2020 14:21:46 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j5sm2383610otl.71.2020.02.27.14.21.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 14:21:46 -0800 (PST)
Received: (nullmailer pid 24260 invoked by uid 1000);
 Thu, 27 Feb 2020 22:21:45 -0000
Date: Thu, 27 Feb 2020 16:21:45 -0600
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v2 11/13] dt-bindings: ipmi: Convert IPMI-SMIC bindings
 to json-schema
Message-ID: <20200227222145.GF26010@bogus>
References: <20200227182210.89512-1-andre.przywara@arm.com>
 <20200227182210.89512-12-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227182210.89512-12-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_142147_754637_7D10F329 
X-CRM114-Status: GOOD (  23.27  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 Corey Minyard <minyard@acm.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Eric Auger <eric.auger@redhat.com>, soc@kernel.org,
 openipmi-developer@lists.sourceforge.net, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 06:22:08PM +0000, Andre Przywara wrote:
> Convert the generic IPMI controller bindings to DT schema format
> using json-schema.
> 
> I removed the formerly mandatory device-type property, since this
> is deprecated in the DT spec, except for the legacy CPU and memory
> nodes.

Yes, but it is still used by the ipmi driver to match on, so we should 
keep it.

> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Cc: Corey Minyard <minyard@acm.org>
> Cc: openipmi-developer@lists.sourceforge.net
> ---
>  .../devicetree/bindings/ipmi/ipmi-smic.txt    | 25 ---------
>  .../devicetree/bindings/ipmi/ipmi-smic.yaml   | 56 +++++++++++++++++++
>  2 files changed, 56 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/ipmi/ipmi-smic.txt
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ipmi/ipmi-smic.txt b/Documentation/devicetree/bindings/ipmi/ipmi-smic.txt
> deleted file mode 100644
> index d5f1a877ed3e..000000000000
> --- a/Documentation/devicetree/bindings/ipmi/ipmi-smic.txt
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -IPMI device
> -
> -Required properties:
> -- compatible: should be one of ipmi-kcs, ipmi-smic, or ipmi-bt
> -- device_type: should be ipmi
> -- reg: Address and length of the register set for the device
> -
> -Optional properties:
> -- interrupts: The interrupt for the device.  Without this the interface
> -	is polled.
> -- reg-size - The size of the register.  Defaults to 1
> -- reg-spacing - The number of bytes between register starts.  Defaults to 1
> -- reg-shift - The amount to shift the registers to the right to get the data
> -	into bit zero.
> -
> -Example:
> -
> -smic@fff3a000 {
> -	compatible = "ipmi-smic";
> -	device_type = "ipmi";
> -	reg = <0xfff3a000 0x1000>;
> -	interrupts = <0 24 4>;
> -	reg-size = <4>;
> -	reg-spacing = <4>;
> -};
> diff --git a/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml b/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
> new file mode 100644
> index 000000000000..c859e0e959b9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: GPL-2.0

Anything I wrote which should be most of the series, you can relicense 
to:

(GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ipmi/ipmi-smic.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: IPMI device bindings
> +
> +description: IPMI device bindings
> +
> +maintainers:
> +  - Corey Minyard <cminyard@mvista.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ipmi-kcs
> +      - ipmi-smic
> +      - ipmi-bt
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    description: Interface is polled if this property is omitted.
> +    maxItems: 1
> +
> +  reg-size:
> +    description: The access width of the register in bytes. Defaults to 1.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [1, 2, 4, 8]

Does 8 really work?

> +
> +  reg-spacing:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: The number of bytes between register starts. Defaults to 1.
> +
> +  reg-shift:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      The amount of bits to shift the register content to the right to get
> +      the data into bit zero.

either 24 or 56 would be the max, right?

> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    smic@fff3a000 {
> +        compatible = "ipmi-smic";
> +        reg = <0xfff3a000 0x1000>;
> +        interrupts = <0 24 4>;
> +        reg-size = <4>;
> +        reg-spacing = <4>;
> +    };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
