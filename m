Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FDD10DCDB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 07:58:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OR9bFBL8jZ8ml5UfLBUGbXYg2oTL6WnN32+/2l/gzJM=; b=NshH/on3GqXE3H9vz7aU5K1nR
	453pm2BO6bpBpPlzaUG+xaMUJbKCEnba2nZ/uCO2GA0P1Nc+T/HS4ftXM6fabq+Elur1UIglAD8Qt
	yOh9t2ed62A9jF9U3n1Cjbf6uv+krhxkVQCxf2mTEHFaF1VtlH6hKcE03OZvQNPn+tGdxTTsXQDOT
	7PmynMWBcbC/ipKZhasN6Afaj5w0nJr2qNHIyZNmmu6DyJ+M6Jj2gdWvSLOlrYguzU7vjbDSIEX62
	gb8KVCCEIFvXGV8VfMU7CxIpKfGv4DGBrPiwnT17mdP1XwE13fZeP8kZ2mmzrzYc6Vc2BI2qH4aIz
	wOBtWeeSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iawiK-0003ce-KH; Sat, 30 Nov 2019 06:58:44 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iawi9-0003cI-IR
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 06:58:35 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 98767B9740C456E26BB8;
 Sat, 30 Nov 2019 14:58:24 +0800 (CST)
Received: from [127.0.0.1] (10.133.216.73) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Sat, 30 Nov 2019
 14:58:17 +0800
Subject: Re: [PATCH] kvm/arm64: change gicv3_cpuif to static likely branch
To: Marc Zyngier <maz@kernel.org>
References: <20191130031443.41696-1-guoheyi@huawei.com>
 <86mucdzx45.wl-maz@kernel.org>
From: Guoheyi <guoheyi@huawei.com>
Message-ID: <496cb45d-c312-295c-18f2-633ec5acc976@huawei.com>
Date: Sat, 30 Nov 2019 14:58:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <86mucdzx45.wl-maz@kernel.org>
X-Originating-IP: [10.133.216.73]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_225833_794086_3A5C049E 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 wanghaibin.wang@huawei.com, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/11/30 14:39, Marc Zyngier wrote:
> On Sat, 30 Nov 2019 03:14:43 +0000,
> Heyi Guo <guoheyi@huawei.com> wrote:
>> Platforms running hypervisor nowadays are normally powerful servers
>> which at least support GICv3, so it should be better to switch
>> kvm_vgic_global_state.gicv3_cpuif to static likely branch, which can
>> reduce two "b" instructions to a single "nop" for GICv3 branches.
>>
>> We don't update arm32 specific code for they may still only have
>> GICv2.
> There is a number of disputable statements here.
>
> Out of the fairly large zoo of arm64 systems I have access to, 75% of
> them are based on GICv2, so they are still the overwhelming majority.
> Yes, they all run KVM (otherwise I would ignore them).
Really? I'm surprised to know that... Sorry I didn't see such GICv2 
platforms in my work, so I made the wrong assumption.
I don't expect much performance improvement for GICv3 platforms. The 
precondition for this patch is that few platforms running KVM are using 
GICv2. If it is not right, please just ignore it.

Thanks,
HG

>
> Furthermore, I would expect that "powerful servers" are perfectly
> capable to execute a couple of branches without breaking a sweat.
>
> Finally, you don't provide any number supporting that:
>
> - GICv3 systems see a performance improvement across the large variety
>    of CPU implementations
> - GICv2 systems don't see a performance regression
>
> Once you provide such numbers, I'll reevaluate my position. Until
> then, I'm not considering this kind of change.
>
> Thanks,
>
> 	M.
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
