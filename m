Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC8943A96
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NICyNaFWdicJlbzgxyeuRZ9GeXlr7B1WN2D8kuArQ/0=; b=mA8k/QOCh2q8xNoTm3RmbmN0D
	W0qUqM/d56ilZJNXHQRyAayR3+JcJV/HYx4vh06m/1BxNQFpdQHQOWmzaBDz6c5P7kVCxl5ykFjAu
	CBvriDdxu50grvfoj+/gQiYLzDQsuUivPFw2robiLUwY+2MdWGeQZkar+b1Kg2J1zK0hhF+TRZGWh
	/TmHV3cWkebE64O1JL1U4J38Kbv9XbzC79nW5pzkjyTV2tAsjABL9SO8JjOqLokpjsGBY8Ia3J50B
	reyHk6aP6qBCplY20iPL2/jbDI8Uv1Q1VClmvDNFrKaljvB097DgwpMgIi01b5ccH7B+BKk2KA7kv
	dJPDi0z7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRYa-0007rF-T2; Thu, 13 Jun 2019 15:22:28 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRY5-0007fZ-5k
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:22:09 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5B032930F6C48A56E290;
 Thu, 13 Jun 2019 23:21:51 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 13 Jun 2019 23:21:42 +0800
Subject: Re: [PATCH v4 1/3] lib: logic_pio: Use logical PIO low-level
 accessors for !CONFIG_INDIRECT_PIO
To: Bjorn Helgaas <helgaas@kernel.org>
References: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
 <1560262374-67875-2-git-send-email-john.garry@huawei.com>
 <20190613135825.GG13533@google.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <5b03c093-26fb-0e01-6104-5f92eef7956e@huawei.com>
Date: Thu, 13 Jun 2019 16:21:35 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190613135825.GG13533@google.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_082157_485578_0F8D4170 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: rjw@rjwysocki.net, wangkefeng.wang@huawei.com, lorenzo.pieralisi@arm.com,
 arnd@arndb.de, linux-pci@vger.kernel.org, will.deacon@arm.com,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/06/2019 14:58, Bjorn Helgaas wrote:
> On Tue, Jun 11, 2019 at 10:12:52PM +0800, John Garry wrote:
> Another thought here:
>
>>  	if (addr < MMIO_UPPER_LIMIT) {					\
>>  		ret = read##bw(PCI_IOBASE + addr);			\
>>  	} else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) { \
>> -		struct logic_pio_hwaddr *entry = find_io_range(addr);	\
>> +		struct logic_pio_hwaddr *range = find_io_range(addr);	\
>> +		size_t sz = sizeof(type);				\
>>  									\
>> -		if (entry && entry->ops)				\
>> -			ret = entry->ops->in(entry->hostdata,		\
>> -					addr, sizeof(type));		\
>> +		if (range && range->ops)				\
>> +			ret = range->ops->in(range->hostdata, addr, sz);\
>>  		else							\
>>  			WARN_ON_ONCE(1);

Hi Bjorn,
				\
>
> Could this be simplified a little by requiring callers to set
> range->ops for LOGIC_PIO_INDIRECT ranges *before* calling
> logic_pio_register_range()?  E.g.,
>
>   hisi_lpc_probe(...)
>   {
>     range = devm_kzalloc(...);
>     range->flags = LOGIC_PIO_INDIRECT;
>     range->ops = &hisi_lpc_ops;
>     logic_pio_register_range(range);
>     ...
>
> and
>
>   logic_pio_register_range(struct logic_pio_hwaddr *new_range)
>   {
>     if (new_range->flags == LOGIC_PIO_INDIRECT && !new_range->ops)
>       return -EINVAL;
>     ...
>
> Then maybe you wouldn't need to check range->ops in the accessors.
>

I think I know the reason why it was done this way.

So currently there is no method to unregister a logical PIO region (the 
old code leaked ranges as well). As such, if hisi_lpc_probe() fails 
after we register the logical PIO range, there would be a range 
registered but no actual host backing it. So we set the ops at the point 
at which the probe cannot fail to avoid a potential problem.

And now I realise that there is a bug in the code - range is allocated 
with devm_kzalloc and is passed to logic_pio_register_range(). As such, 
if the hisi_lpc_probe() goes on to fail, then this memory would be 
free'd and we have an issue.

PCI code should be ok as it uses kzalloc().

The simplest solution is to not change the logical PIO API to allocate 
this memory itself, but rather make hisi_lpc_probe() use kzalloc(). And, 
if we go this way, we can use your idea to set the ops.

I'll spin a separate patch for this.

Thanks,
John

> Bjorn
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
