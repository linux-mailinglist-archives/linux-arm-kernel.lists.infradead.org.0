Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 313DE1C06B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 03:54:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/jw8zJRWuuVxtphgKZugqFHPVw9+p+tSO4fonSJs3Y=; b=Nfw7bMBcrslTXb
	KweCW/ZCyUyISAxLYlrjRZfTWNwLm+5or0K8SzeDTkqZv9DAmMVV8ZVSXjMOfzx0F3cts+K802d70
	mI4p1iiE/T6eTGjlZPB2usjbc+RBm1YP3PsGSa/+HIMKGsP+dKdIs8Eot1a2PBnBSvrJ1JX0T1h0O
	7a015CSwNQ6YB0HYkQP2M3yerroXveAsF6Y+Kdvyr6DGKgJq8GO05XQydgApPmCdosevSl494Fe7W
	80Frr/fJxT+GzdVmvBZyzUm1dmEfN0IewYZovXUP161St2mqwHPKsQJcY1rOMcgwuNuIkbXy/6l2Z
	M9zswgDhdQAivK9QL5qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQMe9-0006ZB-NJ; Tue, 14 May 2019 01:54:25 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQMe2-0006Yr-GD
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 01:54:20 +0000
Received: by mail-ed1-x542.google.com with SMTP id n17so20398409edb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 18:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oJTciUBqLw6+VYQPo9LgfDntBzoqnhF9HaeX08QgSPc=;
 b=Hf5dvgxbzZDy/nUCh6WREXgCdmnsqQqs9yDXE/AMxAnWv5bjbVKxl7vYd17rbAdh6M
 i7WdnJkAZPR/EGWh9YwlCE8zyTpRv32TC7gse0SVZjdXqaBEB132hWLBEE/dWTR/In4V
 WoU+N+PEDuHj0jauuIxuLRppu/csxHCT+v4d09Vb/P9XyV5b9dfMwOndZoDI8C2iR9Fn
 YORL5ggTkGvppRRw8PMdQZUrQC2vySetCcf1fhEgwUy1s2OOc7ZJeYv6r5vMU4g+urD9
 47+vApdVszVXOsiYDg8G8d8tKw4qNBAVKX32zbETS+Oh3j/vuKTz1crnz6c5jBjUY2Ap
 kydw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oJTciUBqLw6+VYQPo9LgfDntBzoqnhF9HaeX08QgSPc=;
 b=QvWIvD4LNqrERp3QGpZ+N2PNRTmlOkG9LNq7MgxCjefqTGzZSSCqyJ6DI4jKHgOUKf
 b5MIoucqqp07ArTMT2j4zlzGvyVFCmygmwbv2CWw36WN4RBqbzceCZ64qzp39f9Y4rx7
 9kuqyF4jpBZyC/1xF+Wgz2wCe3/VPN+3h4oe8UYuGEiPI23WRbwDsczby08ru9NnjM0w
 apJm77swQFQvCa99cI1qUQMCGVyje38atKDA2hSpk+670ugcJd5uItxnIxtDTdgMskPT
 jLhskirQNHVwCyE5oyRJfMJl7pASsttHAQKvWdNXLr76PF+V3SyviyhMm5wvuzHyQJDH
 E9LQ==
X-Gm-Message-State: APjAAAXtdF5iEPlFmRCNnzbWvvzVxBroQi4tpNC5fbF2pss0agFE/N86
 PlETtT8+sXUWSx/bZw2AS1LPxS4fXyng+5Zk6dI=
X-Google-Smtp-Source: APXvYqwtjwbA6ugaUY4XzcsNk6VWZorMnP/TGvu7pzPTN7g769c186jM+tAHFc0r++Gvo/m+W7Lbz2AQ3ErPJI2Gyk8=
X-Received: by 2002:a17:906:4e56:: with SMTP id
 g22mr17944472ejw.51.1557798856169; 
 Mon, 13 May 2019 18:54:16 -0700 (PDT)
MIME-Version: 1.0
References: <20170914194444.32551-1-robdclark@gmail.com>
 <20170919123038.GF8398@8bytes.org>
 <CAF6AEGuutkqjrWk4jagE=p-NwHgxdiPZjjsaFsfwtczK568j+A@mail.gmail.com>
 <20170922090204.GJ8398@8bytes.org>
 <32e3ab2c-a996-c805-2a0d-a2e85deb3a50@arm.com>
 <CAF6AEGuepdKo1Ob2jW66UhYXOTAqOMc3C-XKsK3Rze1QdLobLw@mail.gmail.com>
 <571e825d-7f54-2da4-adc0-6b6ac6dae459@arm.com>
In-Reply-To: <571e825d-7f54-2da4-adc0-6b6ac6dae459@arm.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 13 May 2019 18:54:03 -0700
Message-ID: <CAF6AEGtJRYvSLw+Cc6XaHEN58Ne2_StTojN9_e6+aJZSfX_dVg@mail.gmail.com>
Subject: Re: [RFC] iommu: arm-smmu: stall support
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_185418_567039_43FE4DD9 
X-CRM114-Status: GOOD (  42.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "jacob.jun.pan@linux.intel.com" <jacob.jun.pan@linux.intel.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Will Deacon <Will.Deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "eric.auger@redhat.com" <eric.auger@redhat.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 11:37 AM Jean-Philippe Brucker
<jean-philippe.brucker@arm.com> wrote:
>
> Hi Rob,
>
> On 10/05/2019 19:23, Rob Clark wrote:
> > On Fri, Sep 22, 2017 at 2:58 AM Jean-Philippe Brucker
> > <jean-philippe.brucker@arm.com> wrote:
> >>
> >> On 22/09/17 10:02, Joerg Roedel wrote:
> >>> On Tue, Sep 19, 2017 at 10:23:43AM -0400, Rob Clark wrote:
> >>>> I would like to decide in the IRQ whether or not to queue work or not,
> >>>> because when we get a gpu fault, we tend to get 1000's of gpu faults
> >>>> all at once (and I really only need to handle the first one).  I
> >>>> suppose that could also be achieved by having a special return value
> >>>> from the fault handler to say "call me again from a wq"..
> >>>>
> >>>> Note that in the drm driver I already have a suitable wq to queue the
> >>>> work, so it really doesn't buy me anything to have the iommu driver
> >>>> toss things off to a wq for me.  Might be a different situation for
> >>>> other drivers (but I guess mostly other drivers are using iommu API
> >>>> indirectly via dma-mapping?)
> >>>
> >>> Okay, so since you are the only user for now, we don't need a
> >>> work-queue. But I still want the ->resume call-back to be hidden in the
> >>> iommu code and not be exposed to users.
> >>>
> >>> We already have per-domain fault-handlers, so the best solution for now
> >>> is to call ->resume from report_iommu_fault() when the fault-handler
> >>> returns a special value.
> >>
> >> The problem is that report_iommu_fault is called from IRQ context by the
> >> SMMU driver, so the device driver callback cannot sleep.
> >>
> >> So if the device driver needs to be able to sleep between fault report and
> >> resume, as I understand Rob needs for writing debugfs, we can either:
> >>
> >> * call report_iommu_fault from higher up, in a thread or workqueue.
> >> * split the fault reporting as this patch proposes. The exact same
> >>   mechanism is needed for the vSVM work by Intel: in order to inject fault
> >>   into the guest, they would like to have an atomic notifier registered by
> >>   VFIO for passing down the Page Request, and a new function in the IOMMU
> >>   API to resume/complete the fault.
> >>
> >
> > So I was thinking about this topic again.. I would still like to get
> > some sort of async resume so that I can wire up GPU cmdstream/state
> > logging on iommu fault (without locally resurrecting and rebasing this
> > patch and drm/msm side changes each time I need to debug iommu
> > faults)..
>
> We've been working on the new fault reporting API with Jacob and Eric,
> and I intend to send it out soon. It is supposed to be used for
> reporting faults to guests via VFIO, handling page faults via mm, and
> also reporting events directly to device drivers. Please let us know
> what works and what doesn't in your case
>
> The most recent version of the patches is at
> http://www.linux-arm.org/git?p=linux-jpb.git;a=shortlog;h=refs/heads/sva/api
> (git://www.linux-arm.org/linux-jpb.git branch sva/api). Hopefully on the
> list sometimes next week, I'll add you on Cc.
>
> In particular, see commits
>         iommu: Introduce device fault data
>         iommu: Introduce device fault report API
>         iommu: Add recoverable fault reporting
>
> The device driver calls iommu_register_device_fault_handler(dev, cb,
> data). To report a fault, the SMMU driver calls
> iommu_report_device_fault(dev, fault). This calls into the device driver
> directly, there isn't any workqueue. If the fault is recoverable (the
> SMMU driver set type IOMMU_FAULT_PAGE_REQ rather than
> IOMMU_FAULT_DMA_UNRECOV), the device driver calls iommu_page_response()
> once it has dealt with the fault (after sleeping if it needs to). This
> invokes the SMMU driver's resume callback.

Ok, this sounds at a high level similar to my earlier RFC, in that
resume is split (and that was the main thing I was interested in).
And it does solve one thing I was struggling with, namely that when
the domain is created it doesn't know which iommu device it will be
attached to (given that at least the original arm-smmu.c driver cannot
support stall in all cases)..

For GPU translation faults, I also don't really need to know if the
faulting translation is stalled until the callback (I mainly want to
not bother to snapshot GPU state if it is not stalled, because in that
case the data we snapshot is unlikely to be related to the fault if
the translation is not stalled).

> At the moment we use mutexes, so iommu_report_device_fault() can only be
> called from an IRQ thread, which is incompatible with the current SMMUv2
> driver. Either we need to switch the SMMUv2 driver to an IRQ thread, or
> rework the fault handler to be called from an IRQ handler. The reporting
> also has to be per device rather than per domain, and I'm not sure if
> the SMMUv2 driver can deal with this.

I'll take a closer look at the branch and try to formulate some plan
to add v2 support for this.

For my cases, the GPU always has it's own iommu device, while display
and other blocks share an apps_smmu.. although this sort of
functionality isn't really required outside of the GPU.. but I'll have
to think a bit about how we can support both cases in the single v2
driver.

BR,
-R

>
> >
> > And I do still prefer the fault cb in irq (or not requiring it in
> > wq)..  but on thinking about it, the two ideas aren't entirely
> > conflicting, ie. add some flags either when we register handler[1], or
> > they could be handled thru domain_set_attr, like:
> >
> >  _EXPLICIT_RESUME - iommu API user calls iommu_domain_resume(),
> > potentialy from wq/thread after fault handler returns
> >  _HANDLER_SLEEPS  - iommu core handles the wq, and calls ops->resume()
> > internally
> >
> > In both cases, from the iommu driver PoV it just implements
> > iommu_ops::resume().. in first case it is called via iommu user either
> > from the fault handler or at some point later (ie. wq or thread).
> >
> > I don't particularly need the _HANDLER_SLEEPS case (unless I can't
> > convince anyone that iommu_domamin_resume() called from outside iommu
> > core is a good idea).. so probably I wouldn't wire up the wq plumbing
> > for the _HANDLER_SLEEPS case unless someone really wanted me to.
> >
> > Since there are more iommu drivers, than places that register fault
> > handlers, I like the idea that in either case, from the driver PoV, it
> > is just implementing the resume callback.
> >
> > [1] currently I only see a few places where fault handlers are
> > registered, so changing iommu_set_fault_handler() is really not much
> > churn
>
> At the moment we're keeping the new fault reporting mechanism separate
> from iommu_set_fault_handler()/report_iommu_fault(), to ease the transition.
>
> Thanks,
> Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
