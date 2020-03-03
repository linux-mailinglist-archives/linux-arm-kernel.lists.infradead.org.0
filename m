Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40051177CAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 18:02:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3mp696BatUzQIIaChMEs3C8TvtQUFxM2kwj4Y1vyIM=; b=H4kPeyI4i087PW
	7f4aqjSRdUmMNWTxeIaJha1l0cszOuv/mlPZ5vYV3fW6XON/Fk6bNURibhTJJnU/y9c22Q3p4lKmQ
	W3aajjfb5tmI2NTp7XBj4ex6QTNgNin6Nh4+4T6127XAqa9I5JvrzgUwwBWgawXrDvLtLXtIdKa0k
	3wRXFQl+mBZyk0M+mlkbrMZizOhBldpFGM+BubFi0lW1fiwPk4iOwZSm/Hxjc6AxwlrCR2rVO/BL4
	icV6KQ4eHNF3pXv7FR7Cx9X+7ZhZJQid6HGub7g65Gjnq9DhGK38ULKvNPmjnbWw6XTQMxJfm7V/R
	ItIfIrUqkEf8Soe1PwDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9AwR-0000BH-BW; Tue, 03 Mar 2020 17:02:47 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9AwK-0000AH-Ed
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 17:02:42 +0000
Received: by mail-oi1-f196.google.com with SMTP id j80so3735494oih.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 09:02:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8kKpSbpaA0ng8YEkQSINQ3r4/4jqo4CKQTEPdV6/BRw=;
 b=cwO3hiLXQ42NFON5TZqAJsS7XYH7WVS0jQ/fNpDbfAh84vOqY9kEGY6l3GDX5yAP1R
 topdpJkY6GmvY+cOk1jmY6xQqIGBMoFnDt3QzoKMMDsncfUzqlggNmJZmGOZQI58U2s3
 S5nwmA28JdCvBKO7cgv2ieT/3oRa0Sf3GXem/7enBHUkenOtG9UXgGL+DYbnKyFuD81c
 dMjVoYN34p9DVhtaAHWyzHEXxrqvNNCs22OrE4YPbkckSpST8b1012SWf0udh96Z6RdI
 8S6tkF/9QQwBbNTf29ixCLCSi7lMCSDIeP4KKD57x3gdF1zh/KT+XPhUgRX2NEwgYt8d
 cFvw==
X-Gm-Message-State: ANhLgQ05wOrXBQMDJJC9Uh0NOGdfWfBmqVWxEAnP66UVkqXCwOwifQDI
 IP4Aq3Z3vsCr+Hau6V81xw==
X-Google-Smtp-Source: ADFU+vvEQfPygs1sXv3/t9WnuW0flPvlY/t1wIiM5OQ2yzNmdPGlR0ZW8uthJFyAM3EtuYBRj4z0cg==
X-Received: by 2002:aca:1c01:: with SMTP id c1mr3164809oic.18.1583254957380;
 Tue, 03 Mar 2020 09:02:37 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a14sm8080946otr.54.2020.03.03.09.02.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 09:02:35 -0800 (PST)
Received: (nullmailer pid 6336 invoked by uid 1000);
 Tue, 03 Mar 2020 17:02:32 -0000
Date: Tue, 3 Mar 2020 11:02:32 -0600
From: Rob Herring <robh@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 3/7] dt-bindings: power: Convert domain-idle-states
 bindings to json-schema
Message-ID: <20200303170232.GA26191@bogus>
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
 <20200303150749.30566-4-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303150749.30566-4-ulf.hansson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_090240_494013_F2C444DC 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 04:07:45PM +0100, Ulf Hansson wrote:
> While converting to the json-schema, let's also take the opportunity to
> further specify/clarify some more details about the DT binding.
> 
> For example, let's define the label where to put the states nodes, set a
> pattern for nodename of the state nodes and finally add an example.
> 
> Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  .../devicetree/bindings/arm/psci.yaml         |  2 +-
>  .../bindings/power/domain-idle-state.txt      | 33 ---------
>  .../bindings/power/domain-idle-state.yaml     | 67 +++++++++++++++++++
>  .../bindings/power/power-domain.yaml          | 22 +++---
>  .../bindings/power/power_domain.txt           |  2 +-
>  5 files changed, 79 insertions(+), 47 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/power/domain-idle-state.txt
>  create mode 100644 Documentation/devicetree/bindings/power/domain-idle-state.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> index 540211a080d4..0bc3c43a525a 100644
> --- a/Documentation/devicetree/bindings/arm/psci.yaml
> +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> @@ -123,7 +123,7 @@ properties:
>        to mandate it.
>  
>        [3] Documentation/devicetree/bindings/power/power_domain.txt
> -      [4] Documentation/devicetree/bindings/power/domain-idle-state.txt
> +      [4] Documentation/devicetree/bindings/power/domain-idle-state.yaml
>  
>    power-domains:
>      $ref: '/schemas/types.yaml#/definitions/phandle-array'
> diff --git a/Documentation/devicetree/bindings/power/domain-idle-state.txt b/Documentation/devicetree/bindings/power/domain-idle-state.txt
> deleted file mode 100644
> index eefc7ed22ca2..000000000000
> --- a/Documentation/devicetree/bindings/power/domain-idle-state.txt
> +++ /dev/null
> @@ -1,33 +0,0 @@
> -PM Domain Idle State Node:
> -
> -A domain idle state node represents the state parameters that will be used to
> -select the state when there are no active components in the domain.
> -
> -The state node has the following parameters -
> -
> -- compatible:
> -	Usage: Required
> -	Value type: <string>
> -	Definition: Must be "domain-idle-state".
> -
> -- entry-latency-us
> -	Usage: Required
> -	Value type: <prop-encoded-array>
> -	Definition: u32 value representing worst case latency in
> -		    microseconds required to enter the idle state.
> -		    The exit-latency-us duration may be guaranteed
> -		    only after entry-latency-us has passed.
> -
> -- exit-latency-us
> -	Usage: Required
> -	Value type: <prop-encoded-array>
> -	Definition: u32 value representing worst case latency
> -		    in microseconds required to exit the idle state.
> -
> -- min-residency-us
> -	Usage: Required
> -	Value type: <prop-encoded-array>
> -	Definition: u32 value representing minimum residency duration
> -		    in microseconds after which the idle state will yield
> -		    power benefits after overcoming the overhead in entering
> -i		    the idle state.
> diff --git a/Documentation/devicetree/bindings/power/domain-idle-state.yaml b/Documentation/devicetree/bindings/power/domain-idle-state.yaml
> new file mode 100644
> index 000000000000..27da43076b85
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/domain-idle-state.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/domain-idle-state.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: PM Domain Idle States binding description
> +
> +maintainers:
> +  - Ulf Hansson <ulf.hansson@linaro.org>
> +
> +description:
> +  A domain idle state node represents the state parameters that will be used to
> +  select the state when there are no active components in the PM domain.
> +
> +properties:
> +  $nodename:
> +    const: domain-idle-states
> +
> +patternProperties:
> +  "^(cpu|cluster|domain)-":
> +    type: object
> +    description:
> +      Each state node represents a domain idle state description.
> +
> +    properties:
> +      compatible:
> +        const: domain-idle-state
> +
> +      entry-latency-us:
> +        $ref: /schemas/types.yaml#/definitions/uint32

You don't need a type because the core schema defines it for all 
standard units.

> +        description:
> +          The worst case latency in microseconds required to enter the idle
> +          state. Note that, the exit-latency-us duration may be guaranteed only
> +          after the entry-latency-us has passed.
> +
> +      exit-latency-us:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          The worst case latency in microseconds required to exit the idle
> +          state.
> +
> +      min-residency-us:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          The minimum residency duration in microseconds after which the idle
> +          state will yield power benefits, after overcoming the overhead while
> +          entering the idle state.
> +
> +    required:
> +      - compatible
> +      - entry-latency-us
> +      - exit-latency-us
> +      - min-residency-us

       additionalProperties: false 

Do we have cases of adding additional properties?

I can fix these up when applying.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
