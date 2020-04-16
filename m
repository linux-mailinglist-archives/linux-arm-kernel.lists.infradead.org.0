Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F36FE1ABC74
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 11:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdLd5fuXUiA8DHInXOmdP77k1vX4KfUgVK1QFv+UIm8=; b=H4r/oBMyOcvCSE
	LxaRh9RbyMIBVwBx9awGIOualpf34T2ENrp4PiXG5P+d6cQEjUiKHFJFw6j3XjB+kpxd8zqVhda4z
	pRat5OOoVFX+LWuLh17HUPbUeAjhLfQWhiZ4hTnGBtIUzw2wLEnvOwYvhEKu/VVRCFwej7QHAaum/
	ml/kNlSNyFzZLrH2hjpKriQ/nifYoqkGkWrDNTh1sA+NHBlVxinBRKU7I7mkx0ZAx/N0LybKlviFb
	jk6LJSIVRkcbW7bNGJ0cgBlSNMR7DgV17eLGCzxzBSPyjcMsglV3myy1qDvkKlAMqIwfUX6lkD1m2
	vHb4BOxsx9h1ZW+ctkBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0dr-0005wv-7g; Thu, 16 Apr 2020 09:17:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0di-0005w5-6P
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 09:16:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F5B4C14;
 Thu, 16 Apr 2020 02:16:53 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AAF993F73D;
 Thu, 16 Apr 2020 02:16:51 -0700 (PDT)
Date: Thu, 16 Apr 2020 10:16:22 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH RFCv1 0/7] Support Async Page Fault
Message-ID: <20200416091621.GA4987@lakrids.cambridge.arm.com>
References: <20200410085820.758686-1-gshan@redhat.com>
 <d2882e806ad2f9793437160093c8d3fa@kernel.org>
 <6a1d7e8b-da10-409f-16d0-354004566a1a@redhat.com>
 <20200414110554.GB2486@C02TD0UTHF1T.local>
 <5bc62c4f-e19d-82f2-072e-dfa4498dccf3@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5bc62c4f-e19d-82f2-072e-dfa4498dccf3@redhat.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_021654_321083_3D4488BD 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: drjones@redhat.com, suzuki.poulose@arm.com, Marc Zyngier <maz@kernel.org>,
 sudeep.holla@arm.com, eric.auger@redhat.com, james.morse@arm.com,
 shan.gavin@gmail.com, catalin.marinas@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 05:59:33PM +1000, Gavin Shan wrote:
> On 4/14/20 9:05 PM, Mark Rutland wrote:
> > On Tue, Apr 14, 2020 at 03:39:56PM +1000, Gavin Shan wrote:
> > > On 4/10/20 10:52 PM, Marc Zyngier wrote:
> > > > On 2020-04-10 09:58, Gavin Shan wrote:
> > > > > In order to fulfil the control flow and convey signals between host
> > > > > and guest. A IMPDEF system register (SYS_ASYNC_PF_EL1) is introduced.
> > > > > The register accepts control block's physical address, plus requested
> > > > > features. Also, the signal is sent using data abort with the specific
> > > > > IMPDEF Data Fault Status Code (DFSC). The specific signal is stored
> > > > > in the control block by host, to be consumed by guest.
> > 
> > > > - We don't add IMPDEF sysregs, period. That's reserved for the HW. If
> > > >     you want to trap, there's the HVC instruction to that effect.
> > 
> > > I really don't understand how IMPDEF sysreg is used by hardware vendors.
> > > Do we have an existing functionality, which depends on IMPDEF sysreg?
> > > I was thinking the IMPDEF sysreg can be used by software either, but
> > > it seems I'm wrong.
> > 
> > The key is in the name: an IMPLEMENTATION DEFINED register is defined by
> > the implementation (i.e. the specific CPU microarchitecture), so it's
> > wrong for software to come up with an arbitrary semantic as this will
> > differ from the implementation's defined semantic for the register.
> > 
> > Typically, IMP DEF resgisters are used for things that firmware needs to
> > do (e.g. enter/exit coherency), or for bringup-time debug (e.g. poking
> > into TLB/cache internals), and are not usually intended for general
> > purpose software.
> > 
> > Linux generally avoids the use of IMP DEF registers, but does so in some
> > cases (e.g. for PMUs) after FW explicitly describes that those are safe
> > to access.
> 
> Thanks for the explanation and details, which make things much clear. Since
> the IMPDEF system register can't be used like this way, hypercall (HVC) would
> be considered to serve same purpose - deliver signals from host to guest.

I'm not sure I follow how you'd use HVC to inject a signal into a guest;
the HVC would have to be issued by the guest to the host. Unless you're
injecting the signal via some other mechanism (e.g. an interrupt), and
the guest issues the HVC in response to that?

> However, the hypercall number and behaviors are guarded by
> specification. For example, the hypercalls used by para-virtualized
> stolen time, which are defined in include/linux/arm-smccc.h, are
> specified by ARM DEN0057A [1]. So I need a specification to be
> created, where the hypercalls used by this feature are defined? If
> it's not needed, can I pick hypercalls that aren't used and define
> their behaviors by myself?
> 
> [1] http://infocenter.arm.com/help/topic/com.arm.doc.den0057a/DEN0057A_Paravirtualized_Time_for_Arm_based_Systems_v1_0.pdf

Take a look at the SMCCC / SMC Calling Convention:

 https://developer.arm.com/docs/den0028/c

... that defines ranges set aside for hypervisor-specific usage, and
despite its name it also applies to HVC calls.

There's been intermittent work to add a probing story for that, so that
part is subject to change, but for prototyping you can just choose an
arbitray number in that range -- just be suere to mention in the commit
and cover letter that this part isn't complete.

> Another thing I want to check is about the ESR_EL1[DFSC]. In this series,
> the asynchronous page fault is identified by IMPDEF DFSC (Data Fault Status
> Code) in ESR_EL1. According to what we discussed, the IMPDEF DFSC shouldn't
> be fired (produced) by software. It should be produced by hardware either?
> What I understood is IMPDEF is hardware behavior. If this is true, I need
> to avoid using IMPDEF DFSC in next revision :)

Yes, similar applies here.

If the guest is making a hypercall, you can return the fault info as the
response in GPRs, so I don't think you need to touch any architectural
fault registers.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
