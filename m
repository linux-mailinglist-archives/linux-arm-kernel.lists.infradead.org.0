Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A8E11BAEE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:02:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HZzIaPuPW+xi2X+ODfj2He0//nEZ2KtR1ul6pqry2Ko=; b=TZ3VXeKQewIvuehMH6+Bxh853
	cfxV4/J6z4QwptbgAiIVjNYTfUCnks6W8i/7NHiEr9F7OPGJufsVo2gkI/QSj/D8MrYSidZWaLRgx
	MCKPcHUg/djejHtgD7Hcm+DCLlXEfpzQQdZwZYH0sZ2iZPrtpaHAttcyO79wYXdGdUi9CymufbkLm
	HZN5jSl/m/XzF4J7DwzmmRZEuU9tDzDQwvu/+H1KK3IUyIEuwmKngB8j4kjaI++EjHaFFVeeFR8BW
	GLoouEDhQojtQ3zbrtf+Yzr32yMQj4+B7sOTMH85qnVvMyQs3MEk+ThzhOHVi3piRC5IBYU7oJo5d
	fGHnxBpSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6JO-0001l6-Dl; Wed, 11 Dec 2019 18:02:10 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6JF-0001kh-5U
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:02:02 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1if6JA-0000Td-Ug; Wed, 11 Dec 2019 19:01:56 +0100
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [PATCH 1/3] KVM: arm/arm64: Properly handle faulting of device
 mappings
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 11 Dec 2019 18:01:56 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <a8dbd580-ed09-8d46-6ec5-a54bac3a6695@arm.com>
References: <20191211165651.7889-1-maz@kernel.org>
 <20191211165651.7889-2-maz@kernel.org>
 <a8dbd580-ed09-8d46-6ec5-a54bac3a6695@arm.com>
Message-ID: <4b504f8d380e3587fab197921ab0c7e8@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: alexandru.elisei@arm.com, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 christoffer.dall@arm.com, stable@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_100201_353535_C2AF4397 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, stable@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alex,

On 2019-12-11 17:53, Alexandru Elisei wrote:
> Hi,
>
> On 12/11/19 4:56 PM, Marc Zyngier wrote:
>> A device mapping is normally always mapped at Stage-2, since there
>> is very little gain in having it faulted in.
>>
>> Nonetheless, it is possible to end-up in a situation where the 
>> device
>> mapping has been removed from Stage-2 (userspace munmaped the VFIO
>> region, and the MMU notifier did its job), but present in a 
>> userspace
>> mapping (userpace has mapped it back at the same address). In such
>> a situation, the device mapping will be demand-paged as the guest
>> performs memory accesses.
>>
>> This requires to be careful when dealing with mapping size, cache
>> management, and to handle potential execution of a device mapping.
>>
>> Cc: stable@vger.kernel.org
>> Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  virt/kvm/arm/mmu.c | 21 +++++++++++++++++----
>>  1 file changed, 17 insertions(+), 4 deletions(-)

[...]

> I've tested this patch using the scenario that you described in the 
> commit
> message. I've also tested it with the following scenarios:
>
> - The region is mmap'ed as backed by a VFIO device fd and the memslot
> is created,
> it is munmap'ed, then mmap'ed as anonymous.
> - The region is mmap'ed as anonymous and the memslot is created, it
> is munmap'ed,
> then mmap'ed as backed by a VFIO device fd.
>
> Everything worked as expected, so:
>
> Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>

Thanks for that!

> Just a nitpick, but stage2_set_pte has a local variable iomap which 
> can be
> replaced with a call to is_iomap.

Yeah, I noticed. I'm just trying to keep the patch relatively small so
that it can be easily backported. The cleanup can come later! ;-)

Cheers,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
