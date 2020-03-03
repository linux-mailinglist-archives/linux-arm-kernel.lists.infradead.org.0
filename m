Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D448178442
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 21:46:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7DWAFFozToYSt+88cTfg0orlSjjXESRtP6kHdohxZE=; b=P1bImWI0wWMC+P
	4Z+rn5GpuheOKTQShH+rbdS4sOamyn8sSSF9mgzHYk7o4sWVgdGCM8v4rAOFSKMt6kbT449CMl7B3
	+tp9TEgaBBNb5YR+NLxSmTxtheDreHm/IcpLRZ6WXIado8vqxsnh5BXeAlQqJVXg9jyHjtVPEltZX
	xSuZCQXfoUIqE5k0Vc1SX0FKO19Vk7ZU4l0NKSiqhMG8V6X0qEk3hJpT/EjXahM8tvd7uvesobMbU
	0aIGC5GOqaF9U3mHJK38+mK68yQBrOtCk3py8dUcCjm70o6c7cm6ieSVnUGWISzNsJLd6gxnnjjac
	lrFRlME6QzTtcDKRwKmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9EQs-0000X1-Hz; Tue, 03 Mar 2020 20:46:26 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9EQj-0000WN-Rw
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 20:46:19 +0000
Received: by mail-vs1-xe44.google.com with SMTP id r18so3353108vso.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 12:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7L4eJdYzEWt9OU7Eb6955CnoA1Bc4Uk+/BMUtBI5Efw=;
 b=EajGJc2UriF5GG1JUfXsGdRCrJrlHHOSrWyfJ88FE1mCrdqfTUHe44b+g5uDWOWE1P
 OHAPcvPTYYVHavrAPdMA7YfBas8pD2G6Q0qt/RVqbzRGZ/+crz3s2RFuJKtOVgHGIgFs
 uE6ekqsvvRTNIRqD1vs+x/nVKEsgbiJ+y9HXufoGQ7ETMPTCYXe8q+GPsGpv0QO+kgzi
 k0oUKOf9qRGCy2ND98qTJssy8yVPIbe07vuHwwdIU2bMY/6pDKyJNXq4YFQgdPwiJAEt
 Tr3yNrqTGMta2JPQtHizVe+3rjTu5CW+Orf+2vU8yELfXOQdomU9M5ukneMjkg70HfQC
 GlFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7L4eJdYzEWt9OU7Eb6955CnoA1Bc4Uk+/BMUtBI5Efw=;
 b=Uw0P00/v5bLua6tDQ6ynIIn05XSI23UjNI2NI2OrtFrQtclIovwrz+P1U8gVgtJzKV
 wa5S7oEcL0xeKp/l4oLiZQDe48rPQhdfPj2qJEGRsK2Ks9g4M62pPQOyqWj0+/qJo4XT
 LOENF4o+iucB52cVekArJu4cRUVQbklbocf5RnVGiE1tCUaZT/qUvtAHdH99CvLYB1t/
 Lqsu+ejkD80o+nxNAXV1EEP6gB6UAIElrIUjVI3w0CfmdNCCYiU67VXXupfKwGfApQtW
 T3yeveWPS/z6LneRlCfQfM2tc8+WyzTUeu/FQeQVtjZO9p31iHIaQRYSC/D8WJHdyHrA
 DzrQ==
X-Gm-Message-State: ANhLgQ3a4ewIxDRXQ3xJL0kIFPKBMfXoP9a+1/GWv9LcJGtc/YT+kp7Q
 mhQ78+31/dcGDi5+R5sf6PpdGzz97BAYV8nIIKB4eQ==
X-Google-Smtp-Source: ADFU+vs5Geo/nfXYUy3+nQ5/6sjz1pvP6CtSd2BjNvOeDErJnDZvTjqTBd0O+W+/8FOZxGqhfYYRBraBqmjwiLn2eTA=
X-Received: by 2002:a67:800e:: with SMTP id b14mr2363089vsd.191.1583268371719; 
 Tue, 03 Mar 2020 12:46:11 -0800 (PST)
MIME-Version: 1.0
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
 <20200303150749.30566-4-ulf.hansson@linaro.org> <20200303170232.GA26191@bogus>
In-Reply-To: <20200303170232.GA26191@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 3 Mar 2020 21:45:35 +0100
Message-ID: <CAPDyKFrgbnDR2q2Aw7HPhosBprgR43ohXmNMLya_bRry4GqtoQ@mail.gmail.com>
Subject: Re: [PATCH 3/7] dt-bindings: power: Convert domain-idle-states
 bindings to json-schema
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_124617_906054_33D1185E 
X-CRM114-Status: GOOD (  25.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Mar 2020 at 18:02, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Mar 03, 2020 at 04:07:45PM +0100, Ulf Hansson wrote:
> > While converting to the json-schema, let's also take the opportunity to
> > further specify/clarify some more details about the DT binding.
> >
> > For example, let's define the label where to put the states nodes, set a
> > pattern for nodename of the state nodes and finally add an example.
> >
> > Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  .../devicetree/bindings/arm/psci.yaml         |  2 +-
> >  .../bindings/power/domain-idle-state.txt      | 33 ---------
> >  .../bindings/power/domain-idle-state.yaml     | 67 +++++++++++++++++++
> >  .../bindings/power/power-domain.yaml          | 22 +++---
> >  .../bindings/power/power_domain.txt           |  2 +-
> >  5 files changed, 79 insertions(+), 47 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/power/domain-idle-state.txt
> >  create mode 100644 Documentation/devicetree/bindings/power/domain-idle-state.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> > index 540211a080d4..0bc3c43a525a 100644
> > --- a/Documentation/devicetree/bindings/arm/psci.yaml
> > +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> > @@ -123,7 +123,7 @@ properties:
> >        to mandate it.
> >
> >        [3] Documentation/devicetree/bindings/power/power_domain.txt
> > -      [4] Documentation/devicetree/bindings/power/domain-idle-state.txt
> > +      [4] Documentation/devicetree/bindings/power/domain-idle-state.yaml
> >
> >    power-domains:
> >      $ref: '/schemas/types.yaml#/definitions/phandle-array'
> > diff --git a/Documentation/devicetree/bindings/power/domain-idle-state.txt b/Documentation/devicetree/bindings/power/domain-idle-state.txt
> > deleted file mode 100644
> > index eefc7ed22ca2..000000000000
> > --- a/Documentation/devicetree/bindings/power/domain-idle-state.txt
> > +++ /dev/null
> > @@ -1,33 +0,0 @@
> > -PM Domain Idle State Node:
> > -
> > -A domain idle state node represents the state parameters that will be used to
> > -select the state when there are no active components in the domain.
> > -
> > -The state node has the following parameters -
> > -
> > -- compatible:
> > -     Usage: Required
> > -     Value type: <string>
> > -     Definition: Must be "domain-idle-state".
> > -
> > -- entry-latency-us
> > -     Usage: Required
> > -     Value type: <prop-encoded-array>
> > -     Definition: u32 value representing worst case latency in
> > -                 microseconds required to enter the idle state.
> > -                 The exit-latency-us duration may be guaranteed
> > -                 only after entry-latency-us has passed.
> > -
> > -- exit-latency-us
> > -     Usage: Required
> > -     Value type: <prop-encoded-array>
> > -     Definition: u32 value representing worst case latency
> > -                 in microseconds required to exit the idle state.
> > -
> > -- min-residency-us
> > -     Usage: Required
> > -     Value type: <prop-encoded-array>
> > -     Definition: u32 value representing minimum residency duration
> > -                 in microseconds after which the idle state will yield
> > -                 power benefits after overcoming the overhead in entering
> > -i                the idle state.
> > diff --git a/Documentation/devicetree/bindings/power/domain-idle-state.yaml b/Documentation/devicetree/bindings/power/domain-idle-state.yaml
> > new file mode 100644
> > index 000000000000..27da43076b85
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/power/domain-idle-state.yaml
> > @@ -0,0 +1,67 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/power/domain-idle-state.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: PM Domain Idle States binding description
> > +
> > +maintainers:
> > +  - Ulf Hansson <ulf.hansson@linaro.org>
> > +
> > +description:
> > +  A domain idle state node represents the state parameters that will be used to
> > +  select the state when there are no active components in the PM domain.
> > +
> > +properties:
> > +  $nodename:
> > +    const: domain-idle-states
> > +
> > +patternProperties:
> > +  "^(cpu|cluster|domain)-":
> > +    type: object
> > +    description:
> > +      Each state node represents a domain idle state description.
> > +
> > +    properties:
> > +      compatible:
> > +        const: domain-idle-state
> > +
> > +      entry-latency-us:
> > +        $ref: /schemas/types.yaml#/definitions/uint32
>
> You don't need a type because the core schema defines it for all
> standard units.

Okay, I noticed some skips this, but wanted rather to clear and fuzzy.

In any case, yes, let's remove it.

>
> > +        description:
> > +          The worst case latency in microseconds required to enter the idle
> > +          state. Note that, the exit-latency-us duration may be guaranteed only
> > +          after the entry-latency-us has passed.
> > +
> > +      exit-latency-us:
> > +        $ref: /schemas/types.yaml#/definitions/uint32
> > +        description:
> > +          The worst case latency in microseconds required to exit the idle
> > +          state.
> > +
> > +      min-residency-us:
> > +        $ref: /schemas/types.yaml#/definitions/uint32
> > +        description:
> > +          The minimum residency duration in microseconds after which the idle
> > +          state will yield power benefits, after overcoming the overhead while
> > +          entering the idle state.
> > +
> > +    required:
> > +      - compatible
> > +      - entry-latency-us
> > +      - exit-latency-us
> > +      - min-residency-us
>
>        additionalProperties: false
>
> Do we have cases of adding additional properties?

I might, but I am not sure what's the correct way to deal with that.

What I am wondering about is the "arm,psci-suspend-param" property,
currently defined as part of the PSCI bindings (psci.yaml).

I am not sure that's correct to define it as a PSCI binding. Shouldn't
it rather be a part of the idle state bindings (idle-states.yaml) and
the domain idle states binding ($subject patch)?

What do you think?

In any case, we probably want to fix this on top, if we should care.

>
> I can fix these up when applying.

Thanks a lot!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
