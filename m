Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0D1189FBF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 16:35:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qh4PEidqKbVTaiFCh9UzbJGJAeLbGoinmj2WlhlIPWg=; b=HC5kThMMCXdZSDCJBHRFgUlEK
	AYVEabsqxZRe/dY26RJDxLxq4uE/mDi4Qb+V22S460SR7MhKp8eCe1Dvg50RVtxe4l51dqXn0LgIn
	mym3OixSTyB0eHaV5iJy2RKTgqakpJ0QTswNXq282EIpjNPB0G35SUPu9cCxUBmpPxQYnLhIMh6tp
	Ysv2ewoXNSnz7UrA1c2p9PN5r2VuNDTM7aNC3OocN7m5XG+Go4KLeNGp2eMmm18maTIt/K0MHqyNS
	JNZeiawqJ6WwcXiU37WbcASzTSKXyS58aWQwyyxGlyoMWK7WkH/qTzQMnU78TDPWOBtZtcyn5XsfO
	Ybw9VUp8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEaj9-0008A2-1N; Wed, 18 Mar 2020 15:35:27 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEaiz-00089M-Kl
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 15:35:19 +0000
Received: from lhreml704-cah.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 034F84D0025CD28E4C92;
 Wed, 18 Mar 2020 15:35:10 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml704-cah.china.huawei.com (10.201.108.45) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 18 Mar 2020 15:35:09 +0000
Received: from [127.0.0.1] (10.47.11.44) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 18 Mar
 2020 15:35:08 +0000
Subject: Re: [PATCH v3 2/2] irqchip/gic-v3-its: Balance initial LPI affinity
 across CPUs
To: Marc Zyngier <maz@kernel.org>
References: <20200316115433.9017-1-maz@kernel.org>
 <20200316115433.9017-3-maz@kernel.org>
 <d3a6435b-bc1f-e518-6461-2ebff72bbc59@huawei.com>
 <d74f9cb3df708335a56aec62963aa281@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <894aabcc-9676-3945-7a62-70fb930fd8a5@huawei.com>
Date: Wed, 18 Mar 2020 15:34:56 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <d74f9cb3df708335a56aec62963aa281@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.47.11.44]
X-ClientProxiedBy: lhreml721-chm.china.huawei.com (10.201.108.72) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_083517_831911_B3C4FAB2 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jason Cooper <jason@lakedaemon.net>, luojiaxing <luojiaxing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ming Lei <ming.lei@redhat.com>, "Wangzhou \(B\)" <wangzhou1@hisilicon.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


>>> +static int its_select_cpu(struct irq_data *d,
>>> +			  const struct cpumask *aff_mask)
>>> +{
>>> +	struct its_device *its_dev = irq_data_get_irq_chip_data(d);
>>> +	cpumask_var_t tmpmask;
>>> +	int cpu, node;
>>> +
>>> +	if (!alloc_cpumask_var(&tmpmask, GFP_KERNEL))
>>> +		return -ENOMEM;
>>> +
>>> +	node = its_dev->its->numa_node;
>>> +
>>> +	if (!irqd_affinity_is_managed(d)) {
>>> +		/* First try the NUMA node */
>>> +		if (node != NUMA_NO_NODE) {
>>> +			/*
>>> +			 * Try the intersection of the affinity mask and the
>>> +			 * node mask (and the online mask, just to be safe).
>>> +			 */
>>> +			cpumask_and(tmpmask, cpumask_of_node(node), aff_mask);
>>> +			cpumask_and(tmpmask, tmpmask, cpu_online_mask);
>>> +
>>> +			/* If that doesn't work, try the nodemask itself */
>>
>> So if tmpmsk is empty...
> 
> Which means the proposed affinity mask isn't part of the node mask the
> first place.
> Why did we get such an affinity the first place?

It seems to be just irqbalance setting the affinity mask via sysfs:

[44.782116] Calltrace:
[44.782119] its_select_cpu+0x420/0x6e0
[44.782121] its_set_affinity+0x180/0x208
[44.782126] msi_domain_set_affinity+0x44/0xb8
[44.782130] irq_do_set_affinity+0x48/0x190
[44.782132] irq_set_affinity_locked+0xc0/0xe8
[44.782134] __irq_set_affinity+0x48/0x78
[44.782136] write_irq_affinity.isra.8+0xec/0x110
[44.782138] irq_affinity_proc_write+0x1c/0x28
[44.782142] proc_reg_write+0x70/0xb8
[44.782147] __vfs_write+0x18/0x40
[44.782149] vfs_write+0xb0/0x1d0
[44.782151] ksys_write+0x64/0xe8
[44.782154] __arm64_sys_write+0x18/0x20
[44.782157] el0_svc_common.constprop.2+0x88/0x150
[44.782159] do_el0_svc+0x20/0x80
[44.782162] el0_sync_handler+0x118/0x188
[44.782164] el0_sync+0x140/0x180

And for some reason fancied cpu62.

> 
>>
>>> +			if (cpumask_empty(tmpmask))
>>> +				cpumask_and(tmpmask, cpumask_of_node(node), cpu_online_mask);
>>
>>   now the tmpmask may have no intersection with the aff_mask...
> 
> But it has the mask for CPUs that are best suited for this interrupt,
> right?
> If I understand the topology of your machine, it has an ITS per 64 CPUs,
> and
> this device is connected to the ITS that serves the second socket.

No, this one (D06ES) has a single ITS:

john@ubuntu:~/kernel-dev$ dmesg | grep ITS
[    0.000000] SRAT: PXM 0 -> ITS 0 -> Node 0
[    0.000000] ITS [mem 0x202100000-0x20211ffff]
[    0.000000] ITS@0x0000000202100000: Using ITS number 0
[    0.000000] ITS@0x0000000202100000: allocated 8192 Devices 
@23ea9f0000 (indirect, esz 8, psz 16K, shr 1)
[    0.000000] ITS@0x0000000202100000: allocated 2048 Virtual CPUs 
@23ea9d8000 (indirect, esz 16, psz 4K, shr 1)
[    0.000000] ITS@0x0000000202100000: allocated 256 Interrupt 
Collections @23ea9d3000 (flat, esz 16, psz 4K, shr 1)
[    0.000000] ITS: Using DirectLPI for VPE invalidation
[    0.000000] ITS: Enabling GICv4 support
[    0.044034] Platform MSI: ITS@0x202100000 domain created
[    0.044042] PCI/MSI: ITS@0x202100000 domain created

D06CS has 2x ITS, as you may know :)

And, FWIW, the device is on the 2nd socket, numa node #2.

So the cpu mask of node #0 (where the ITS lives) is 0-23. So no 
intersection with what userspace requested.

>> 	if (cpu < 0 || cpu >= nr_cpu_ids)
>> 		return -EINVAL;
>>
>> 	if (cpu != its_dev->event_map.col_map[id]) {
>> 		its_inc_lpi_count(d, cpu);
>> 		its_dec_lpi_count(d, its_dev->event_map.col_map[id]);
>> 		target_col = &its_dev->its->collections[cpu];
>> 		its_send_movi(its_dev, target_col, id);
>> 		its_dev->event_map.col_map[id] = cpu;
>> 		irq_data_update_effective_affinity(d, cpumask_of(cpu));
>> 	}
>>
>> So cpu may not be a member of mask_val. Hence the inconsistency of the
>> affinity list and effective affinity. We could just drop the AND of
>> the ITS node mask in its_select_cpu().
> 
> That would be a departure from the algorithm Thomas proposed, which made
> a lot of sense in my opinion. What its_select_cpu() does in this case is
> probably the best that can be achieved from a latency perspective,
> as it keeps the interrupt local to the socket that generated it.

We seem to be following what Thomas described for a non-managed 
interrupt bound to a node. But is this interrupt bound to the node?

Regardless of that, what you're saying seems right - keep local 
interrupt bound to the node. But the problem is that userspace is doing 
its own thing.

> 
> What I wonder is how we end-up with this silly aff_mask the first place.

Cheers,
John

BTW, sorry if any text formatting is mangled. I have to improve my WFH 
setup....

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
