Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FE7CC0E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 18:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J26ZbQA8chCEXW0P4zw1mdt/X/fASU1rgEAuwY/bA3I=; b=GfcHRoQAoppg5pkCO9EwDm3vT
	JmDIV4La6T9fawpHnGJihSg0hyPEQQcID79QL6hDzlnmbiUcXV59uJ9Y3yro5sOZoePyKpRTEM+GA
	XsM8z6llCQpsQpU5I85wLnFCpCvUhtcgQasLwC/RaqEhaL1TXOrLlTd42CbnSrmMhWbE/aJpScQnV
	xomRnzI+If/5+M7TJ5kGaJ79V5jcXU42WYgfX5l0KY6wECDVmH8g7eoHWt+j3ykEVjH7ZoIBQtfjg
	3wKtrp+i9njWeVWli/zgIWiFh0eBYHJAJLGl03yxYGKpBYNH1DaB+XDVYICAIOKbczSNsyEUpcGYu
	jggs4Rzvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQZB-0002ZC-4a; Fri, 04 Oct 2019 16:36:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQZ0-0002YU-2K
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 16:36:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 64F271597;
 Fri,  4 Oct 2019 09:36:17 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C70EC3F68E;
 Fri,  4 Oct 2019 09:36:15 -0700 (PDT)
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
To: Tim Harvey <tharvey@gateworks.com>
References: <20190301192017.39770-1-dianders@chromium.org>
 <CAJ+vNU0Ma5nG9_ThLO4cdO+=ivf7rmXiHZonF0HY0xx6X3R6Hw@mail.gmail.com>
 <5dce2964-8761-e7d0-8963-f0f5cb2feb02@arm.com>
 <CAJ+vNU0Q1-d7YDbAAEMqEcWnniqo6jLdKBbcUTar5=hJ+AC8vQ@mail.gmail.com>
 <1f6f7eb0-e1dc-d5a8-fb38-44c5bd839894@arm.com>
 <CAJ+vNU1Nd2p-ot2Qkj6vD9yD6gcYM-vm+snNWyt0ChgSqe4tBg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5cf9ec03-f6fb-8227-4ec5-62445038f283@arm.com>
Date: Fri, 4 Oct 2019 17:36:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJ+vNU1Nd2p-ot2Qkj6vD9yD6gcYM-vm+snNWyt0ChgSqe4tBg@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_093618_200790_848EC7AC 
X-CRM114-Status: GOOD (  28.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: open list <linux-kernel@vger.kernel.org>, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 Douglas Anderson <dianders@chromium.org>, evgreen@chromium.org,
 tfiga@chromium.org, Rob Clark <robdclark@gmail.com>,
 iommu@lists.linux-foundation.org, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Tirumalesh Chalamarla <tchalamarla@caviumnetworks.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/10/2019 16:23, Tim Harvey wrote:
> On Thu, Oct 3, 2019 at 3:24 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 2019-10-03 9:51 pm, Tim Harvey wrote:
>>> On Thu, Oct 3, 2019 at 1:42 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>>>
>>>> Hi Tim,
>>>>
>>>> On 2019-10-03 7:27 pm, Tim Harvey wrote:
>>>>> On Fri, Mar 1, 2019 at 11:21 AM Douglas Anderson <dianders@chromium.org> wrote:
>>>>>>
>>>>>> If you're bisecting why your peripherals stopped working, it's
>>>>>> probably this CL.  Specifically if you see this in your dmesg:
>>>>>>      Unexpected global fault, this could be serious
>>>>>> ...then it's almost certainly this CL.
>>>>>>
>>>>>> Running your IOMMU-enabled peripherals with the IOMMU in bypass mode
>>>>>> is insecure and effectively disables the protection they provide.
>>>>>> There are few reasons to allow unmatched stream bypass, and even fewer
>>>>>> good ones.
>>>>>>
>>>>>> This patch starts the transition over to make it much harder to run
>>>>>> your system insecurely.  Expected steps:
>>>>>>
>>>>>> 1. By default disable bypass (so anyone insecure will notice) but make
>>>>>>       it easy for someone to re-enable bypass with just a KConfig change.
>>>>>>       That's this patch.
>>>>>>
>>>>>> 2. After people have had a little time to come to grips with the fact
>>>>>>       that they need to set their IOMMUs properly and have had time to
>>>>>>       dig into how to do this, the KConfig will be eliminated and bypass
>>>>>>       will simply be disabled.  Folks who are truly upset and still
>>>>>>       haven't fixed their system can either figure out how to add
>>>>>>       'arm-smmu.disable_bypass=n' to their command line or revert the
>>>>>>       patch in their own private kernel.  Of course these folks will be
>>>>>>       less secure.
>>>>>>
>>>>>> Suggested-by: Robin Murphy <robin.murphy@arm.com>
>>>>>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>>>>> ---
>>>>>
>>>>> Hi Doug / Robin,
>>>>>
>>>>> I ran into this breaking things on OcteonTx boards based on CN80XX
>>>>> CPU. The IOMMU configuration is a bit beyond me and I'm hoping you can
>>>>> offer some advice. The IOMMU here is cavium,smmu-v2 as defined in
>>>>> https://github.com/Gateworks/dts-newport/blob/master/cn81xx-linux.dtsi
>>>>>
>>>>> Booting with 'arm-smmu.disable_bypass=n' does indeed work around the
>>>>> breakage as the commit suggests.
>>>>>
>>>>> Any suggestions for a proper fix?
>>>>
>>>> Ah, you're using the old "mmu-masters" binding (and in a way which isn't
>>>> well-defined - it's never been specified what the stream ID argument(s)
>>>> would mean for a PCI host bridge, and Linux just ignores them). The
>>>> ideal thing would be to update the DT to generic "iommu-map" properties
>>>> - it's been a long time since I last played with a ThunderX, but I
>>>> believe the SMMU stream IDs should just be the same as the ITS device
>>>> IDs (which is how the "mmu-masters" mapping would have played out anyway).
>>>>
>>>> The arm-smmu driver support for the old binding has always relied on
>>>> implicit bypass - there are technical reasons why we can't realistically
>>>> support the full functionality offered to the generic bindings, but it
>>>> would be possible to add some degree of workaround to prevent it
>>>> interacting quite so poorly with disable_bypass, if necessary. Do you
>>>> have deployed systems with DTs that can't be updated, but still might
>>>> need to run new kernels?
>>>>
>>>
>>> Robin,
>>>
>>> Thanks for the response. I don't care too much about supporting new
>>> kernels with the current DT - I'm good with fixing this with a DT
>>> change. Would you be able to give me an example? I would love to see
>>> Cavium mainline an cn81xx dts/dtsi in arch/arm64/boot/dts to be used
>>> as a base as the only thing we have to go off of currently is the
>>> Cavium SDK which has fairly old kernel support.
>>
>> No promises (it's a late-night hack from my sofa), but try giving this a
>> go...
>>
>> Robin.
>>
>> ----->8-----
>> diff --git a/cn81xx-linux.dtsi b/cn81xx-linux.dtsi
>> index 3b759d9575fe..dabc9047c674 100644
>> --- a/cn81xx-linux.dtsi
>> +++ b/cn81xx-linux.dtsi
>> @@ -234,7 +234,7 @@
>>                          clocks = <&sclk>;
>>                  };
>>
>> -               smmu0@830000000000 {
>> +               smmu: smmu0@830000000000 {
>>                          compatible = "cavium,smmu-v2";
>>                          reg = <0x8300 0x0 0x0 0x2000000>;
>>                          #global-interrupts = <1>;
>> @@ -249,23 +249,18 @@
>>                                       <0 69 4>, <0 69 4>, <0 69 4>, <0 69 4>, <0 69 4>, <0 69 4>,
>>                                       <0 69 4>, <0 69 4>, <0 69 4>, <0 69 4>, <0 69 4>, <0 69 4>,
>>                                       <0 69 4>, <0 69 4>, <0 69 4>, <0 69 4>, <0 69 4>;
>> -
>> -                       mmu-masters = <&ecam0 0x100>,
>> -                                     <&pem0  0x200>,
>> -                                     <&pem1  0x300>,
>> -                                     <&pem2  0x400>;
>> -
>> +                       #iommu-cells = <1>;
>> +                       dma-coherent;
>>                  };
>>
>>                  ecam0: pci@848000000000 {
>>                          compatible = "pci-host-ecam-generic";
>>                          device_type = "pci";
>> -                       msi-parent = <&its>;
>>                          msi-map = <0 &its 0 0x10000>;
>> +                       iommu-map = <0 &smmu 0 0x10000>;
>>                          bus-range = <0 31>;
>>                          #size-cells = <2>;
>>                          #address-cells = <3>;
>> -                       #stream-id-cells = <1>;
>>                          u-boot,dm-pre-reloc;
>>                          dma-coherent;
>>                          reg = <0x8480 0x00000000 0 0x02000000>;  /* Configuration space */
>> @@ -399,12 +394,11 @@
>>
>>                          compatible = "cavium,pci-host-thunder-pem";
>>                          device_type = "pci";
>> -                       msi-parent = <&its>;
>>                          msi-map = <0 &its 0 0x10000>;
>> +                       iommu-map = <0 &smmu 0 0x10000>;
>>                          bus-range = <0x1f 0x57>;
>>                          #size-cells = <2>;
>>                          #address-cells = <3>;
>> -                       #stream-id-cells = <1>;
>>                          dma-coherent;
>>                          reg = <0x8800 0x1f000000 0x0 0x39000000>,  /* Configuration space */
>>                                  <0x87e0 0xc0000000 0x0 0x01000000>; /* PEM space */
>> @@ -424,12 +418,11 @@
>>                  pem1: pci@87e0c1000000 {
>>                          compatible = "cavium,pci-host-thunder-pem";
>>                          device_type = "pci";
>> -                       msi-parent = <&its>;
>>                          msi-map = <0 &its 0 0x10000>;
>> +                       iommu-map = <0 &smmu 0 0x10000>;
>>                          bus-range = <0x57 0x8f>;
>>                          #size-cells = <2>;
>>                          #address-cells = <3>;
>> -                       #stream-id-cells = <1>;
>>                          dma-coherent;
>>                          reg = <0x8840 0x57000000 0x0 0x39000000>,  /* Configuration space */
>>                                  <0x87e0 0xc1000000 0x0 0x01000000>; /* PEM space */
>> @@ -449,12 +442,11 @@
>>                  pem2: pci@87e0c2000000 {
>>                          compatible = "cavium,pci-host-thunder-pem";
>>                          device_type = "pci";
>> -                       msi-parent = <&its>;
>>                          msi-map = <0 &its 0 0x10000>;
>> +                       iommu-map = <0 &smmu 0 0x10000>;
>>                          bus-range = <0x8f 0xc7>;
>>                          #size-cells = <2>;
>>                          #address-cells = <3>;
>> -                       #stream-id-cells = <1>;
>>                          dma-coherent;
>>                          reg = <0x8880 0x8f000000 0x0 0x39000000>,  /* Configuration space */
>>                                  <0x87e0 0xc2000000 0x0 0x01000000>; /* PEM space */
> 
> Robin,
> 
> No difference... still need 'arm-smmu.disable_bypass=n' to boot. Are
> all four iommu-map props above supposed to be the same? Seems to me
> they all point to the same thing which looks wrong.

Hmm... :/

Those mappings just set Stream ID == PCI RID (strictly each one should 
only need to cover the bus range assigned to that bridge, but it's not 
crucial) which is the same thing the driver assumes for the mmu-masters 
property, so either that's wrong and never could have worked anyway - 
have you tried VFIO on this platform? - or there are other devices also 
mastering through the SMMU that aren't described at all. Are you able to 
capture a boot log? The SMMU faults do encode information about the 
offending ID, and you can typically correlate their appearance 
reasonably well with endpoint drivers probing.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
