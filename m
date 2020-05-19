Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 831391D934C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wNHXXv4uz7tQX4OJJNfDsbDhAEnLURlLefj5IQctEJg=; b=ABXGVCwMDMLwkNSW6iPwC3vNs
	x9+B3/gY9qK6axjRTe1tYcvpOaVj1pT3COk1ZkC8mbI/FdUPYcOaAj3RwOmUd1POeBbpKpKizJ8/W
	Bsos6iJ/jFNlJtPXfOzmJfVqCryRgvpMnXt3oDnu7Jca67EgDNj/9W4U4SCGlrsZ5dF2peMkWp2Qi
	Migd2+R0PIGjGhJ2Xj24tDgH15quaRCht+ZDmLZuA+IJTTtwDsQdSFFAn/QjIw9C6Z+Zqg4DmOIYY
	U/Vzjqh9ryUiOO+xS1yp/rrRJCMdc8kEisF2AL6JQsP28lieCHkzKedaUSpysKAC7KXc1Ae8bZDz0
	Z8835g3cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayWQ-0002iB-7a; Tue, 19 May 2020 09:26:50 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayWC-0002h2-22
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:26:38 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589880396; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=aJ2iFgde8rnDCoyGqYJM6cG8pZxDm5e8UHUvHqksFTA=;
 b=qWrVIxDz7rW/Dmm7S1wO8Z/VdCMSN+jsodwgzkH9sSjnmcjSYxzajNgjsjphbgWOccj9rcwj
 srsY+IW/a4XP8YbaqXlxfD31XxmjkRvZXcrIf9yw0uD4EUgJme/xr91L+J3iWSW1fjiCaW2H
 8QdMjlaRFd34X3RfcGNsYjIRqyI=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ec3a64a.7ff4b60cdc00-smtp-out-n04;
 Tue, 19 May 2020 09:26:34 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 87E85C43636; Tue, 19 May 2020 09:26:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9F34BC433F2;
 Tue, 19 May 2020 09:26:33 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 19 May 2020 14:56:33 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] iomm/arm-smmu: Add stall implementation hook
In-Reply-To: <20200518154522.GN32394@willie-the-truck>
References: <20200421202004.11686-1-saiprakash.ranjan@codeaurora.org>
 <b491e02ad790a437115fdeab6b21bc48@codeaurora.org>
 <1ced023b-157c-21a0-ac75-1adef7f029f0@arm.com>
 <20200507125357.GA31783@willie-the-truck>
 <CAF6AEGuLU+_qP8HNO1s9PTPHqJnCMHzehmcT8NiJhiAwrfSH6w@mail.gmail.com>
 <CAF6AEGvuHKObTR97XdSXjmjKB+qjQ8N1_wxM=ZU8bEkF=cXp-A@mail.gmail.com>
 <20200511173008.GA24282@jcrouse1-lnx.qualcomm.com>
 <20200518154522.GN32394@willie-the-truck>
Message-ID: <5a0ad639e272026c8be57393937cda22@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_022636_977689_6090E097 
X-CRM114-Status: GOOD (  34.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, "list@263.net:IOMMU DRIVERS , Joerg Roedel
 <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Clark <robdclark@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2020-05-18 21:15, Will Deacon wrote:
> On Mon, May 11, 2020 at 11:30:08AM -0600, Jordan Crouse wrote:
>> On Fri, May 08, 2020 at 08:40:40AM -0700, Rob Clark wrote:
>> > On Fri, May 8, 2020 at 8:32 AM Rob Clark <robdclark@gmail.com> wrote:
>> > >
>> > > On Thu, May 7, 2020 at 5:54 AM Will Deacon <will@kernel.org> wrote:
>> > > >
>> > > > On Thu, May 07, 2020 at 11:55:54AM +0100, Robin Murphy wrote:
>> > > > > On 2020-05-07 11:14 am, Sai Prakash Ranjan wrote:
>> > > > > > On 2020-04-22 01:50, Sai Prakash Ranjan wrote:
>> > > > > > > Add stall implementation hook to enable stalling
>> > > > > > > faults on QCOM platforms which supports it without
>> > > > > > > causing any kind of hardware mishaps. Without this
>> > > > > > > on QCOM platforms, GPU faults can cause unrelated
>> > > > > > > GPU memory accesses to return zeroes. This has the
>> > > > > > > unfortunate result of command-stream reads from CP
>> > > > > > > getting invalid data, causing a cascade of fail.
>> > > > >
>> > > > > I think this came up before, but something about this rationale doesn't add
>> > > > > up - we're not *using* stalls at all, we're still terminating faulting
>> > > > > transactions unconditionally; we're just using CFCFG to terminate them with
>> > > > > a slight delay, rather than immediately. It's really not clear how or why
>> > > > > that makes a difference. Is it a GPU bug? Or an SMMU bug? Is this reliable
>> > > > > (or even a documented workaround for something), or might things start
>> > > > > blowing up again if any other behaviour subtly changes? I'm not dead set
>> > > > > against adding this, but I'd *really* like to have a lot more confidence in
>> > > > > it.
>> > > >
>> > > > Rob mentioned something about the "bus returning zeroes" before, but I agree
>> > > > that we need more information so that we can reason about this and maintain
>> > > > the code as the driver continues to change. That needs to be a comment in
>> > > > the driver, and I don't think "but android seems to work" is a good enough
>> > > > justification. There was some interaction with HUPCF as well.
>> > >
>> > > The issue is that there are multiple parallel memory accesses
>> > > happening at the same time, for example CP (the cmdstream processor)
>> > > will be reading ahead and setting things up for the next draw or
>> > > compute grid, in parallel with some memory accesses from the shader
>> > > which could trigger a fault.  (And with faults triggered by something
>> > > in the shader, there are *many* shader threads running in parallel so
>> > > those tend to generate a big number of faults at the same time.)
>> > >
>> > > We need either CFCFG or HUPCF, otherwise what I have observed is that
>> > > while the fault happens, CP's memory access will start returning
>> > > zero's instead of valid cmdstream data, which triggers a GPU hang.  I
>> > > can't say whether this is something unique to qcom's implementation of
>> > > the smmu spec or not.
>> > >
>> > > *Often* a fault is the result of the usermode gl/vk/cl driver bug,
>> > > although I don't think that is an argument against fixing this in the
>> > > smmu driver.. I've been carrying around a local patch to set HUPCF for
>> > > *years* because debugging usermode driver issues is so much harder
>> > > without.  But there are some APIs where faults can be caused by the
>> > > user's app on top of the usermode driver.
>> > >
>> >
>> > Also, I'll add to that, a big wish of mine is to have stall with the
>> > ability to resume later from a wq context.  That would enable me to
>> > hook in the gpu crash dump handling for faults, which would make
>> > debugging these sorts of issues much easier.  I think I posted a
>> > prototype of this quite some time back, which would schedule a worker
>> > on the first fault (since there are cases where you see 1000's of
>> > faults at once), which grabbed some information about the currently
>> > executing submit and some gpu registers to indicate *where* in the
>> > submit (a single submit could have 100's or 1000's of draws), and then
>> > resumed the iommu cb.
>> >
>> > (This would ofc eventually be useful for svm type things.. I expect
>> > we'll eventually care about that too.)
>> 
>> Rob is right about HUPCF. Due to the parallel nature of the command 
>> processor
>> there is always a very good chance that a CP access is somewhere in 
>> the bus so
>> any pagefault is usually a death sentence. The GPU context bank would 
>> always
>> want HUPCF set to 1.
> 
> So this sounds like an erratum to me, and I'm happy to set HUPCF if we
> detect the broken implementation. However, it will need an entry in
> Documentation/arm64/silicon-errata.rst and a decent comment in the 
> driver
> to explain what we're doing and why.
> 

AFAIK there is no erratum documented internally for this behaviour and 
this
exists from MSM8996 SoC time and errata usually don't survive this long
across generation of SoCs and there is no point for us in disguising it.

Is it OK if we clearly mention it as the "design limitation" or some 
other
term which we can agree upon along with the description which Rob and 
Jordan
provided for setting HUPCF in the driver when we add the set_hupcf 
callback?

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
