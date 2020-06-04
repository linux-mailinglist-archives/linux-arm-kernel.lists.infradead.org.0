Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB151EE57D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvddKnWHbanqR7QHtkFJQPhCf+mPV7oWXEDJhOpJbbQ=; b=bXS65b8Q+3LeLK
	CnD983P7mXco7aIbSXHhblDLAwXvP39YlwZCrUh/xtT8M4BdjEIk4oVantAQFtvb3v9s219vKJ5fO
	a5j8UaNe/B0Ui4wQ4E78yNoPi5Rk3/I/iHxPIeQYOYFqfNZf/SWhuR51VL0Q9TnqvX7oYQgoPbKlU
	fiFJBROHiFv6oI726LFsYlk5m46GINLp9rRaDgJ3CLK89nUK4QsiKzU9USkIz9nthcXqbE0iSGFXS
	tmiTrf8q/YlfEDTtRaotBCqrEWUd8z3lQXlNvn2uq4r2s8Rv3W4XVAaWrfw9ikIjC/KNObMnv5dqa
	5XHjqc+gvPyaL11SniDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgq4H-00048T-U4; Thu, 04 Jun 2020 13:38:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgq47-00047h-SY
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 13:37:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC6A5206E6;
 Thu,  4 Jun 2020 13:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591277871;
 bh=R78c8kSIeCH+8zefp0d/jSCDkdfqbN44t3yjAp+DSPs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C/7uMmH2K7OUr7TOT6iHWDXXbvzSO7p1Arxd9WcxBnBs4qQgkybJaBpvRrPXvRfaZ
 Y88ealtNzAIPbze4JCmM9Op4yQFRTtzgiz1TqDhSU6oBtb62XbJ8gZJ2wAQfKXEmS+
 ieOc45W44uGVW62cmU+GiyvLIzJ1hDQnrBSQd8zk=
Date: Thu, 4 Jun 2020 14:37:46 +0100
From: Will Deacon <will@kernel.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [RFC PATCH 0/3] firmware: Add support for PSA FF-A interface
Message-ID: <20200604133746.GA2951@willie-the-truck>
References: <20200601094512.50509-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601094512.50509-1-sudeep.holla@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_063751_960780_FC07DF85 
X-CRM114-Status: GOOD (  33.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, qwandor@google.com,
 Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ardb@kernel.org, tabba@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep, [+Fuad, Andrew and Ard]

(To other interested readers: if you haven't seen it, the FF-A spec is here:
 https://static.docs.arm.com/den0077/a/DEN0077A_PSA_Firmware_Framework_Arm_v8-A_1.0_EAC.pdf
 since this discussion makes no sense without that, and a tiny bit of sense
 with it. It used to be called "SPCI" but it was recently renamed.)

On Mon, Jun 01, 2020 at 10:45:09AM +0100, Sudeep Holla wrote:
> Sorry for posting in the middle of merge window and I must have done
> this last week itself. This is not the driver I had thought about posting
> last week. After I started cleaning up and looking at Will's KVM prototype[1]
> for PSA FF-A (previously known as SPCI),

Yes, I need to do the Big Rename at some point. Joy.

> I got more doubts on alignment and dropped huge chunk of interface APIs in
> the driver in order to keep it simple, and get aligned more with that
> prototype and avoid scanning lots of code unnecessary.

You also dropped most of the code, so this doesn't really do anything in
its current form ;)

> Here are few things to clarify:
> 
> 1. DT bindings
> ---------------
> 	I was initially against adding bindings for Tx/Rx buffers for
> 	partitions. As per the spec, an endpoint could allocate the
> 	buffer pair and use the FFA_RXTX_MAP interface to map it with the
> 	Hypervisor(KVM here). However looking at the prototype and also
> 	I remember you mentioning that it is not possible to manage buffers
> 	in that way. Please confirm if you plan to add the buffer details
> 	fetcthing them through ioctls in KVM and adding them to VM DT nodes
> 	in KVM userspace. I will update the bindings accordingly.

I think it's useful to have a mode of operation where the hypervisor
allocates the RX/TX buffers and advertises them in the DT. However, we
can always add this later, so there's no need to have it in the binding
from the start. Best start as simple as possible, I reckon.

Setting the static RX/TX buffer allocation aside, why is a DT node needed
at all for the case where Linux is running purely as an FF-A client? I
thought everything should be discoverable via FFA_VERSION, FFA_FEATURES,
FFA_PARTITION_INFO_GET and FFA_ID_GET? That should mean we can get away
without a binding at all for the client case.

> 2. Driver
> ---------
> a. Support for multiple partitions in a VM
> ------------------------------------------
> 	I am not sure if there is need for supporting multiple partitions
> 	within a VM. It should be possible to do so as I expect to create
> 	device for each partition entry under arm-psa-ffa devicetree node.
> 	However, I don't want to assume something that will never be a
> 	usecase. However I don't think this will change must of the
> 	abstraction as we need to keep the interface API implementation
> 	separate to support different partitions on various platforms.

I think Ard has a case for something like this, where a VM actually consists
of multiple partitions so that S-EL0 services can be provided from NS-EL0.
However, he probably wants that for a dynamically created VM, so we'd
need a way to instantiate an FFA namespace for the VM. Maybe that can be
done entirely in userspace by the VMM...

> b. SMCCC interface
> ------------------
> 	This is something I messed up completely while trying to add
> 	support for SMCCC v1.2. It now supports x0-x17 as parameter
> 	registers(input) and return registers(output). I started simple
> 	with x0-x7 as both input and output as PSA FF-A needs that at
> 	most. But extending to x0-x17 then became with messy in my
> 	implementation. That's the reason I dropped it completely
> 	here and thought of checking it first.
> 
> 	Do we need to extend the optimisations that were done to handle
> 	ARCH_WORKAROUND_{1,2}. Or should be just use a version with x0-x7
> 	as both input and ouput. Hyper-V guys need full x0-x17 support.
> 
> 	I need some guidance as what is the approach preferred ?

I think we can start off with x0-x7 and extend if later if we need to.

> 3. Partitions
> -------------
> 	I am not sure if we have a full define partition that we plan to
> 	push upstream. Without one, we can have a sample/example partition
> 	to test all the interface APIs, but is that fine with respect to
> 	what we want upstream ? Any other thoughts that helps to test the
> 	driver ?

I think that's the best you can do for now. We can probably help with
testing as our stuff gets off the ground.

> Sorry for long email and too many questions, but I thought it is easier
> this way to begin with than throwing huge code implementing loads of APIs
> with no users(expect example partition) especially that I am posting this
> during merge window.

No problem. Maybe it would help if I described roughly what we were thinking
of doing for KVM (this is open for discussion, of course):

 1. Describe KVM-managed partitions in the DT, along the lines of [1]
 2. Expose each partition as a file to userspace. E.g.:

    /dev/spci/:

	self
	e3a48fa5-dc54-4a8b-898b-bdc4dfeeb7b8
	49f65057-d002-4ae2-b4ee-d31c7940a13d

    Here, self would be a symlink to the host uuid. The host uuid file
    would implement FFA_MEM operations using an ioctl(), so you could,
    for example, share a user buffer with multiple partitions by issuing
    a MEM_SHARE ioctl() on self, passing the fds for the borrower partitions
    as arguments. Messaging would be implemented as ioctl()s on the
    partition uuid files themselves.

 3. We'll need some (all?) of these patches to unmap memory from the host
    when necessary:

    https://lwn.net/Articles/821215/

    (for nVHE, we'll have a stage-2 for the host so we can unmap there as
    well)

For communicating with partitions that are not managed by KVM (e.g. trusted
applications), it's not clear to me how much of that will be handled in
kernel or user. I think it would still be worth exposing the partitions as
files, but perhaps having them root only or just returning -EPERM for the
ioctl() if a kernel driver has claimed the partition as its own? Ideally,
FF-A would allow us to transition some of the Trusted OS interfacing code
out to userspace, but I don't know how realistic that is.

Anyway, to enable this, I think we need a clear separation in the kernel
between the FF-A code and the users: KVM will want to expose things as
above, but if drivers need to use this stuff as well then they can plug in
as additional users and we don't have to worry about tripping over the
RX/TX buffers etc.

What do you think, and do you reckon you can spin a cut-down driver that
implements the common part of the logic (since I know you've written much
of this code already)?

Cheers,

Will

[1] https://android-kvm.googlesource.com/linux/+/8632a5723ef106017c4ab57e95d9ce7630d35522%5E%21/#F0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
