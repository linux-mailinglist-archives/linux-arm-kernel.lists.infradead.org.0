Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE03A166754
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 20:41:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQH8IxtKj2F2xxp13djN3VHWHi208oYWEE0Gqtnygms=; b=KLi1oU2UUxgFWC
	hjQ9WjhJWS458CGrD6rcHV1cvZrWjC5GJTY82x1A2OanSjB/jTYmuHJEoGeAbXxNhFC5MW3Nv5vtT
	fP9gbrLBXt544UqSWoKLJdtukL3p0BUdORaHTheNHpFNwoO34QFbFYt3xX7xl1SFhTQjFtndtvQad
	2ioHZr4Da6TUO4ktO7k0rR42AyKz5+jCMpjLeAcfKNFyr5UAEEoulVik6O1hx1LokHRZesZlEXrGC
	mHmV4F/7PtcmViAuKZ5DRLVBxZDcDrlKNqIHsRM74F50XVnMV6jCgeZkujOsSjoeN/556GtJMma/1
	lWLiI7VSEOukFC/etLUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4rhA-00031Q-Gt; Thu, 20 Feb 2020 19:41:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4rgz-000311-Up
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 19:41:03 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7326A2467A
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 19:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582227661;
 bh=0wre2PhbpSA1aEnoeMZ1bcwtIXAHkDXm1zKnDVREcMk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=onGUmZ4W5YgNq6a6cohwh4PcfU3bSROgWlTISRwk6Tu4qja+yGJdoTcfTIuItS4X0
 6/noPkMXCG2AWjgYUOGkW9pJOBQCNtOmEfYnV9poABQ5qG7X3jEsN2ArrSIhZNy2U4
 fDOntJCGfiV/LN5jbMQQCuHJNcVw1mjFRCTOtOpM=
Received: by mail-qt1-f176.google.com with SMTP id v25so3752962qto.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 11:41:01 -0800 (PST)
X-Gm-Message-State: APjAAAWiQxwwxR6nQw38EoNofCWEydMJl5dc6KP5eyPs3QHKrAIvhbN8
 6EKuPudCcfjjav2Oy0ohIxvPgdKgeh0BI1uzEA==
X-Google-Smtp-Source: APXvYqzDn8h46fe/CUa7KJYYUBSmCXArXpHfC06sW0cJBJhvkkTyV8xOPINS5zIjiic0Sfqc+1Sca27kEmFwAHiwRwU=
X-Received: by 2002:ac8:6747:: with SMTP id n7mr28142441qtp.224.1582227660541; 
 Thu, 20 Feb 2020 11:41:00 -0800 (PST)
MIME-Version: 1.0
References: <20200219074314.22829-1-j-keerthy@ti.com>
 <20200219074314.22829-2-j-keerthy@ti.com>
 <20200219145227.GA1317@bogus> <55b68963-b931-bf67-482e-146e42af4298@ti.com>
In-Reply-To: <55b68963-b931-bf67-482e-146e42af4298@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 20 Feb 2020 13:40:49 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJAdCT-xpqxYxkZO+JBHCcewhzb2ebiNJvPzSUyCcmP9g@mail.gmail.com>
Message-ID: <CAL_JsqJAdCT-xpqxYxkZO+JBHCcewhzb2ebiNJvPzSUyCcmP9g@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: thermal: k3: Add VTM bindings
 documentation
To: Keerthy <j-keerthy@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_114102_027415_B991F5A2 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Zhang Rui <rui.zhang@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 10:13 PM Keerthy <j-keerthy@ti.com> wrote:
>
>
>
> On 19/02/20 8:22 pm, Rob Herring wrote:
> > On Wed, Feb 19, 2020 at 01:13:11PM +0530, Keerthy wrote:
> >> Add VTM bindings documentation. In the Voltage Thermal
> >> Management Module(VTM), K3 AM654 supplies a voltage
> >> reference and a temperature sensor feature that are gathered in the band
> >> gap voltage and temperature sensor (VBGAPTS) module. The band
> >> gap provides current and voltage reference for its internal
> >> circuits and other analog IP blocks. The analog-to-digital
> >> converter (ADC) produces an output value that is proportional
> >> to the silicon temperature.
> >>
> >> Signed-off-by: Keerthy <j-keerthy@ti.com>
> >> ---
> >>
> >> Changes in v3:
> >>
> >>    * Fixed errors seen with:
> >>      dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> >>
> >>   .../bindings/thermal/ti,am654-thermal.yaml    | 57 +++++++++++++++++++
> >>   1 file changed, 57 insertions(+)
> >>   create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml b/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> >> new file mode 100644
> >> index 000000000000..b6dc95c3acab
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> >> @@ -0,0 +1,57 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/thermal/ti,am654-thermal.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Texas Instruments AM654 VTM (DTS) binding
> >> +
> >> +maintainers:
> >> +  - Keerthy <j-keerthy@ti.com>
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: ti,am654-vtm
> >> +
> >> +  reg:
> >> +    maxItems: 1
> >> +
> >> +  power-domains:
> >> +    maxItems: 1
> >> +    description: phandle to the associated power domain
> >
> > No need to redefine a standard property description.
>
> Okay.
>
> >
> >> +
> >> +  "#thermal-sensor-cells":
> >> +    const: 1
> >> +
> >> +required:
> >> +  - "#thermal-sensor-cells"
> >> +  - compatible
> >> +  - reg
> >> +  - power-domains
> >> +
> >> +additionalProperties: false
> >> +
> >> +examples:
> >> +  - |
> >> +    #include <dt-bindings/soc/ti,sci_pm_domain.h>
> >> +    vtm: wkup_vtm0@42050000 {
> >
> > thermal-sensor@...
> >
> > Use generic node names and don't use '_' in node names
>
> vtm stands for voltage thermal manager and comprises of multiple
> sensors. This is similar to omap bandgap. Should i replace vtm with more
> generic name like thermal? as used in:

'vtm' is a label and source construct only (until you do overlays), so
I don't care what you put really.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
