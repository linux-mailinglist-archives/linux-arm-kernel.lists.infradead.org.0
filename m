Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09501CE1B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 19:30:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7b1eyOTd/nM8QLiBOZi+xB97oSV81WprYiEJLRuOBO0=; b=WxFxlcJAwApul1
	kZQQNXY51dA3O80CslwEHORyfXRQ6cHCMnx9xsbCYTsBYruT8ehqXyZkr2ipxxZFVhrrDGOI6Fs+E
	lC/QZUrxVdRFyrb+o/f+rzGzBFlZnr7vSDM5eTcE9+6TLcFra1YlPcFMt71CR8MaOVvxOtzMfQK8x
	jbzk+JIHTqPvRJnTSbA5YDhLGJFJpVNc8JydLCd0tvK0J62ARZJ0Dn+G8AZOUcfBhNz9HskrnMVLT
	tYsd6YV9NstRSQv8i3BIyNUXk0NkdwnLkSDd2hhH7oZyyLFbSVp+LPGugPcekZ+6DJX/GliJ+Urah
	DIVEuhM0wICowHJSHq7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYCGN-00067F-N0; Mon, 11 May 2020 17:30:47 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYCGE-00066k-2R
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 17:30:40 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589218238; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Cc: To: From: Date: Sender;
 bh=iPpTo3jNPE0V2FCWqXWCysaJe2BOVw+onhpjhSu1HVU=;
 b=O3vmjNjZKGQ7tOgMRHhEk8wIDX/q+vr16VFzVJT+zX1mMQLrqDjiOxEqsHhNoBcKYMPZWQ5b
 3EHmZ3Q0nEVfyXFn+x+eDepHmsrn/VI9XNzLGG3buVRlV8/dD0UVJZlQN3Z9VgN+QxO89Qax
 lYWvCbMV80HTaRQbgIeDIfKVYLQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb98ba5.7f0123b53d50-smtp-out-n01;
 Mon, 11 May 2020 17:30:13 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 02011C432C2; Mon, 11 May 2020 17:30:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 33E07C433F2;
 Mon, 11 May 2020 17:30:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 33E07C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
Date: Mon, 11 May 2020 11:30:08 -0600
From: Jordan Crouse <jcrouse@codeaurora.org>
To: Rob Clark <robdclark@gmail.com>
Subject: Re: [PATCH] iomm/arm-smmu: Add stall implementation hook
Message-ID: <20200511173008.GA24282@jcrouse1-lnx.qualcomm.com>
Mail-Followup-To: Rob Clark <robdclark@gmail.com>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Joerg Roedel <joro@8bytes.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>
References: <20200421202004.11686-1-saiprakash.ranjan@codeaurora.org>
 <b491e02ad790a437115fdeab6b21bc48@codeaurora.org>
 <1ced023b-157c-21a0-ac75-1adef7f029f0@arm.com>
 <20200507125357.GA31783@willie-the-truck>
 <CAF6AEGuLU+_qP8HNO1s9PTPHqJnCMHzehmcT8NiJhiAwrfSH6w@mail.gmail.com>
 <CAF6AEGvuHKObTR97XdSXjmjKB+qjQ8N1_wxM=ZU8bEkF=cXp-A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF6AEGvuHKObTR97XdSXjmjKB+qjQ8N1_wxM=ZU8bEkF=cXp-A@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_103038_860030_A1A5A70E 
X-CRM114-Status: GOOD (  37.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 08, 2020 at 08:40:40AM -0700, Rob Clark wrote:
> On Fri, May 8, 2020 at 8:32 AM Rob Clark <robdclark@gmail.com> wrote:
> >
> > On Thu, May 7, 2020 at 5:54 AM Will Deacon <will@kernel.org> wrote:
> > >
> > > On Thu, May 07, 2020 at 11:55:54AM +0100, Robin Murphy wrote:
> > > > On 2020-05-07 11:14 am, Sai Prakash Ranjan wrote:
> > > > > On 2020-04-22 01:50, Sai Prakash Ranjan wrote:
> > > > > > Add stall implementation hook to enable stalling
> > > > > > faults on QCOM platforms which supports it without
> > > > > > causing any kind of hardware mishaps. Without this
> > > > > > on QCOM platforms, GPU faults can cause unrelated
> > > > > > GPU memory accesses to return zeroes. This has the
> > > > > > unfortunate result of command-stream reads from CP
> > > > > > getting invalid data, causing a cascade of fail.
> > > >
> > > > I think this came up before, but something about this rationale doesn't add
> > > > up - we're not *using* stalls at all, we're still terminating faulting
> > > > transactions unconditionally; we're just using CFCFG to terminate them with
> > > > a slight delay, rather than immediately. It's really not clear how or why
> > > > that makes a difference. Is it a GPU bug? Or an SMMU bug? Is this reliable
> > > > (or even a documented workaround for something), or might things start
> > > > blowing up again if any other behaviour subtly changes? I'm not dead set
> > > > against adding this, but I'd *really* like to have a lot more confidence in
> > > > it.
> > >
> > > Rob mentioned something about the "bus returning zeroes" before, but I agree
> > > that we need more information so that we can reason about this and maintain
> > > the code as the driver continues to change. That needs to be a comment in
> > > the driver, and I don't think "but android seems to work" is a good enough
> > > justification. There was some interaction with HUPCF as well.
> >
> > The issue is that there are multiple parallel memory accesses
> > happening at the same time, for example CP (the cmdstream processor)
> > will be reading ahead and setting things up for the next draw or
> > compute grid, in parallel with some memory accesses from the shader
> > which could trigger a fault.  (And with faults triggered by something
> > in the shader, there are *many* shader threads running in parallel so
> > those tend to generate a big number of faults at the same time.)
> >
> > We need either CFCFG or HUPCF, otherwise what I have observed is that
> > while the fault happens, CP's memory access will start returning
> > zero's instead of valid cmdstream data, which triggers a GPU hang.  I
> > can't say whether this is something unique to qcom's implementation of
> > the smmu spec or not.
> >
> > *Often* a fault is the result of the usermode gl/vk/cl driver bug,
> > although I don't think that is an argument against fixing this in the
> > smmu driver.. I've been carrying around a local patch to set HUPCF for
> > *years* because debugging usermode driver issues is so much harder
> > without.  But there are some APIs where faults can be caused by the
> > user's app on top of the usermode driver.
> >
> 
> Also, I'll add to that, a big wish of mine is to have stall with the
> ability to resume later from a wq context.  That would enable me to
> hook in the gpu crash dump handling for faults, which would make
> debugging these sorts of issues much easier.  I think I posted a
> prototype of this quite some time back, which would schedule a worker
> on the first fault (since there are cases where you see 1000's of
> faults at once), which grabbed some information about the currently
> executing submit and some gpu registers to indicate *where* in the
> submit (a single submit could have 100's or 1000's of draws), and then
> resumed the iommu cb.
> 
> (This would ofc eventually be useful for svm type things.. I expect
> we'll eventually care about that too.)

Rob is right about HUPCF. Due to the parallel nature of the command processor
there is always a very good chance that a CP access is somewhere in the bus so
any pagefault is usually a death sentence. The GPU context bank would always
want HUPCF set to 1.

Downstream also uses CFCFG for stall-on-fault debug case. You wouldn't want
this on all the time in production since bringing down the world for every user
pagefault is less than desirable so it needs to be modified in run-time (or at
the very least kernel command line selectable).

Jordan

PS: Interestingly, the GMU does not want HUPCF set to 1 because it wants to
crash immediately on all invalid accesses so ideally these combination of bits
would be configurable on a per-context basis.

> > >
> > > As a template, I'd suggest:
> > >
> > > > > > diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> > > > > > index 8d1cd54d82a6..d5134e0d5cce 100644
> > > > > > --- a/drivers/iommu/arm-smmu.h
> > > > > > +++ b/drivers/iommu/arm-smmu.h
> > > > > > @@ -386,6 +386,7 @@ struct arm_smmu_impl {
> > > > > >      int (*init_context)(struct arm_smmu_domain *smmu_domain);
> > > > > >      void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
> > > > > >               int status);
> > >
> > > /*
> > >  * Stall transactions on a context fault, where they will be terminated
> > >  * in response to the resulting IRQ rather than immediately. This should
> > >  * pretty much always be set to "false" as stalling can introduce the
> > >  * potential for deadlock in most SoCs, however it is needed on Qualcomm
> > >  * XXXX because YYYY.
> > >  */
> > >
> > > > > > +    bool stall;
> > >
> > > Hmm, the more I think about this, the more I think this is an erratum
> > > workaround in disguise, in which case this could be better named...
> > >
> > > Will

-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
