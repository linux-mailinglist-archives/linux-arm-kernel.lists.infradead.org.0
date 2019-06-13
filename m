Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 860A04357B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 13:24:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qV3075lElyOVFaY/C8PbqA5lZQnMQVBCkwWROe0y+cs=; b=Af51NW2Ulg+6+2DmAMIAfar4+
	oV1IhS/aXaNUBIQXd5jOCPW1DSiNhfRQCKCUwbaHMhIN2gIj4mKbyFzqlfKz6ilqvANjImGmEVVf8
	HxGYq4daBtYQpORcmTj2QvYrklay2S3FTuUMyiS8vFfOaPxZJLveKFuaq8Ig7gE3ZHXOxHb08Agqc
	sMwZGV9X7FuTicdMGVCs2ZRt5fG/AlrVMTwHkL8hGkeATjB1+7uRnJ3dpx2uwpxGpJoq1GXzFatKB
	JyHNZKMmNtOm/5tbCp0y3SjuTsxaza680G+M2xIVTnzrzNtsVdsIwYT4I9IWpb0x26mRBttzxqmg9
	ypTIuFTsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbNqI-0007Jj-Gu; Thu, 13 Jun 2019 11:24:30 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbNpL-0006yo-6B
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 11:23:34 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id A7DBEF7C1BDB2B979504;
 Thu, 13 Jun 2019 19:23:24 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Thu, 13 Jun 2019
 19:23:16 +0800
Subject: Re: [PATCH v1 1/5] KVM: arm/arm64: Remove kvm_mmio_emulate tracepoint
To: James Morse <james.morse@arm.com>
References: <1560330526-15468-1-git-send-email-yuzenghui@huawei.com>
 <1560330526-15468-2-git-send-email-yuzenghui@huawei.com>
 <e915c19a-51df-be88-ea3a-7c9a211f4518@arm.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <5885c607-1314-ff53-38f1-9f48b1c16de4@huawei.com>
Date: Thu, 13 Jun 2019 19:20:19 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <e915c19a-51df-be88-ea3a-7c9a211f4518@arm.com>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_042331_559998_4AF900B6 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: acme@redhat.com, "Wanghaibin \(D\)" <wanghaibin.wang@huawei.com>,
 kvm@vger.kernel.org, marc.zyngier@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 linuxarm@huawei.com, linux-perf-users@vger.kernel.org, peterz@infradead.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, xiexiangyou@huawei.com,
 ganapatrao.kulkarni@cavium.com, namhyung@kernel.org, jolsa@redhat.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 2019/6/12 20:48, James Morse wrote:
> Hi,
> 
> On 12/06/2019 10:08, Zenghui Yu wrote:
>> In current KVM/ARM code, no one will invoke trace_kvm_mmio_emulate().
>> Remove this TRACE_EVENT definition.
> 
> Oooer. We can't just go removing these things, they are visible to user-space.
> 
> I recall an article on this: https://lwn.net/Articles/737530/
> "Another attempt to address the tracepoint ABI problem"
> 
> I agree this is orphaned, it was added by commit 45e96ea6b369 ("KVM: ARM: Handle I/O
> aborts"), but there never was a caller.
> 
> The problem with removing it is /sys/kernel/debug/tracing/events/kvm/kvm_mmio_emulate
> disappears. Any program relying on that being present (but useless) is now broken.
Thanks for the reminder.

It turned out that I knew little about the tracepoint ABI :( .
I'm OK to just drop this patch in next version.


Thanks,
zenghui


.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
