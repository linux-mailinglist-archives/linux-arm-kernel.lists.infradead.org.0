Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE13F1A450D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 12:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HhXR9I55Kkf3Ke5oZGJCRxZfqiT3VhZaEzIteGzWS3U=; b=VhtjYN7AayY9U22kRjG+4QQv7
	wn2GAR70j7dVguWgdZlpdG9EQpzZyHcPN4Q/cmzZCoHDKTrLXfs73AbrBB/6uTBmJnS7p8oPhV0Zp
	5g80CfpaXWKy5fus83OvU5nVRCPNDb9+grfXHctIhmEPyj57jqmCU+LEX+pN1Vvuu6P7Z7iT/nP6y
	ldu1iJjJ+ZVXa6ydXxoncytcc/oPGZk5gdAosfO7C/nwxSq8Xp+k5aJ7qN0mgKd6+k9m9kcpFkAoY
	cw2Fj5jdmqi1fZsD5+fksYdKGN+OX9m1gUkL08j5VQaohvQrvlvSS3uosp8pOeBHBT8Lg35C4L4Yg
	3KqTqwXDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqgv-0007Ow-68; Fri, 10 Apr 2020 10:15:17 +0000
Received: from mail.xenproject.org ([104.130.215.37])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMqgY-0007MG-0s
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 10:14:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
 s=20200302mail; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LP9i8n5XWnZnXoSDgVk2SDbe3JT7yVCp8/P3iO2zZ/c=; b=Lz/PnyNYCQe1my1jMCVbQ1l2wI
 OKl2n/UEcRhAFyx6OvklPc2kikUnD6gbjCqtQeZ/Zy+E4RCwJrJ66fqrYeTvBBZ1+2QGJNWBy5V5O
 yCYDOb37ETvjB9ItpFOdYxe98Or0fDGEUY2SWy9KFpR5R72ptduDg1Q6V4YayeB5t0Wo=;
Received: from xenbits.xenproject.org ([104.239.192.120])
 by mail.xenproject.org with esmtp (Exim 4.89)
 (envelope-from <julien@xen.org>)
 id 1jMqgJ-0003HN-1p; Fri, 10 Apr 2020 10:14:39 +0000
Received: from [54.239.6.186] (helo=a483e7b01a66.ant.amazon.com)
 by xenbits.xenproject.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <julien@xen.org>)
 id 1jMqgI-0008Ty-QB; Fri, 10 Apr 2020 10:14:38 +0000
Subject: Re: I{S,C}ACTIVER implemention question
To: Marc Zyngier <maz@kernel.org>
References: <c90bdfa0-00cf-170b-4319-e270e8aaef7e@xen.org>
 <2a201532b992fca74b4f193f53fc71f9@kernel.org>
From: Julien Grall <julien@xen.org>
Message-ID: <34b86a31-6ea3-8c58-9892-5caf29ec5053@xen.org>
Date: Fri, 10 Apr 2020 11:14:36 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <2a201532b992fca74b4f193f53fc71f9@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_031454_117473_AC3A562E 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [104.130.215.37 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefano Stabellini <sstabellini@kernel.org>, suzuki.poulose@arm.com,
 George.Dunlap@eu.citrix.com, Bertrand Marquis <Bertrand.Marquis@arm.com>,
 james.morse@arm.com, julien.thierry.kdev@gmail.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/04/2020 16:14, Marc Zyngier wrote:
> Hi Julien,

Hi Marc,

> 
> Thanks for the heads up.
> 
> On 2020-04-06 14:16, Julien Grall wrote:
>> Hi,
>>
>> Xen community is currently reviewing a new implementation for reading
>> I{S,C}ACTIVER registers (see [1]).
>>
>> The implementation is based on vgic_mmio_read_active() in KVM, i.e the
>> active state of the interrupts is based on the vGIC state stored in
>> memory.
>>
>> While reviewing the patch on xen-devel, I noticed a potential deadlock
>> at least with Xen implementation. I know that Xen vGIC and KVM vGIC
>> are quite different, so I looked at the implementation to see how this
>> is dealt.
>>
>> With my limited knowledge of KVM, I wasn't able to rule it out. I am
>> curious to know if I missed anything.
>>
>> vCPU A may read the active state of an interrupt routed to vCPU B.
>> When vCPU A is reading the state, it will read the state stored in
>> memory.
>>
>> The only way the memory state can get synced with the HW state is when
>> vCPU B exit guest context.
>>
>> AFAICT, vCPU B will not exit when deactivating HW mapped interrupts
>> and virtual edge interrupts. So vCPU B may run for an abritrary long
>> time before been exiting and syncing the memory state with the HW
>> state.
> 
> So while I agree that this is definitely not ideal, I don't think we end-up
> with a deadlock (or rather a livelock) either. That's because we are 
> guaranteed
> to exit eventually if only because the kernel's own timer interrupt (or any
> other host interrupt routed to the same physical CPU) will fire and get us
> out of there. On its own, this is enough to allow the polling vcpu to make
> forward progress.

That's a good point. I think in Xen we can't rely on this because in 
some of the setup (such as a pCPU dedicated to a vCPU), there will be 
close to zero host interrupts (timer is only used for scheduling).

> 
> Now, it is obvious that we should improve on the current situation. I just
> hacked together a patch that provides the same guarantees as the one we
> already have on the write side (kick all vcpus out of the guest, snapshot
> the state, kick everyone back in). I boot-tested it, so it is obviously 
> perfect
> and won't eat your data at all! ;-)

Thank you for the patch! This is the similar to what I had in mind.

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
