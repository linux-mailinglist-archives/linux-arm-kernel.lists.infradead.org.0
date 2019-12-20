Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07016128441
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 23:02:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bipnw2eKO5tqUd+ZZhbTF2/+1JagppdNAsXTYvPFK2A=; b=f8l0d52b9W/rB7VVviddFnv5T
	YXXJhTcNQB5nT0MYkTv7v0WXV+vRmFbEZZZbwG7pT4AzYsoI0+qbV6GCD8vBRhDy8bQdnk19c6muS
	UNPMq27XxsLM7z0/3AQMgbZ9a9dD3JTlBhJyRlRxsdtL7Azicds1gw5/aKFKMjHfIMh5zoTvZNTEP
	8QhAA2IoF8rc3pXzXUwifnkKC0g9jpKSDwhm4Vb1fGA2YCoAV38xGylhoZjnN+sNQVbwaUOZvfCwX
	LUYDitWvtQLnkLYEqha5lxBWlIq8fNwdZmUskkwc+WIDIFTE2M/RcZLjo5xdxN3yvCaUkgRq6wSVE
	EEdIZLsCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiQLv-00047k-DE; Fri, 20 Dec 2019 22:02:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiQLi-000470-Hf
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 22:02:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 893BF30E;
 Fri, 20 Dec 2019 14:02:17 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9CCEC3F67D;
 Fri, 20 Dec 2019 14:02:15 -0800 (PST)
Subject: Re: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
To: Peter Zijlstra <peterz@infradead.org>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
 <bf020a68-00fd-2bb7-c3b6-00f5befa293a@free.fr>
 <20191220140655.GN2827@hirez.programming.kicks-ass.net>
 <9be1d523-e92c-836b-b79d-37e880d092a0@arm.com>
 <20191220171359.GP2827@hirez.programming.kicks-ass.net>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <b2e0e322-a4e7-af26-d64a-1ba226e48476@arm.com>
Date: Fri, 20 Dec 2019 22:02:13 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191220171359.GP2827@hirez.programming.kicks-ass.net>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_140218_628115_68FB7019 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexey Brodkin <alexey.brodkin@synopsys.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Tejun Heo <tj@kernel.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-20 5:13 pm, Peter Zijlstra wrote:
> On Fri, Dec 20, 2019 at 03:01:03PM +0000, Robin Murphy wrote:
>> On 2019-12-20 2:06 pm, Peter Zijlstra wrote:
> 
>>> 	data = kmalloc(size + sizeof(struct devres), GFP_KERNEL);

[ afterthought: size could also legitimately be smaller than a pointer 
or some odd length such that the necessary alignment of struct devres 
itself isn't met ]

>> At this point, you'd still need to special-case devm_kmalloc() to ensure
>> size is rounded up to the next ARCH_KMALLOC_MINALIGN granule, or you'd go
>> back to the original problem of the struct devres fields potentially sharing
>> a cache line with the data buffer. That needs to be avoided, because if the
>> devres list is modified while the buffer is mapped for noncoherent DMA
>> (which could legitimately happen as they are nominally distinct allocations
>> with different owners) there's liable to be data corruption one way or the
>> other.
> 
> Wait up, why are you allowing non-coherent DMA at less than page size
> granularity? Is that really sane? Is this really supported behaviour for
> devm ?

There are two DMA APIs - the coherent (or "consistent") API for 
allocating buffers which are guaranteed safe for random access at any 
time *is* page-based, and on non-coherent architectures typically 
involves a non-cacheable remap. There is also the streaming API for 
one-off transfers of data already existing at a given kernel address 
(think network packets, USB URBs, etc), which on non-coherent 
architectures is achieved with explicit cache maintenance plus an API 
contract that buffers must not be explicitly accessed by CPUs for the 
duration of the mapping. Addresses from kmalloc() are explicitly valid 
for dma_map_single() (and indeed are about the only thing you'd ever 
reasonably feed it), which is the primary reason why 
ARCH_KMALLOC_MINALIGN gets so big on architectures which can be 
non-coherent and also suffer from creative cache designs.

See DMA-API.txt and DMA-API-HOWTO.txt in Documentation/ for more details 
if you like.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
