Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A2F1D7D34
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7As75aaiFL5tJl5xhrqxykXBECk/0XC6ilBN+0DhRc=; b=iue5XQpdkVAHhx
	CVB6jxH3dtQ/htt9cAf9sheAK7EVcvNtKWX6w97NmwnMaDkTEGpRI114MHTCSoZILmjaFGTjC417r
	aD4LMLEWjG/geh5yLmXtnhISkY29cEQ2pntVezCzlRTnjwGuhPzFdcxky8gtkdfw23HRejVzXiSUn
	frGYFSE9NNk1lnhbelXMHD9F+TFbnwZhIvhPQI7Yo+De2kABhcrSsn7myBDjXX+RZe81OVCcXwaHz
	+5SJHuTjr0dmQxOISZ84OXyEKYvAgunq8ra+20XX7NQ3UcTLzOHFflrDUYNDBl8QzYLLRpC/TnIkk
	uKJImuIChw86g4Jc2PVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahxR-0001mA-6s; Mon, 18 May 2020 15:45:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahxI-0001l0-1q
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:45:29 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E63920657;
 Mon, 18 May 2020 15:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589816727;
 bh=lkx1dqDKnZ+7YQ40oS1fSOiu3vaTshH77dFDIsJ7zpY=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=1R3PT4Fh7iXsD1dBKDsTA2zU+v6Fh9XxL6QeojwFzCuedeAidtnj708jw4tqa4daW
 WQzvXD/kyiA6nLQ/cGC3LCXT/X1PHq4EszC5UwDZfsIpkO7JTCeIkjtPCyXP0PWYuV
 HoXh0/YZGhjrBX0kbc703WUMPr7fTluicvDCKH8s=
Date: Mon, 18 May 2020 16:45:23 +0100
From: Will Deacon <will@kernel.org>
To: Rob Clark <robdclark@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Joerg Roedel <joro@8bytes.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>
Subject: Re: [PATCH] iomm/arm-smmu: Add stall implementation hook
Message-ID: <20200518154522.GN32394@willie-the-truck>
References: <20200421202004.11686-1-saiprakash.ranjan@codeaurora.org>
 <b491e02ad790a437115fdeab6b21bc48@codeaurora.org>
 <1ced023b-157c-21a0-ac75-1adef7f029f0@arm.com>
 <20200507125357.GA31783@willie-the-truck>
 <CAF6AEGuLU+_qP8HNO1s9PTPHqJnCMHzehmcT8NiJhiAwrfSH6w@mail.gmail.com>
 <CAF6AEGvuHKObTR97XdSXjmjKB+qjQ8N1_wxM=ZU8bEkF=cXp-A@mail.gmail.com>
 <20200511173008.GA24282@jcrouse1-lnx.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511173008.GA24282@jcrouse1-lnx.qualcomm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_084528_138931_5311426F 
X-CRM114-Status: GOOD (  31.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 11:30:08AM -0600, Jordan Crouse wrote:
> On Fri, May 08, 2020 at 08:40:40AM -0700, Rob Clark wrote:
> > On Fri, May 8, 2020 at 8:32 AM Rob Clark <robdclark@gmail.com> wrote:
> > >
> > > On Thu, May 7, 2020 at 5:54 AM Will Deacon <will@kernel.org> wrote:
> > > >
> > > > On Thu, May 07, 2020 at 11:55:54AM +0100, Robin Murphy wrote:
> > > > > On 2020-05-07 11:14 am, Sai Prakash Ranjan wrote:
> > > > > > On 2020-04-22 01:50, Sai Prakash Ranjan wrote:
> > > > > > > Add stall implementation hook to enable stalling
> > > > > > > faults on QCOM platforms which supports it without
> > > > > > > causing any kind of hardware mishaps. Without this
> > > > > > > on QCOM platforms, GPU faults can cause unrelated
> > > > > > > GPU memory accesses to return zeroes. This has the
> > > > > > > unfortunate result of command-stream reads from CP
> > > > > > > getting invalid data, causing a cascade of fail.
> > > > >
> > > > > I think this came up before, but something about this rationale doesn't add
> > > > > up - we're not *using* stalls at all, we're still terminating faulting
> > > > > transactions unconditionally; we're just using CFCFG to terminate them with
> > > > > a slight delay, rather than immediately. It's really not clear how or why
> > > > > that makes a difference. Is it a GPU bug? Or an SMMU bug? Is this reliable
> > > > > (or even a documented workaround for something), or might things start
> > > > > blowing up again if any other behaviour subtly changes? I'm not dead set
> > > > > against adding this, but I'd *really* like to have a lot more confidence in
> > > > > it.
> > > >
> > > > Rob mentioned something about the "bus returning zeroes" before, but I agree
> > > > that we need more information so that we can reason about this and maintain
> > > > the code as the driver continues to change. That needs to be a comment in
> > > > the driver, and I don't think "but android seems to work" is a good enough
> > > > justification. There was some interaction with HUPCF as well.
> > >
> > > The issue is that there are multiple parallel memory accesses
> > > happening at the same time, for example CP (the cmdstream processor)
> > > will be reading ahead and setting things up for the next draw or
> > > compute grid, in parallel with some memory accesses from the shader
> > > which could trigger a fault.  (And with faults triggered by something
> > > in the shader, there are *many* shader threads running in parallel so
> > > those tend to generate a big number of faults at the same time.)
> > >
> > > We need either CFCFG or HUPCF, otherwise what I have observed is that
> > > while the fault happens, CP's memory access will start returning
> > > zero's instead of valid cmdstream data, which triggers a GPU hang.  I
> > > can't say whether this is something unique to qcom's implementation of
> > > the smmu spec or not.
> > >
> > > *Often* a fault is the result of the usermode gl/vk/cl driver bug,
> > > although I don't think that is an argument against fixing this in the
> > > smmu driver.. I've been carrying around a local patch to set HUPCF for
> > > *years* because debugging usermode driver issues is so much harder
> > > without.  But there are some APIs where faults can be caused by the
> > > user's app on top of the usermode driver.
> > >
> > 
> > Also, I'll add to that, a big wish of mine is to have stall with the
> > ability to resume later from a wq context.  That would enable me to
> > hook in the gpu crash dump handling for faults, which would make
> > debugging these sorts of issues much easier.  I think I posted a
> > prototype of this quite some time back, which would schedule a worker
> > on the first fault (since there are cases where you see 1000's of
> > faults at once), which grabbed some information about the currently
> > executing submit and some gpu registers to indicate *where* in the
> > submit (a single submit could have 100's or 1000's of draws), and then
> > resumed the iommu cb.
> > 
> > (This would ofc eventually be useful for svm type things.. I expect
> > we'll eventually care about that too.)
> 
> Rob is right about HUPCF. Due to the parallel nature of the command processor
> there is always a very good chance that a CP access is somewhere in the bus so
> any pagefault is usually a death sentence. The GPU context bank would always
> want HUPCF set to 1.

So this sounds like an erratum to me, and I'm happy to set HUPCF if we
detect the broken implementation. However, it will need an entry in
Documentation/arm64/silicon-errata.rst and a decent comment in the driver
to explain what we're doing and why.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
