Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A1C6D894
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 03:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MjhFTgkaGsYf3aFeRRITpVdP7sLHqFRabAe2Y6EqBEw=; b=VIKOffIrPZ87zBCaqIgpidHta
	esDKmuBwcauCuhoA2lHmcBu6sK+0HNEcRWVMoS7FTxLYCr6UU/ftaacJZuE3s//52dXmC/j49Iavu
	eiVCwZXiieyrfM2EqgpMdctCH3x9i1VA9fes5GFWqVGkabQkW0q+rIhzJudqox2r339z6IafvR+Gc
	H9FW6PGK+3QDBM1lcuPbaxvpuhH9Bt/tnC/3lSpvW1tiZfw4qfCVWOgFWpVyWr6P0z0o84GZDJEJE
	MK9TLD+SswKesFPuJqv9AbfHapZfRLDkOpN+5Jj1esajl3IcoUSEToMKbthxfKftwGP3J4JG8CjXP
	9NMvaNrnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoI1t-00032h-7q; Fri, 19 Jul 2019 01:49:49 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoI1f-000325-Sc
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 01:49:37 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 946D830309C0A785A41F;
 Fri, 19 Jul 2019 09:49:28 +0800 (CST)
Received: from [127.0.0.1] (10.133.216.73) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Fri, 19 Jul 2019
 09:49:22 +0800
Subject: Re: [RFC] Add virtual SDEI support in qemu
To: Dave Martin <Dave.Martin@arm.com>, Mark Rutland <mark.rutland@arm.com>
References: <1b0aa6b2-80b1-a72e-6849-7323c3b9c6bc@huawei.com>
 <20190715134059.GJ2790@e103592.cambridge.arm.com>
 <20190715134848.GI56232@lakrids.cambridge.arm.com>
 <4daefb19-6c15-f82c-31e9-1ae035d45bd5@arm.com>
 <20190715144446.GK56232@lakrids.cambridge.arm.com>
 <20190716084734.GL2790@e103592.cambridge.arm.com>
From: Guoheyi <guoheyi@huawei.com>
Message-ID: <287f566e-7697-3763-56b8-eb4821bd8347@huawei.com>
Date: Fri, 19 Jul 2019 09:49:22 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20190716084734.GL2790@e103592.cambridge.arm.com>
X-Originating-IP: [10.133.216.73]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_184936_086963_0A5BA556 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, qemu-devel@nongnu.org,
 qemu-arm@nongnu.org, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for all your comments. I'm going to write a simple demo to go 
through the whole workflow first, and then adjust the policies following 
the conclusions of our discussion.

Heyi


On 2019/7/16 16:47, Dave Martin wrote:
> On Mon, Jul 15, 2019 at 03:44:46PM +0100, Mark Rutland wrote:
>> On Mon, Jul 15, 2019 at 03:26:39PM +0100, James Morse wrote:
>>> On 15/07/2019 14:48, Mark Rutland wrote:
>>>> On Mon, Jul 15, 2019 at 02:41:00PM +0100, Dave Martin wrote:
>>>>> One option (suggested to me by James Morse) would be to allow userspace
>>>>> to disable in the in-kernel PSCI implementation and provide its own
>>>>> PSCI to the guest via SMC -- in which case userspace that wants to
>>>>> implement SDEI would have to implement PSCI as well.
>>>> I think this would be the best approach, since it puts userspace in
>>>> charge of everything.
>>>>
>>>> However, this interacts poorly with FW-based mitigations that we
>>>> implement in hyp. I suspect we'd probably need a mechanism to delegate
>>>> that responsibility back to the kernel, and figure out if that has any
>>>> interaction with thigns that got punted to userspace...
>>> This has come up before:
>>> https://lore.kernel.org/r/59C139D0.3040507@arm.com
>>>
>>> I agree Qemu should opt-in to this, it needs to be a feature that is enabled.
>>>
>>> I had an early version of something like this for testing SDEI before
>>> there was firmware available. The review feedback from Christoffer was
>>> that it should include HVC and SMC, their immediates, and shouldn't be
>>> tied to SMC-CC ranges.
>>>
>>> I think this should be a catch-all as Heyi describes to deliver
>>> 'unhandled SMC/HVC' to user-space as hypercall exits. We should
>>> include the immediate in the struct.
>>>
>>> We can allow Qemu to disable the in-kernel PSCI implementation, which
>>> would let it be done in user-space via this catch-all mechanism. (PSCI
>>> in user-space has come up on another thread recently). The in-kernel
>>> PSCI needs to be default-on for backwards compatibility.
>>>
>>> As Mark points out, the piece that's left is the 'arch workaround'
>>> stuff. We always need to handle these in the kernel. I don't think
>>> these should be routed-back, they should be un-obtainable by
>>> user-space.
>> Sure; I meant that those should be handled in the kernel rather than
>> going to host userspace and back.
>>
>> I was suggesting was that userspace would opt into taking ownership of
>> all HVC calls, then explicitly opt-in to the kernel handling specific
>> (sets of) calls.
> The most logical thing to do would be to have userspace handle all
> calls, but add an ioctl to forward a call to KVM.  This puts userspace
> in charge of the SMCCC interface, with KVM handling only those things
> that userspace can't do for itself, on request.
>
> If the performance overhead is unacceptable for certain calls, we could
> have a way to delegate specific function IDs to KVM.  I suspect that
> will be the exception rather than the rule.
>
>> There are probably issues with that, but I suspect defining "all
>> undandled calls" will be problematic otherwise.
> Agreed: the set of calls not handled by KVM will mutate over time.
>
> Cheers
> ---Dave
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
