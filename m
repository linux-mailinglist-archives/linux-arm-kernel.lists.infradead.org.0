Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D4C13B171
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 18:55:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOO9kIppW7C2bEqMjDyMjdV9exEZ62Pnqk7EFbuhMVI=; b=TXd4+AuIt5YN7F
	IleslntOPRK+156MFjhnt+cfafiG+VpVcjGbkoSYMD6WCJHonqkYaae5EjMFJveCCaQL+yzJoXid6
	WavFiYfucZO/EQfDEwcD0VETAezD4uEnYO3xQTu4N7zgaOiYRwxC76BNwRqAQBldtQFZ5Ek9qWlUs
	Efwvdz5FrwPPyRV/kb1MTLpIZaMxstlKRIz24Wuo2Dsf/PKsUVANcasbnhNSq9ZXaIPAHX+mfgFXm
	0YN0N2X9gv7fX7iubV2fCOHRqoKqh0yqTXwr3M1/qOp0dIlRVaF6hJFGdw4m3HdRyU144iBr/sUu/
	DSGkxcpGj19xcUVhMLwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQPR-0002WT-AI; Tue, 14 Jan 2020 17:55:21 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQPE-00020p-7R
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 17:55:12 +0000
Received: by mail-vs1-xe44.google.com with SMTP id s16so8761784vsc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 09:55:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7Jrn5Sa8iiFTwrMlmlHmDfU+9ZYlUjhau9Mnp3Wo+QY=;
 b=HhobiIe9g3ecP3LijGr0BeCgYxkMFMKYOcohPXy+D6G1nTay+aQiNg2wGW8V7/DRcD
 LX93cz44ibwJn2xG8cGWLNInOuwPjzQIv5eEFcE0Xh/D9P0ndxwfdObLZkXrFIcitTLh
 SWUZILFCOjZKCzmfDsfLoOGeS9Kkmq68Im48QQTmnbHmwDpY7IX/wM3Pc2LKWHBxdpEa
 bzR67oQGvS1lmlseYFl38GFB6pcOM2L+7jNQfGs7/Wf9YXHalU50jK+DMEpJ6RQzMoW2
 6ouW4MS09ODOoZ3ikbgyNhq9v02kTHm3AG4VnHy+jP5FvQDylJ5Qcj7bTJ8szIhVt9RK
 wLng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7Jrn5Sa8iiFTwrMlmlHmDfU+9ZYlUjhau9Mnp3Wo+QY=;
 b=QR0hjnW3svIm0Sm8ltreQbAW63G+PmDZJ+RNtwnfN2O3Tz8RRsNn1RI1ZUElEc01g4
 SmitCUyHbC0Rw1yzWatFqvUtNdudk1Mn8oijhBFjPF9D0r4w2fahznjYEY2NDeQgtA6b
 aKKVcbo2jLq6kqsQQgyfXk9RmppTiQwUfoJH7WhlLXv35WAKTiLX3rvs+FAEO8Hl/tjR
 zNLWc87gDGTPFBNrrcY+Lkl1JwuK0ELZugboDIYQ/BUiQOR9pGfx0cwxwH2fem5qcl6J
 JBuRD4vayzVUNvIL5qDujRZ8EnZNRlWi8rBE8MnvOZrIRG3oH4+CF0H42tBU+Hu32GEj
 8vOg==
X-Gm-Message-State: APjAAAXPhyV6k6C1beTI+NdDJq/a1tvG7Ow5sxc91huypOAXyDmxpxOy
 98RkHieVFiNl7oFwX6emZr1VYDpZQhTl/OuD0z3ljQ==
X-Google-Smtp-Source: APXvYqxsvoLx0ArjCX6G7zFtHfviUTO5Vs1jW0CkdQ9t5PBD0y1Q3W3OcnF50SeD3BlhMjo0CVZKuVj4RvirpkOsEb0=
X-Received: by 2002:a67:cd96:: with SMTP id r22mr1986767vsl.165.1579024506419; 
 Tue, 14 Jan 2020 09:55:06 -0800 (PST)
MIME-Version: 1.0
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
 <20191230144402.30195-3-ulf.hansson@linaro.org>
 <CAL_Jsq+cAKEGOMnBwwvLt03zx8Gcxh4ijziaBnnY5TPEG0Mekg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+cAKEGOMnBwwvLt03zx8Gcxh4ijziaBnnY5TPEG0Mekg@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 14 Jan 2020 18:54:30 +0100
Message-ID: <CAPDyKFr_7qmKjpWcFegVBsfKBJePtukuriwW-8KX6c2a24ojEA@mail.gmail.com>
Subject: Re: [PATCH v5 02/15] dt: psci: Update DT bindings to support
 hierarchical PSCI states
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_095508_340306_36AC6045 
X-CRM114-Status: GOOD (  29.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, 13 Jan 2020 at 20:53, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Mon, Dec 30, 2019 at 8:44 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > Update PSCI DT bindings to allow to represent idle states for CPUs and the
> > CPU topology, by using a hierarchical layout. Primarily this is done by
> > re-using the existing DT bindings for PM domains [1] and for PM domain idle
> > states [2].
> >
> > Let's also add an example into the document for the PSCI DT bindings, to
> > clearly show the new hierarchical based layout. The currently supported
> > flattened layout, is already described in the ARM idle states bindings [3],
> > so let's leave that as is.
> >
> > [1] Documentation/devicetree/bindings/power/power_domain.txt
> > [2] Documentation/devicetree/bindings/power/domain-idle-state.txt
> > [3] Documentation/devicetree/bindings/arm/idle-states.txt
> >
> > Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> > Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> > Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >
> > Changes in v5:
> >         - None.
>
> First I'm seeing this as the DT list was not copied. The example has
> problems when running 'make dt_binding_check':
>
> Documentation/devicetree/bindings/arm/psci.example.dt.yaml: cpu@0:
> compatible: Additional items are not allowed ('arm,armv8' was
> unexpected)
> Documentation/devicetree/bindings/arm/psci.example.dt.yaml: cpu@0:
> compatible: ['arm,cortex-a53', 'arm,armv8'] is too long
> Documentation/devicetree/bindings/arm/psci.example.dt.yaml: cpu@1:
> compatible: Additional items are not allowed ('arm,armv8' was
> unexpected)
> Documentation/devicetree/bindings/arm/psci.example.dt.yaml: cpu@1:
> compatible: ['arm,cortex-a57', 'arm,armv8'] is too long
>
> 'arm,armv8' is only valid for s/w models.

Perhaps you have a different version of the tools than I have (I have
tried both on v.5.5-rc5 and todays linux-next), because I can't
reproduce these errors at my side when running "make
dt_binding_check".

Can you please check again?

>
> Documentation/devicetree/bindings/arm/psci.example.dt.yaml:
> idle-states: cluster-retention:compatible:0: 'arm,idle-state' was
> expected
> Documentation/devicetree/bindings/arm/psci.example.dt.yaml:
> idle-states: cluster-power-down:compatible:0: 'arm,idle-state' was
> expected
>
> The last 2 are due to my conversion of the idle-states binding which
> is in my tree now. Probably need to add 'domain-idle-state' as a
> compatible at a minimum. It looks like domain-idle-state.txt is pretty
> much the same as arm/idle-state.txt, so we should perhaps merge them.

Ahh, so maybe *all* of the above problems are caused by conflicts in
the arm-soc tree with changes from your tree!?

In regards to merging files, I am fine by that if that helps.

>
> There's some bigger issues though.
>
> > ---
> >  .../devicetree/bindings/arm/cpus.yaml         |  15 +++
> >  .../devicetree/bindings/arm/psci.yaml         | 104 ++++++++++++++++++
> >  2 files changed, 119 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
> > index c23c24ff7575..7a9c3ce2dbef 100644
> > --- a/Documentation/devicetree/bindings/arm/cpus.yaml
> > +++ b/Documentation/devicetree/bindings/arm/cpus.yaml
> > @@ -242,6 +242,21 @@ properties:
> >
> >        where voltage is in V, frequency is in MHz.
> >
> > +  power-domains:
> > +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> > +    description:
> > +      List of phandles and PM domain specifiers, as defined by bindings of the
> > +      PM domain provider (see also ../power_domain.txt).
> > +
> > +  power-domain-names:
> > +    $ref: '/schemas/types.yaml#/definitions/string-array'
> > +    description:
> > +      A list of power domain name strings sorted in the same order as the
> > +      power-domains property.
> > +
> > +      For PSCI based platforms, the name corresponding to the index of the PSCI
> > +      PM domain provider, must be "psci".
> > +
> >    qcom,saw:
> >      $ref: '/schemas/types.yaml#/definitions/phandle'
> >      description: |
> > diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> > index 7abdf58b335e..8ef85420b2ab 100644
> > --- a/Documentation/devicetree/bindings/arm/psci.yaml
> > +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> > @@ -102,6 +102,34 @@ properties:
> >        [1] Kernel documentation - ARM idle states bindings
> >          Documentation/devicetree/bindings/arm/idle-states.txt
> >
> > +  "#power-domain-cells":
>
> This is wrong because you are saying the /psci node should have these
> properties. You need to define the child nodes (at least a pattern you
> can match on) and put these properties there.

Right, good point.

I searched for some similar examples for how to encode this, but
couldn't really find something useful. One more thing, it seems like
this change is also needed for the common power-domain bindings, as
that also specifies parent/childs domains.

Anyway, I would really appreciate if you can suggest something more
detailed for you think this should be done!?

>
> > +    description:
> > +      The number of cells in a PM domain specifier as per binding in [3].
> > +      Must be 0 as to represent a single PM domain.
> > +
> > +      ARM systems can have multiple cores, sometimes in an hierarchical
> > +      arrangement. This often, but not always, maps directly to the processor
> > +      power topology of the system. Individual nodes in a topology have their
> > +      own specific power states and can be better represented hierarchically.
> > +
> > +      For these cases, the definitions of the idle states for the CPUs and the
> > +      CPU topology, must conform to the binding in [3]. The idle states
> > +      themselves must conform to the binding in [4] and must specify the
> > +      arm,psci-suspend-param property.
> > +
> > +      It should also be noted that, in PSCI firmware v1.0 the OS-Initiated
> > +      (OSI) CPU suspend mode is introduced. Using a hierarchical representation
> > +      helps to implement support for OSI mode and OS implementations may choose
> > +      to mandate it.
> > +
> > +      [3] Documentation/devicetree/bindings/power/power_domain.txt
> > +      [4] Documentation/devicetree/bindings/power/domain-idle-state.txt
> > +
> > +  power-domains:
> > +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> > +    description:
> > +      List of phandles and PM domain specifiers, as defined by bindings of the
> > +      PM domain provider.
>
> A schema for 'domain-idle-states' property is missing.

Right, let's figure out the best way for how to add that.

>
> >
> >  required:
> >    - compatible
> > @@ -160,4 +188,80 @@ examples:
> >        cpu_on = <0x95c10002>;
> >        cpu_off = <0x95c10001>;
> >      };
> > +
> > +  - |+
> > +
> > +    // Case 4: CPUs and CPU idle states described using the hierarchical model.
> > +
> > +    cpus {
> > +      #size-cells = <0>;
> > +      #address-cells = <1>;
> > +
> > +      CPU0: cpu@0 {
> > +        device_type = "cpu";
> > +        compatible = "arm,cortex-a53", "arm,armv8";
> > +        reg = <0x0>;
> > +        enable-method = "psci";
> > +        power-domains = <&CPU_PD0>;
> > +        power-domain-names = "psci";
> > +      };
> > +
> > +      CPU1: cpu@1 {
> > +        device_type = "cpu";
> > +        compatible = "arm,cortex-a57", "arm,armv8";
> > +        reg = <0x100>;
> > +        enable-method = "psci";
> > +        power-domains = <&CPU_PD1>;
> > +        power-domain-names = "psci";
> > +      };
> > +
> > +      idle-states {
> > +
> > +        CPU_PWRDN: cpu-power-down {
> > +          compatible = "arm,idle-state";
> > +          arm,psci-suspend-param = <0x0000001>;
> > +          entry-latency-us = <10>;
> > +          exit-latency-us = <10>;
> > +          min-residency-us = <100>;
> > +        };
> > +
> > +        CLUSTER_RET: cluster-retention {
> > +          compatible = "domain-idle-state";
> > +          arm,psci-suspend-param = <0x1000011>;
> > +          entry-latency-us = <500>;
> > +          exit-latency-us = <500>;
> > +          min-residency-us = <2000>;
> > +        };
> > +
> > +        CLUSTER_PWRDN: cluster-power-down {
> > +          compatible = "domain-idle-state";
> > +          arm,psci-suspend-param = <0x1000031>;
> > +          entry-latency-us = <2000>;
> > +          exit-latency-us = <2000>;
> > +          min-residency-us = <6000>;
> > +        };
> > +      };
> > +    };
> > +
> > +    psci {
> > +      compatible = "arm,psci-1.0";
> > +      method = "smc";
> > +
> > +      CPU_PD0: cpu-pd0 {
> > +        #power-domain-cells = <0>;
> > +        domain-idle-states = <&CPU_PWRDN>;
> > +        power-domains = <&CLUSTER_PD>;
> > +      };
> > +
> > +      CPU_PD1: cpu-pd1 {
> > +        #power-domain-cells = <0>;
> > +        domain-idle-states =  <&CPU_PWRDN>;
> > +        power-domains = <&CLUSTER_PD>;
> > +      };
> > +
> > +      CLUSTER_PD: cluster-pd {
> > +        #power-domain-cells = <0>;
> > +        domain-idle-states = <&CLUSTER_RET>, <&CLUSTER_PWRDN>;
> > +      };
> > +    };
> >  ...
> > --
> > 2.17.1
> >

Thanks for your feedback!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
