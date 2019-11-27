Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2607D10B667
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 20:06:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dvIgUhVdiqP7zRphBsuxHoMMewetpUfST0BrZd499Tk=; b=P51NGA6Bg0ci0SNtB+Dhooni/
	eO9eDKbhv+6Jj1qztFip3DnKdbSx7EljyE3WQK3BrRvfRg4r1lw/NKrExuTBYEitSYYXn3e1WJMNl
	+bDEWHFjFzIH6ryJ9gK08TJ1ZK39wwyjZlK4Qu2gc4Q5NlpSDefCo56MCoIAteo64S5K3Sbkd+c6C
	BxleopHWpr7mlga+oJo3+/WihDeXJLRwL9Ik9y1MRqbqyDCQRIpRTuUqgtgwwF6ZJxG0zOWZdGp5e
	mrrIgwCmyyCIlaie5GgGt5ZxFBJI06KfO/UJ9rFRt8bXZGF5mS+o8u3fJEwqqfna6rGMYH7MuhGjs
	+bgr+XZ+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia2dz-0002UV-9A; Wed, 27 Nov 2019 19:06:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia2dp-0002TN-1K; Wed, 27 Nov 2019 19:06:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04C6F31B;
 Wed, 27 Nov 2019 11:06:20 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D3B673F6C4;
 Wed, 27 Nov 2019 11:06:14 -0800 (PST)
Subject: Re: [PATCH v3 1/7] linux/log2.h: Add roundup/rounddown_pow_two64()
 family of functions
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Leon Romanovsky <leon@kernel.org>
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-2-nsaenzjulienne@suse.de>
 <20191126125137.GA10331@unreal>
 <6e0b9079-9efd-2884-26d1-3db2d622079d@arm.com>
 <b30002d48c9d010a1ee81c16cd29beee914c3b1d.camel@suse.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c08863a7-49c6-962e-e968-92adb8ee2cc9@arm.com>
Date: Wed, 27 Nov 2019 19:06:12 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b30002d48c9d010a1ee81c16cd29beee914c3b1d.camel@suse.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_110621_169334_9C46EABA 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Hanjun Guo <guohanjun@huawei.com>,
 Frank Rowand <frowand.list@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>, f.fainelli@gmail.com,
 linux-rockchip@lists.infradead.org, linux-rdma@vger.kernel.org, maz@kernel.org,
 phil@raspberrypi.org, linux-acpi@vger.kernel.org, Len Brown <lenb@kernel.org>,
 devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-rpi-kernel@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, mbrugger@suse.com,
 netdev@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 wahrenst@gmx.net, james.quinlan@broadcom.com,
 Sudeep Holla <sudeep.holla@arm.com>, andrew.murray@arm.com,
 "David S. Miller" <davem@davemloft.net>, Tariq Toukan <tariqt@mellanox.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/11/2019 6:24 pm, Nicolas Saenz Julienne wrote:
> On Wed, 2019-11-27 at 18:06 +0000, Robin Murphy wrote:
>> On 26/11/2019 12:51 pm, Leon Romanovsky wrote:
>>> On Tue, Nov 26, 2019 at 10:19:39AM +0100, Nicolas Saenz Julienne wrote:
>>>> Some users need to make sure their rounding function accepts and returns
>>>> 64bit long variables regardless of the architecture. Sadly
>>>> roundup/rounddown_pow_two() takes and returns unsigned longs. Create a
>>>> new generic 64bit variant of the function and cleanup rougue custom
>>>> implementations.
>>>
>>> Is it possible to create general roundup/rounddown_pow_two() which will
>>> work correctly for any type of variables, instead of creating special
>>> variant for every type?
>>
>> In fact, that is sort of the case already - roundup_pow_of_two() itself
>> wraps ilog2() such that the constant case *is* type-independent. And
>> since ilog2() handles non-constant values anyway, might it be reasonable
>> to just take the strongly-typed __roundup_pow_of_two() helper out of the
>> loop as below?
>>
>> Robin
>>
> 
> That looks way better that's for sure. Some questions.
> 
>> ----->8-----
>> diff --git a/include/linux/log2.h b/include/linux/log2.h
>> index 83a4a3ca3e8a..e825f8a6e8b5 100644
>> --- a/include/linux/log2.h
>> +++ b/include/linux/log2.h
>> @@ -172,11 +172,8 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
>>     */
>>    #define roundup_pow_of_two(n)			\
>>    (						\
>> -	__builtin_constant_p(n) ? (		\
>> -		(n == 1) ? 1 :			\
>> -		(1UL << (ilog2((n) - 1) + 1))	\
>> -				   ) :		\
>> -	__roundup_pow_of_two(n)			\
>> +	(__builtin_constant_p(n) && (n == 1)) ?	\
>> +	1 : (1UL << (ilog2((n) - 1) + 1))	\
> 
> Then here you'd have to use ULL instead of UL, right? I want my 64bit value
> everywhere regardless of the CPU arch. The downside is that would affect
> performance to some extent (i.e. returning a 64bit value where you used to have
> a 32bit one)?

True, although it's possible that 1ULL might result in the same codegen 
if the compiler can see that the result is immediately truncated back to 
long anyway. Or at worst, I suppose "(typeof(n))1" could suffice, 
however ugly. Either way, this diff was only an illustration rather than 
a concrete proposal, but it might be an interesting diversion to 
investigate.

On that note, though, you should probably be using ULL in your current 
patch too.

> Also, what about callers to this function on platforms with 32bit 'unsigned
> longs' that happen to input a 64bit value into this. IIUC we'd have a change of
> behaviour.

Indeed, although the change in such a case would be "start getting the 
expected value instead of nonsense", so it might very well be welcome ;)

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
