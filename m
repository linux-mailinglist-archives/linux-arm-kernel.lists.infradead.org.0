Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A156082074
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 17:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8S4faRuOHrTMDOY8dFBs+lMljRQe75+kJ8RLQ6eFoR4=; b=cHo7xvFaE3X3jZ
	fpNqWh/d6KWUs5CF0WiXwOiJW7m98oHcBz8Npjd+1LDEjH25mc+4iGQcRlbD8PELRnm1m4YRSQA+e
	MNAfAFOC7pR032P3ZTnVTIFbLVc0xy89eAWDNaLzpzwx41d0TdZfWDXsIZAjK1MOlsgFCk0nHvFCP
	0+B2GOdwV1Rd1uJxV1eRJNt9rgWS1b/3XHiJp0RAlq4PKGw66Kynv4iKEfvevbF7QISqXZ3Klu92V
	q1EIGXhLAXRGBhLgSQHTZ7CdBhHhb2xRy3o0VQg/kVX2oV5OO+3/eHIJ2mpQoPuVpHR98WlN3uWPn
	fI49G5n/WCE0Ql0pEapg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huf5Q-000643-QO; Mon, 05 Aug 2019 15:39:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huf5I-00063f-60
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 15:39:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5BD82344;
 Mon,  5 Aug 2019 08:39:38 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A8B6C3F694;
 Mon,  5 Aug 2019 08:39:37 -0700 (PDT)
Date: Mon, 5 Aug 2019 16:39:35 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: io: Relax implicit barriers in default I/O
 accessors
Message-ID: <20190805153935.GC10425@arm.com>
References: <20190729170518.14271-1-will@kernel.org>
 <20190805103905.GC59981@iMac.local>
 <20190805113503.tdjkuqsjm7j3e5vx@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805113503.tdjkuqsjm7j3e5vx@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_083940_326008_D6F56F30 
X-CRM114-Status: GOOD (  27.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 12:35:04PM +0100, Will Deacon wrote:
> On Mon, Aug 05, 2019 at 11:39:05AM +0100, Catalin Marinas wrote:
> > On Mon, Jul 29, 2019 at 06:05:18PM +0100, Will Deacon wrote:
> > > As a concrete example, consider the following:
> > > 
> > > 	memcpy(dma_buffer, data, bufsz);
> > > 	writel(DMA_START, dev->ctrl_reg);
> > > 
> > > A DMB ST instruction between the final write to the DMA buffer and the
> > > write to the control register will ensure that the writes to the DMA
> > > buffer are observed before the write to the control register by all
> > > observers. Put another way, if an observer can see the write to the
> > > control register, it can also see the writes to memory.
> > 
> > I think one of the counter arguments here were that a device does not
> > "observe" the write to the control register as that's not a master
> > access (by the device). Do you mean that if another CPU (not the device)
> > can observe the writel(), it would have also observed the write to the
> > DMA buffer (assuming the DMB)? Since the device is also an observer of
> > the DMA buffer accesses, the multi-copy atomicity ensures that the
> > device is also seeing the buffer updates following a DMB.
> 
> Yes, that's right.
> 
> > > This has always
> > > been the case and is not sufficient to provide the ordering required by
> > > Linux, since there is no guarantee that the master interface of the
> > > DMA-capable device has observed either of the accesses. However, in an
> > > other-multi-copy atomic world, we can infer two things:
> > > 
> > >   1. A write arriving at an endpoint shared between multiple CPUs is
> > >      visible to all CPUs
> > > 
> > >   2. A write that is visible to all CPUs is also visible to all other
> > >      observers in the shareability domain
> > > 
> > > Pieced together, this allows us to use DMB OSHST for our default I/O
> > > write accessors and DMB OSHLD for our default I/O read accessors (the
> > > outer-shareability is for handling non-cacheable mappings) for shared
> > > devices. Memory-mapped, DMA-capable peripherals that are private to a
> > > CPU (i.e. inaccessible to other CPUs) still require the DSB, however
> > > these are few and far between and typically require special treatment
> > > anyway which is outside of the scope of the portable driver API (e.g.
> > > GIC, page-table walker, SPE profiler).

[...]

I think there may be something missing from the argument:

One supposes some kind of causal dependency between the writel() and
any dependent read done by "the device".  This is entirely up to the
device implementation, but sanity seems to require that this depencency
is at least as strong as an address dependency, so that the device
mustn't speculatively read dma_buffer in advance of receiving the
DMA_START command etc.  If not, you probably have a badly-designed or
broken device and you deserve to have to carry ugly workarounds in
your drivers.

The multi-copy-atomicity requirement effectively rules out some
bus topologies: if a device masters directly onto a bus that doesn't
share a common ancestor and shareability domain with the bus its slave
interface is connected to, there would be no single place to resolve
the DMB (unless some explicit logic were added to handle that somehow).

It's reasonable to assume that the hardware is somewhat sane for the
default I/O accessors: for weird hardware, drivers would have to work
around it explicitly with extra synchronisation but we wouldn't expect
this to be common.

The per-CPU device case is one where there may be an explicitly weird
topology, but this only applies to a few specific devices and we can
work around those as appropriate.

Does that makes sense?  This might be "obvious", so I'm not sure we
need to write anything.  Just checking my understanding.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
