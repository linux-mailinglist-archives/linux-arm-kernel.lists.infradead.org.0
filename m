Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9348F1C79E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 21:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCPfDki0wd/+HUHHhBXKhiFiJKe7Dfv6nf+A8j6LDqM=; b=E5X0DbyLb1pM3G
	AESi8y6U6UV69nb6792lBG+8rR6InCOQ/wC6+53QobXAZcCvV9CFDIkldjC6eyIVXj2cbvRNv1irF
	Pb0Xp46zVCiO7oVKJHhi7ivDWMs9VNs46nY1zT3Dx4JMgrj8U4MhfhLRhUaGZmngG934XvdXOnpR9
	VXxhygRg5z8EeAeFGhAYEa4VFHt7FUe+IE7WpWIjxPvz/8BlSxg0ebfqoDhfiQ96c7Kly8aHusBK7
	OUWhOuHzfzKZTvJh++wbavOUqkaXgDz5QR5nHN2mRv9zaLt38fLIWnMomYRZBWQZ9vZ+D7bxhEM7Y
	2XUCdcm6dd98d0Zo3z9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWPOe-0007bx-Ra; Wed, 06 May 2020 19:07:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWPOW-0007bU-OR
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 19:07:50 +0000
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44F372078C
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 May 2020 19:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588792068;
 bh=vEk1l0b0aFjTQ+QBNrJc+lWz02KZWQQiVF4ewewFykU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0QsngKDy/UO8gxrQY1fAvH4QzO5WeKaDcfHIrnt7woYWDCCvSKkxaileozhDC5MLB
 oqElanvadLKbqmBxOniFXtHkRMO0N4OOfFFIWvjqESHoITgf3Q5q8AL8WDQjWccAA0
 EKJ2mhJVOx15ruRXrdP/nTwYnOKmlvMyjBPxCFvw=
Received: by mail-oi1-f169.google.com with SMTP id i13so2743497oie.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 12:07:48 -0700 (PDT)
X-Gm-Message-State: AGi0PuYgiDEkvBk6oQipDEebvY0qgCxuBe1diFrzrUof+KTYUozEPiN4
 Zi4VNqFXew5Eq7oeI8bQyGsNOBGC+e1kS2YZRg==
X-Google-Smtp-Source: APiQypIxk+82zWtS2WRfVpiOgxoVhgubSQ/9B246d0TSOVrM2QLI+fFAW4fIxOBrlbcY7o4Hsx5IbKqmonMdFvVQz7c=
X-Received: by 2002:a05:6808:24f:: with SMTP id
 m15mr4069585oie.152.1588792067520; 
 Wed, 06 May 2020 12:07:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200501205011.14899-1-grygorii.strashko@ti.com>
 <20200501205011.14899-2-grygorii.strashko@ti.com>
 <20200505040419.GA8509@bogus>
 <b8bb1076-e345-5146-62d3-e1da1d35da4f@ti.com>
In-Reply-To: <b8bb1076-e345-5146-62d3-e1da1d35da4f@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 6 May 2020 14:07:35 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+P_OEFDBbAsvyCCOKZnQuAUYYnyDDwm7aNudN3pRK78g@mail.gmail.com>
Message-ID: <CAL_Jsq+P_OEFDBbAsvyCCOKZnQuAUYYnyDDwm7aNudN3pRK78g@mail.gmail.com>
Subject: Re: [PATCH net-next 1/7] dt-binding: ti: am65x: document common
 platform time sync cpts module
To: Grygorii Strashko <grygorii.strashko@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_120748_835320_35F17DE6 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Lokesh Vutla <lokeshvutla@ti.com>, netdev <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 10:01 AM Grygorii Strashko
<grygorii.strashko@ti.com> wrote:
>
>
>
> On 05/05/2020 07:04, Rob Herring wrote:
> > On Fri, May 01, 2020 at 11:50:05PM +0300, Grygorii Strashko wrote:
> >> Document device tree bindings for TI AM654/J721E SoC The Common Platform
> >> Time Sync (CPTS) module. The CPTS module is used to facilitate host control
> >> of time sync operations. Main features of CPTS module are:
> >>    - selection of multiple external clock sources
> >>    - 64-bit timestamp mode in ns with ppm and nudge adjustment.
> >>    - control of time sync events via interrupt or polling
> >>    - hardware timestamp of ext. events (HWx_TS_PUSH)
> >>    - periodic generator function outputs (TS_GENFx)
> >>    - PPS in combination with timesync router
> >>    - Depending on integration it enables compliance with the IEEE 1588-2008
> >> standard for a precision clock synchronization protocol, Ethernet Enhanced
> >> Scheduled Traffic Operations (CPTS_ESTFn) and PCIe Subsystem Precision Time
> >> Measurement (PTM).
> >>
> >> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> >> ---
> >>   .../bindings/net/ti,k3-am654-cpsw-nuss.yaml   |   7 +
> >>   .../bindings/net/ti,k3-am654-cpts.yaml        | 152 ++++++++++++++++++
> >>   2 files changed, 159 insertions(+)
> >>   create mode 100644 Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
> >> index 78bf511e2892..0f3fde45e200 100644
> >> --- a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
> >> +++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
> >> @@ -144,6 +144,13 @@ patternProperties:
> >>       description:
> >>         CPSW MDIO bus.
> >>
> >> +  "^cpts$":
>
> ok
>
> >
> > Fixed strings go under 'properties'.
> >
> >> +    type: object
> >> +    allOf:
> >> +      - $ref: "ti,am654-cpts.yaml#"
> >> +    description:
> >> +      CPSW Common Platform Time Sync (CPTS) module.
> >> +
> >>   required:
> >>     - compatible
> >>     - reg
> >> diff --git a/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml b/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
> >> new file mode 100644
> >> index 000000000000..1b535d41e5c6
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
> >> @@ -0,0 +1,152 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/net/ti,am654-cpts.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: The TI AM654x/J721E Common Platform Time Sync (CPTS) module Device Tree Bindings
> >> +
> >> +maintainers:
> >> +  - Grygorii Strashko <grygorii.strashko@ti.com>
> >> +  - Sekhar Nori <nsekhar@ti.com>
> >> +
> >> +description: |+
> >> +  The TI AM654x/J721E CPTS module is used to facilitate host control of time
> >> +  sync operations.
> >> +  Main features of CPTS module are
> >> +  - selection of multiple external clock sources
> >> +  - Software control of time sync events via interrupt or polling
> >> +  - 64-bit timestamp mode in ns with PPM and nudge adjustment.
> >> +  - hardware timestamp push inputs (HWx_TS_PUSH)
> >> +  - timestamp counter compare output (TS_COMP)
> >> +  - timestamp counter bit output (TS_SYNC)
> >> +  - periodic Generator function outputs (TS_GENFx)
> >> +  - Ethernet Enhanced Scheduled Traffic Operations (CPTS_ESTFn) (TSN)
> >> +  - external hardware timestamp push inputs (HWx_TS_PUSH) timestamping
> >> +
> >> +   Depending on integration it enables compliance with the IEEE 1588-2008
> >> +   standard for a precision clock synchronization protocol, Ethernet Enhanced
> >> +   Scheduled Traffic Operations (CPTS_ESTFn) and PCIe Subsystem Precision Time
> >> +   Measurement (PTM).
> >> +
> >> +  TI AM654x/J721E SoCs has several similar CPTS modules integrated into the
> >> +  different parts of the system which could be synchronized with each other
> >> +  - Main CPTS
> >> +  - MCU CPSW CPTS with IEEE 1588-2008 support
> >> +  - PCIe subsystem CPTS for PTM support
> >> +
> >> +  Depending on CPTS module integration and when CPTS is integral part of
> >> +  another module (MCU CPSW for example) "compatible" and "reg" can
> >> +  be omitted - parent module is fully responsible for CPTS enabling and
> >> +  configuration.
> >
> > That's fine, but you should still have compatible and reg.
>
> I'll add reg as below. But compatible is an issue, because
> k3-am654-cpsw-nuss call of_platform_populate() to create mdio device.
> But for CPTS I do not want to create device as k3-am654-cpsw-nuss uses direct
> function calls to CPTS.
>
> Will it be correct to switch to of_platform_device_create() instead of
> of_platform_populate()?

That should be fine I think.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
