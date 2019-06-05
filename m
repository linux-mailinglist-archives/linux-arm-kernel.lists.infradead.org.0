Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4603615C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 18:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9YYvAN+8YnHFvuF31vLbCTNRbFUOHjha6qtosZi+4NE=; b=IUJm9EdOwpJp3W
	QqbBmWkGtY4hZXsoje0m1uUIRXCJEeOBqe3abIo1hZQHmIdOXOC5wHZmlmyltTMOuytzt8cVMkz+E
	ltE0LcrvNjmADMdQjDF1sDRmQx91phN1YVIgaAp7p20qRCZTZYkvGvxlTfm94r2REW9jI2p57OxAY
	jAGRI+h8ZSD8oREiJIuuaY/BBz7c0OBH73S9RSfLATIxcviKQw3kfNdzU59+ELnFxNt44ohT1ZFse
	eM+UMdZ7v1ni4oJNIsoxmlGmPE1Xdb7TJCoAuVCruw4TtH6qDK3sRJGh5MidfEmFEB0S4H0/6y2px
	32QhP9+A+wKjyY6yunQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYpl-0003iw-VZ; Wed, 05 Jun 2019 16:32:17 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYpd-0003he-CK; Wed, 05 Jun 2019 16:32:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8EA8A374;
 Wed,  5 Jun 2019 09:32:08 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B9ED53F5AF;
 Wed,  5 Jun 2019 09:32:05 -0700 (PDT)
Subject: Re: [PATCH 0/4] support reserving crashkernel above 4G on arm64 kdump
To: Chen Zhou <chenzhou10@huawei.com>
References: <20190507035058.63992-1-chenzhou10@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <51995efd-8469-7c15-0d5e-935b63fe2d9f@arm.com>
Date: Wed, 5 Jun 2019 17:32:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190507035058.63992-1-chenzhou10@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_093209_426818_2EC525F5 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: wangkefeng.wang@huawei.com, horms@verge.net.au, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 rppt@linux.ibm.com, linux-mm@kvack.org, takahiro.akashi@linaro.org,
 mingo@redhat.com, bp@alien8.de, ebiederm@xmission.com,
 kexec@lists.infradead.org, akpm@linux-foundation.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On 07/05/2019 04:50, Chen Zhou wrote:
> We use crashkernel=X to reserve crashkernel below 4G, which will fail
> when there is no enough memory. Currently, crashkernel=Y@X can be used
> to reserve crashkernel above 4G, in this case, if swiotlb or DMA buffers
> are requierd, capture kernel will boot failure because of no low memory.

> When crashkernel is reserved above 4G in memory, kernel should reserve
> some amount of low memory for swiotlb and some DMA buffers. So there may
> be two crash kernel regions, one is below 4G, the other is above 4G.

This is a good argument for supporting the 'crashkernel=...,low' version.
What is the 'crashkernel=...,high' version for?

Wouldn't it be simpler to relax the ARCH_LOW_ADDRESS_LIMIT if we see 'crashkernel=...,low'
in the kernel cmdline?

I don't see what the 'crashkernel=...,high' variant is giving us, it just complicates the
flow of reserve_crashkernel().

If we called reserve_crashkernel_low() at the beginning of reserve_crashkernel() we could
use crashk_low_res.end to change some limit variable from ARCH_LOW_ADDRESS_LIMIT to
memblock_end_of_DRAM().
I think this is a simpler change that gives you what you want.


> Then
> Crash dump kernel reads more than one crash kernel regions via a dtb
> property under node /chosen,
> linux,usable-memory-range = <BASE1 SIZE1 [BASE2 SIZE2]>.

Won't this break if your kdump kernel doesn't know what the extra parameters are?
Or if it expects two ranges, but only gets one? These DT properties should be treated as
ABI between kernel versions, we can't really change it like this.

I think the 'low' region is an optional-extra, that is never mapped by the first kernel. I
think the simplest thing to do is to add an 'linux,low-memory-range' that we
memblock_add() after memblock_cap_memory_range() has been called.
If its missing, or the new kernel doesn't know what its for, everything keeps working.


> Besides, we need to modify kexec-tools:
>   arm64: support more than one crash kernel regions(see [1])

> I post this patch series about one month ago. The previous changes and
> discussions can be retrived from:

Ah, this wasn't obvious as you've stopped numbering the series. Please label the next one
'v6' so that we can describe this as 'v5'. (duplicate numbering would be even more confusing!)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
