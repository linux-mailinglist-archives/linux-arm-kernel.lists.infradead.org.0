Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE701CDC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 19:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtDPK4bVR9edzQW5gPpHDNGAE1ZIV2bIeMG2ZUvOO+8=; b=eN1mkeBC9DcfR7
	ZAMvbqsjHxaQko96YaDqzkR3RjFwSIlCwc8zD1fCsREA62E2k91BrHfjP/az7v1fVneA55xyyGJPT
	a28kWhvOjSZ1yo4FDyw0YPxzMZLfGs2GrZPvUY1o9D/oDs0bRYWNOFpw0lTVrfGiM0ffKPn6NSaxq
	LpGPwe2hL5sezLB532h5ur4K1L+/FASy2GTAqFkCufe6zcupX0nmmejQbA4F2q7qvJnR0XAHIwFyM
	rUWoxf36beys4gUG6ijzlV4aCZYMKtpFGlC2SegXKrutpbQhZv+SoEfd3nSZp1+m6JYJVLqDpfdyT
	Za0JjPLjGU7L4LWxV/ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQb3M-0000u7-Tr; Tue, 14 May 2019 17:17:24 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQb3F-0000tQ-Dv
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 17:17:19 +0000
Received: by mail-ed1-x542.google.com with SMTP id f37so23863338edb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 10:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+l9zz6eaN2LIJhz1rmWgTZAN4kH+dDR0HBMwscHakxY=;
 b=Vw8j1EhC/hirGyhd//mhklJ3dK/9R4/rkLaiCq33qN9mZBdK+h9CeuGckVuTAQj4r8
 Lroza3lMGmp3StHW3eBjXChsbcS6EzT+k4q+eonRhUVGbJfcGNxpvbT9O2BDNZ0+AOX9
 m4AAe84sX022No4bgqg0cFpzvHd5AN7eSJj3oinlXew9tzYa2COSvYh7cs9sOrhvyivV
 Io/sNSNXcrdWcax24GCRqP5/Crhy3g3lIl7bs4HUgNiVaFKD/wG2LeXJu7F943s/cwD0
 HWQdaWMKasSQOWas0lKqMo36mGXP4HzFwMOV/QttYVTHapA6zmuvvFGGuApY99YCJvjT
 4BWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+l9zz6eaN2LIJhz1rmWgTZAN4kH+dDR0HBMwscHakxY=;
 b=cz/l5W7gSUdlME138/PHuE/iXO2nsSQJXWs/TYrYiF/XmboaIMXs2hZGGvME8JR/kH
 oT1ML0mhy/2Z3PEOHmD6w3DDHL0khSfvP0/e8QRp4SNbntPXVaL1+WG6CYA4kjxd9MQ6
 VzWIDqmx7T7rZqnJRITdlGcj/DViIbGpxKYABYLYD4L/nytfl2LtdbGiZFJ9GbY7h8+E
 4VSZXI42JHonkw7GKRkvjTTDFf7DsjqRsjc7I1H+AZ0HyvpiVgIG7xXRWBbN1boCoFbN
 txPmsrDYHsrVcZlEFbyXmEHCs3xmfUpqqm70Cl3Mgz+ZDOH7PL6VWdIYLClcuw/xt8on
 AW8g==
X-Gm-Message-State: APjAAAUFU/4yZ0YotA9dK6VLf5H5gyeJdqoU+aTlxqpVdDxoeksr3qDo
 5aAehh9NyXT6C3fJexWat0AL187mpWE5GSeXeFdnfzPL
X-Google-Smtp-Source: APXvYqwmXirTESmlcC78TECRFWo44J6KJt1h6qI1PBjPpoXbbJP1T2BFjs/mfGdnb1QLBUyu3TedlIxXhIoLHR0QlWs=
X-Received: by 2002:a17:907:20a6:: with SMTP id
 pw6mr11778381ejb.113.1557854234894; 
 Tue, 14 May 2019 10:17:14 -0700 (PDT)
MIME-Version: 1.0
References: <20170914194444.32551-1-robdclark@gmail.com>
 <20170919123038.GF8398@8bytes.org>
 <CAF6AEGuutkqjrWk4jagE=p-NwHgxdiPZjjsaFsfwtczK568j+A@mail.gmail.com>
 <20170922090204.GJ8398@8bytes.org>
 <32e3ab2c-a996-c805-2a0d-a2e85deb3a50@arm.com>
 <CAF6AEGuepdKo1Ob2jW66UhYXOTAqOMc3C-XKsK3Rze1QdLobLw@mail.gmail.com>
 <571e825d-7f54-2da4-adc0-6b6ac6dae459@arm.com>
 <CAF6AEGtJRYvSLw+Cc6XaHEN58Ne2_StTojN9_e6+aJZSfX_dVg@mail.gmail.com>
 <6f7fb139-5117-d89e-0caa-bd34ea9b6ff3@arm.com>
In-Reply-To: <6f7fb139-5117-d89e-0caa-bd34ea9b6ff3@arm.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 14 May 2019 10:17:03 -0700
Message-ID: <CAF6AEGuxGAjqpZBKQvmyHTr7fPU9yKYLf1CfB_TMzKDiXptjzg@mail.gmail.com>
Subject: Re: [RFC] iommu: arm-smmu: stall support
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_101717_496697_889B7B86 
X-CRM114-Status: GOOD (  39.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Will Deacon <Will.Deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 3:24 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 14/05/2019 02:54, Rob Clark wrote:
> > On Mon, May 13, 2019 at 11:37 AM Jean-Philippe Brucker
> > <jean-philippe.brucker@arm.com> wrote:
> >>
> >> Hi Rob,
> >>
> >> On 10/05/2019 19:23, Rob Clark wrote:
> >>> On Fri, Sep 22, 2017 at 2:58 AM Jean-Philippe Brucker
> >>> <jean-philippe.brucker@arm.com> wrote:
> >>>>
> >>>> On 22/09/17 10:02, Joerg Roedel wrote:
> >>>>> On Tue, Sep 19, 2017 at 10:23:43AM -0400, Rob Clark wrote:
> >>>>>> I would like to decide in the IRQ whether or not to queue work or not,
> >>>>>> because when we get a gpu fault, we tend to get 1000's of gpu faults
> >>>>>> all at once (and I really only need to handle the first one).  I
> >>>>>> suppose that could also be achieved by having a special return value
> >>>>>> from the fault handler to say "call me again from a wq"..
> >>>>>>
> >>>>>> Note that in the drm driver I already have a suitable wq to queue the
> >>>>>> work, so it really doesn't buy me anything to have the iommu driver
> >>>>>> toss things off to a wq for me.  Might be a different situation for
> >>>>>> other drivers (but I guess mostly other drivers are using iommu API
> >>>>>> indirectly via dma-mapping?)
> >>>>>
> >>>>> Okay, so since you are the only user for now, we don't need a
> >>>>> work-queue. But I still want the ->resume call-back to be hidden in the
> >>>>> iommu code and not be exposed to users.
> >>>>>
> >>>>> We already have per-domain fault-handlers, so the best solution for now
> >>>>> is to call ->resume from report_iommu_fault() when the fault-handler
> >>>>> returns a special value.
> >>>>
> >>>> The problem is that report_iommu_fault is called from IRQ context by the
> >>>> SMMU driver, so the device driver callback cannot sleep.
> >>>>
> >>>> So if the device driver needs to be able to sleep between fault report and
> >>>> resume, as I understand Rob needs for writing debugfs, we can either:
> >>>>
> >>>> * call report_iommu_fault from higher up, in a thread or workqueue.
> >>>> * split the fault reporting as this patch proposes. The exact same
> >>>>    mechanism is needed for the vSVM work by Intel: in order to inject fault
> >>>>    into the guest, they would like to have an atomic notifier registered by
> >>>>    VFIO for passing down the Page Request, and a new function in the IOMMU
> >>>>    API to resume/complete the fault.
> >>>>
> >>>
> >>> So I was thinking about this topic again.. I would still like to get
> >>> some sort of async resume so that I can wire up GPU cmdstream/state
> >>> logging on iommu fault (without locally resurrecting and rebasing this
> >>> patch and drm/msm side changes each time I need to debug iommu
> >>> faults)..
> >>
> >> We've been working on the new fault reporting API with Jacob and Eric,
> >> and I intend to send it out soon. It is supposed to be used for
> >> reporting faults to guests via VFIO, handling page faults via mm, and
> >> also reporting events directly to device drivers. Please let us know
> >> what works and what doesn't in your case
> >>
> >> The most recent version of the patches is at
> >> http://www.linux-arm.org/git?p=linux-jpb.git;a=shortlog;h=refs/heads/sva/api
> >> (git://www.linux-arm.org/linux-jpb.git branch sva/api). Hopefully on the
> >> list sometimes next week, I'll add you on Cc.
> >>
> >> In particular, see commits
> >>          iommu: Introduce device fault data
> >>          iommu: Introduce device fault report API
> >>          iommu: Add recoverable fault reporting
> >>
> >> The device driver calls iommu_register_device_fault_handler(dev, cb,
> >> data). To report a fault, the SMMU driver calls
> >> iommu_report_device_fault(dev, fault). This calls into the device driver
> >> directly, there isn't any workqueue. If the fault is recoverable (the
> >> SMMU driver set type IOMMU_FAULT_PAGE_REQ rather than
> >> IOMMU_FAULT_DMA_UNRECOV), the device driver calls iommu_page_response()
> >> once it has dealt with the fault (after sleeping if it needs to). This
> >> invokes the SMMU driver's resume callback.
> >
> > Ok, this sounds at a high level similar to my earlier RFC, in that
> > resume is split (and that was the main thing I was interested in).
> > And it does solve one thing I was struggling with, namely that when
> > the domain is created it doesn't know which iommu device it will be
> > attached to (given that at least the original arm-smmu.c driver cannot
> > support stall in all cases)..
> >
> > For GPU translation faults, I also don't really need to know if the
> > faulting translation is stalled until the callback (I mainly want to
> > not bother to snapshot GPU state if it is not stalled, because in that
> > case the data we snapshot is unlikely to be related to the fault if
> > the translation is not stalled).
> >
> >> At the moment we use mutexes, so iommu_report_device_fault() can only be
> >> called from an IRQ thread, which is incompatible with the current SMMUv2
> >> driver. Either we need to switch the SMMUv2 driver to an IRQ thread, or
> >> rework the fault handler to be called from an IRQ handler. The reporting
> >> also has to be per device rather than per domain, and I'm not sure if
> >> the SMMUv2 driver can deal with this.
> >
> > I'll take a closer look at the branch and try to formulate some plan
> > to add v2 support for this.
>
> What's fun is that we should be able to identify a stream ID for most
> context faults *except* translation faults...
>
> We've considered threaded IRQs before, and IIRC the problem with doing
> it at the architectural level is that in some cases the fault interrupt
> can only be deasserted by actually resuming/terminating the stalled
> transaction.
>
> > For my cases, the GPU always has it's own iommu device, while display
> > and other blocks share an apps_smmu.. although this sort of
> > functionality isn't really required outside of the GPU.. but I'll have
> > to think a bit about how we can support both cases in the single v2
> > driver.
>
> With the above said, I am in the middle of a big refactoring[1] to allow
> everyone's imp-def stuff to coexist nicely, so ultimately if qcom
> implementations can guarantee the appropriate hardware behaviour then
> they can have their own interrupt handlers to accommodate this.
>

Ok, maybe I'll hold off a bit and work on other things, to avoid feet stomping..

I don't suppose you have thoughts about split pagetables, which is one
of the things we want for implementing per-context pagetables?  I
suppose that is less of an impl thing and more an architecture thing,
but maybe no one on other implementations wants this?

BR,
-R


> Robin.
>
> [1]
> http://linux-arm.org/git?p=linux-rm.git;a=shortlog;h=refs/heads/iommu/smmu-impl
> - note that this is very, very WIP right now

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
