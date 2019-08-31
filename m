Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EBFA4191
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 03:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cA0hXseajSiSrjS9oiaLLbfL1hKeW1M+49ByployJe8=; b=UFJytnKl2mJ6na
	ijJgswqeZ9zPg9dGmRYcvTeQkXv0Z/kdumAsgwV/k0yDsz4YcPQNBPTxVj2Ae0Cjn9SvzE5GPlrZR
	sHVzbfwFnn5L2Fnr2f3aP1FSC97am53BbXq8bxZ3qhyxgku35nDz0Uputg4mjS2FlCQDFVckPFfV/
	44/J7KwobI08Y05Whegq8x+z9BblRfFDIGQjqscIYOI47iaOOeIz/OE26skmdckMUu815uuE6/9qL
	1Fc4BJaXmIKrGEN73xOgcSEBF2c/zK/byYR1ZkmbPVfh/DLsO7+fv9YEzLjrBIEWAANpe04T9l0WF
	pOZyVGZ/eloI+QEu+DyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3sX4-0000YC-3J; Sat, 31 Aug 2019 01:50:26 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3sWp-0000R9-1E
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 01:50:13 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 91D7F459F726074383CA;
 Sat, 31 Aug 2019 09:50:03 +0800 (CST)
Received: from [127.0.0.1] (10.184.39.28) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Sat, 31 Aug 2019
 09:50:02 +0800
Subject: Re: [PATCH] arm: fix page faults in do_alignment
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <1567171877-101949-1-git-send-email-jingxiangfeng@huawei.com>
 <20190830133522.GZ13294@shell.armlinux.org.uk>
From: Jing Xiangfeng <jingxiangfeng@huawei.com>
Message-ID: <5D69D239.2080908@huawei.com>
Date: Sat, 31 Aug 2019 09:49:45 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <20190830133522.GZ13294@shell.armlinux.org.uk>
X-Originating-IP: [10.184.39.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_185011_261333_EDBDE995 
X-CRM114-Status: GOOD (  15.35  )
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
Cc: kstewart@linuxfoundation.org, gustavo@embeddedor.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 ebiederm@xmission.com, sakari.ailus@linux.intel.com, bhelgaas@google.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/8/30 21:35, Russell King - ARM Linux admin wrote:
> On Fri, Aug 30, 2019 at 09:31:17PM +0800, Jing Xiangfeng wrote:
>> The function do_alignment can handle misaligned address for user and
>> kernel space. If it is a userspace access, do_alignment may fail on
>> a low-memory situation, because page faults are disabled in
>> probe_kernel_address.
>>
>> Fix this by using __copy_from_user stead of probe_kernel_address.
>>
>> Fixes: b255188 ("ARM: fix scheduling while atomic warning in alignment handling code")
>> Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
> 
> NAK.
> 
> The "scheduling while atomic warning in alignment handling code" is
> caused by fixing up the page fault while trying to handle the
> mis-alignment fault generated from an instruction in atomic context.

__might_sleep is called in the function  __get_user which lead to that bug.
And that bug is triggered in a kernel space. Page fault can not be generated.
Right?

> Your patch re-introduces that bug.
> 
>> ---
>>  arch/arm/mm/alignment.c | 16 +++++++++++++---
>>  1 file changed, 13 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm/mm/alignment.c b/arch/arm/mm/alignment.c
>> index 04b3643..2ccabd3 100644
>> --- a/arch/arm/mm/alignment.c
>> +++ b/arch/arm/mm/alignment.c
>> @@ -774,6 +774,7 @@ static ssize_t alignment_proc_write(struct file *file, const char __user *buffer
>>  	unsigned long instr = 0, instrptr;
>>  	int (*handler)(unsigned long addr, unsigned long instr, struct pt_regs *regs);
>>  	unsigned int type;
>> +	mm_segment_t fs;
>>  	unsigned int fault;
>>  	u16 tinstr = 0;
>>  	int isize = 4;
>> @@ -784,16 +785,22 @@ static ssize_t alignment_proc_write(struct file *file, const char __user *buffer
>>  
>>  	instrptr = instruction_pointer(regs);
>>  
>> +	fs = get_fs();
>> +	set_fs(KERNEL_DS);
>>  	if (thumb_mode(regs)) {
>>  		u16 *ptr = (u16 *)(instrptr & ~1);
>> -		fault = probe_kernel_address(ptr, tinstr);
>> +		fault = __copy_from_user(tinstr,
>> +				(__force const void __user *)ptr,
>> +				sizeof(tinstr));
>>  		tinstr = __mem_to_opcode_thumb16(tinstr);
>>  		if (!fault) {
>>  			if (cpu_architecture() >= CPU_ARCH_ARMv7 &&
>>  			    IS_T32(tinstr)) {
>>  				/* Thumb-2 32-bit */
>>  				u16 tinst2 = 0;
>> -				fault = probe_kernel_address(ptr + 1, tinst2);
>> +				fault = __copy_from_user(tinst2,
>> +						(__force const void __user *)(ptr+1),
>> +						sizeof(tinst2));
>>  				tinst2 = __mem_to_opcode_thumb16(tinst2);
>>  				instr = __opcode_thumb32_compose(tinstr, tinst2);
>>  				thumb2_32b = 1;
>> @@ -803,10 +810,13 @@ static ssize_t alignment_proc_write(struct file *file, const char __user *buffer
>>  			}
>>  		}
>>  	} else {
>> -		fault = probe_kernel_address((void *)instrptr, instr);
>> +		fault = __copy_from_user(instr,
>> +				(__force const void __user *)instrptr,
>> +				sizeof(instr));
>>  		instr = __mem_to_opcode_arm(instr);
>>  	}
>>  
>> +	set_fs(fs);
>>  	if (fault) {
>>  		type = TYPE_FAULT;
>>  		goto bad_or_fault;
>> -- 
>> 1.8.3.1
>>
>>
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
