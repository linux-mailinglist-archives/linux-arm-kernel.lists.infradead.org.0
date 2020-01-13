Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6F0139A5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 20:53:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzGJaGrTTgrmeN+EsxmUiBCQA158lq5h4I7nx95IVoQ=; b=jg1qoz8bkB89Gm
	ADdmB4n/b68XEkK4xvEi0TCw+VdMp2Z5wzcysfx2+XhX6g+xPO0kqtn4x5RRtWwb5JzavPAAkq9y2
	PBX4r11PmKW/hfSXD8UzaH+C6TKhsFcK4mQTrtqAaVqDm/W92ajD0S4ZqqBLFeNtbmsepUTWiflIK
	g/bK41pcKnlzh0l6nGN8Zq1LYRgo5OvLvt1dpNbM5OYz+HKTqQ+BGC7iyC+1Pdhxgvnu6/f0evMRR
	Xw19XhXo+oQgmSpwBxs4XsPlqw/7PjqxafBIw9NE7ITjfFnCOqh9ZiNufAw/PDbmOS13PEK2G05+X
	UH0IHDn1MVStBheR0Amw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir5mN-0004k0-Ho; Mon, 13 Jan 2020 19:53:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir5mD-0004jV-QX
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 19:53:31 +0000
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C28B21569
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 19:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578945209;
 bh=xzYW2uhVI+aXarY9n9PQpB2Bfi4AeG3LBomJ2hCtre4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=k78wWJUkVg3b1XgWjuaX0n82hrZZptS+SaCTiEoz7/Rz/HDJy4r9xKWhN9G+72NS9
 WNBS5+pN0/apV1w45Jr1ieJs3HH8dpvgmIzx4pzr04GJCyWbrs3qDF+aULF+yh0vd0
 Ne3APpjRj1oCFyUpmdTQDX1J8YJl3aqg1+GR8Ez4=
Received: by mail-qk1-f171.google.com with SMTP id j9so9769041qkk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 11:53:29 -0800 (PST)
X-Gm-Message-State: APjAAAWfKep2ooLZApJiFDL5f4SXLaka7i2MeKIwO+PzAWlYE/jKbrCJ
 +DdUjwjkVK9ZGYrgTnyxRiTqdW42jGzEaSJcNg==
X-Google-Smtp-Source: APXvYqz37D/+nm/syz7FDGHDM3IpVykZdcqQUZsr42Rn0qQNc/m+H0XRxC1v+j1WR4fPRZdgGLKp9DlNaXjMSSx09uY=
X-Received: by 2002:a05:620a:135b:: with SMTP id
 c27mr16459721qkl.119.1578945208245; 
 Mon, 13 Jan 2020 11:53:28 -0800 (PST)
MIME-Version: 1.0
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
 <20191230144402.30195-3-ulf.hansson@linaro.org>
In-Reply-To: <20191230144402.30195-3-ulf.hansson@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 13 Jan 2020 13:53:16 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+cAKEGOMnBwwvLt03zx8Gcxh4ijziaBnnY5TPEG0Mekg@mail.gmail.com>
Message-ID: <CAL_Jsq+cAKEGOMnBwwvLt03zx8Gcxh4ijziaBnnY5TPEG0Mekg@mail.gmail.com>
Subject: Re: [PATCH v5 02/15] dt: psci: Update DT bindings to support
 hierarchical PSCI states
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_115329_904267_6A0CE667 
X-CRM114-Status: GOOD (  25.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, Dec 30, 2019 at 8:44 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> Update PSCI DT bindings to allow to represent idle states for CPUs and the
> CPU topology, by using a hierarchical layout. Primarily this is done by
> re-using the existing DT bindings for PM domains [1] and for PM domain idle
> states [2].
>
> Let's also add an example into the document for the PSCI DT bindings, to
> clearly show the new hierarchical based layout. The currently supported
> flattened layout, is already described in the ARM idle states bindings [3],
> so let's leave that as is.
>
> [1] Documentation/devicetree/bindings/power/power_domain.txt
> [2] Documentation/devicetree/bindings/power/domain-idle-state.txt
> [3] Documentation/devicetree/bindings/arm/idle-states.txt
>
> Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>
> Changes in v5:
>         - None.

First I'm seeing this as the DT list was not copied. The example has
problems when running 'make dt_binding_check':

Documentation/devicetree/bindings/arm/psci.example.dt.yaml: cpu@0:
compatible: Additional items are not allowed ('arm,armv8' was
unexpected)
Documentation/devicetree/bindings/arm/psci.example.dt.yaml: cpu@0:
compatible: ['arm,cortex-a53', 'arm,armv8'] is too long
Documentation/devicetree/bindings/arm/psci.example.dt.yaml: cpu@1:
compatible: Additional items are not allowed ('arm,armv8' was
unexpected)
Documentation/devicetree/bindings/arm/psci.example.dt.yaml: cpu@1:
compatible: ['arm,cortex-a57', 'arm,armv8'] is too long

'arm,armv8' is only valid for s/w models.

Documentation/devicetree/bindings/arm/psci.example.dt.yaml:
idle-states: cluster-retention:compatible:0: 'arm,idle-state' was
expected
Documentation/devicetree/bindings/arm/psci.example.dt.yaml:
idle-states: cluster-power-down:compatible:0: 'arm,idle-state' was
expected

The last 2 are due to my conversion of the idle-states binding which
is in my tree now. Probably need to add 'domain-idle-state' as a
compatible at a minimum. It looks like domain-idle-state.txt is pretty
much the same as arm/idle-state.txt, so we should perhaps merge them.

There's some bigger issues though.

> ---
>  .../devicetree/bindings/arm/cpus.yaml         |  15 +++
>  .../devicetree/bindings/arm/psci.yaml         | 104 ++++++++++++++++++
>  2 files changed, 119 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
> index c23c24ff7575..7a9c3ce2dbef 100644
> --- a/Documentation/devicetree/bindings/arm/cpus.yaml
> +++ b/Documentation/devicetree/bindings/arm/cpus.yaml
> @@ -242,6 +242,21 @@ properties:
>
>        where voltage is in V, frequency is in MHz.
>
> +  power-domains:
> +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> +    description:
> +      List of phandles and PM domain specifiers, as defined by bindings of the
> +      PM domain provider (see also ../power_domain.txt).
> +
> +  power-domain-names:
> +    $ref: '/schemas/types.yaml#/definitions/string-array'
> +    description:
> +      A list of power domain name strings sorted in the same order as the
> +      power-domains property.
> +
> +      For PSCI based platforms, the name corresponding to the index of the PSCI
> +      PM domain provider, must be "psci".
> +
>    qcom,saw:
>      $ref: '/schemas/types.yaml#/definitions/phandle'
>      description: |
> diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> index 7abdf58b335e..8ef85420b2ab 100644
> --- a/Documentation/devicetree/bindings/arm/psci.yaml
> +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> @@ -102,6 +102,34 @@ properties:
>        [1] Kernel documentation - ARM idle states bindings
>          Documentation/devicetree/bindings/arm/idle-states.txt
>
> +  "#power-domain-cells":

This is wrong because you are saying the /psci node should have these
properties. You need to define the child nodes (at least a pattern you
can match on) and put these properties there.

> +    description:
> +      The number of cells in a PM domain specifier as per binding in [3].
> +      Must be 0 as to represent a single PM domain.
> +
> +      ARM systems can have multiple cores, sometimes in an hierarchical
> +      arrangement. This often, but not always, maps directly to the processor
> +      power topology of the system. Individual nodes in a topology have their
> +      own specific power states and can be better represented hierarchically.
> +
> +      For these cases, the definitions of the idle states for the CPUs and the
> +      CPU topology, must conform to the binding in [3]. The idle states
> +      themselves must conform to the binding in [4] and must specify the
> +      arm,psci-suspend-param property.
> +
> +      It should also be noted that, in PSCI firmware v1.0 the OS-Initiated
> +      (OSI) CPU suspend mode is introduced. Using a hierarchical representation
> +      helps to implement support for OSI mode and OS implementations may choose
> +      to mandate it.
> +
> +      [3] Documentation/devicetree/bindings/power/power_domain.txt
> +      [4] Documentation/devicetree/bindings/power/domain-idle-state.txt
> +
> +  power-domains:
> +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> +    description:
> +      List of phandles and PM domain specifiers, as defined by bindings of the
> +      PM domain provider.

A schema for 'domain-idle-states' property is missing.

>
>  required:
>    - compatible
> @@ -160,4 +188,80 @@ examples:
>        cpu_on = <0x95c10002>;
>        cpu_off = <0x95c10001>;
>      };
> +
> +  - |+
> +
> +    // Case 4: CPUs and CPU idle states described using the hierarchical model.
> +
> +    cpus {
> +      #size-cells = <0>;
> +      #address-cells = <1>;
> +
> +      CPU0: cpu@0 {
> +        device_type = "cpu";
> +        compatible = "arm,cortex-a53", "arm,armv8";
> +        reg = <0x0>;
> +        enable-method = "psci";
> +        power-domains = <&CPU_PD0>;
> +        power-domain-names = "psci";
> +      };
> +
> +      CPU1: cpu@1 {
> +        device_type = "cpu";
> +        compatible = "arm,cortex-a57", "arm,armv8";
> +        reg = <0x100>;
> +        enable-method = "psci";
> +        power-domains = <&CPU_PD1>;
> +        power-domain-names = "psci";
> +      };
> +
> +      idle-states {
> +
> +        CPU_PWRDN: cpu-power-down {
> +          compatible = "arm,idle-state";
> +          arm,psci-suspend-param = <0x0000001>;
> +          entry-latency-us = <10>;
> +          exit-latency-us = <10>;
> +          min-residency-us = <100>;
> +        };
> +
> +        CLUSTER_RET: cluster-retention {
> +          compatible = "domain-idle-state";
> +          arm,psci-suspend-param = <0x1000011>;
> +          entry-latency-us = <500>;
> +          exit-latency-us = <500>;
> +          min-residency-us = <2000>;
> +        };
> +
> +        CLUSTER_PWRDN: cluster-power-down {
> +          compatible = "domain-idle-state";
> +          arm,psci-suspend-param = <0x1000031>;
> +          entry-latency-us = <2000>;
> +          exit-latency-us = <2000>;
> +          min-residency-us = <6000>;
> +        };
> +      };
> +    };
> +
> +    psci {
> +      compatible = "arm,psci-1.0";
> +      method = "smc";
> +
> +      CPU_PD0: cpu-pd0 {
> +        #power-domain-cells = <0>;
> +        domain-idle-states = <&CPU_PWRDN>;
> +        power-domains = <&CLUSTER_PD>;
> +      };
> +
> +      CPU_PD1: cpu-pd1 {
> +        #power-domain-cells = <0>;
> +        domain-idle-states =  <&CPU_PWRDN>;
> +        power-domains = <&CLUSTER_PD>;
> +      };
> +
> +      CLUSTER_PD: cluster-pd {
> +        #power-domain-cells = <0>;
> +        domain-idle-states = <&CLUSTER_RET>, <&CLUSTER_PWRDN>;
> +      };
> +    };
>  ...
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
