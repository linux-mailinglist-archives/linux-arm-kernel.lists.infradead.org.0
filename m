Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A82A1DE886
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 16:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1p/Mog/5DLMCQaM0OnbdI6LLUKsyEKpGBI2KMs+AeU=; b=ru7KwoRqAwRq9Q
	tp1Bt2LYISMMcAl1+a7HR+dEgxZNioxpCvpJvSZRsDF9pVtloX99AM59/9r7oO2Z4+pNhrF5wF7qC
	6Xt0YxVYyK53Ris1iftu1zBIJjdoVSDUBiziiYd2IkdUc1corLlwmMstpKm6+Dw+q3i5q6LV3ccGy
	Q2un/ErEZ24Uo9ngoG2ZaWYpb6dlmcdJFftK0zCh6bepf0EpmAD1NGAJH2WkAEeRHCQqS9rUWQerw
	9FDjl1iCzduUA4IE+fWCWYYZGDCa20UfGtBPSIrAEOQwbGiNRfxeL+rkMNpF/biyCp7vIhddiABuM
	DdJkRAhdxgo9FVXm8GRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8M5-0003qe-Qv; Fri, 22 May 2020 14:08:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8Lx-0003qL-4r
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 14:08:50 +0000
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE4E1221EE
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590156528;
 bh=9ttEKhP9nDiAvnPqT2NbUpZ5A85BLKTda+04YGkS/Jc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=T2Xyqu7RlLiGBaCDD17OBLgGFUconLgjUep1CkxaxuB56HWep4NJb4MnEUKbTJIQ/
 BPsiP4uyGXiJCNa4XV3/qJeym+K49EOY/CQRq66xChHwJq+W43g+ybH/t+8d2XG6f7
 7IYLQaIq15BXntiJmBfIChnqjuJ6478npY1kpw0A=
Received: by mail-oi1-f179.google.com with SMTP id d191so9352996oib.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 07:08:48 -0700 (PDT)
X-Gm-Message-State: AOAM532GgPDyXSeuUvfhae/ewawSdgCj3rgWmI8Gv2CPN3Vq+xhI5XK0
 O40ECRo/00Y5pwCPkR09RWwzrzexrzPCb1qUBQ==
X-Google-Smtp-Source: ABdhPJxbEp1ZalT7LjeGB8CX9V1N0S0pLASvdZoVw8NWjkZUBBbTq4XnQYOc4bY4bi78FkEmC75vv9c1Cjc7aIFvTrE=
X-Received: by 2002:aca:f084:: with SMTP id o126mr2821207oih.106.1590156527984; 
 Fri, 22 May 2020 07:08:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200521130008.8266-10-lorenzo.pieralisi@arm.com>
 <CAL_Jsq+h18gH2D3B-OZku6ACCgonPUJcUnrN8a5=jApsXHdB5Q@mail.gmail.com>
 <abca6ecb-5d93-832f-ff7c-de53bb6203f3@arm.com>
 <ee7a5c04-814e-215f-ec74-52c2f3b881d0@oss.nxp.com>
In-Reply-To: <ee7a5c04-814e-215f-ec74-52c2f3b881d0@oss.nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 22 May 2020 08:08:36 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKf+cq9Nhs+M8ihC-Ls24YH-WEofW8H4kkFPWMhZw=unA@mail.gmail.com>
Message-ID: <CAL_JsqKf+cq9Nhs+M8ihC-Ls24YH-WEofW8H4kkFPWMhZw=unA@mail.gmail.com>
Subject: Re: [PATCH 09/12] dt-bindings: arm: fsl: Add msi-map device-tree
 binding for fsl-mc bus
To: Diana Craciun OSS <diana.craciun@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_070849_228622_943396E3 
X-CRM114-Status: GOOD (  27.72  )
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, PCI <linux-pci@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, linux-acpi@vger.kernel.org,
 Makarand Pawagi <makarand.pawagi@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 3:57 AM Diana Craciun OSS
<diana.craciun@oss.nxp.com> wrote:
>
> On 5/22/2020 12:42 PM, Robin Murphy wrote:
> > On 2020-05-22 00:10, Rob Herring wrote:
> >> On Thu, May 21, 2020 at 7:00 AM Lorenzo Pieralisi
> >> <lorenzo.pieralisi@arm.com> wrote:
> >>>
> >>> From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> >>>
> >>> The existing bindings cannot be used to specify the relationship
> >>> between fsl-mc devices and GIC ITSes.
> >>>
> >>> Add a generic binding for mapping fsl-mc devices to GIC ITSes, using
> >>> msi-map property.
> >>>
> >>> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> >>> Cc: Rob Herring <robh+dt@kernel.org>
> >>> ---
> >>>   .../devicetree/bindings/misc/fsl,qoriq-mc.txt | 30
> >>> +++++++++++++++++--
> >>>   1 file changed, 27 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
> >>> b/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
> >>> index 9134e9bcca56..b0813b2d0493 100644
> >>> --- a/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
> >>> +++ b/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
> >>> @@ -18,9 +18,9 @@ same hardware "isolation context" and a 10-bit
> >>> value called an ICID
> >>>   the requester.
> >>>
> >>>   The generic 'iommus' property is insufficient to describe the
> >>> relationship
> >>> -between ICIDs and IOMMUs, so an iommu-map property is used to define
> >>> -the set of possible ICIDs under a root DPRC and how they map to
> >>> -an IOMMU.
> >>> +between ICIDs and IOMMUs, so the iommu-map and msi-map properties
> >>> are used
> >>> +to define the set of possible ICIDs under a root DPRC and how they
> >>> map to
> >>> +an IOMMU and a GIC ITS respectively.
> >>>
> >>>   For generic IOMMU bindings, see
> >>>   Documentation/devicetree/bindings/iommu/iommu.txt.
> >>> @@ -28,6 +28,9 @@ Documentation/devicetree/bindings/iommu/iommu.txt.
> >>>   For arm-smmu binding, see:
> >>>   Documentation/devicetree/bindings/iommu/arm,smmu.yaml.
> >>>
> >>> +For GICv3 and GIC ITS bindings, see:
> >>> +Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml.
> >>>
> >>> +
> >>>   Required properties:
> >>>
> >>>       - compatible
> >>> @@ -119,6 +122,15 @@ Optional properties:
> >>>     associated with the listed IOMMU, with the iommu-specifier
> >>>     (i - icid-base + iommu-base).
> >>>
> >>> +- msi-map: Maps an ICID to a GIC ITS and associated iommu-specifier
> >>> +  data.
> >>> +
> >>> +  The property is an arbitrary number of tuples of
> >>> +  (icid-base,iommu,iommu-base,length).
> >>
> >> I'm confused because the example has GIC ITS phandle, not an IOMMU.
> >>
> >> What is an iommu-base?
> >
> > Right, I was already halfway through writing a reply to say that all
> > the copy-pasted "iommu" references here should be using the
> > terminology from the pci-msi.txt binding instead.
>
> Right, will change it.
>
> >
> >>> +
> >>> +  Any ICID in the interval [icid-base, icid-base + length) is
> >>> +  associated with the listed GIC ITS, with the iommu-specifier
> >>> +  (i - icid-base + iommu-base).
> >>>   Example:
> >>>
> >>>           smmu: iommu@5000000 {
> >>> @@ -128,6 +140,16 @@ Example:
> >>>                  ...
> >>>           };
> >>>
> >>> +       gic: interrupt-controller@6000000 {
> >>> +               compatible = "arm,gic-v3";
> >>> +               ...
> >>> +               its: gic-its@6020000 {
> >>> +                       compatible = "arm,gic-v3-its";
> >>> +                       msi-controller;
> >>> +                       ...
> >>> +               };
> >>> +       };
> >>> +
> >>>           fsl_mc: fsl-mc@80c000000 {
> >>>                   compatible = "fsl,qoriq-mc";
> >>>                   reg = <0x00000008 0x0c000000 0 0x40>,    /* MC
> >>> portal base */
> >>> @@ -135,6 +157,8 @@ Example:
> >>>                   msi-parent = <&its>;
> >
> > Side note: is it right to keep msi-parent here? It rather implies that
> > the MC itself has a 'native' Device ID rather than an ICID, which I
> > believe is not strictly true. Plus it's extra-confusing that it
> > doesn't specify an ID either way, since that makes it look like the
> > legacy PCI case that gets treated implicitly as an identity msi-map,
> > which makes no sense at all to combine with an actual msi-map.
>
> Before adding msi-map, the fsl-mc code assumed that ICID and streamID
> are equal and used msi-parent just to get the reference to the ITS node.
> Removing msi-parent will break the backward compatibility of the already
> existing systems. Maybe we should mention that this is legacy and not to
> be used for newer device trees.

If ids are 1:1, then the DT should use msi-parent. If there is
remapping, then use msi-map. A given system should use one or the
other. I suppose if some ids are 1:1 and the msi-map was added to add
additional support for ids not 1:1, then you could end up with both.
That's fine in dts files, but examples should reflect the 'right' way.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
