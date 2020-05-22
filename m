Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74671DE874
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 16:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VD61kQGzD4bxvI+5KG+6v6Q2EkTHthm7e/aa2jFsu3s=; b=so0ZUSRMgObb/q
	Lm9slN/aNm5nGoskSCJJy6mdBriVXAYM7R4LgPWoIoDQoL0pr3eKx7+Go915V0SP5Poef5rF8CwPA
	Rx8Wv1gSJikAB5OCcJFOWftbfRBRYxOQLcMNymt1MHEaIIH4N2eKiNU1vUExJQMV3Dmle+GVDQsJQ
	dXzi5CUKl4ITILjxuY9OQ7g4cUv+Qd4wWCa59SFcQzGgXaCd/wzw1km6SClWKUGK7hlztdzHpIPf2
	gFuTNoHmVz0uu7a6edpfxjSguxR8MoJTjs04DxreqRsqrbQNmXdQ0rCpb/gtDa+7230nPnhBx3t8h
	LiPlpETOA7Bj+OmD6RXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8GY-0000ib-Sv; Fri, 22 May 2020 14:03:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8GS-0000i1-4o
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 14:03:09 +0000
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BF990215A4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590156186;
 bh=PC+uay0MBJgZb1HrY/dFqAwSM1Ui19cXenE7vxJsLa0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=TyuLw6VByNbf3Akwv2nKdLOf67tVruG4eCMaraUTwL3hqUcblq+NKU7TLQq2/q6P7
 Urxcqn76R9RqZme2DhUwavYqB037CsQzmbczJvuF46pziO3YVMZzasuU6xNRwmBL7f
 vNme/VqvGA771XxXTyZk9gWeSPQE+zPAaWiItqP8=
Received: by mail-oi1-f182.google.com with SMTP id o24so9410302oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 07:03:06 -0700 (PDT)
X-Gm-Message-State: AOAM5304r6Qzt85iYU+xI49gDM1LTlO0vBW0ZTgx6fkSPvfHuJi9HMdl
 Rg0jBMddMnp8RDgVhLQTSRFya5gvc3z1Dw9orw==
X-Google-Smtp-Source: ABdhPJz4NPfC/e/rYdjknKeQRurJR6ul989Dp2cHUGc/fsPE+++fhkbh8JKvoUs1QPU5OvCiTH3oazU9MRQGNkQBnro=
X-Received: by 2002:aca:f084:: with SMTP id o126mr2798405oih.106.1590156185879; 
 Fri, 22 May 2020 07:03:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200521130008.8266-10-lorenzo.pieralisi@arm.com>
 <CAL_Jsq+h18gH2D3B-OZku6ACCgonPUJcUnrN8a5=jApsXHdB5Q@mail.gmail.com>
 <abca6ecb-5d93-832f-ff7c-de53bb6203f3@arm.com>
In-Reply-To: <abca6ecb-5d93-832f-ff7c-de53bb6203f3@arm.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 22 May 2020 08:02:49 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKVyqc9QZhGD7FeNLpJ=x3oLzmY0zADBa+6ZaE46dN39w@mail.gmail.com>
Message-ID: <CAL_JsqKVyqc9QZhGD7FeNLpJ=x3oLzmY0zADBa+6ZaE46dN39w@mail.gmail.com>
Subject: Re: [PATCH 09/12] dt-bindings: arm: fsl: Add msi-map device-tree
 binding for fsl-mc bus
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_070308_223666_2787023E 
X-CRM114-Status: GOOD (  27.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Hanjun Guo <guohanjun@huawei.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, PCI <linux-pci@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, linux-acpi@vger.kernel.org,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Marc Zyngier <maz@kernel.org>,
 Diana Craciun <diana.craciun@oss.nxp.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 3:42 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-05-22 00:10, Rob Herring wrote:
> > On Thu, May 21, 2020 at 7:00 AM Lorenzo Pieralisi
> > <lorenzo.pieralisi@arm.com> wrote:
> >>
> >> From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> >>
> >> The existing bindings cannot be used to specify the relationship
> >> between fsl-mc devices and GIC ITSes.
> >>
> >> Add a generic binding for mapping fsl-mc devices to GIC ITSes, using
> >> msi-map property.
> >>
> >> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> >> Cc: Rob Herring <robh+dt@kernel.org>
> >> ---
> >>   .../devicetree/bindings/misc/fsl,qoriq-mc.txt | 30 +++++++++++++++++--
> >>   1 file changed, 27 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt b/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
> >> index 9134e9bcca56..b0813b2d0493 100644
> >> --- a/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
> >> +++ b/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
> >> @@ -18,9 +18,9 @@ same hardware "isolation context" and a 10-bit value called an ICID
> >>   the requester.
> >>
> >>   The generic 'iommus' property is insufficient to describe the relationship
> >> -between ICIDs and IOMMUs, so an iommu-map property is used to define
> >> -the set of possible ICIDs under a root DPRC and how they map to
> >> -an IOMMU.
> >> +between ICIDs and IOMMUs, so the iommu-map and msi-map properties are used
> >> +to define the set of possible ICIDs under a root DPRC and how they map to
> >> +an IOMMU and a GIC ITS respectively.
> >>
> >>   For generic IOMMU bindings, see
> >>   Documentation/devicetree/bindings/iommu/iommu.txt.
> >> @@ -28,6 +28,9 @@ Documentation/devicetree/bindings/iommu/iommu.txt.
> >>   For arm-smmu binding, see:
> >>   Documentation/devicetree/bindings/iommu/arm,smmu.yaml.
> >>
> >> +For GICv3 and GIC ITS bindings, see:
> >> +Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml.
> >> +
> >>   Required properties:
> >>
> >>       - compatible
> >> @@ -119,6 +122,15 @@ Optional properties:
> >>     associated with the listed IOMMU, with the iommu-specifier
> >>     (i - icid-base + iommu-base).
> >>
> >> +- msi-map: Maps an ICID to a GIC ITS and associated iommu-specifier
> >> +  data.
> >> +
> >> +  The property is an arbitrary number of tuples of
> >> +  (icid-base,iommu,iommu-base,length).
> >
> > I'm confused because the example has GIC ITS phandle, not an IOMMU.
> >
> > What is an iommu-base?
>
> Right, I was already halfway through writing a reply to say that all the
> copy-pasted "iommu" references here should be using the terminology from
> the pci-msi.txt binding instead.
>
> >> +
> >> +  Any ICID in the interval [icid-base, icid-base + length) is
> >> +  associated with the listed GIC ITS, with the iommu-specifier
> >> +  (i - icid-base + iommu-base).
> >>   Example:
> >>
> >>           smmu: iommu@5000000 {
> >> @@ -128,6 +140,16 @@ Example:
> >>                  ...
> >>           };
> >>
> >> +       gic: interrupt-controller@6000000 {
> >> +               compatible = "arm,gic-v3";
> >> +               ...
> >> +               its: gic-its@6020000 {
> >> +                       compatible = "arm,gic-v3-its";
> >> +                       msi-controller;
> >> +                       ...
> >> +               };
> >> +       };
> >> +
> >>           fsl_mc: fsl-mc@80c000000 {
> >>                   compatible = "fsl,qoriq-mc";
> >>                   reg = <0x00000008 0x0c000000 0 0x40>,    /* MC portal base */
> >> @@ -135,6 +157,8 @@ Example:
> >>                   msi-parent = <&its>;
>
> Side note: is it right to keep msi-parent here? It rather implies that
> the MC itself has a 'native' Device ID rather than an ICID, which I
> believe is not strictly true. Plus it's extra-confusing that it doesn't
> specify an ID either way, since that makes it look like the legacy PCI
> case that gets treated implicitly as an identity msi-map, which makes no
> sense at all to combine with an actual msi-map.

No, it doesn't make sense from a binding perspective.

>
> >>                   /* define map for ICIDs 23-64 */
> >>                   iommu-map = <23 &smmu 23 41>;
> >> +                /* define msi map for ICIDs 23-64 */
> >> +                msi-map = <23 &its 23 41>;
> >
> > Seeing 23 twice is odd. The numbers to the right of 'its' should be an
> > ITS number space.
>
> On about 99% of systems the values in the SMMU Stream ID and ITS Device
> ID spaces are going to be the same. Nobody's going to bother carrying
> *two* sets of sideband data across the interconnect if they don't have to ;)

I'm referring to the 23 on the left and right, not between the msi and
iommu. If the left and right are the same, then what are we remapping
exactly?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
