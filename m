Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FF8CDBC0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 08:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kNOl/ydBh5NRMF2l2BIzQJNDZNuWQueXgthm4YRF+AY=; b=RDOls/urSBKimM
	cnylVEgHKUnidM3d+ya/YZm76GR772TtmmvlL/g0fPA6JIWPzFJOfkLsQOwsR4G63iTwFTsYY7WbS
	MqQVuRCBqYjQGwAV9o1lEN2qUilS5fkrSDR9NuKiqjmuTi2n7z62YA2Zy9HKj387HAvL6mF+ISmTf
	7VlW3Yxl94UC3a3/vpLytrnrrlltCkr+WVAnHptcLd9rQD23FIjoqlneaTlhMNHblm4vLCOd0KBQw
	LbTqxBUSix+pgvEmaOidMpF2EhLxA99bdLCvNhJ6VHCKiJUV3AVjT7kJCnni9lon95kzlHNoYpxNQ
	rvQtQXZXvSfjW9klpoiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHMAr-0006MW-5c; Mon, 07 Oct 2019 06:07:13 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHMAh-0006LU-0d
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 06:07:04 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7C42D154F83C0FCB6C57;
 Mon,  7 Oct 2019 14:06:52 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 7 Oct 2019 14:06:48 +0800
Subject: Re: [PATCH] arm64: armv8_deprecated: Checking return value for memory
 allocation
To: Will Deacon <will@kernel.org>
References: <ea235720-5bbd-27b7-a9b1-34aa8a344e3a@huawei.com>
 <20190930132209.jyyemkck7orji64i@willie-the-truck>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <0763a3af-16ed-d450-4980-0e6b69b06bee@huawei.com>
Date: Mon, 7 Oct 2019 14:06:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190930132209.jyyemkck7orji64i@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_230703_226720_B112F51B 
X-CRM114-Status: GOOD (  13.34  )
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
Cc: kstewart@linuxfoundation.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org, tglx@linutronix.de,
 info@metux.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/9/30 21:22, Will Deacon wrote:
> On Sun, Sep 29, 2019 at 12:44:17PM +0800, Yunfeng Ye wrote:
>> There are no return value checking when using kzalloc() and kcalloc() for
>> memory allocation. so add it.
>>
>> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
>> ---
>>  arch/arm64/kernel/armv8_deprecated.c | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/arch/arm64/kernel/armv8_deprecated.c b/arch/arm64/kernel/armv8_deprecated.c
>> index 2ec09de..ca158be 100644
>> --- a/arch/arm64/kernel/armv8_deprecated.c
>> +++ b/arch/arm64/kernel/armv8_deprecated.c
>> @@ -174,6 +174,9 @@ static void __init register_insn_emulation(struct insn_emulation_ops *ops)
>>  	struct insn_emulation *insn;
>>
>>  	insn = kzalloc(sizeof(*insn), GFP_KERNEL);
>> +	if (!insn)
>> +		return;
>> +
>>  	insn->ops = ops;
>>  	insn->min = INSN_UNDEF;
>>
>> @@ -233,6 +236,8 @@ static void __init register_insn_emulation_sysctl(void)
>>
>>  	insns_sysctl = kcalloc(nr_insn_emulated + 1, sizeof(*sysctl),
>>  			       GFP_KERNEL);
>> +	if (!insns_sysctl)
>> +		return;
> 
> Since both of these failure paths are fatal to the instruction emulation,
> can you please return an error code when the allocation fails and use that
> to fail the calling initcall() appropriately?
> 
ok, I will modify as your suggest, thanks.

> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
