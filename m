Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4501F45CB6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8kt7yQSDp+uFfZ5TcypNbFsEgdPr8Kxlwpqg14J9Rp0=; b=d55p8UZcnbCxXwPBqRaw2L835
	0frp98umjM3Pa8p26yg/Ldk1RRNQr7BarjPWolc8bwI8NwytVcX+tVAfipyA5F65Eo3HsKaKmIHkI
	apAuX3ZFkEHCCpkkVP6xTY/LoQHbohpdqxfZ9+sO8FAuukuSH8MJ6Evcy6V5A5dbiRBrxwaYo0HrL
	8gdMrhsYkkg3Wrn6oPo7XOc5qVAr9/WmCwA5L94BjXsVw5g+uzlR1L9vwGrTz32OM5UiFsviFvnEb
	5EIKhX1jMHLbuoA5F+gpQ3yg6jLKV4fll2VPiD3prJ1QqZrP25Vne3ZpsjRzuMN2lHQexJ1rVwAoA
	Hi5NTgrIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hblF2-0006sa-1B; Fri, 14 Jun 2019 12:23:36 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hblEL-0006Ln-EA
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:22:56 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 154F19C821EE6C64B89A;
 Fri, 14 Jun 2019 20:22:45 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 14 Jun 2019 20:22:38 +0800
From: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v4 1/3] lib: logic_pio: Use logical PIO low-level
 accessors for !CONFIG_INDIRECT_PIO
To: Bjorn Helgaas <helgaas@kernel.org>
References: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
 <1560262374-67875-2-git-send-email-john.garry@huawei.com>
 <20190613023947.GD13533@google.com>
 <8ef228f8-97cb-e40e-ea6b-410b80a845cf@huawei.com>
 <20190613200932.GJ13533@google.com>
 <7495dcab-f293-4b2a-4740-2249f61351f7@huawei.com>
 <20190614115056.GP13533@google.com>
Message-ID: <4c49bf7d-f68e-0b79-f03d-03958dac640e@huawei.com>
Date: Fri, 14 Jun 2019 13:22:31 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190614115056.GP13533@google.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_052253_740326_DDA8C060 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: rjw@rjwysocki.net, wangkefeng.wang@huawei.com, lorenzo.pieralisi@arm.com,
 arnd@arndb.de, linux-pci@vger.kernel.org, will.deacon@arm.com,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/06/2019 12:50, Bjorn Helgaas wrote:
> On Fri, Jun 14, 2019 at 10:02:52AM +0100, John Garry wrote:
>> On 13/06/2019 21:09, Bjorn Helgaas wrote:
>>> On Thu, Jun 13, 2019 at 10:39:12AM +0100, John Garry wrote:
>>>> On 13/06/2019 03:39, Bjorn Helgaas wrote:
>>>>> I'm not sure it's even safe, because CONFIG_INDIRECT_PIO depends on
>>>>> ARM64,  but PCI_IOBASE is defined on most arches via asm-generic/io.h,
>>>>> so this potentially affects arches other than ARM64.
>>>>
>>>> It would do. It would affect any arch which defines PCI_IOBASE and
>>>> does not have arch-specific definition of inb et all.
>>
>>> What's the reason for testing PCI_IOBASE instead of
>>> CONFIG_INDIRECT_PIO?  If there's a reason it's needed, that's fine,
>>> but it does make this much more complicated to review.
>>
>> For ARM64, we have PCI_IOBASE defined but may not have
>> CONFIG_INDIRECT_PIO defined. Currently CONFIG_INDIRECT_PIO is only
>> selected by CONFIG_HISILICON_LPC.
>>
>> As such, we should make this change also for when
>> CONFIG_INDIRECT_PIO is not defined.

Hi Bjorn,

>
> OK.  This is all very important for the commit log -- we need to
> understand what arches are affected and the reason they need it.

Right, and to repeat, this would affect other archs which define 
PCI_IOBASE and don't have custom IO port accessors definitions.

There are a few remaining even after the recent arch clear out . I have 
it at arm64, microblaze, and unicore32. Arch m68k defines PCI_IOBASE but 
seems to have its own IO port accessors. Same again for some arm machines.

At least I should cc those arch maintainers.

>
> Since the goal of this series is to fix an ARM64-specific issue,

"ARM64" was in the headline banner, but it would apply to other archs, 
as mentioned above. I should have made that clearer.

and
> the typical port I/O model is for each arch to #define its own inb(),
> maybe it would make sense to move the "#define inb logic_inb" from
> linux/logic_pio.h to arm64/include/asm/io.h?
>

CONFIG_INDIRECT_PIO has been indirectly enabled in ARM64 defconfig for 
some time, so I think that it's ok for ARM64 arch Kconfig to select it 
at this stage. From that, we could make the change suggested.

And, in addition to that, we can make the change in this series just for 
CONFIG_INDIRECT_PIO.

But I think that the other archs, above, could benefit from the changes 
in this series, so it would be shame to omit them.

> The "#ifndef inb" arrangement gets pretty complicated when it occurs
> more than one place (asm-generic/io.h and logic_pio.h) and we have to
> start worrying about the ordering of #includes.

I agree on that.

Cheers,
John

>
> Bjorn
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
