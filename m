Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96807CC2C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 20:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KBciEtGC2n/GY3vlzgd4D3XsdCmAMhNAzb/2DR6w7bE=; b=lhIe+/R5n9MhCb3vsT4UgOQ39
	A0geni/8wln0aNEMuYrq8o+D8T1/7JcOo3YriT7vlLBQypuu9rraV35R81teDZyyu+4q+53Vz4L1o
	gW38DG0ub4AP/yKBsWxt7sexvpjIRKVmoQ5Cn16kJzeclM3IrF959TTLCe/yOFywnYevZDpZ2QwYI
	a+uvhZr856CnAc2Dfm1un6rmmyQvBHrwqOrc4gG121As8g9HcV+lKIS9wS5rH0u3t0uSaJ/4Ey3mp
	VE2NQ1+MZywxr1ZkKP1O8KSKwIodxoHN9TF2qcV9ltSJQNm9/yGpiZe97t3VPOn4KlBPovV51GpeZ
	AWBtiLC1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSPz-0003Mv-RB; Fri, 04 Oct 2019 18:35:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSPm-0003M7-36
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 18:34:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3D5D215A1;
 Fri,  4 Oct 2019 11:34:52 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7C2143F534;
 Fri,  4 Oct 2019 11:34:50 -0700 (PDT)
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
To: Tim Harvey <tharvey@gateworks.com>,
 Tirumalesh Chalamarla <tchalamarla@caviumnetworks.com>
References: <20190301192017.39770-1-dianders@chromium.org>
 <CAJ+vNU0Ma5nG9_ThLO4cdO+=ivf7rmXiHZonF0HY0xx6X3R6Hw@mail.gmail.com>
 <5dce2964-8761-e7d0-8963-f0f5cb2feb02@arm.com>
 <CAJ+vNU0Q1-d7YDbAAEMqEcWnniqo6jLdKBbcUTar5=hJ+AC8vQ@mail.gmail.com>
 <1f6f7eb0-e1dc-d5a8-fb38-44c5bd839894@arm.com>
 <CAJ+vNU1Nd2p-ot2Qkj6vD9yD6gcYM-vm+snNWyt0ChgSqe4tBg@mail.gmail.com>
 <5cf9ec03-f6fb-8227-4ec5-62445038f283@arm.com>
 <CAJ+vNU28LrroW-XC4X2g3bdN171j0ieZenhYE1TrEM8yvKi=cQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <cb6392ff-fac6-300b-2e04-b34df8c42f28@arm.com>
Date: Fri, 4 Oct 2019 19:34:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJ+vNU28LrroW-XC4X2g3bdN171j0ieZenhYE1TrEM8yvKi=cQ@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_113454_220275_2CBA57ED 
X-CRM114-Status: GOOD (  25.51  )
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
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/10/2019 18:13, Tim Harvey wrote:
[...]
>>> No difference... still need 'arm-smmu.disable_bypass=n' to boot. Are
>>> all four iommu-map props above supposed to be the same? Seems to me
>>> they all point to the same thing which looks wrong.
>>
>> Hmm... :/
>>
>> Those mappings just set Stream ID == PCI RID (strictly each one should
>> only need to cover the bus range assigned to that bridge, but it's not
>> crucial) which is the same thing the driver assumes for the mmu-masters
>> property, so either that's wrong and never could have worked anyway -
>> have you tried VFIO on this platform? - or there are other devices also
>> mastering through the SMMU that aren't described at all. Are you able to
>> capture a boot log? The SMMU faults do encode information about the
>> offending ID, and you can typically correlate their appearance
>> reasonably well with endpoint drivers probing.
>>
> 
> Robin,
> 
> VFIO is enabled in the kernel but I don't know anything about how to
> test/use it:
> $ grep VFIO .config
> CONFIG_KVM_VFIO=y
> CONFIG_VFIO_IOMMU_TYPE1=y
> CONFIG_VFIO_VIRQFD=y
> CONFIG_VFIO=y
> # CONFIG_VFIO_NOIOMMU is not set
> CONFIG_VFIO_PCI=y
> CONFIG_VFIO_PCI_MMAP=y
> CONFIG_VFIO_PCI_INTX=y
> # CONFIG_VFIO_PLATFORM is not set
> # CONFIG_VFIO_MDEV is not set

No worries - since it's a networking-focused SoC I figured there was a 
chance you might be using DPDK or similar userspace drivers with the NIC 
VFs, but I was just casting around for a quick and easy baseline of 
whether the SMMU works at all (another way would be using Qemu to run a 
VM with one or more PCI devices assigned).

> I do have a boot console yet I'm not seeing any smmu faults at all.
> Perhaps I've mis-diagnosed the issue completely. To be clear when I
> boot with arm-smmu.disable_bypass=y the serial console appears to not
> accept input in userspace and with arm-smmu.disable_bypass=n I'm fine.
> I'm using a buildroot initramfs rootfs for simplicity. The system
> isn't hung as I originally expected as the LED heartbeat trigger
> continues blinking... I just can't get console to accept input.

Curiouser and curiouser... I'm inclined to suspect that the interrupt 
configuration might also be messed up, such that the SMMU is blocking 
traffic and jammed up due to pending faults, but you're not getting the 
IRQ delivered to find out. Does this patch help reveal anything?

http://linux-arm.org/git?p=linux-rm.git;a=commitdiff;h=29ac3648b580920692c9b417b2fc606995826517

(untested, but it's a direct port of the one I've used for SMMUv3 to 
diagnose something similar)

That said, it's also puzzling that no other drivers are reporting DMA 
errors or timeouts either - is there any chance that some device is set 
running by the firmware/bootloader and not taken over by a kernel driver?

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
