Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF461DDAC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 01:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugbL+pmBK1jN1mu8wEsgzey9Sov4f7wzh7MBIffAICo=; b=l/tP1u6/+OB1Sq
	jfbFTTYMZVvT2YCriolVPxXz/DFNAL8ohawGkXLoc4gXbisC/ObGNksO9kSPfTNjXm8FqhJR6uWZ1
	tOEcxn4rg5qqxWLhffkB5j1dC5PrbsDDVQxYnJUsN/8GPEMjZZyUkgg83lDd06ueBi3YWsokiA/zW
	IX+ymmShaebK7dcxIbAtco80QWsKuTkWzmtoslsUqfYGRuAdk6Ss00gMSgI6ESxsCw/SdnsUYIlj2
	z0LWjaq0fq4gNg2dls053JpaD5lbClV9bH49FJpXL1WOg2lrlh/au8p6d6j4voTti1I9hKbXlAmO+
	rMbw80aHXsaRTXi1xzFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbuLH-0005du-JA; Thu, 21 May 2020 23:11:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbuL7-0005dE-4i
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 23:11:04 +0000
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE75220885
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 23:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590102660;
 bh=wnVJsMcdVukL+7XmCXsH+1qcmY1rqDsn5grM0oKG+Vg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=b50y5T4/xOs+s5TZp/SGmlaI5l765m7i1wx22uNGLyBKIBzdh+5hpkyDWuuwfftfw
 ZMVAwk/zlo8GumNufVyNpb4usNPG//XsYyyQXbgxHwdmLqfTUQP35eVkbpBQ8lm1Eo
 mVRPCZQ5iXEuAXf0diEbUoBLJVSOffrww0tgviDU=
Received: by mail-oi1-f170.google.com with SMTP id 23so6503172oiq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 16:11:00 -0700 (PDT)
X-Gm-Message-State: AOAM532FuJ5dzFjlHV4C+EiPIwK7+YpO3ledrjYiaxQbgwd+XVJmgBYx
 bIEpAlr0/q3cqQzI/NxSZTeUZQ7oK2s6B1HskA==
X-Google-Smtp-Source: ABdhPJyY199Y85sucuTO5/BYg8SBRhUI/9X/7ZmJwp5eotefflL8Rgk71V55e2sEv0jRnuhZ/fAClQc1SjSy9dm5eSY=
X-Received: by 2002:aca:f084:: with SMTP id o126mr744784oih.106.1590102659988; 
 Thu, 21 May 2020 16:10:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200521130008.8266-10-lorenzo.pieralisi@arm.com>
In-Reply-To: <20200521130008.8266-10-lorenzo.pieralisi@arm.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 21 May 2020 17:10:49 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+h18gH2D3B-OZku6ACCgonPUJcUnrN8a5=jApsXHdB5Q@mail.gmail.com>
Message-ID: <CAL_Jsq+h18gH2D3B-OZku6ACCgonPUJcUnrN8a5=jApsXHdB5Q@mail.gmail.com>
Subject: Re: [PATCH 09/12] dt-bindings: arm: fsl: Add msi-map device-tree
 binding for fsl-mc bus
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_161101_225095_3AEFB1E4 
X-CRM114-Status: GOOD (  21.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Diana Craciun <diana.craciun@oss.nxp.com>,
 PCI <linux-pci@vger.kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Sudeep Holla <sudeep.holla@arm.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, linux-acpi@vger.kernel.org,
 Linux IOMMU <iommu@lists.linux-foundation.org>, Marc Zyngier <maz@kernel.org>,
 Hanjun Guo <guohanjun@huawei.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 7:00 AM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
>
> The existing bindings cannot be used to specify the relationship
> between fsl-mc devices and GIC ITSes.
>
> Add a generic binding for mapping fsl-mc devices to GIC ITSes, using
> msi-map property.
>
> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> ---
>  .../devicetree/bindings/misc/fsl,qoriq-mc.txt | 30 +++++++++++++++++--
>  1 file changed, 27 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt b/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
> index 9134e9bcca56..b0813b2d0493 100644
> --- a/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
> +++ b/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
> @@ -18,9 +18,9 @@ same hardware "isolation context" and a 10-bit value called an ICID
>  the requester.
>
>  The generic 'iommus' property is insufficient to describe the relationship
> -between ICIDs and IOMMUs, so an iommu-map property is used to define
> -the set of possible ICIDs under a root DPRC and how they map to
> -an IOMMU.
> +between ICIDs and IOMMUs, so the iommu-map and msi-map properties are used
> +to define the set of possible ICIDs under a root DPRC and how they map to
> +an IOMMU and a GIC ITS respectively.
>
>  For generic IOMMU bindings, see
>  Documentation/devicetree/bindings/iommu/iommu.txt.
> @@ -28,6 +28,9 @@ Documentation/devicetree/bindings/iommu/iommu.txt.
>  For arm-smmu binding, see:
>  Documentation/devicetree/bindings/iommu/arm,smmu.yaml.
>
> +For GICv3 and GIC ITS bindings, see:
> +Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml.
> +
>  Required properties:
>
>      - compatible
> @@ -119,6 +122,15 @@ Optional properties:
>    associated with the listed IOMMU, with the iommu-specifier
>    (i - icid-base + iommu-base).
>
> +- msi-map: Maps an ICID to a GIC ITS and associated iommu-specifier
> +  data.
> +
> +  The property is an arbitrary number of tuples of
> +  (icid-base,iommu,iommu-base,length).

I'm confused because the example has GIC ITS phandle, not an IOMMU.

What is an iommu-base?

> +
> +  Any ICID in the interval [icid-base, icid-base + length) is
> +  associated with the listed GIC ITS, with the iommu-specifier
> +  (i - icid-base + iommu-base).
>  Example:
>
>          smmu: iommu@5000000 {
> @@ -128,6 +140,16 @@ Example:
>                 ...
>          };
>
> +       gic: interrupt-controller@6000000 {
> +               compatible = "arm,gic-v3";
> +               ...
> +               its: gic-its@6020000 {
> +                       compatible = "arm,gic-v3-its";
> +                       msi-controller;
> +                       ...
> +               };
> +       };
> +
>          fsl_mc: fsl-mc@80c000000 {
>                  compatible = "fsl,qoriq-mc";
>                  reg = <0x00000008 0x0c000000 0 0x40>,    /* MC portal base */
> @@ -135,6 +157,8 @@ Example:
>                  msi-parent = <&its>;
>                  /* define map for ICIDs 23-64 */
>                  iommu-map = <23 &smmu 23 41>;
> +                /* define msi map for ICIDs 23-64 */
> +                msi-map = <23 &its 23 41>;

Seeing 23 twice is odd. The numbers to the right of 'its' should be an
ITS number space.

>                  #address-cells = <3>;
>                  #size-cells = <1>;
>
> --
> 2.26.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
