Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1FECC684
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 01:27:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2eLn/cnxuuMXRpBnAL+uaxNOUIaaP0UGPRvS+aOL3WY=; b=iHLTujIIhHFH05SldhOQ1YAyj
	QK7tiUTChnS8mOt6eASXOHo4I9XDENJDBEU7EV21H6yetQtj2npUWcjY00+DnmRsVrRtwcKu5vJv0
	Mzcx09jLO5T+a/bU+gteYcLlaTGG8HB8noA6U+sb8tQzgoEUHQm3s6HOIHGvG9gG6rei1t6z191gW
	lH8joMzGDVqk78fjdDKNL4YY7dkfSPRm4JR/NdfczhmeWetXphJRsXqx3Idu+PsisM1JEk+NziRKf
	1n2YeReIoaKeJE62/WfbJD7KgmaEyNd92pewjFpcj/rzPJYF5umBFqDZCzB1uo2LpK+AyRwFQIkcj
	TBYUUPZEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGWzA-0001Jn-2B; Fri, 04 Oct 2019 23:27:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGWz2-0001In-76
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 23:27:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 92CEE15AD;
 Fri,  4 Oct 2019 16:27:30 -0700 (PDT)
Received: from [192.168.1.124] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CFF9E3F68E;
 Fri,  4 Oct 2019 16:27:28 -0700 (PDT)
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
To: Tim Harvey <tharvey@gateworks.com>
References: <20190301192017.39770-1-dianders@chromium.org>
 <CAJ+vNU0Ma5nG9_ThLO4cdO+=ivf7rmXiHZonF0HY0xx6X3R6Hw@mail.gmail.com>
 <5dce2964-8761-e7d0-8963-f0f5cb2feb02@arm.com>
 <CAJ+vNU0Q1-d7YDbAAEMqEcWnniqo6jLdKBbcUTar5=hJ+AC8vQ@mail.gmail.com>
 <1f6f7eb0-e1dc-d5a8-fb38-44c5bd839894@arm.com>
 <CAJ+vNU1Nd2p-ot2Qkj6vD9yD6gcYM-vm+snNWyt0ChgSqe4tBg@mail.gmail.com>
 <5cf9ec03-f6fb-8227-4ec5-62445038f283@arm.com>
 <CAJ+vNU28LrroW-XC4X2g3bdN171j0ieZenhYE1TrEM8yvKi=cQ@mail.gmail.com>
 <cb6392ff-fac6-300b-2e04-b34df8c42f28@arm.com>
 <CAJ+vNU0kDseyqAMKAv+9+aw6wVKjBQcHcGD_8XgCy_KzZTM4Gg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <4824ef05-7f57-9aab-cdbd-34b3f857b32b@arm.com>
Date: Sat, 5 Oct 2019 00:27:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAJ+vNU0kDseyqAMKAv+9+aw6wVKjBQcHcGD_8XgCy_KzZTM4Gg@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_162736_347344_E387C4DB 
X-CRM114-Status: GOOD (  27.22  )
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
 iommu@lists.linux-foundation.org,
 Tirumalesh Chalamarla <tchalamarla@caviumnetworks.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-04 9:37 pm, Tim Harvey wrote:
> On Fri, Oct 4, 2019 at 11:34 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 04/10/2019 18:13, Tim Harvey wrote:
>> [...]
>>>>> No difference... still need 'arm-smmu.disable_bypass=n' to boot. Are
>>>>> all four iommu-map props above supposed to be the same? Seems to me
>>>>> they all point to the same thing which looks wrong.
>>>>
>>>> Hmm... :/
>>>>
>>>> Those mappings just set Stream ID == PCI RID (strictly each one should
>>>> only need to cover the bus range assigned to that bridge, but it's not
>>>> crucial) which is the same thing the driver assumes for the mmu-masters
>>>> property, so either that's wrong and never could have worked anyway -
>>>> have you tried VFIO on this platform? - or there are other devices also
>>>> mastering through the SMMU that aren't described at all. Are you able to
>>>> capture a boot log? The SMMU faults do encode information about the
>>>> offending ID, and you can typically correlate their appearance
>>>> reasonably well with endpoint drivers probing.
>>>>
>>>
>>> Robin,
>>>
>>> VFIO is enabled in the kernel but I don't know anything about how to
>>> test/use it:
>>> $ grep VFIO .config
>>> CONFIG_KVM_VFIO=y
>>> CONFIG_VFIO_IOMMU_TYPE1=y
>>> CONFIG_VFIO_VIRQFD=y
>>> CONFIG_VFIO=y
>>> # CONFIG_VFIO_NOIOMMU is not set
>>> CONFIG_VFIO_PCI=y
>>> CONFIG_VFIO_PCI_MMAP=y
>>> CONFIG_VFIO_PCI_INTX=y
>>> # CONFIG_VFIO_PLATFORM is not set
>>> # CONFIG_VFIO_MDEV is not set
>>
>> No worries - since it's a networking-focused SoC I figured there was a
>> chance you might be using DPDK or similar userspace drivers with the NIC
>> VFs, but I was just casting around for a quick and easy baseline of
>> whether the SMMU works at all (another way would be using Qemu to run a
>> VM with one or more PCI devices assigned).
>>
>>> I do have a boot console yet I'm not seeing any smmu faults at all.
>>> Perhaps I've mis-diagnosed the issue completely. To be clear when I
>>> boot with arm-smmu.disable_bypass=y the serial console appears to not
>>> accept input in userspace and with arm-smmu.disable_bypass=n I'm fine.
>>> I'm using a buildroot initramfs rootfs for simplicity. The system
>>> isn't hung as I originally expected as the LED heartbeat trigger
>>> continues blinking... I just can't get console to accept input.
>>
>> Curiouser and curiouser... I'm inclined to suspect that the interrupt
>> configuration might also be messed up, such that the SMMU is blocking
>> traffic and jammed up due to pending faults, but you're not getting the
>> IRQ delivered to find out. Does this patch help reveal anything?
>>
>> http://linux-arm.org/git?p=linux-rm.git;a=commitdiff;h=29ac3648b580920692c9b417b2fc606995826517
>>
>> (untested, but it's a direct port of the one I've used for SMMUv3 to
>> diagnose something similar)
> 
> This shows:

Yay (ish)!

[ and the tangential challenge would be to find out what the real global 
fault interrupt is, 'cause apparently it's not SPI 68... ]

> arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
> arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
> GFSYNR1 0x00000140, GFSYNR2 0x00000000

If that stream ID were a PCI RID, it would be 01:08.0

> arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
> arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
> GFSYNR1 0x00000010, GFSYNR2 0x00000000

And this guy would be 00:02.0

So it seems that either the stream ID mapping is non-trivial (and 
"mmu-masters" couldn't have worked), or there are secret magic endpoints 
writing to memory during boot. Either way it probably needs some input 
from Cavium/Marvell to get straight. In the meantime, unless just 
disabling and ignoring the SMMU altogether is a viable option, I guess 
we have to resign to this being one of those "non-good" reasons for 
needing global bypass :(

Robin.

(note to self: it would probably be useful if we dump GFAR in these logs 
too. These are all writes, so it's possible they could be MSI attempts 
targeting the ITS rather than DMA as such)

> arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
> arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
> GFSYNR1 0x00000010, GFSYNR2 0x00000000
> arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
> arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
> GFSYNR1 0x00000010, GFSYNR2 0x00000000
> arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
> arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
> GFSYNR1 0x00000010, GFSYNR2 0x00000000
> arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
> arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
> GFSYNR1 0x00000010, GFSYNR2 0x00000000
> arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
> arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
> GFSYNR1 0x00000010, GFSYNR2 0x00000000
> arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
> arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
> GFSYNR1 0x00000010, GFSYNR2 0x00000000
> arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
> arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
> GFSYNR1 0x00000010, GFSYNR2 0x00000000
> arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
> arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
> GFSYNR1 0x00000010, GFSYNR2 0x00000000
> ...
> arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
> arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
> GFSYNR1 0x00000010, GFSYNR2 0x00000000
> ^^^ these two repeat over and over
> 
>>
>> That said, it's also puzzling that no other drivers are reporting DMA
>> errors or timeouts either - is there any chance that some device is set
>> running by the firmware/bootloader and not taken over by a kernel driver?
>>
> 
> anything is possible - I'm using the Cavium 'BDK' as boot firmware to
> configure the board which sits in from of arm trusted firmare and
> bootloader.
> 
> Tim
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
