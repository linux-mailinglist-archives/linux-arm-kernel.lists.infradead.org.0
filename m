Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E39716C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzkUHzxZeW7/I8WZeazej09/KA7tR6wyGlba6zJNjuc=; b=sGv6k7XkWe2+l3
	cw3LwnmzQMH9nXNoOLPj20AFVMsHKiXmME6/9DrN1vm4/BAKkjHVR32b0A9o9bndmrM5HkfkTjXv5
	ZUBkdKPXs/x+HAjYFw5ohC3YpjrdcgKDF9hm//PCyCxPz23J5JRKGhmcXeSCgu9ybPVrLHsKHnJWA
	vQNp/nP4fwriRYYPyB+EEcenIVYPH01Ke9nQPSt5xY5fwICR0PkodxiFWKhl5ELg5cv0Q6BV6kW5R
	FKTIv8JN6dY/Masw5BQ+i8TkiBn2THPZs18IMCXOd9TYHuZf6IzjTeWrggjPLH4dMfmJfjzYiw60+
	UTNygZx4Yom4U7ajZJKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpslF-0002yh-RR; Tue, 23 Jul 2019 11:15:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpskb-0002vr-Lu
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:14:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 445C9337;
 Tue, 23 Jul 2019 04:14:31 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 586BE3F71A;
 Tue, 23 Jul 2019 04:14:30 -0700 (PDT)
Date: Tue, 23 Jul 2019 12:14:24 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH v2 0/9] KVM: arm/arm64: vgic: ITS translation cache
Message-ID: <20190723121424.0b632efa@donnerap.cambridge.arm.com>
In-Reply-To: <20190611170336.121706-1-marc.zyngier@arm.com>
References: <20190611170336.121706-1-marc.zyngier@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_041434_159026_BF1D197E 
X-CRM114-Status: GOOD (  28.19  )
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
Cc: "Raslan, KarimAllah" <karahmed@amazon.de>, "Saidi,
 Ali" <alisaidi@amazon.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 11 Jun 2019 18:03:27 +0100
Marc Zyngier <marc.zyngier@arm.com> wrote:

Hi,

> It recently became apparent[1] that our LPI injection path is not as
> efficient as it could be when injecting interrupts coming from a VFIO
> assigned device.
> 
> Although the proposed patch wasn't 100% correct, it outlined at least
> two issues:
> 
> (1) Injecting an LPI from VFIO always results in a context switch to a
>     worker thread: no good
> 
> (2) We have no way of amortising the cost of translating a DID+EID pair
>     to an LPI number
> 
> The reason for (1) is that we may sleep when translating an LPI, so we
> do need a context process. A way to fix that is to implement a small
> LPI translation cache that could be looked up from an atomic
> context. It would also solve (2).
> 
> This is what this small series proposes. It implements a very basic
> LRU cache of pre-translated LPIs, which gets used to implement
> kvm_arch_set_irq_inatomic. The size of the cache is currently
> hard-coded at 16 times the number of vcpus, a number I have picked
> under the influence of Ali Saidi. If that's not enough for you, blame
> me, though.
> 
> Does it work? well, it doesn't crash, and is thus perfect. More
> seriously, I don't really have a way to benchmark it directly, so my
> observations are only indirect:
> 
> On a TX2 system, I run a 4 vcpu VM with an Ethernet interface passed
> to it directly. From the host, I inject interrupts using debugfs. In
> parallel, I look at the number of context switch, and the number of
> interrupts on the host. Without this series, I get the same number for
> both IRQ and CS (about half a million of each per second is pretty
> easy to reach). With this series, the number of context switches drops
> to something pretty small (in the low 2k), while the number of
> interrupts stays the same.
> 
> Yes, this is a pretty rubbish benchmark, what did you expect? ;-)
> 
> So I'm putting this out for people with real workloads to try out and
> report what they see.

So I gave that a shot with some benchmarks. As expected, it is quite hard
to show an improvement with just one guest running, although we could show
a 103%(!) improvement of the memcached QPS score in one experiment when
running it in a guest with an external load generator.
Throwing more users into the game showed a significant improvement:

Benchmark 1: kernel compile/FIO: Compiling a kernel on the host, while
letting a guest run FIO with 4K randreads from a passed-through NVMe SSD:
The IOPS with this series improved by 27% compared to pure mainline,
reaching 80% of the host value. Kernel compilation time improved by 8.5%
compared to mainline.

Benchmark 2: FIO/FIO: Running FIO on a passed through SATA SSD in one
guest, and FIO on a passed through NVMe SSD in another guest, at the same
time:
The IOPS with this series improved by 23% for the NVMe and 34% for the
SATA disk, compared to pure mainline.

So judging from these results, I think this series is a significant
improvement, which justifies it to be merged, to receive wider testing.

It would be good if others could also do performance experiments and post
their results.

Cheers,
Andre.

> [1] https://lore.kernel.org/lkml/1552833373-19828-1-git-send-email-yuzenghui@huawei.com/
> 
> * From v1:
> 
>   - Fixed race on allocation, where the same LPI could be cached multiple times
>   - Now invalidate the cache on vgic teardown, avoiding memory leaks
>   - Change patch split slightly, general reshuffling
>   - Small cleanups here and there
>   - Rebased on 5.2-rc4
> 
> Marc Zyngier (9):
>   KVM: arm/arm64: vgic: Add LPI translation cache definition
>   KVM: arm/arm64: vgic: Add __vgic_put_lpi_locked primitive
>   KVM: arm/arm64: vgic-its: Add MSI-LPI translation cache invalidation
>   KVM: arm/arm64: vgic-its: Invalidate MSI-LPI translation cache on
>     specific commands
>   KVM: arm/arm64: vgic-its: Invalidate MSI-LPI translation cache on
>     disabling LPIs
>   KVM: arm/arm64: vgic-its: Invalidate MSI-LPI translation cache on vgic
>     teardown
>   KVM: arm/arm64: vgic-its: Cache successful MSI->LPI translation
>   KVM: arm/arm64: vgic-its: Check the LPI translation cache on MSI
>     injection
>   KVM: arm/arm64: vgic-irqfd: Implement kvm_arch_set_irq_inatomic
> 
>  include/kvm/arm_vgic.h           |   3 +
>  virt/kvm/arm/vgic/vgic-init.c    |   5 +
>  virt/kvm/arm/vgic/vgic-irqfd.c   |  36 +++++-
>  virt/kvm/arm/vgic/vgic-its.c     | 204 +++++++++++++++++++++++++++++++
>  virt/kvm/arm/vgic/vgic-mmio-v3.c |   4 +-
>  virt/kvm/arm/vgic/vgic.c         |  26 ++--
>  virt/kvm/arm/vgic/vgic.h         |   5 +
>  7 files changed, 267 insertions(+), 16 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
