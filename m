Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BCA1DE368
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 11:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Gmt3sXnD3Q1+pL5qqa0ZyHBPPOL6dmHQ8UHChUmxLJs=; b=L1tvgUG/Hl9pqg5hQRY1C/uGI
	+42Qql14WYz9N42tf7JA7/OQgHYLbXuzgClZmykW4tzBarJ2Ak3oa1EJyhVaPGL2E788qum7DoYhg
	TgAK6D6g505Qc3TV/3kpSOxCpuo+mKeaGixA63j9SvLfEW1gEJ4+MGFRenhUvPQK7TJhsv21IgE7I
	IAj41vjOyMvMs6HlxZj6WfNu3+b+hzaJckhRSE3G6WqGLjkMv5BxpQPxQJIzfjxLgPribIA/+qoi3
	b0m1+5pyS0ana7qZETiBIlGHu5PF7GlliyHZU/kkmlnR0H1WyAGB/+06IAvlAQ1GAcg0evPZ0VgR/
	OI9XSqEWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc4Ci-0007u4-Hm; Fri, 22 May 2020 09:43:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc4CY-0007tJ-LE
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 09:42:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D4FC30E;
 Fri, 22 May 2020 02:42:49 -0700 (PDT)
Received: from [10.57.2.168] (unknown [10.57.2.168])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 11AEE3F305;
 Fri, 22 May 2020 02:42:46 -0700 (PDT)
Subject: Re: [PATCH 09/12] dt-bindings: arm: fsl: Add msi-map device-tree
 binding for fsl-mc bus
To: Rob Herring <robh+dt@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200521130008.8266-10-lorenzo.pieralisi@arm.com>
 <CAL_Jsq+h18gH2D3B-OZku6ACCgonPUJcUnrN8a5=jApsXHdB5Q@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <abca6ecb-5d93-832f-ff7c-de53bb6203f3@arm.com>
Date: Fri, 22 May 2020 10:42:45 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+h18gH2D3B-OZku6ACCgonPUJcUnrN8a5=jApsXHdB5Q@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_024250_784029_7B92412F 
X-CRM114-Status: GOOD (  22.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Catalin Marinas <catalin.marinas@arm.com>, PCI <linux-pci@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, linux-acpi@vger.kernel.org,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Marc Zyngier <maz@kernel.org>,
 Diana Craciun <diana.craciun@oss.nxp.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-22 00:10, Rob Herring wrote:
> On Thu, May 21, 2020 at 7:00 AM Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
>>
>> From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
>>
>> The existing bindings cannot be used to specify the relationship
>> between fsl-mc devices and GIC ITSes.
>>
>> Add a generic binding for mapping fsl-mc devices to GIC ITSes, using
>> msi-map property.
>>
>> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> ---
>>   .../devicetree/bindings/misc/fsl,qoriq-mc.txt | 30 +++++++++++++++++--
>>   1 file changed, 27 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt b/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
>> index 9134e9bcca56..b0813b2d0493 100644
>> --- a/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
>> +++ b/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
>> @@ -18,9 +18,9 @@ same hardware "isolation context" and a 10-bit value called an ICID
>>   the requester.
>>
>>   The generic 'iommus' property is insufficient to describe the relationship
>> -between ICIDs and IOMMUs, so an iommu-map property is used to define
>> -the set of possible ICIDs under a root DPRC and how they map to
>> -an IOMMU.
>> +between ICIDs and IOMMUs, so the iommu-map and msi-map properties are used
>> +to define the set of possible ICIDs under a root DPRC and how they map to
>> +an IOMMU and a GIC ITS respectively.
>>
>>   For generic IOMMU bindings, see
>>   Documentation/devicetree/bindings/iommu/iommu.txt.
>> @@ -28,6 +28,9 @@ Documentation/devicetree/bindings/iommu/iommu.txt.
>>   For arm-smmu binding, see:
>>   Documentation/devicetree/bindings/iommu/arm,smmu.yaml.
>>
>> +For GICv3 and GIC ITS bindings, see:
>> +Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml.
>> +
>>   Required properties:
>>
>>       - compatible
>> @@ -119,6 +122,15 @@ Optional properties:
>>     associated with the listed IOMMU, with the iommu-specifier
>>     (i - icid-base + iommu-base).
>>
>> +- msi-map: Maps an ICID to a GIC ITS and associated iommu-specifier
>> +  data.
>> +
>> +  The property is an arbitrary number of tuples of
>> +  (icid-base,iommu,iommu-base,length).
> 
> I'm confused because the example has GIC ITS phandle, not an IOMMU.
> 
> What is an iommu-base?

Right, I was already halfway through writing a reply to say that all the 
copy-pasted "iommu" references here should be using the terminology from 
the pci-msi.txt binding instead.

>> +
>> +  Any ICID in the interval [icid-base, icid-base + length) is
>> +  associated with the listed GIC ITS, with the iommu-specifier
>> +  (i - icid-base + iommu-base).
>>   Example:
>>
>>           smmu: iommu@5000000 {
>> @@ -128,6 +140,16 @@ Example:
>>                  ...
>>           };
>>
>> +       gic: interrupt-controller@6000000 {
>> +               compatible = "arm,gic-v3";
>> +               ...
>> +               its: gic-its@6020000 {
>> +                       compatible = "arm,gic-v3-its";
>> +                       msi-controller;
>> +                       ...
>> +               };
>> +       };
>> +
>>           fsl_mc: fsl-mc@80c000000 {
>>                   compatible = "fsl,qoriq-mc";
>>                   reg = <0x00000008 0x0c000000 0 0x40>,    /* MC portal base */
>> @@ -135,6 +157,8 @@ Example:
>>                   msi-parent = <&its>;

Side note: is it right to keep msi-parent here? It rather implies that 
the MC itself has a 'native' Device ID rather than an ICID, which I 
believe is not strictly true. Plus it's extra-confusing that it doesn't 
specify an ID either way, since that makes it look like the legacy PCI 
case that gets treated implicitly as an identity msi-map, which makes no 
sense at all to combine with an actual msi-map.

>>                   /* define map for ICIDs 23-64 */
>>                   iommu-map = <23 &smmu 23 41>;
>> +                /* define msi map for ICIDs 23-64 */
>> +                msi-map = <23 &its 23 41>;
> 
> Seeing 23 twice is odd. The numbers to the right of 'its' should be an
> ITS number space.

On about 99% of systems the values in the SMMU Stream ID and ITS Device 
ID spaces are going to be the same. Nobody's going to bother carrying 
*two* sets of sideband data across the interconnect if they don't have to ;)

Robin.

>>                   #address-cells = <3>;
>>                   #size-cells = <1>;
>>
>> --
>> 2.26.1
>>
> _______________________________________________
> iommu mailing list
> iommu@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/iommu
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
