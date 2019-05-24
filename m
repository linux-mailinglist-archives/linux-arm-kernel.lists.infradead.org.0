Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E482029E37
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 20:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wZUo3T9SSHoTxGxHVo/VIrKrFeYhRN7x68RXiI8tw/M=; b=JO7IoqBFA2ZKoC
	olYnciQVeDm1I/SyIRie2CSs6nNYpgc3aa1FrzKR6wUAhZD7VUZ4RMmfXLOLJlW48+abN6wTW69fJ
	sSM6pY3tvHJiVV0ptY7Wm9AKucQFubwwL9Xz7mh/CCewPVuH7NRgVurmVHP0Nx/YeJi2bTJ56pIrW
	Tr5ybvcoXqQQPMC4c6tBGvLYHIc/FJ+CGEyBxInXdN15vgTxMor/mn4yteUZgHs7X86vcCrt2F7gi
	KHbgUBRBv65ogVLX69pEU2wQIxawDtZEoGQPGsuwJtTxip4WbHFaDD63hfiph+/TF5x6GFyUvZxkT
	WFACODsGxO5m1m80WTJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUF62-00044J-S3; Fri, 24 May 2019 18:39:14 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUF5t-00041u-2E
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 18:39:07 +0000
Received: by mail-ed1-x543.google.com with SMTP id g57so789433edc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 11:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+zWh+e2JBmSZjNxmHFCEsBAIMZEj3CfViqQesJhg4Ew=;
 b=CTOtH5sH91k5oEblppyj2vdbuh9y9ChOJPokmxaW0k6iTVIM1Pij22UGRVBgXTMvDA
 NmJvUumCc4rqDN0MZ1BJQ7kcaYPRkP3tkS0ESt1DltSl/8MBQfQcCfbi6o/zxI/nqeC9
 CDF8JCiH9Z9qHEvy+aB+K27NleoD2JMlp6i8w6q8J42i2qONpTIQklfQkNbfg8vKb9vM
 4YcA0ZHiz6oaQ5p+zjWeMzERFBV33QNTXEHogeFJIFGZMB39ckOYr0aGslZ6zgtDtaAD
 H+uDeOsDDWE2igje7Yp/HaNmel0rqbwsllmtWEDE8AGdVGKZBwTcTU5FnMO6A/blQ55f
 yP+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+zWh+e2JBmSZjNxmHFCEsBAIMZEj3CfViqQesJhg4Ew=;
 b=fWa1P004yXCJd96brAw4CaaAGNBuTKs8614UFEWpTBXLFp5Pt6RtIhlxnYdCAN3hLa
 WfWaLaf1wquIBeS73i2E974sKy96mOipQ9R02DHX97ts1o1gS+PAlPZ1Dx+eC8fRvUTM
 eM+6uY+0LLrig2F/dkf0O7BPSbVHX0UeFONurNBCvTV8Zc9PXzzKn47vTspFtDNeMCTV
 9oq7ZLFroRtdLIpLOmmhfWcEMRqzFrBbUucp8ZMC6H85oQJdVu2CKLRANXkLteW2pO10
 2SxXXAX4ewHOaKwCUXWY/xSjKoX1oclKRXI1ZLIr3BpbUGJGsxznPQJgya6NifFCk8po
 QKSg==
X-Gm-Message-State: APjAAAUITsG1gmOL9idZxeZVH/5OGkiTJG5Y+uAJYFlHY7v9yzsY6t8N
 1uNNsf351htV2BCIz1drPbdMX/2jqyVe+DrPJtrxdrKEmQE=
X-Google-Smtp-Source: APXvYqwKSk+tkXqI7m1a/B0AuT5MCsz5lL0eOqG1GRFEo7/oVeuc+C1m4SijaJVC+vBe/rRUNLzKhlRrwBuRlXTIGXs=
X-Received: by 2002:a50:f9cc:: with SMTP id
 a12mr106818668edq.272.1558723142887; 
 Fri, 24 May 2019 11:39:02 -0700 (PDT)
MIME-Version: 1.0
References: <20180927224609.19515-1-robdclark@gmail.com>
 <20181029191000.GD16739@arm.com>
 <CAF6AEGtgC0V6ii2=p2HGmqvHFKNJhaOLi8873SGPDsrg70xGRg@mail.gmail.com>
 <20181113063225.GA3109@brain-police>
 <CAF6AEGuV2zh97iq+TgkRw0bK3VNSxJieD1N2KMW3N28h07M+0w@mail.gmail.com>
 <20181126193147.GB534@arm.com>
In-Reply-To: <20181126193147.GB534@arm.com>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 24 May 2019 11:38:49 -0700
Message-ID: <CAF6AEGurwA-+h-dTH9nTBUknZOcw+7w-=_oRtNSrV9ZqjLDZvQ@mail.gmail.com>
Subject: Re: [PATCH] iommu: arm-smmu: Set SCTLR.HUPCF bit
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_113905_134355_060A0814 
X-CRM114-Status: GOOD (  38.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Robin Murphy <robin.murphy@arm.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <joro@8bytes.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 26, 2018 at 11:31 AM Will Deacon <will.deacon@arm.com> wrote:
>
> Hi Rob,
>
> On Tue, Nov 13, 2018 at 08:12:35AM -0500, Rob Clark wrote:
> > On Tue, Nov 13, 2018 at 1:32 AM Will Deacon <will.deacon@arm.com> wrote:
> > > On Fri, Nov 09, 2018 at 01:01:55PM -0500, Rob Clark wrote:
> > > > On Mon, Oct 29, 2018 at 3:09 PM Will Deacon <will.deacon@arm.com> wrote:
> > > > > On Thu, Sep 27, 2018 at 06:46:07PM -0400, Rob Clark wrote:
> > > > > > We seem to need to set either this or CFCFG (stall), otherwise gpu
> > > > > > faults trigger problems with other in-flight transactions from the
> > > > > > GPU causing CP errors, etc.
> > > > > >
> > > > > > In the ARM SMMU spec, the 'Hit under previous context fault' bit is
> > > > > > described as:
> > > > > >
> > > > > >  '0' - Stall or terminate subsequent transactions in the presence
> > > > > >        of an outstanding context fault
> > > > > >  '1' - Process all subsequent transactions independently of any
> > > > > >        outstanding context fault.
> > > > > >
> > > > > > Since we don't enable CFCFG (stall) the behavior of terminating
> > > > > > other transactions makes sense.  And is probably not what we want
> > > > > > (and definately not what we want for GPU).
> > > > > >
> > > > > > Signed-off-by: Rob Clark <robdclark@gmail.com>
> > > > > > ---
> > > > > > So I hit this issue a long time back on 820 (msm8996) and at the
> > > > > > time I solved it with a patch that enabled CFCFG.  And it resurfaced
> > > > > > more recently on sdm845.  But at the time CFCFG was rejected, iirc
> > > > > > because of concern that it would cause problems on other non-qcom
> > > > > > arm smmu implementations.  And I think I forgot to send this version
> > > > > > of the solution.
> > > > > >
> > > > > > If enabling HUPCF is anticipated to cause problems on other ARM
> > > > > > SMMU implementations, I think I can come up with a variant of this
> > > > > > patch which conditionally enables it for snapdragon.
> > > > > >
> > > > > > Either way, I'd really like to get some variant of this fix merged
> > > > > > (and probably it would be a good idea for stable kernel branches
> > > > > > too), since current behaviour with the GPU means faults turn into
> > > > > > a fantastic cascade of fail.
> > > > >
> > > > > Can you describe how this fantastic cascade of fail improves with this
> > > > > patch, please? If you're getting context faults then something has already
> > > > > gone horribly wrong, so I'm trying to work out how this improves things.
> > > > >
> > > >
> > > > There are plenty of cases where getting iommu faults with a GPU is
> > > > "normal", or at least not something the kernel or even GL driver can
> > > > control.
> > >
> > > Such as? All the mainline driver does is print a diagnostic and clear the
> > > fault, which doesn't seem generally useful.
> >
> > it is useful to debug the fault ;-)
> >
> > Although eventually we'll want to be able to do more than that, like
> > have the fault trigger bringing in pages of a mmap'd file and that
> > sort of thing.
>
> Right, and feels very strange to me if we have this bit set because it
> means that your fault is no longer synchronous and therefore diverges
> from the fault model that you get from the CPU, where you certainly
> wouldn't expect stores appearing in the program after a faulting load to
> be visible in memory. However, thinking harder about it, I suppose we're
> already in a situation where the translations are handled out of order
> in the absence of barriers, so maybe it's not the end of the world.
>
> Could you dump the FSR value that you see in the fault handler, please?
> From my reading of the architecture spec, as long as clear all of the
> fault bits in the irq handler, then your machine shouldn't die like it
> does with HUPCFG=CFCFG=0..


Getting back to this after realizing I lost SCTLR.HUPCF patch that I
was carrying locally when rebasing.  Here is an example dump (w/ FSR)
of what happens:



[May24 14:33] arm-smmu 5040000.iommu: Unhandled context fault:
fsr=0x402, iova=0x7ffe35c0, fsynr=0x1, cb=1
[  +0.000034] adreno 5000000.gpu: CP illegal instruction error
[  +0.000036] adreno 5000000.gpu: CP illegal instruction error
[  +0.000017] adreno 5000000.gpu: CP illegal instruction error
[  +0.000017] adreno 5000000.gpu: CP illegal instruction error
[  +0.000015] adreno 5000000.gpu: CP illegal instruction error
[  +0.000016] adreno 5000000.gpu: CP illegal instruction error
[  +0.000076] adreno 5000000.gpu: CP illegal instruction error
[  +0.000015] adreno 5000000.gpu: CP illegal instruction error
[  +0.000016] adreno 5000000.gpu: CP illegal instruction error
[  +0.000015] adreno 5000000.gpu: CP illegal instruction error
[  +0.047100] adreno 5000000.gpu: [drm:a6xx_irq] *ERROR* gpu fault
ring 0 fence 8 status 00800005 rb 0047/0047 ib1 0000000001CC7000/0000
ib2 0000000001CC5000/0000
[  +0.000106] msm ae00000.mdss: [drm:recover_worker] *ERROR* A630:
hangcheck recover!
[  +0.000380] msm ae00000.mdss: [drm:recover_worker] *ERROR* A630:
offending task: d:flush_queue0 (./deqp-gles31 --deqp-visibility=hidden
--deqp-caselist-file=regressions
--deqp-log-filename=results/FD630/regressions.qpa
--deqp-surface-type=fbo --deqp-surface-width=256
--deqp-surface-height=256)
[  +0.501297] adreno 5000000.gpu: [drm:a6xx_irq] *ERROR* gpu fault
ring 0 fence 8 status 00800005 rb 0047/0047 ib1 0000000 ib2
0000/001CC500000
[  +0.051307] revision: 630 (6.3.0.2)
[  +0.000006] rb 0: fence:    6/8
[  +0.000003] rptr:     24
[  +0.000002] rb wptr:  71


The 'CP illegal instruction error's and following gpu fault are the
result of the faulting read from the GPU causing other non-faulting
reads to return zero.


Note that enabling STALL (CFCFG) also avoids this problem.  I suppose
maybe setting CFCFG for implementation==QCOM_SMMUV2 would be a better
idea?

BR,
-R

> > > > With this patch, you still get the iommu fault, but it doesn't cause
> > > > the gpu to crash.  But without it, other memory accesses in flight
> > > > while the fault occurs, like the GPU command-processor reading further
> > > > ahead in the cmdstream to setup next draw, would return zero's,
> > > > causing the GPU to crash or get into a bad state.
> > >
> > > I get that part, but I don't understand why we're seeing faults in the first
> > > place and I worry that this patch is just the tip of the iceberg. It's also
> > > not clear that processing subsequent transactions is always the right thing
> > > to do in a world where we actually want to report (and handle) synchronous
> > > faults from devices.
> >
> > Sure, it is a bug.. but it can be an application bug that is not
> > something the userspace GL driver or kernel could do anything about.
> > We shouldn't let this kill the GPU.  If the application didn't have
> > this much control, we wouldn't need an IOMMU in the first place[1].
> > With opencl compute, the userspace controlled shader has full blown
> > pointers to GPU memory.
> >
> > And even in cases where it is a userspace GL driver bug, having some
> > robustness to not completely kill the GPU makes debugging much easier.
> > Something I do a lot when bringing up support for a new generation of
> > GPU.
> >
> > I'm having a hard time understanding your objection to this.
> > Returning zero's for non-faulting transactions is a *really bad idea*.
>
> Wait -- who said anything about returning zeroes? Where does that behaviour
> appear in the architecture?
>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
