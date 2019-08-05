Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBCC8183C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtrZ+AN29APqvOoS/JDC7qoEo4JAiIpTYKyuuASQQeo=; b=DGLqCtsCBF41i+
	qGuaesB7KPJHBXOj1XKH9NACel6kNDqxz83ZGkzwBJ6MVGvj9IlEjzp37irlCtIgQEBTBSwjwgCSs
	3mIi5gbapfgSv0aRmiX7gJbpxXGlPq5MeAAOqoecmnr8Q77MS8vAaBl0cwZOmcVVeasAcoKMd7335
	bxo/G9HKWcs/6A0ZGgz8ShPi4gtMXEJabSG0WQNwRXxEXwWY0k5baYe7BzCNXbphYm2/jPlq3iiYa
	aU7mIK4PSYijAI/eVOmAIM+3PmdzcMdjxVP0rDfDPe8UqUGlMxF6ieDa0BTkJmrWtn9d9uXOo/NX2
	QaZ1UI02vVAbBQnF9eCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubGq-0000Wm-6w; Mon, 05 Aug 2019 11:35:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubGe-0000VL-1f
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:35:09 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EFB6E20679;
 Mon,  5 Aug 2019 11:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565004907;
 bh=sojUuxi2/6rndGyTY+30I9v5stRjs/e+1EzJUB9Ekss=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IycWMoiBpwT+S7EC/gIpIkoaluRh0qQMfNltq2HhMOleBaAcWSJMmxldlIfvpp9xJ
 yCLnIV7kiS+XPNkghG1gHTfkuREIzGD+stGFPMThQ04DA6JAT9rdDu76Oj0d/RpR9h
 iqcJzXCd0szFfeWgI1tsMwMRfysa2C9YRkdioTxM=
Date: Mon, 5 Aug 2019 12:35:04 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: io: Relax implicit barriers in default I/O
 accessors
Message-ID: <20190805113503.tdjkuqsjm7j3e5vx@willie-the-truck>
References: <20190729170518.14271-1-will@kernel.org>
 <20190805103905.GC59981@iMac.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805103905.GC59981@iMac.local>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_043508_132348_EABC3A7C 
X-CRM114-Status: GOOD (  24.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 11:39:05AM +0100, Catalin Marinas wrote:
> On Mon, Jul 29, 2019 at 06:05:18PM +0100, Will Deacon wrote:
> > As a concrete example, consider the following:
> > 
> > 	memcpy(dma_buffer, data, bufsz);
> > 	writel(DMA_START, dev->ctrl_reg);
> > 
> > A DMB ST instruction between the final write to the DMA buffer and the
> > write to the control register will ensure that the writes to the DMA
> > buffer are observed before the write to the control register by all
> > observers. Put another way, if an observer can see the write to the
> > control register, it can also see the writes to memory.
> 
> I think one of the counter arguments here were that a device does not
> "observe" the write to the control register as that's not a master
> access (by the device). Do you mean that if another CPU (not the device)
> can observe the writel(), it would have also observed the write to the
> DMA buffer (assuming the DMB)? Since the device is also an observer of
> the DMA buffer accesses, the multi-copy atomicity ensures that the
> device is also seeing the buffer updates following a DMB.

Yes, that's right.

> > This has always
> > been the case and is not sufficient to provide the ordering required by
> > Linux, since there is no guarantee that the master interface of the
> > DMA-capable device has observed either of the accesses. However, in an
> > other-multi-copy atomic world, we can infer two things:
> > 
> >   1. A write arriving at an endpoint shared between multiple CPUs is
> >      visible to all CPUs
> > 
> >   2. A write that is visible to all CPUs is also visible to all other
> >      observers in the shareability domain
> > 
> > Pieced together, this allows us to use DMB OSHST for our default I/O
> > write accessors and DMB OSHLD for our default I/O read accessors (the
> > outer-shareability is for handling non-cacheable mappings) for shared
> > devices. Memory-mapped, DMA-capable peripherals that are private to a
> > CPU (i.e. inaccessible to other CPUs) still require the DSB, however
> > these are few and far between and typically require special treatment
> > anyway which is outside of the scope of the portable driver API (e.g.
> > GIC, page-table walker, SPE profiler).
> 
> I think there is another class of devices which are not CPU private
> (USB, network). The buffer here is on-chip and the CPU can't do much
> other than issuing a DSB (and even this may not be sufficient). The
> multi-copy atomicity rule would work between CPUs here but not
> necessarily for the device. Not sure they rely on the barrier in
> writel(), I guess we can wait and fix them with the mandatory barriers
> afterwards. In the meantime:
> 
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

Thanks! I don't think that the on-chip case is too bad: either the device
observes updates like the CPUs (which would be necessary in order to
guarantee coherence with the CPU caches), or the buffer is really part of
the peripheral and mapped non-cacheable, so DMB would work for endpoint
ordering. I suppose you could imagine a magic, device-specific dance to
ensure visibility, but if that involves things like MMIO registers and
read-backs then you'll need mandatory barriers anyway.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
