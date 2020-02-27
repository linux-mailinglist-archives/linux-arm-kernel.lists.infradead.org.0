Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E981172B02
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 23:23:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUH7J9ZZVTAlIzBJovCAMs2Cu0IS/XR7wV/+aAc+jRM=; b=JvxLCz7qgvT2DV
	50xvl2drVBOFhk/wcS3m0O4WoQOdiASe+NeyJ5jYllqO4lGGz3/8PniPMalyMHiebxJUptl7RUfod
	yy7u3HXgNPohYjStIY03uBPi7CYvGnKp5pxkdQAF03UgPAjbNjCPbuYyi19NjHOY73EeEP0IhGZiB
	xKavTm6+pFLz1kMuKH7IDCth18ItVYeVnVLcnCrMJUpENcQhm38P54Qf3gPx96zKhtEUiQoF4a/2/
	TENcqNTHSa/FyNkxHxgOb0OQZkYz3/Vq8Xqv2MS4AJ5qXIXLaop0q/eJZwDaDi+srW8hcEFKB0I4C
	zVLQdN1Uk029vbdZtsWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7RYU-0007J5-3g; Thu, 27 Feb 2020 22:22:54 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7RYI-0007IK-9p
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 22:22:45 +0000
Received: by mail-ot1-f65.google.com with SMTP id r16so782677otd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 14:22:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Twand65sZdOLPd8mLMV5yo/gk50yR6BORm4y7JCU1Fs=;
 b=kfEhjDjkt5D72+86G20vvF5JG0aELOlUDqAnBfOzkU0c50o0j99BZcAum6E3ewSxHY
 bP7qiDhLg24QHa/k/t6pNHRztglStrIEc/2tT29XCaUU7ojQ+1DgAccrViIJQbd9S6G2
 ED4dCcRjXP5mqWh8loyAuyqlS68ct/BUW8/ea9zFEZur/U41wyI4KHO5ErIzm0cYAuk3
 jNKSN1DcGiEkArOv3RLlhjgP5niTvsSklRtmZXFyVUgZS/w8LF8p4iCK1Gxj/Y3PHHex
 MZyrsz383oemAA8V31EK4OcGoQkxA3VIHWsUxqoC0CgEgqbDIW0K4cOrLCNHyRU+bw2Q
 JZoQ==
X-Gm-Message-State: APjAAAVQaszO2mZgtK5+uP2g05f12x5obfY5gH2ZxJwUXw3+OFlxC+ta
 h0YbuCmUoUmpVaDfkerWiw==
X-Google-Smtp-Source: APXvYqz5B7zZblz4z3k+XJtWJQ8eJGRpmeq7mhbk1IJZq3BK1sqHfVfQ2pt+9lrRhZUpnAzW5mSOdg==
X-Received: by 2002:a9d:5e9:: with SMTP id 96mr871219otd.307.1582842161560;
 Thu, 27 Feb 2020 14:22:41 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i6sm2396457oto.62.2020.02.27.14.22.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 14:22:41 -0800 (PST)
Received: (nullmailer pid 25505 invoked by uid 1000);
 Thu, 27 Feb 2020 22:22:40 -0000
Date: Thu, 27 Feb 2020 16:22:40 -0600
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v2 12/13] dt-bindings: arm: Add Calxeda system registers
 json-schema binding
Message-ID: <20200227222240.GG26010@bogus>
References: <20200227182210.89512-1-andre.przywara@arm.com>
 <20200227182210.89512-13-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227182210.89512-13-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_142244_084292_F5D53AA8 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Eric Auger <eric.auger@redhat.com>,
 soc@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 06:22:09PM +0000, Andre Przywara wrote:
> The Calxeda system registers are a collection of MMIO register
> controlling several more general aspects of the SoC.
> Beside for some power management tasks this node is also somewhat
> abused as the container for the clock nodes.
> 
> Add a binding in DT schema format using json-schema.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../bindings/arm/calxeda/hb-sregs.yaml        | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/calxeda/hb-sregs.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/calxeda/hb-sregs.yaml b/Documentation/devicetree/bindings/arm/calxeda/hb-sregs.yaml
> new file mode 100644
> index 000000000000..4753e8dc5873
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/calxeda/hb-sregs.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license please.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/calxeda/hb-sregs.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Calxeda Highbank system registers
> +
> +description: |
> +  The Calxeda Highbank system has a block of MMIO registers controlling
> +  several generic system aspects. Those can be used to control some power
> +  management, they also contain some gate and PLL clocks.
> +
> +maintainers:
> +  - Andre Przywara <andre.przywara@arm.com>
> +
> +properties:
> +  compatible:
> +    const: calxeda,hb-sregs
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    type: object
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    sregs@fff3c000 {
> +        compatible = "calxeda,hb-sregs";
> +        reg = <0xfff3c000 0x1000>;
> +
> +        clocks {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            osc: oscillator {
> +                #clock-cells = <0>;
> +                compatible = "fixed-clock";
> +                clock-frequency = <33333000>;
> +            };
> +        };
> +    };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
