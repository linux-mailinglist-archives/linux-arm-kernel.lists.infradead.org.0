Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD08E1353
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 09:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VGWY9DwnIrTeU+xBRsXqdz5olsEwD3GnyFuFiXUqacA=; b=HI5f/sJvhTx7Zq
	GKsU0DMls7yLDr7DQytAUhgiLFFxFNdk363qciuybpqw+nlW+0wh5169plf8d9ckv4vMX6mdNsctb
	hUnbzeDR4mxGkdXz2KtKoBcd08Kd9QiNmmlaH2qnkU2iH/qNagkhVpFYbESkb/WZEU5+Zq5W5NOxS
	ePGXkqFwAWikZ0SLE4bdLo0jHWher98ECKhGvho/6ker8PVr8U9hjH8tYKtPAozYN4GIANOtOLgiF
	xXfK+72GmwAHzawiwxB02YaulddEHkfCZCdOekVueQTVDAlN65+lGuW9EWM39/pKVjU0ILN22vUr7
	PAfTF1CcxRSgckdA8NJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNBHn-0004yQ-59; Wed, 23 Oct 2019 07:42:27 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNBHd-0004x5-JJ; Wed, 23 Oct 2019 07:42:19 +0000
Received: by mail-ed1-f65.google.com with SMTP id r16so14955755edq.11;
 Wed, 23 Oct 2019 00:42:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AU7J2BQRMw024ECt6R6ioM/TtE1t9QijD3q41c7WeI8=;
 b=TWCED0P0jgLbfejk7FyEDYIy8ZUxZG/EghMiKnfUz7DX91KATCjI1aZJSXZbrlTjbG
 RkoLvX+/9o52mvWRQqiIDYEgpcfOwAOkyA0EvgrsM+0wsEOEhdnehQfREiHdI6x5Ai78
 EA2pmNliQ6qkb/JN6xrh0WjO2f9D8xtVF1SS4+P0TGlwnMuAEZlOOJXhXDIEdvsyikFK
 nejOMfGjbLRfv+YDJsiGsurYy89sTods849RIImZgLkqmaINqKUdUWG3mi+4MU7fyw/I
 YiQptzU3qkZWDkXANM1y8NJAj6R9lpgRKwz9sGqdUix0ngbAvyy6z9/JvM7TM2+PETlj
 hOJQ==
X-Gm-Message-State: APjAAAUWKMQa0324PT+r9kmbuObWvnlXYcXUIX8KpUwwR3MesQny8w+T
 F5zvdFdcYdheyNSZI1zjAOo=
X-Google-Smtp-Source: APXvYqyIo0zrvOx1lKVcqkD7eMOgL0LqCI6jG9oIM1xe4DZRN0Cttzr0r+JRNnfhx/l37emgBXu7/g==
X-Received: by 2002:a17:906:1c48:: with SMTP id
 l8mr16067535ejg.203.1571816531653; 
 Wed, 23 Oct 2019 00:42:11 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id v8sm836300edi.49.2019.10.23.00.42.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 00:42:10 -0700 (PDT)
Date: Wed, 23 Oct 2019 09:42:06 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: power: Convert Generic Power Domain
 bindings to json-schema
Message-ID: <20191023074206.GA10189@pi3>
References: <20191002160632.11140-1-krzk@kernel.org>
 <20191011150339.GA16245@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011150339.GA16245@bogus>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_004217_638224_AA7E9AE7 
X-CRM114-Status: GOOD (  24.76  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-pci@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, etnaviv@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>,
 linux-usb@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 10:03:39AM -0500, Rob Herring wrote:
> On Wed, Oct 02, 2019 at 06:06:30PM +0200, Krzysztof Kozlowski wrote:
> > Convert Generic Power Domain bindings to DT schema format using
> > json-schema.  The consumer bindings are split to separate file.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > 
> > ---
> > 
> > Changes since v1:
> > 1. Select all nodes for consumers,
> > 2. Remove from consumers duplicated properties with dt-schema,
> > 3. Fix power domain pattern,
> > 4. Remove unneeded types.
> > ---
> >  .../devicetree/bindings/arm/arm,scmi.txt      |   2 +-
> >  .../devicetree/bindings/arm/arm,scpi.txt      |   2 +-
> >  .../bindings/arm/freescale/fsl,scu.txt        |   2 +-
> >  .../bindings/clock/clk-exynos-audss.txt       |   2 +-
> >  .../bindings/clock/exynos5433-clock.txt       |   4 +-
> >  .../bindings/clock/renesas,cpg-mssr.txt       |   2 +-
> >  .../clock/renesas,r8a7778-cpg-clocks.txt      |   2 +-
> >  .../clock/renesas,r8a7779-cpg-clocks.txt      |   2 +-
> >  .../clock/renesas,rcar-gen2-cpg-clocks.txt    |   2 +-
> >  .../bindings/clock/renesas,rz-cpg-clocks.txt  |   2 +-
> >  .../bindings/clock/ti/davinci/psc.txt         |   2 +-
> >  .../bindings/display/etnaviv/etnaviv-drm.txt  |   2 +-
> >  .../devicetree/bindings/display/msm/dpu.txt   |   2 +-
> >  .../devicetree/bindings/display/msm/mdp5.txt  |   2 +-
> >  .../devicetree/bindings/dsp/fsl,dsp.yaml      |   2 +-
> >  .../firmware/nvidia,tegra186-bpmp.txt         |   2 +-
> >  .../bindings/media/imx7-mipi-csi2.txt         |   3 +-
> >  .../bindings/media/mediatek-jpeg-decoder.txt  |   3 +-
> >  .../bindings/media/mediatek-mdp.txt           |   3 +-
> >  .../bindings/opp/qcom-nvmem-cpufreq.txt       |   2 +-
> >  .../devicetree/bindings/pci/pci-keystone.txt  |   2 +-
> >  .../bindings/phy/ti,phy-am654-serdes.txt      |   2 +-
> >  .../bindings/power/amlogic,meson-gx-pwrc.txt  |   2 +-
> >  .../devicetree/bindings/power/fsl,imx-gpc.txt |   2 +-
> >  .../bindings/power/fsl,imx-gpcv2.txt          |   2 +-
> >  .../power/power-domain-consumers.yaml         | 105 +++++++++
> >  .../bindings/power/power-domain.yaml          | 134 ++++++++++++
> >  .../bindings/power/power_domain.txt           | 205 ------------------
> >  .../devicetree/bindings/power/qcom,rpmpd.txt  |   2 +-
> >  .../bindings/power/renesas,rcar-sysc.txt      |   2 +-
> >  .../bindings/power/renesas,sysc-rmobile.txt   |   2 +-
> >  .../bindings/power/xlnx,zynqmp-genpd.txt      |   2 +-
> >  .../bindings/soc/bcm/brcm,bcm2835-pm.txt      |   2 +-
> >  .../bindings/soc/mediatek/scpsys.txt          |   2 +-
> >  .../bindings/soc/ti/sci-pm-domain.txt         |   2 +-
> >  .../bindings/usb/nvidia,tegra124-xusb.txt     |   4 +-
> >  MAINTAINERS                                   |   2 +-
> >  37 files changed, 278 insertions(+), 241 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/power/power-domain-consumers.yaml
> >  create mode 100644 Documentation/devicetree/bindings/power/power-domain.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/power/power_domain.txt
> 
> 
> > diff --git a/Documentation/devicetree/bindings/power/power-domain-consumers.yaml b/Documentation/devicetree/bindings/power/power-domain-consumers.yaml
> > new file mode 100644
> > index 000000000000..f65078e1260e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/power/power-domain-consumers.yaml
> > @@ -0,0 +1,105 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/power/power-domain-consumers.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: PM domain consumers
> > +
> > +maintainers:
> > +  - Rafael J. Wysocki <rjw@rjwysocki.net>
> > +  - Kevin Hilman <khilman@kernel.org>
> > +  - Ulf Hansson <ulf.hansson@linaro.org>
> > +
> > +description: |+
> > +  See power-domain.yaml
> > +
> > +select: true
> > +
> > +allOf:
> > +  - $ref: /schemas/power-domain/power-domain-consumer.yaml
> 
> I don't like this split. We should move the contents of this file to the 
> above file.
> 
> I checked the authorship of the relevant lines and they are all except 
> for a small number of lines from Linaro authors (Viresh and Ulf). I have 
> permission from Linaro to dual license Linaro authored bindings, so it's 
> not a problem to move this. I can do that and you can just drop this file.

Sure, what to do with the references to power-domain consumers part? I
could leave the text file and do not update the references for
consumers (like I did in last PWM bindings patch, v4).


Best regards,
Krzysztof

> 
> > +
> > +properties:
> > +  required-opps:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      This contains phandle to an OPP node in another device's OPP table.
> > +      It may contain an array of phandles, where each phandle points to an OPP
> > +      of a different device. It should not contain multiple phandles to the OPP
> > +      nodes in the same OPP table. This specifies the minimum required OPP
> > +      of the device(s), whose OPP's phandle is present in this property,
> > +      for the functioning of the current device at the current OPP (where this
> > +      property is present).
> > +
> > +examples:
> > +  - |
> > +    leaky-device@12350000 {
> > +      compatible = "foo,i-leak-current";
> > +      reg = <0x12350000 0x1000>;
> > +      power-domains = <&power 0>;
> > +      power-domain-names = "io";
> > +    };
> > +
> > +    leaky-device@12351000 {
> > +      compatible = "foo,i-leak-current";
> > +      reg = <0x12351000 0x1000>;
> > +      power-domains = <&power 0>, <&power 1> ;
> > +      power-domain-names = "io", "clk";
> > +    };
> > +
> > +    // The first example above defines a typical PM domain consumer device, which is
> > +    // located inside a PM domain with index 0 of a power controller represented by a
> > +    // node with the label "power".
> > +    // In the second example the consumer device are partitioned across two PM domains,
> > +    // the first with index 0 and the second with index 1, of a power controller that
> > +    // is represented by a node with the label "power".
> > +
> > +  - |
> > +    // Example with  OPP table for domain provider that provides two domains:
> > +
> > +    domain0_opp_table: opp-table0 {
> > +      compatible = "operating-points-v2";
> > +
> > +      domain0_opp_0: opp-1000000000 {
> > +        opp-hz = /bits/ 64 <1000000000>;
> > +        opp-microvolt = <975000 970000 985000>;
> > +      };
> > +      domain0_opp_1: opp-1100000000 {
> > +        opp-hz = /bits/ 64 <1100000000>;
> > +        opp-microvolt = <1000000 980000 1010000>;
> > +      };
> > +    };
> > +
> > +    domain1_opp_table: opp-table1 {
> > +      compatible = "operating-points-v2";
> > +
> > +      domain1_opp_0: opp-1200000000 {
> > +        opp-hz = /bits/ 64 <1200000000>;
> > +        opp-microvolt = <975000 970000 985000>;
> > +      };
> > +      domain1_opp_1: opp-1300000000 {
> > +        opp-hz = /bits/ 64 <1300000000>;
> > +        opp-microvolt = <1000000 980000 1010000>;
> > +      };
> > +    };
> > +
> > +    power: power-controller@12340000 {
> > +      compatible = "foo,power-controller";
> > +      reg = <0x12340000 0x1000>;
> > +      #power-domain-cells = <1>;
> > +      operating-points-v2 = <&domain0_opp_table>, <&domain1_opp_table>;
> > +    };
> > +
> > +    leaky-device0@12350000 {
> > +      compatible = "foo,i-leak-current";
> > +      reg = <0x12350000 0x1000>;
> > +      power-domains = <&power 0>;
> > +      required-opps = <&domain0_opp_0>;
> > +    };
> > +
> > +    leaky-device1@12350000 {
> > +      compatible = "foo,i-leak-current";
> > +      reg = <0x12350000 0x1000>;
> > +      power-domains = <&power 1>;
> > +      required-opps = <&domain1_opp_1>;
> > +    };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
