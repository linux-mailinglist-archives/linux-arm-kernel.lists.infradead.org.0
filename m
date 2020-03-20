Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEEE18CD1A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 12:36:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JvIJ0eWDH1U5bOOQVQMXvO+1rFJAHUL4oxaMXttJXgE=; b=Rm0o8Zvioh/Qe5D3ShUwOUmeJ
	hJzsW6XXXit/T1gFGabRtiKGwpFkBoXc6Moqp72XsBhL3+cGpDa94x6LlHmCDFbDXaQd0MgFkMFa9
	FAOQVG6EEDnWGXipCPnmFkCht3cw7LQ+fxvDSgrKD2mPW3KYUJDfjcCXkAikrSo49Hq9G5iEK1HfC
	4TKOIS7FXp8tP/kFpg/r3xVj3KNbiO9XE0V6XvgUaI1MsxumxFtYI+Upisa1NTNIJTuHuw1R2GY1t
	Z9L4fmTIzHnJNtmLA5hJmItoeKDU3stoJ4KxNJAN/MWgRTCBLLG9QF4iGPY1wbveKuy87TvaEUp6Q
	Rz4Ob81hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFFwc-0003Tj-2R; Fri, 20 Mar 2020 11:36:06 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFFwS-0003TF-VE
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 11:35:58 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 83C19E8B7FC2A4E3E951;
 Fri, 20 Mar 2020 19:35:48 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.487.0; Fri, 20 Mar 2020
 19:35:41 +0800
Subject: Re: [PATCH v5 23/23] KVM: arm64: GICv4.1: Expose HW-based SGIs in
 debugfs
To: Marc Zyngier <maz@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-24-maz@kernel.org>
 <4cb4c3d4-7b02-bb77-cd7a-c185346b6a2f@redhat.com>
 <45c282bddd43420024633943c1befac3@kernel.org>
 <e1a1e537-9f8e-5cfb-0132-f796e8bf06c9@huawei.com>
 <b63950513f519d9a04f9719f5aa6a2db@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <8d7fdb7f-7a21-da22-52a2-51ee8ac9393f@huawei.com>
Date: Fri, 20 Mar 2020 19:35:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <b63950513f519d9a04f9719f5aa6a2db@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_043557_168588_7BC188DE 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Auger Eric <eric.auger@redhat.com>, Robert
 Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/3/20 17:09, Marc Zyngier wrote:
> Hi Zenghui,
> 
> On 2020-03-20 04:38, Zenghui Yu wrote:
>> Hi Marc,
>>
>> On 2020/3/19 23:21, Marc Zyngier wrote:
>>> With GICv4.1, you can introspect the HW state for SGIs. You can also
>>> look at the vLPI state by peeking at the virtual pending table, but
>>> you'd need to unmap the VPE first,
>>
>> Out of curiosity, could you please point me to the "unmap the VPE"
>> requirement in the v4.1 spec? I'd like to have a look.
> 
> Sure. See IHI0069F, 5.3.19 (VMAPP GICv4.1), "Caching of virtual LPI data
> structures", and the bit that says:
> 
> "A VMAPP with {V,Alloc}=={0,1} cleans and invalidates any caching of the
> Virtual Pending Table and Virtual Configuration Table associated with the
> vPEID held in the GIC"
> 
> which is what was crucially missing from the GICv4.0 spec (it doesn't say
> when the GIC is done writing to memory).

OK. Thanks for the pointer!

> 
> Side note: it'd be good to know what the rules are for your own GICv4
> implementations, so that we can at least make sure the current code is 
> safe.

As far as I know, there will be some clean and invalidate operations
when v4.0 VPENDBASER.Valid gets programmed. But not sure about behaviors
on VMAPP (unmap), it may be a totally v4.1 stuff. I'll have a talk with
our SOC team.

But how can the current code be unsafe? Is anywhere in the current code
will peek/poke the vpt (whilst GIC continues writing things into it)?


Thanks,
Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
