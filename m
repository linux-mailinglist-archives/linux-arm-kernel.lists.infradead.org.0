Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F556140FFD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 18:37:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yR+t+P4XlRLwZQObMzm4uZnN/3mhAwHv6aeDOTpJaUU=; b=MU4qkm0Fb9SR5e
	Ppr0cK+teR1UqOBN5uG5LME5pdIlu05q02yQJ0eoB6Iafdlr+vKKb/bUE0TMjGwrg1FzRVuZteBTt
	OpwmkLO9V5XtAR1DT6WmAVMr5ERqsd0fJ5JMXcPo3AKGgdLVdHvMEbJdVt8rr5+TD4n+ZRlfiIfvk
	dXyxgBuJLRq+kH16F1SKvzn40ReDYc2JbDq+iee06bH7/VeW8V4TVJUXJDeuZn/zougNMpaKUt//O
	7kkQSnovcxvwgUaBfx04QMhiIPPEpuDk7AeWBCaj9ZJHWjJY6BaRivIdhfoM6546Z6EBONL9fIDSi
	HQrEoGFonk/LL6HvIAOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isVYR-0002wg-Al; Fri, 17 Jan 2020 17:37:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isVYE-0002vz-Af
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 17:36:57 +0000
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
 [209.85.219.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC576217F4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 17:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579282611;
 bh=vDCZVp/FcLW/aGz1WHu3bi0n9EidF+HAX04JuVy4PrI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1hOjYWS3Qkq6rTAuU619rwJv+wtc/5pxJquZ/oIAcC9ETx5z+OrX2AsEe5TqbIlSJ
 BFbo4t46OPtxdEvN7h7ATZ02zynz4BOFnjdgrhu/x561NMIvvS2xWDjeyIUUWKqgwY
 3ArXG3pAwcPY1GjgIbdDhGjeXJZlO3oa+ReiQDWY=
Received: by mail-qv1-f44.google.com with SMTP id f16so11051613qvi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 09:36:50 -0800 (PST)
X-Gm-Message-State: APjAAAWNGPXh6EX6XCfK10pZh0Zss4UNPwXwKncxykihi4Gyjkamz3qt
 3O6y/dtnk8EwgTA93JD/6MzUSAGbrFw8+1iPFA==
X-Google-Smtp-Source: APXvYqyH3fEUTactgJ0BaAW5WWY1h5X/y9OVOooJp/se+1LCXi4CL/Irpeef5QaSvXQGRHEZtYmJQ/d34hBBo+Zj1+o=
X-Received: by 2002:a0c:f6cd:: with SMTP id d13mr8623223qvo.20.1579282609869; 
 Fri, 17 Jan 2020 09:36:49 -0800 (PST)
MIME-Version: 1.0
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
 <20191230144402.30195-3-ulf.hansson@linaro.org>
 <CAL_Jsq+cAKEGOMnBwwvLt03zx8Gcxh4ijziaBnnY5TPEG0Mekg@mail.gmail.com>
 <CAPDyKFr_7qmKjpWcFegVBsfKBJePtukuriwW-8KX6c2a24ojEA@mail.gmail.com>
 <CAL_JsqJN3UtM9T2D71j+2CORxWjL3s7cjkFX579p85WQuKgPNA@mail.gmail.com>
 <CAPDyKFq=0Y=79pFzxmnqA=oFbOVVJ9T2UthOie8ok5JTp7ucRw@mail.gmail.com>
In-Reply-To: <CAPDyKFq=0Y=79pFzxmnqA=oFbOVVJ9T2UthOie8ok5JTp7ucRw@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 17 Jan 2020 11:36:38 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+NvVC0Jjb_g0SDACG0Q-wTR+w-VHEq+wzsMLyXhcjX8g@mail.gmail.com>
Message-ID: <CAL_Jsq+NvVC0Jjb_g0SDACG0Q-wTR+w-VHEq+wzsMLyXhcjX8g@mail.gmail.com>
Subject: Re: [PATCH v5 02/15] dt: psci: Update DT bindings to support
 hierarchical PSCI states
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_093654_416381_967B96E8 
X-CRM114-Status: GOOD (  46.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Andy Gross <agross@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 10:42 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Thu, 16 Jan 2020 at 19:19, Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Tue, Jan 14, 2020 at 11:55 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > >
> > > On Mon, 13 Jan 2020 at 20:53, Rob Herring <robh+dt@kernel.org> wrote:
> > > >
> > > > On Mon, Dec 30, 2019 at 8:44 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > > > >
> > > > > Update PSCI DT bindings to allow to represent idle states for CPUs and the
> > > > > CPU topology, by using a hierarchical layout. Primarily this is done by
> > > > > re-using the existing DT bindings for PM domains [1] and for PM domain idle
> > > > > states [2].
> > > > >
> > > > > Let's also add an example into the document for the PSCI DT bindings, to
> > > > > clearly show the new hierarchical based layout. The currently supported
> > > > > flattened layout, is already described in the ARM idle states bindings [3],
> > > > > so let's leave that as is.
> > > > >
> > > > > [1] Documentation/devicetree/bindings/power/power_domain.txt
> > > > > [2] Documentation/devicetree/bindings/power/domain-idle-state.txt
> > > > > [3] Documentation/devicetree/bindings/arm/idle-states.txt
> > > > >
> > > > > Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> > > > > Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> > > > > Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> > > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > > ---
> > > > >
> > > > > Changes in v5:
> > > > >         - None.
> > > >
> > > > First I'm seeing this as the DT list was not copied. The example has
> > > > problems when running 'make dt_binding_check':
> > > >
> > > > Documentation/devicetree/bindings/arm/psci.example.dt.yaml: cpu@0:
> > > > compatible: Additional items are not allowed ('arm,armv8' was
> > > > unexpected)
> > > > Documentation/devicetree/bindings/arm/psci.example.dt.yaml: cpu@0:
> > > > compatible: ['arm,cortex-a53', 'arm,armv8'] is too long
> > > > Documentation/devicetree/bindings/arm/psci.example.dt.yaml: cpu@1:
> > > > compatible: Additional items are not allowed ('arm,armv8' was
> > > > unexpected)
> > > > Documentation/devicetree/bindings/arm/psci.example.dt.yaml: cpu@1:
> > > > compatible: ['arm,cortex-a57', 'arm,armv8'] is too long
> > > >
> > > > 'arm,armv8' is only valid for s/w models.
> > >
> > > Perhaps you have a different version of the tools than I have (I have
> > > tried both on v.5.5-rc5 and todays linux-next), because I can't
> > > reproduce these errors at my side when running "make
> > > dt_binding_check".
> > >
> > > Can you please check again?
> >
> > Are you setting DT_SCHEMA_FILES? If so, then arm/cpus.yaml (or any
> > other schema) isn't loaded and used for validation. That schema is the
> > source of this error.
>
> Yes. Aha, that's why then. Perhaps that needs to be clarified
> somewhere in the documentation of tool.

Patches welcome. :) I'm kind of tired of writing documentation that no
one comments on and and seemingly only sometimes read. </rant> :(

> Anyway, I used because it was kind of hard to process all the error
> output one gets when building all yaml files at once.

dtbs_check has a lot which is where setting DT_SCHEMA_FILES is
primarily useful. dt_binding_check should be error/warning free, but
yes linux-next and rc1/2 are frequently broken.

> > It is failing in my CI job:
> > https://gitlab.com/robherring/linux-dt-bindings/-/jobs/405298185
> >
> > Is dt-schema up to date? Though I can't think of any recent changes
> > that would impact this. This check has been there a while and I fixed
> > all the dts files.
> >
> > Do you see psci.example.dt.yaml getting built?
>
> Yes, but with using DT_SCHEMA_FILES.
>
> Anyway, now I can re-produced the errors, so then I should be able to
> fix them. :-)
>
> >
> > > > Documentation/devicetree/bindings/arm/psci.example.dt.yaml:
> > > > idle-states: cluster-retention:compatible:0: 'arm,idle-state' was
> > > > expected
> > > > Documentation/devicetree/bindings/arm/psci.example.dt.yaml:
> > > > idle-states: cluster-power-down:compatible:0: 'arm,idle-state' was
> > > > expected
> > > >
> > > > The last 2 are due to my conversion of the idle-states binding which
> > > > is in my tree now. Probably need to add 'domain-idle-state' as a
> > > > compatible at a minimum. It looks like domain-idle-state.txt is pretty
> > > > much the same as arm/idle-state.txt, so we should perhaps merge them.
> > >
> > > Ahh, so maybe *all* of the above problems are caused by conflicts in
> > > the arm-soc tree with changes from your tree!?
> >
> > Shouldn't be. arm/cpus.yaml has been in place for a few cycles now.
> >
> > >
> > > In regards to merging files, I am fine by that if that helps.
> > >
> > > >
> > > > There's some bigger issues though.
> > > >
> > > > > ---
> > > > >  .../devicetree/bindings/arm/cpus.yaml         |  15 +++
> > > > >  .../devicetree/bindings/arm/psci.yaml         | 104 ++++++++++++++++++
> > > > >  2 files changed, 119 insertions(+)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
> > > > > index c23c24ff7575..7a9c3ce2dbef 100644
> > > > > --- a/Documentation/devicetree/bindings/arm/cpus.yaml
> > > > > +++ b/Documentation/devicetree/bindings/arm/cpus.yaml
> > > > > @@ -242,6 +242,21 @@ properties:
> > > > >
> > > > >        where voltage is in V, frequency is in MHz.
> > > > >
> > > > > +  power-domains:
> > > > > +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> > > > > +    description:
> > > > > +      List of phandles and PM domain specifiers, as defined by bindings of the
> > > > > +      PM domain provider (see also ../power_domain.txt).
> > > > > +
> > > > > +  power-domain-names:
> > > > > +    $ref: '/schemas/types.yaml#/definitions/string-array'
> > > > > +    description:
> > > > > +      A list of power domain name strings sorted in the same order as the
> > > > > +      power-domains property.
> > > > > +
> > > > > +      For PSCI based platforms, the name corresponding to the index of the PSCI
> > > > > +      PM domain provider, must be "psci".
> > > > > +
> > > > >    qcom,saw:
> > > > >      $ref: '/schemas/types.yaml#/definitions/phandle'
> > > > >      description: |
> > > > > diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> > > > > index 7abdf58b335e..8ef85420b2ab 100644
> > > > > --- a/Documentation/devicetree/bindings/arm/psci.yaml
> > > > > +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> > > > > @@ -102,6 +102,34 @@ properties:
> > > > >        [1] Kernel documentation - ARM idle states bindings
> > > > >          Documentation/devicetree/bindings/arm/idle-states.txt
> > > > >
> > > > > +  "#power-domain-cells":
> > > >
> > > > This is wrong because you are saying the /psci node should have these
> > > > properties. You need to define the child nodes (at least a pattern you
> > > > can match on) and put these properties there.
> > >
> > > Right, good point.
> > >
> > > I searched for some similar examples for how to encode this, but
> > > couldn't really find something useful.
> >
> > You need something like:
> >
> > patternProperties:
> >   '^(cluster|cpu)-pd[0-9a-f]+$':
> >     type: object
> >     properties:
> >       ... and then the properties in the child nodes
> >
> > Note that its going to look weird for the 10th PD with 'cpu-pda'. So
> > maybe add a '-'.
> >
>
> Great, I try this! Thanks.
>
> > > One more thing, it seems like
> > > this change is also needed for the common power-domain bindings, as
> > > that also specifies parent/childs domains.
> >
> > Normally, we'd have a $ref to power-domain.yaml, but for that to work
> > here, you'll have to expand the node names ($nodename).
>
> Not sure I get that, but interpret this as it's not a good idea to use
> a $ref to power-domain.yaml. Right?

It means either this binding is odd or power-domain.yaml needs some
more work or both. Ideally, we only have 1 type definition of any
property name.

Probably the easiest thing to do is extend the node name pattern to
something like this:

pattern: "^(power-controller|power-domain)([@\-].*)?$"

And then name your nodes like this:

power-domain-cpu-0
power-domain-cluster

That's more consistent anyways.

> > > Anyway, I would really appreciate if you can suggest something more
> > > detailed for you think this should be done!?
> > >
> > > >
> > > > > +    description:
> > > > > +      The number of cells in a PM domain specifier as per binding in [3].
> > > > > +      Must be 0 as to represent a single PM domain.
> > > > > +
> > > > > +      ARM systems can have multiple cores, sometimes in an hierarchical
> > > > > +      arrangement. This often, but not always, maps directly to the processor
> > > > > +      power topology of the system. Individual nodes in a topology have their
> > > > > +      own specific power states and can be better represented hierarchically.
> > > > > +
> > > > > +      For these cases, the definitions of the idle states for the CPUs and the
> > > > > +      CPU topology, must conform to the binding in [3]. The idle states
> > > > > +      themselves must conform to the binding in [4] and must specify the
> > > > > +      arm,psci-suspend-param property.
> > > > > +
> > > > > +      It should also be noted that, in PSCI firmware v1.0 the OS-Initiated
> > > > > +      (OSI) CPU suspend mode is introduced. Using a hierarchical representation
> > > > > +      helps to implement support for OSI mode and OS implementations may choose
> > > > > +      to mandate it.
> > > > > +
> > > > > +      [3] Documentation/devicetree/bindings/power/power_domain.txt
> > > > > +      [4] Documentation/devicetree/bindings/power/domain-idle-state.txt
> > > > > +
> > > > > +  power-domains:
> > > > > +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> > > > > +    description:
> > > > > +      List of phandles and PM domain specifiers, as defined by bindings of the
> > > > > +      PM domain provider.
> > > >
> > > > A schema for 'domain-idle-states' property is missing.
> > >
> > > Right, let's figure out the best way for how to add that.
> >
> > If power-domain.yaml is referenced, then don't need anything else
> > unless you can define the number of phandles (looks like you can't?).
>
> The number phandles should be one. At least, I think we can start with
> that and extend the binding if needed.

But there's 2 for the cluster in the example.

> How would that look like then? Apologize for my ignorance (I really
> need to spend some time learning this better)...

Basically, anything common that can be an multiple entries is defined as:

power-domains:
  maxItems: 1

if only 1 entry or for multiple you need to define each entry:

power-domains:
  items:
    - description: what the first power domain is
    - description: what the 2nd power domain is

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
