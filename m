Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FAB135F96
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 18:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLZ70/FCZn2iQ+ga6QaQiNpsIaN6h4R6HVZ94ScxWxs=; b=R3A1eg94Iv9STc
	RvzVw/fyZosXO+N+XxpfPE2JQut8JIcrDEAec+H7soJNXpxApiFYEH0jxVkby4AHxfMYMhQnF05HC
	ACIpK800HT3JCBMUFPudaDH1hizmCMzvrZ26goLZ7rP5jJ2KGismwTIMfGzXCA11fYZeSM/x+Fcao
	ilxRWWfgy6WkKsZeeW1IngsznfmSqIqICSW93S1S+8Rm/M2T9hGxFumbWAspGX07/XbfaQSDE7sy2
	ql8kSEnZNDWY6wZktYEgKgtZDwRkvQ+SVC6HGEvTqC05zv/3/UqWUbdOYx4D61RfCPGcojvs8JfVL
	Hv1ZFBqtBOZ/0ttQbfIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipbtA-0001MH-K5; Thu, 09 Jan 2020 17:46:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipbt3-0001Lm-1G
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 17:46:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 58D57328;
 Thu,  9 Jan 2020 09:46:24 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CDE423F703;
 Thu,  9 Jan 2020 09:46:23 -0800 (PST)
Date: Thu, 9 Jan 2020 17:46:22 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 11/18] KVM: arm64: don't trap Statistical Profiling
 controls to EL2
Message-ID: <20200109174621.GB42593@e119886-lin.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-12-andrew.murray@arm.com>
 <86bls0iqv6.wl-maz@kernel.org>
 <20191223115651.GA42593@e119886-lin.cambridge.arm.com>
 <1bb190091362262021dbaf41b5fe601e@www.loen.fr>
 <20191223121042.GC42593@e119886-lin.cambridge.arm.com>
 <20200109172511.GA42593@e119886-lin.cambridge.arm.com>
 <20200109174251.GJ3112@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109174251.GJ3112@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_094625_119494_411CA2F5 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, kvm@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 05:42:51PM +0000, Mark Rutland wrote:
> Hi Andrew,
> 
> On Thu, Jan 09, 2020 at 05:25:12PM +0000, Andrew Murray wrote:
> > On Mon, Dec 23, 2019 at 12:10:42PM +0000, Andrew Murray wrote:
> > > On Mon, Dec 23, 2019 at 12:05:12PM +0000, Marc Zyngier wrote:
> > > > On 2019-12-23 11:56, Andrew Murray wrote:
> > > > > My original concern in the cover letter was in how to prevent
> > > > > the guest from attempting to use these registers in the first
> > > > > place - I think the solution I was looking for is to
> > > > > trap-and-emulate ID_AA64DFR0_EL1 such that the PMSVer bits
> > > > > indicate that SPE is not emulated.
> > > > 
> > > > That, and active trapping of the SPE system registers resulting in injection
> > > > of an UNDEF into the offending guest.
> > > 
> > > Yes that's no problem.
> > 
> > The spec says that 'direct access to [these registers] are UNDEFINED' - is it
> > not more correct to handle this with trap_raz_wi than an undefined instruction?
> 
> The term UNDEFINED specifically means treated as an undefined
> instruction. The Glossary in ARM DDI 0487E.a says for UNDEFINED:
> 
> | Indicates cases where an attempt to execute a particular encoding bit
> | pattern generates an exception, that is taken to the current Exception
> | level, or to the default Exception level for taking exceptions if the
> | UNDEFINED encoding was executed at EL0. This applies to:
> |
> | * Any encoding that is not allocated to any instruction.
> |
> | * Any encoding that is defined as never accessible at the current
> |   Exception level.
> |
> | * Some cases where an enable, disable, or trap control means an
> |   encoding is not accessible at the current Exception level.
> 
> So these should trigger an UNDEFINED exception rather than behaving as
> RAZ/WI.

OK thanks for the clarification - I'll leave it as an undefined instruction.

Thanks,

Andrew Murray

> 
> Thanks,
> Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
