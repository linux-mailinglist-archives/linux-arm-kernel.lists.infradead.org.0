Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2094674B04
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 12:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hnjsiswU36BFMcjBfTFIb2QtlclMMAQRZJQ161xFFbs=; b=eaBlZttdcu5jVB
	rkfV2oUXvQzJUkPy7uoNZPYAkN1io8rlQy4txsPESCCnUACWXhb+2ycIIq+5zGVFvBPzfXtVDVkOF
	HO31Akwo1kF2xT7kp39LD6ScIDZGCl9UNx38eHtVHqEndkXGg3CWz9YIl0e7BrFU5+F3a/OSi4ff3
	ll3onfZtn9jcjEM/oiOenkkS28yek7Gcx0hskPwX2GmyJR0oE17RHmQ2DDzGADYkkgo+lJEAynBnB
	++EnOCEja2vEEKjT/nBMsjY8mU0/1d2S/4vAjPXCMPzgSGrOiUv9LmiBEmT92rdkXAyv7aJMSevQw
	CfK11hMVziaQl4MAiK3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqaZc-0002rR-Ly; Thu, 25 Jul 2019 10:02:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqaZO-0002ql-Nc
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 10:01:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 740D4344;
 Thu, 25 Jul 2019 03:01:52 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8AF4B3F694;
 Thu, 25 Jul 2019 03:01:51 -0700 (PDT)
Date: Thu, 25 Jul 2019 11:01:48 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH v2 0/9] KVM: arm/arm64: vgic: ITS translation cache
Message-ID: <20190725110148.792e2706@donnerap.cambridge.arm.com>
In-Reply-To: <a757bac1-41d1-8ce5-9393-ac2e8a5e1114@arm.com>
References: <20190611170336.121706-1-marc.zyngier@arm.com>
 <20190723121424.0b632efa@donnerap.cambridge.arm.com>
 <a757bac1-41d1-8ce5-9393-ac2e8a5e1114@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_030154_871647_3428FA75 
X-CRM114-Status: GOOD (  32.74  )
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

On Thu, 25 Jul 2019 09:50:18 +0100
Marc Zyngier <marc.zyngier@arm.com> wrote:

Hi Marc,

> On 23/07/2019 12:14, Andre Przywara wrote:
> > On Tue, 11 Jun 2019 18:03:27 +0100
> > Marc Zyngier <marc.zyngier@arm.com> wrote:
> > 
> > Hi,
> >   
> >> It recently became apparent[1] that our LPI injection path is not as
> >> efficient as it could be when injecting interrupts coming from a VFIO
> >> assigned device.
> >>
> >> Although the proposed patch wasn't 100% correct, it outlined at least
> >> two issues:
> >>
> >> (1) Injecting an LPI from VFIO always results in a context switch to a
> >>     worker thread: no good
> >>
> >> (2) We have no way of amortising the cost of translating a DID+EID pair
> >>     to an LPI number
> >>
> >> The reason for (1) is that we may sleep when translating an LPI, so we
> >> do need a context process. A way to fix that is to implement a small
> >> LPI translation cache that could be looked up from an atomic
> >> context. It would also solve (2).
> >>
> >> This is what this small series proposes. It implements a very basic
> >> LRU cache of pre-translated LPIs, which gets used to implement
> >> kvm_arch_set_irq_inatomic. The size of the cache is currently
> >> hard-coded at 16 times the number of vcpus, a number I have picked
> >> under the influence of Ali Saidi. If that's not enough for you, blame
> >> me, though.
> >>
> >> Does it work? well, it doesn't crash, and is thus perfect. More
> >> seriously, I don't really have a way to benchmark it directly, so my
> >> observations are only indirect:
> >>
> >> On a TX2 system, I run a 4 vcpu VM with an Ethernet interface passed
> >> to it directly. From the host, I inject interrupts using debugfs. In
> >> parallel, I look at the number of context switch, and the number of
> >> interrupts on the host. Without this series, I get the same number for
> >> both IRQ and CS (about half a million of each per second is pretty
> >> easy to reach). With this series, the number of context switches drops
> >> to something pretty small (in the low 2k), while the number of
> >> interrupts stays the same.
> >>
> >> Yes, this is a pretty rubbish benchmark, what did you expect? ;-)
> >>
> >> So I'm putting this out for people with real workloads to try out and
> >> report what they see.  
> > 
> > So I gave that a shot with some benchmarks. As expected, it is quite hard
> > to show an improvement with just one guest running, although we could show
> > a 103%(!) improvement of the memcached QPS score in one experiment when
> > running it in a guest with an external load generator.  
> 
> Is that a fluke or something that you have been able to reproduce
> consistently? Because doubling the performance of anything is something
> I have a hard time believing in... ;-)

Me too. I didn't do this particular test, but it seems that at least in
this particular setup the results were reproducible. AFAICS the parameters
for memcached were just tuned to reduce variation. The test was run three
times on a TX2, with a variation of +/- 5%. The average number (Memcached
QPS SLA) was 180539 with this series, and 89076 without it.
This benchmark setup is reported to be very latency sensitive, with high
I/O requirements, so the observed scheduling improvement of this series
would quite plausibly show a dramatic effect in a guest.

> > Throwing more users into the game showed a significant improvement:
> > 
> > Benchmark 1: kernel compile/FIO: Compiling a kernel on the host, while
> > letting a guest run FIO with 4K randreads from a passed-through NVMe SSD:
> > The IOPS with this series improved by 27% compared to pure mainline,
> > reaching 80% of the host value. Kernel compilation time improved by 8.5%
> > compared to mainline.  
> 
> OK, that's interesting. I guess that's the effect of not unnecessarily
> disrupting the scheduling with one extra context-switch per interrupt.

That's my understanding as well. The machine had four cores, the guest
four VCPUs, FIO in that guest was told to use four jobs. The kernel
was compiling with make -j5. So yes, the scheduler is quite busy here, and
I would expect any relief there to benefit performance.

> > Benchmark 2: FIO/FIO: Running FIO on a passed through SATA SSD in one
> > guest, and FIO on a passed through NVMe SSD in another guest, at the same
> > time:
> > The IOPS with this series improved by 23% for the NVMe and 34% for the
> > SATA disk, compared to pure mainline.  
> 
> I guess that's the same thing. Not context-switching means more
> available resource to other processes in the system.

Yes. These were again four VCPU guests with a 4-job FIO in each.

And for the records, using FIO with just "read" and a blocksize of
1MB didn't show any effects: the numbers were basically the same as bare
metal, in every case.
I would attribute this to the number of interrupts being far too low to
show an impact.

> > So judging from these results, I think this series is a significant
> > improvement, which justifies it to be merged, to receive wider testing.
> > 
> > It would be good if others could also do performance experiments and post
> > their results.  
> 
> Wishful thinking...
> 
> Anyway, I'll repost the series shortly now that Eric has gone through it.

Thanks! Feel free to add my Tested-by: at an appropriate place.

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
