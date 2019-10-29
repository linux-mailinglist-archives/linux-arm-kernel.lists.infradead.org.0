Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA772E7DC1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 02:03:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMgwnrTI9nOpEbulD7ztm/J1MJ3fOrjbTyaG5N22jgs=; b=udWqXFjjjgul81
	bKMGAl3Q0snYjl3YPGJfnAV4CgjhIGItR9jsc/i5Oto9WcPwloJaq53tFZYeys8Y4ssZNybwvg2rY
	CLomylTNu9KE0J2G7Ul1uR/nFDHyFJp9LrSRJaS6nEtxG3lcDu7BWC2SwZ949jgcNTfVUOgEerUgy
	EsqKwv3796Eeyr041VPHi1dh0XBgI18HA2oatgS9U25N1JvuKUC0KYfW/MANoF7KU9k+f3SYSyuP0
	MgNGLWEUROmQXAgTkRedYY3h5umd3xTEgfvq8e1Eaxd7hfMqRiHIHhHp0NXErqds15lp23ZzR3XG0
	275cWwpV5Knc13KJU2aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPFua-0002Km-G1; Tue, 29 Oct 2019 01:03:04 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPFuO-0002KN-UV
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 01:02:54 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id CCEF221C64DBA44192B8;
 Tue, 29 Oct 2019 09:02:46 +0800 (CST)
Received: from [127.0.0.1] (10.133.224.57) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Tue, 29 Oct 2019
 09:02:38 +0800
Subject: Re: [PATCH] arm64: print additional fault message when executing
 non-exec memory
To: Will Deacon <will@kernel.org>
References: <20191028090837.39652-1-zhengxiang9@huawei.com>
 <20191028164150.GG5576@willie-the-truck>
From: Xiang Zheng <zhengxiang9@huawei.com>
Message-ID: <922ff695-62c4-5142-5efa-daeebd73459e@huawei.com>
Date: Tue, 29 Oct 2019 09:02:37 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191028164150.GG5576@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.133.224.57]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_180253_168136_5D526AD5 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, james.morse@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, wanghaibin.wang@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/29 0:41, Will Deacon wrote:
> On Mon, Oct 28, 2019 at 05:08:37PM +0800, Xiang Zheng wrote:
>> When attempting to executing non-executable memory, the fault message
>> shows:
>>
>>   Unable to handle kernel read from unreadable memory at virtual address
>>   ffff802dac469000
>>
>> This may confuse someone, so add a new fault message for instruction
>> abort.
>>
>> Signed-off-by: Xiang Zheng <zhengxiang9@huawei.com>
>> ---
>>  arch/arm64/mm/fault.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
>> index 9fc6db0bcbad..68bf4ec376d0 100644
>> --- a/arch/arm64/mm/fault.c
>> +++ b/arch/arm64/mm/fault.c
>> @@ -318,6 +318,8 @@ static void __do_kernel_fault(unsigned long addr, unsigned int esr,
>>  	if (is_el1_permission_fault(addr, esr, regs)) {
>>  		if (esr & ESR_ELx_WNR)
>>  			msg = "write to read-only memory";
>> +		else if (is_el1_instruction_abort(esr))
>> +			msg = "execute non-executable memory";
> 
> nit, please make this "execute from non-executable memory".

Thanks, I will make this in the next version of patch.

> 
> With that:
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> Will
> 
> .
> 

-- 

Thanks,
Xiang


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
