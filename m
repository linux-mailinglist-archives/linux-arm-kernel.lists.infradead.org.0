Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDC514A8D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 18:18:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMDzIxjRJ9eNG7FthR82cR4K8dtui3GQ6yQIALRcdl4=; b=ngA87stTXkH5pd
	wbZtO3d2CyEGA0BH75E4KCHukqUTzEZREgTFvEWNnKaHBdOeWt5vi7YpUOYRT81RZU9CY0W8G+UCu
	dyzg87WMgulj5uSBB1E92X1Bn9obp6+A/RaN7X/jHFCrdI4l+4l03WHPdfN0+skBsRdwf0VnT8+mn
	XYHpgCpuztZTRPEdGe32AO9EHeP1KQIADZ+5uV2CkfX9f26tcAt8vSCP9MusdgdjD+l8jT2GAZkFh
	Maj5A3GL/O0PMuOeP6GsRPlUsMa4TNIplmUAldcWz+wygFDlMr5CRla1sqSBh/hIJs9CD8e0gjFx+
	E6gMPwAiTKuYgb3oUpXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw81n-0001fM-4Q; Mon, 27 Jan 2020 17:18:23 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw81L-0001Yn-NN
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 17:17:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580145474;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wHplmyQRy7+LrHerh/x7+cY34rWWSm7Q4DovTktG328=;
 b=bF+uwpmRScTYxDo+MN/7bFWVD4GyBmICu/fMNl1w+rfH3qXuM9eMakyB/bLKLOJK27JhEZ
 GoOrrO0VPrjyMBHdY5DJu7vKOlDCpYOY4KS0Y9Pu+AeQg5K0RRaJmuOdka1mhnnet0ruJF
 oQTy/8JhFvKP7rs9FElfE3Xb++elXY4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-164-uZKIM-65NSmb3BwCR2rEag-1; Mon, 27 Jan 2020 12:17:49 -0500
X-MC-Unique: uZKIM-65NSmb3BwCR2rEag-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 20698477;
 Mon, 27 Jan 2020 17:17:47 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E92578702A;
 Mon, 27 Jan 2020 17:17:44 +0000 (UTC)
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
From: Waiman Long <longman@redhat.com>
To: paulmck@kernel.org
References: <20200124222434.GA7196@paulmck-ThinkPad-P72>
 <6AAE7FC6-F5DE-4067-8BC4-77F27948CD09@oracle.com>
 <20200125005713.GZ2935@paulmck-ThinkPad-P72>
 <02defadb-217d-7803-88a1-ec72a37eda28@redhat.com>
 <adb4fb09-f374-4d64-096b-ba9ad8b35fd5@redhat.com>
 <20200125045844.GC2935@paulmck-ThinkPad-P72>
 <967f99ee-b781-43f4-d8ba-af83786c429c@redhat.com>
 <20200126153535.GL2935@paulmck-ThinkPad-P72>
 <20200126224245.GA22901@paulmck-ThinkPad-P72>
 <2e552fad-79c0-ec06-3b8c-d13f1b67f57d@redhat.com>
 <20200127150902.GN2935@paulmck-ThinkPad-P72>
 <9b3a3f16-5405-b6d1-d023-b85f4aab46dd@redhat.com>
Organization: Red Hat
Message-ID: <0c2f17ab-7f03-c8b8-168f-2152bb65ca48@redhat.com>
Date: Mon, 27 Jan 2020 12:17:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <9b3a3f16-5405-b6d1-d023-b85f4aab46dd@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_091756_700622_ECA98833 
X-CRM114-Status: GOOD (  21.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>, bp@alien8.de,
 hpa@zytor.com, Alex Kogan <alex.kogan@oracle.com>, steven.sistare@oracle.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/27/20 12:12 PM, Waiman Long wrote:
> On 1/27/20 10:09 AM, Paul E. McKenney wrote:
>>> Do you mean within the VM, lscpu showed that the system has one node and
>>> 12 threads per node? If that is the case, it should behave like regular
>>> qspinlock and be fair.
>> I mean that I saw this in dmesg, which I believe to be telling me the
>> same thing as lscpu saying that there is one node, but you tell me!
>>
>> [    0.007106] No NUMA configuration found
>> [    0.007107] Faking a node at [mem 0x0000000000000000-0x000000001ffdefff]
>> [    0.007111] NODE_DATA(0) allocated [mem 0x1ffdb000-0x1ffdefff]
>> [    0.007126] Zone ranges:
>> [    0.007127]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
>> [    0.007128]   DMA32    [mem 0x0000000001000000-0x000000001ffdefff]
>> [    0.007128]   Normal   empty
>> [    0.007129] Movable zone start for each node
>> [    0.007129] Early memory node ranges
>> [    0.007130]   node   0: [mem 0x0000000000001000-0x000000000009efff]
>> [    0.007132]   node   0: [mem 0x0000000000100000-0x000000001ffdefff]
>> [    0.007227] Zeroed struct page in unavailable ranges: 98 pages
>> [    0.007227] Initmem setup node 0 [mem 0x0000000000001000-0x000000001ffdefff]
>> [    0.007228] On node 0 totalpages: 130941
>> [    0.007231]   DMA zone: 64 pages used for memmap
>> [    0.007231]   DMA zone: 21 pages reserved
>> [    0.007232]   DMA zone: 3998 pages, LIFO batch:0
>> [    0.007266]   DMA32 zone: 1984 pages used for memmap
>> [    0.007267]   DMA32 zone: 126943 pages, LIFO batch:31
>>
> That does look like just one node.
>>>> I will try reader-writer lock next.
>>>>
>>>> Again, should I be using qemu's -numa command-line option to create nodes?
>>>> If so, what would be a sane configuration given 12 CPUs and 512MB of
>>>> memory for the VM?  If not, what is a good way to exercise CNA's NUMA
>>>> capabilities within a guest OS?
>>> You can certainly play around with CNA in a VM. However, it is generally
>>> not recommended to use CNA in a VM unless the VM cpu topology matches
>>> the host with 1-to-1 vcpu pinning and there is no vcpu overcommit. In
>>> this case, one may see some performance improvement using CNA by using
>>> the "numa_spinlock=on" option to explicitly turn it on.
>> Sorry, but I will not be booting this on bare metal on the systems that
>> I currently have access to.  No more than I run rcutorture on bare metal
>> on them, especially not with newly modified variants of RCU.  ;-)
>>
>>> Because of the shuffling of queue entries, CNA is inherently less fair
>>> than the regular qspinlock. However, a ratio of 5 seems excessive to me.
>>> vcpu preemption may be a factor in contributing to this large variation.
>>> My testing on bare metal only showed a throughput variation within
>>> 10-20% at most.
>> OK.  Any guidance on qemu's -numa, or should I just experiment with it?
>> The latter will take me some time, as I must focus on other things
>> this week.
> To really test it, you should have multiple numa nodes, 2 or 4.
>> Alternatively, would it make sense for you to give it a spin in a VM?
>> After all, it is entirely possible that I still have some configuration
>> or another messed up.
>
> It all depends on what you want to test. If you want just to make sure
> that it won't fail any locking test. Yes, you can certainly do that in
> a VM. If you want to test for performance or fairness of CNA versus
> regular qspinlock, using a VM is not a proper platform. Even with a
> single node, you see 5x difference in locking count. I suspect that
> maybe one or a few vcpus got preempted pretty frequently to perform
> host activities that it screw up the data.
>
BTW, in a VM, the queued_spin_unlock function pointer will still be
pointing to the paravirt version even if CNA is used for the slowpath.
That shouldn't impact correctness, but is not optimal for performance.

Cheers,
Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
