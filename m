Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8069FE43C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 18:41:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NIZhGztvlSy2NX5jquV6nl4YQnGm0EyDQsSl82ZijV8=; b=NfP/eKASaEF1F5
	tLnvuG28OGUNMeO5xymOYHlBvjaIWleUgpOa131xNXBVx2zjgcebwPo1FjDg9L0TlQwVFhroH+382
	6bMQM9+A5W39sc998fZvUGco2fK7szY+Jo1NuslL87IAlPk3m6mqZy9kW+CMKWSp1Mk++nTVjYzEU
	PMuaCZWuHc2w73m+Qm3HER2DDmjtg0o6Ip1LRSxATlsAmKqqoVGPvk+eOeKZGxyJt8umddyBDPFZz
	gBr0VLPAFCNnbl/WPxUa9+Enp11lajhF9i6f0HVUo+il18FR8iOU+pWNGsG3Xa4x6zKmP6XEHxV53
	lIvcMHggQf7dZnJFSXDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVfb4-0007jV-QN; Fri, 15 Nov 2019 17:41:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVfaw-0007j0-C6
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 17:41:20 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CA3220748
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 17:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573839677;
 bh=Ah9mSdZJn6L9OIVN76ESOloTb5qPCovaFeYqf7nVJhU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UcKu93OaflKRQhXGUB2GfOrdH4JFoylzqiwTyOnSUF/gMOgTQFSNXAtZU0oReGX+r
 q0WKbb82DPWD7+bYz5IsQif7lcD1++Xhx3eVBSGcyEy7ROBtX/oeUxwksPD9UtB1hB
 QltqE3KZTXokHbeQ6gwvn7zpWJoqvW+IMDHSZKFM=
Received: by mail-qt1-f171.google.com with SMTP id 30so11601314qtz.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 09:41:17 -0800 (PST)
X-Gm-Message-State: APjAAAVKPcFY0qSNaXhnj4UXd2h53+Nsbc1hRPjo6lY2cUPgdOl4Qh2H
 cc96ysGd7W40sZ8PAmHgjPn1QysmkpOFc8hs8g==
X-Google-Smtp-Source: APXvYqwZ3ZKJUDJ7zyLYNVXFpqsOYgc645y7/qNhrzgKVwoOls4kxl0y7cNlpOHrK7y5GQk+2+zrl8oqYNme/Lmj6Sw=
X-Received: by 2002:ac8:73ce:: with SMTP id v14mr15034569qtp.136.1573839676618; 
 Fri, 15 Nov 2019 09:41:16 -0800 (PST)
MIME-Version: 1.0
References: <20191114164104.22782-1-alexandre.torgue@st.com>
 <CAL_JsqKJZwJ0MyRp37Y-F0ujPdVEKARd8qcUCN1xmawpkiffLg@mail.gmail.com>
 <7415fff5-030c-a65b-a405-a1197e166432@st.com>
In-Reply-To: <7415fff5-030c-a65b-a405-a1197e166432@st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 15 Nov 2019 11:41:04 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKkbrF935JoVELqVpqj3fEwzpTn_xNuOS74uUragJZpHA@mail.gmail.com>
Message-ID: <CAL_JsqKkbrF935JoVELqVpqj3fEwzpTn_xNuOS74uUragJZpHA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Convert stm32-exti to
 json-schema
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_094118_452600_4F7612D0 
X-CRM114-Status: GOOD (  24.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 11:28 AM Alexandre Torgue
<alexandre.torgue@st.com> wrote:
>
>
>
> On 11/14/19 6:18 PM, Rob Herring wrote:
> > On Thu, Nov 14, 2019 at 10:41 AM Alexandre Torgue
> > <alexandre.torgue@st.com> wrote:
> >>
> >> Convert the STM32 external interrupt controller (EXTI) binding to DT
> >> schema format using json-schema.
> >>
> >> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> >> ---
> >>
> >> Hi Rob,
> >>
> >> I planned to use "additionalProperties: false" for this schema but as I add a
> >> property under condition, I got an error (property added under contion seems
> >> to be detected as an "additional" property and then error is raised).
> >>
> >> Is there a way to fix that ?
> >
> > See below.
> >
> >>
> >> regards
> >> Alex
> >>
> >> diff --git a/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.txt b/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.txt
> >> deleted file mode 100644
> >> index cd01b2292ec6..000000000000
> >> --- a/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.txt
> >> +++ /dev/null
> >> @@ -1,29 +0,0 @@
> >> -STM32 External Interrupt Controller
> >> -
> >> -Required properties:
> >> -
> >> -- compatible: Should be:
> >> -    "st,stm32-exti"
> >> -    "st,stm32h7-exti"
> >> -    "st,stm32mp1-exti"
> >> -- reg: Specifies base physical address and size of the registers
> >> -- interrupt-controller: Indentifies the node as an interrupt controller
> >> -- #interrupt-cells: Specifies the number of cells to encode an interrupt
> >> -  specifier, shall be 2
> >> -- interrupts: interrupts references to primary interrupt controller
> >> -  (only needed for exti controller with multiple exti under
> >> -  same parent interrupt: st,stm32-exti and st,stm32h7-exti)
> >> -
> >> -Optional properties:
> >> -
> >> -- hwlocks: reference to a phandle of a hardware spinlock provider node.
> >> -
> >> -Example:
> >> -
> >> -exti: interrupt-controller@40013c00 {
> >> -       compatible = "st,stm32-exti";
> >> -       interrupt-controller;
> >> -       #interrupt-cells = <2>;
> >> -       reg = <0x40013C00 0x400>;
> >> -       interrupts = <1>, <2>, <3>, <6>, <7>, <8>, <9>, <10>, <23>, <40>, <41>, <42>, <62>, <76>;
> >> -};
> >> diff --git a/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml b/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml
> >> new file mode 100644
> >> index 000000000000..39be37e1e532
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml
> >> @@ -0,0 +1,82 @@
> >> +# SPDX-License-Identifier: GPL-2.0
> >
> > If ST has copyright on the old binding, can you add BSD here.
> >
>
> I will.
>
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/interrupt-controller/st,stm32-exti.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: STM32 External Interrupt Controller Device Tree Bindings
> >> +
> >> +maintainers:
> >> +  - Alexandre Torgue <alexandre.torgue@st.com>
> >> +  - Ludovic Barre <ludovic.barre@st.com>
> >> +
> >> +properties:
> >> +  compatible:
> >> +    oneOf:
> >> +      - items:
> >> +        - enum:
> >> +          - st,stm32-exti
> >> +          - st,stm32h7-exti
> >> +      - items:
> >> +        - enum:
> >> +          - st,stm32mp1-exti
> >> +        - const: syscon
> >> +
> >> +  "#interrupt-cells":
> >> +    const: 2
> >> +
> >> +  reg:
> >> +    maxItems: 1
> >> +
> >> +  interrupt-controller: true
> >> +
> >> +  hwlocks:
> >> +    maxItems: 1
> >> +    description:
> >> +      Reference to a phandle of a hardware spinlock provider node.
> >> +
> >> +required:
> >> +  - "#interrupt-cells"
> >> +  - compatible
> >> +  - reg
> >> +  - interrupt-controller
> >> +
> >> +allOf:
> >> +  - $ref: /schemas/interrupt-controller.yaml#
> >> +  - if:
> >> +      properties:
> >> +        compatible:
> >> +          contains:
> >> +            enum:
> >> +              - st,stm32-exti
> >> +              - st,stm32h7-exti
> >> +    then:
> >> +      properties:
> >> +        interrupts:
> >> +          allOf:
> >> +            - $ref: /schemas/types.yaml#/definitions/uint32-array
> >
> > Standard property, doesn't need a type. You just need 'maxItems' or an
> > 'items' list if the index is not meaningful. This appears to be the
> > former case.
>
> ok
>
> >
> >> +          description:
> >> +            Interrupts references to primary interrupt controller
> >> +      required:
> >> +        - interrupts
> >
> > You can move the definition to the main section as you only need
> > 'required' here. That should fix your additionalProperties issue.
> >
> Doing that it fails as I don't have interrupts define for mp1
> compatible. Maybe I missed something ?

Like this:

properties:
  ...
  interrupts:
    maxItems: ??
    minItems: ??

allOf:
  - $ref: /schemas/interrupt-controller.yaml#
  - if:
      properties:
        compatible:
          contains:
            enum:
              - st,stm32-exti
              - st,stm32h7-exti
    then:
      required:
        - interrupts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
