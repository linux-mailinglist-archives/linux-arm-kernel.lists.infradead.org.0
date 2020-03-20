Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB5918CD81
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 13:10:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cNBJ6hb3wvIbMxbviAteIoiCzBtL+jP0zkfs5yRK198=; b=XVTpZqX4ff/qwlVe50cIiRGAR
	xywKP+59CfQ+F2haNxJn5OOaXg+BQSdOGTsBj93Y003RZLk/4kiDgosOpj4LQJ/wWxndhuakrpQob
	JD6zO2evYUbea+hH7a0XMV+sCquDmHOfzOhL1ZLidPpKayXbenqlicjE2G/TlmMNEJ4lohXA9g+cU
	+hbjJa/7h8EWzM2/XGcSUV9oZbw1u3iSWmcuuT8Q7RY1bYlaU5AQVjjiCNkKE1D/xLeM49KmGAX/a
	Mj94SE25wrxTU47dvJ1LkH8kYtbyMURHbZB9W5B5RbQEBBrkjxSnvkmJCpfGCHj13tZmP8+BE2pJ9
	//PRqcw9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFGTL-00075v-2S; Fri, 20 Mar 2020 12:09:55 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFGSu-0006sc-Gy
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 12:09:30 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 01604CD906C56B9B967F;
 Fri, 20 Mar 2020 20:09:21 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0; Fri, 20 Mar 2020
 20:09:13 +0800
Subject: Re: [PATCH v5 23/23] KVM: arm64: GICv4.1: Expose HW-based SGIs in
 debugfs
To: Marc Zyngier <maz@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-24-maz@kernel.org>
 <4cb4c3d4-7b02-bb77-cd7a-c185346b6a2f@redhat.com>
 <45c282bddd43420024633943c1befac3@kernel.org>
 <e1a1e537-9f8e-5cfb-0132-f796e8bf06c9@huawei.com>
 <b63950513f519d9a04f9719f5aa6a2db@kernel.org>
 <8d7fdb7f-7a21-da22-52a2-51ee8ac9393f@huawei.com>
 <40cbdf23c0f8bfc229400c14899ecbe0@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <facb4eb5-57c6-e0d0-003d-ebaa0b83e6f2@huawei.com>
Date: Fri, 20 Mar 2020 20:09:11 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <40cbdf23c0f8bfc229400c14899ecbe0@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_050928_747792_B1311D1C 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

On 2020/3/20 19:46, Marc Zyngier wrote:
>>> Side note: it'd be good to know what the rules are for your own GICv4
>>> implementations, so that we can at least make sure the current code 
>>> is safe.
>>
>> As far as I know, there will be some clean and invalidate operations
>> when v4.0 VPENDBASER.Valid gets programmed.
> 
> Interesting. The ideal behaviour would be that the VPT is up-to-date and
> the caches clean when Valid is cleared (and once Dirty flips to 0).
> 
>> But not sure about behaviors
>> on VMAPP (unmap), it may be a totally v4.1 stuff. I'll have a talk with
>> our SOC team.
> 
> The VMAPP stuff is purely v4.1.
> 
>> But how can the current code be unsafe? Is anywhere in the current code
>> will peek/poke the vpt (whilst GIC continues writing things into it)?
> 
> No. But on VM termination, the memory will be freed, and will eventually be
> reallocated. If the GIC can still write to that memory after it has been
> freed, you end-up with memory corruption... Which is why I'm curious of
> what ensures that on your implementation.

Ah, I got it. I will check it with HiSilicon people next week and go
back to you if the code becomes unsafe due to the incomplete GICv4.


Thanks,
Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
