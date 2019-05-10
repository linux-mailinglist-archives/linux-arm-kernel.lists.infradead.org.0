Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 213C41A2F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 20:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zh5MAL5Uw+2hhAwT0US0H+KJtf88nen7p0MypTR3qc4=; b=tY5Je0cVMvC5tL
	JE/srRxrT/n8o+3FA6XfbvwoHldoIaa/s9gBitPMBIMaHxK0VtSZ8nINGvaJJf1t1P7mkmplJyN9+
	HQwi5AKyO5M6hxtT6RdtCDvCXhvNkyQTOdrt3aVloCggTHDCdlosd1mguHY+qDteIiDO/EBv4QKsy
	aAUC/ixMq8xhFJmXaheb7Zjvc5FgJ89nk+YxKZfabe23W6N4h+iSZzDcojUsw2wG7VuNZ2G9JlQLi
	rSh+f+lyN1fRWZVgBrtLVqToYreMZvLNJNyP7+H/8Y+KsqkYcfxZZdYTdb5xq4HtcM8TO9nBlSSpr
	LGTeIaQ4Hjuwzs/ERgYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPABZ-0000yf-El; Fri, 10 May 2019 18:23:57 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPABR-0000xp-KZ
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 18:23:51 +0000
Received: by mail-ed1-x544.google.com with SMTP id g57so6274866edc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 11:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dra68sD3A+L9jmTIge40RbJUDi0r64rvVKFCcIo9SWw=;
 b=JU7a3v7RiEPD0VNYuvo2kA58OUV7CQec5Ky0+jiMqZlny9/CBjNNYq4moEr1fX4pk5
 Vl39VkY8/uNJsv3AmfCAB4yL/naqG1CR4VS8IBCruJAiFmJCq4PKyMcGsojx3eOxbB0I
 VGRmjtXGeVK6pCln5OuvJUVLngWjz9mng9/csQqQcVukvSUlw7G3behUihBvp/Q6dYQM
 KpD/fVa/3uGUf3NHOIvyS6PB5ehNdGETjupUhRA6M7U5KJOknptkLUIivQx2ur907mKN
 UkkhhgRONlVmFckixCjsCppo6REXgRk/ORQlUjmFMCPVZ3yvauhqYRex1VQau3q+Te27
 77yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dra68sD3A+L9jmTIge40RbJUDi0r64rvVKFCcIo9SWw=;
 b=n800moq4fE7XD9VjKd1tTK/XvntX/BLiftHvzAvooqkTJHXPKJuEXVmL20+6o7/Ogy
 dqwHJBNar7KhNGuXGppGalTtOiL5Be8VlbmgyRWIqpz4G3b8ahqt/T9KlDd39BP7qmXc
 4P9LkVjlLjUtpCFDf8uLcnk/VTQZYFb3ztOe1tdouL1GSM1aEOyfycD0i+f2ZjBfvdK9
 qrSY+sRBVZJ7/lw/8N3BdUBUBCWg7Uw3Qk3Zjwn0yUbs94/qaKj2oVjbKXXPKB4hv8ZB
 GZWJYs3DTF6vIOc9W5i1PQmAxp1egIsnQSC4ahYFgsGlqKdUJfujTlEr2vfaial7rvAS
 +9Gg==
X-Gm-Message-State: APjAAAUEGSFCNKIqBYaVB0jEBMSuyExX9nOgZqXUdouXW3k00z5HjCN+
 KZ6QmnjELGrqZwA8sx5vqvjlIvFJKh/xjHWfEFmAzVtMkM0=
X-Google-Smtp-Source: APXvYqzRQiFqm/l2aMVgEBwFQ5yK/wNMJvVmyhgygOk1zEL5AYR7ciH6/liicBqcTNkP12Ulkw8VgOjDuH6k3s3Qgm4=
X-Received: by 2002:a50:b3a6:: with SMTP id s35mr13324855edd.220.1557512625336; 
 Fri, 10 May 2019 11:23:45 -0700 (PDT)
MIME-Version: 1.0
References: <20170914194444.32551-1-robdclark@gmail.com>
 <20170919123038.GF8398@8bytes.org>
 <CAF6AEGuutkqjrWk4jagE=p-NwHgxdiPZjjsaFsfwtczK568j+A@mail.gmail.com>
 <20170922090204.GJ8398@8bytes.org>
 <32e3ab2c-a996-c805-2a0d-a2e85deb3a50@arm.com>
In-Reply-To: <32e3ab2c-a996-c805-2a0d-a2e85deb3a50@arm.com>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 10 May 2019 11:23:35 -0700
Message-ID: <CAF6AEGuepdKo1Ob2jW66UhYXOTAqOMc3C-XKsK3Rze1QdLobLw@mail.gmail.com>
Subject: Re: [RFC] iommu: arm-smmu: stall support
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_112349_700776_FF6C107E 
X-CRM114-Status: GOOD (  26.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <Will.Deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 22, 2017 at 2:58 AM Jean-Philippe Brucker
<jean-philippe.brucker@arm.com> wrote:
>
> On 22/09/17 10:02, Joerg Roedel wrote:
> > On Tue, Sep 19, 2017 at 10:23:43AM -0400, Rob Clark wrote:
> >> I would like to decide in the IRQ whether or not to queue work or not,
> >> because when we get a gpu fault, we tend to get 1000's of gpu faults
> >> all at once (and I really only need to handle the first one).  I
> >> suppose that could also be achieved by having a special return value
> >> from the fault handler to say "call me again from a wq"..
> >>
> >> Note that in the drm driver I already have a suitable wq to queue the
> >> work, so it really doesn't buy me anything to have the iommu driver
> >> toss things off to a wq for me.  Might be a different situation for
> >> other drivers (but I guess mostly other drivers are using iommu API
> >> indirectly via dma-mapping?)
> >
> > Okay, so since you are the only user for now, we don't need a
> > work-queue. But I still want the ->resume call-back to be hidden in the
> > iommu code and not be exposed to users.
> >
> > We already have per-domain fault-handlers, so the best solution for now
> > is to call ->resume from report_iommu_fault() when the fault-handler
> > returns a special value.
>
> The problem is that report_iommu_fault is called from IRQ context by the
> SMMU driver, so the device driver callback cannot sleep.
>
> So if the device driver needs to be able to sleep between fault report and
> resume, as I understand Rob needs for writing debugfs, we can either:
>
> * call report_iommu_fault from higher up, in a thread or workqueue.
> * split the fault reporting as this patch proposes. The exact same
>   mechanism is needed for the vSVM work by Intel: in order to inject fault
>   into the guest, they would like to have an atomic notifier registered by
>   VFIO for passing down the Page Request, and a new function in the IOMMU
>   API to resume/complete the fault.
>

So I was thinking about this topic again.. I would still like to get
some sort of async resume so that I can wire up GPU cmdstream/state
logging on iommu fault (without locally resurrecting and rebasing this
patch and drm/msm side changes each time I need to debug iommu
faults)..

And I do still prefer the fault cb in irq (or not requiring it in
wq)..  but on thinking about it, the two ideas aren't entirely
conflicting, ie. add some flags either when we register handler[1], or
they could be handled thru domain_set_attr, like:

 _EXPLICIT_RESUME - iommu API user calls iommu_domain_resume(),
potentialy from wq/thread after fault handler returns
 _HANDLER_SLEEPS  - iommu core handles the wq, and calls ops->resume()
internally

In both cases, from the iommu driver PoV it just implements
iommu_ops::resume().. in first case it is called via iommu user either
from the fault handler or at some point later (ie. wq or thread).

I don't particularly need the _HANDLER_SLEEPS case (unless I can't
convince anyone that iommu_domamin_resume() called from outside iommu
core is a good idea).. so probably I wouldn't wire up the wq plumbing
for the _HANDLER_SLEEPS case unless someone really wanted me to.

Since there are more iommu drivers, than places that register fault
handlers, I like the idea that in either case, from the driver PoV, it
is just implementing the resume callback.

[1] currently I only see a few places where fault handlers are
registered, so changing iommu_set_fault_handler() is really not much
churn

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
