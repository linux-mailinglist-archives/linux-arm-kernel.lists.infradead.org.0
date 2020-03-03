Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C651784BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 22:18:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPP7s7NiH4xxUucHEEKzbh33lytklPRGbZva/S/hNfs=; b=dgSLk9E5ZnsokQ
	joLu0bTCwsWZOFcXRUAPZdJ2FUD63ZC31PokcZ+BB/bJstcO6j+OVRdT0Zo6rdPB0lfqtBN8tmRG1
	i5wAM8n4aLZhO+d6CQhcIag2rLmx+Lxt64AwvNZU0uKPr5P0bCmk5zjqyEeOg9WnNiwLbYtkyx1z4
	bmEwGHLquZbKf05gl88Uxg366r4cBYvj3LKjxLR9hdDaxLzHANDS7do8068Pa9A+WFG8NkaC0W143
	VlL5A619MV7qTRVYjOCbHoNZXvZaJxRCsn5uRzFzVLeN3J9wFPkIj/lDfmyhFwo/r4HL3v2gPXUT1
	IKWEHb5w5GjdBsrMvebQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9EvU-000244-BD; Tue, 03 Mar 2020 21:18:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9EvL-00023F-D2
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 21:17:57 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7BF142146E
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Mar 2020 21:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583270274;
 bh=u+IJrtkDmmILKrB777JfXIiXu/1W6oLqMP+I5yJnh2M=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=n7g6PctrjHyalDBnUVzVVtTQjjls7cc/u2J+8JdC+r3e1d5flgOXBXR4FZ7tLvpMA
 7b6gwv5T1fiWDXqgIKGMuRwTHLdGVZ3flfrT6tvxBWzb4Z7zLJ2u8aar3WcPRYv3Rh
 3GQsCWIQ0Zl4mpqcqP4EnNO2W3gTAEZjygyMVAfo=
Received: by mail-qk1-f178.google.com with SMTP id f198so4917708qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 13:17:54 -0800 (PST)
X-Gm-Message-State: ANhLgQ3RQSi+NAVP9uksNpRKlnPg0X3k1lUabf/fGVsxpc3V+SmTdmNK
 WlVVvu3CeKqeuoO1HDcQdnz2L2TlnPWr+2sEKQ==
X-Google-Smtp-Source: ADFU+vtMU23sEGul4xIS3cOxg5HrzR9E2uToGkQ9bXIiwRYCwLzdQ482f+A1Bjc2x/VSMmCDsUDzaUn2JS5rGNey7YY=
X-Received: by 2002:a05:620a:12a3:: with SMTP id
 x3mr31904qki.254.1583270273440; 
 Tue, 03 Mar 2020 13:17:53 -0800 (PST)
MIME-Version: 1.0
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
 <20200303150749.30566-4-ulf.hansson@linaro.org> <20200303170232.GA26191@bogus>
 <CAPDyKFrgbnDR2q2Aw7HPhosBprgR43ohXmNMLya_bRry4GqtoQ@mail.gmail.com>
In-Reply-To: <CAPDyKFrgbnDR2q2Aw7HPhosBprgR43ohXmNMLya_bRry4GqtoQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 3 Mar 2020 15:17:42 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+T0VxPMRAvmEOnKi14eQiciRqOEQAo1GT8EG9jp=BNng@mail.gmail.com>
Message-ID: <CAL_Jsq+T0VxPMRAvmEOnKi14eQiciRqOEQAo1GT8EG9jp=BNng@mail.gmail.com>
Subject: Re: [PATCH 3/7] dt-bindings: power: Convert domain-idle-states
 bindings to json-schema
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_131755_486794_699FAD37 
X-CRM114-Status: GOOD (  30.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, Mar 3, 2020 at 2:46 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Tue, 3 Mar 2020 at 18:02, Rob Herring <robh@kernel.org> wrote:
> >
> > On Tue, Mar 03, 2020 at 04:07:45PM +0100, Ulf Hansson wrote:
> > > While converting to the json-schema, let's also take the opportunity to
> > > further specify/clarify some more details about the DT binding.
> > >
> > > For example, let's define the label where to put the states nodes, set a
> > > pattern for nodename of the state nodes and finally add an example.
> > >
> > > Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > ---
> > >  .../devicetree/bindings/arm/psci.yaml         |  2 +-
> > >  .../bindings/power/domain-idle-state.txt      | 33 ---------
> > >  .../bindings/power/domain-idle-state.yaml     | 67 +++++++++++++++++++
> > >  .../bindings/power/power-domain.yaml          | 22 +++---
> > >  .../bindings/power/power_domain.txt           |  2 +-
> > >  5 files changed, 79 insertions(+), 47 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/power/domain-idle-state.txt
> > >  create mode 100644 Documentation/devicetree/bindings/power/domain-idle-state.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> > > index 540211a080d4..0bc3c43a525a 100644
> > > --- a/Documentation/devicetree/bindings/arm/psci.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> > > @@ -123,7 +123,7 @@ properties:
> > >        to mandate it.
> > >
> > >        [3] Documentation/devicetree/bindings/power/power_domain.txt
> > > -      [4] Documentation/devicetree/bindings/power/domain-idle-state.txt
> > > +      [4] Documentation/devicetree/bindings/power/domain-idle-state.yaml
> > >
> > >    power-domains:
> > >      $ref: '/schemas/types.yaml#/definitions/phandle-array'
> > > diff --git a/Documentation/devicetree/bindings/power/domain-idle-state.txt b/Documentation/devicetree/bindings/power/domain-idle-state.txt
> > > deleted file mode 100644
> > > index eefc7ed22ca2..000000000000
> > > --- a/Documentation/devicetree/bindings/power/domain-idle-state.txt
> > > +++ /dev/null
> > > @@ -1,33 +0,0 @@
> > > -PM Domain Idle State Node:
> > > -
> > > -A domain idle state node represents the state parameters that will be used to
> > > -select the state when there are no active components in the domain.
> > > -
> > > -The state node has the following parameters -
> > > -
> > > -- compatible:
> > > -     Usage: Required
> > > -     Value type: <string>
> > > -     Definition: Must be "domain-idle-state".
> > > -
> > > -- entry-latency-us
> > > -     Usage: Required
> > > -     Value type: <prop-encoded-array>
> > > -     Definition: u32 value representing worst case latency in
> > > -                 microseconds required to enter the idle state.
> > > -                 The exit-latency-us duration may be guaranteed
> > > -                 only after entry-latency-us has passed.
> > > -
> > > -- exit-latency-us
> > > -     Usage: Required
> > > -     Value type: <prop-encoded-array>
> > > -     Definition: u32 value representing worst case latency
> > > -                 in microseconds required to exit the idle state.
> > > -
> > > -- min-residency-us
> > > -     Usage: Required
> > > -     Value type: <prop-encoded-array>
> > > -     Definition: u32 value representing minimum residency duration
> > > -                 in microseconds after which the idle state will yield
> > > -                 power benefits after overcoming the overhead in entering
> > > -i                the idle state.
> > > diff --git a/Documentation/devicetree/bindings/power/domain-idle-state.yaml b/Documentation/devicetree/bindings/power/domain-idle-state.yaml
> > > new file mode 100644
> > > index 000000000000..27da43076b85
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/power/domain-idle-state.yaml
> > > @@ -0,0 +1,67 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/power/domain-idle-state.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: PM Domain Idle States binding description
> > > +
> > > +maintainers:
> > > +  - Ulf Hansson <ulf.hansson@linaro.org>
> > > +
> > > +description:
> > > +  A domain idle state node represents the state parameters that will be used to
> > > +  select the state when there are no active components in the PM domain.
> > > +
> > > +properties:
> > > +  $nodename:
> > > +    const: domain-idle-states
> > > +
> > > +patternProperties:
> > > +  "^(cpu|cluster|domain)-":
> > > +    type: object
> > > +    description:
> > > +      Each state node represents a domain idle state description.
> > > +
> > > +    properties:
> > > +      compatible:
> > > +        const: domain-idle-state
> > > +
> > > +      entry-latency-us:
> > > +        $ref: /schemas/types.yaml#/definitions/uint32
> >
> > You don't need a type because the core schema defines it for all
> > standard units.
>
> Okay, I noticed some skips this, but wanted rather to clear and fuzzy.
>
> In any case, yes, let's remove it.
>
> >
> > > +        description:
> > > +          The worst case latency in microseconds required to enter the idle
> > > +          state. Note that, the exit-latency-us duration may be guaranteed only
> > > +          after the entry-latency-us has passed.
> > > +
> > > +      exit-latency-us:
> > > +        $ref: /schemas/types.yaml#/definitions/uint32
> > > +        description:
> > > +          The worst case latency in microseconds required to exit the idle
> > > +          state.
> > > +
> > > +      min-residency-us:
> > > +        $ref: /schemas/types.yaml#/definitions/uint32
> > > +        description:
> > > +          The minimum residency duration in microseconds after which the idle
> > > +          state will yield power benefits, after overcoming the overhead while
> > > +          entering the idle state.
> > > +
> > > +    required:
> > > +      - compatible
> > > +      - entry-latency-us
> > > +      - exit-latency-us
> > > +      - min-residency-us
> >
> >        additionalProperties: false
> >
> > Do we have cases of adding additional properties?
>
> I might, but I am not sure what's the correct way to deal with that.

I was thinking more like a vendor adding properties. Is this a base
class that can be extended or every possible property is defined here.
Actually, with the matching on $nodename, we have to put any additions
in here or do a custom 'select'. In any case, I think we can cross
than when/if we get there.

> What I am wondering about is the "arm,psci-suspend-param" property,
> currently defined as part of the PSCI bindings (psci.yaml).
>
> I am not sure that's correct to define it as a PSCI binding. Shouldn't
> it rather be a part of the idle state bindings (idle-states.yaml) and
> the domain idle states binding ($subject patch)?

Indeed it should be moved here.

>
> What do you think?
>
> In any case, we probably want to fix this on top, if we should care.

Yes, that's fine.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
