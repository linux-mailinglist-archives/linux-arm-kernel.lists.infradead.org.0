Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06545175811
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:14:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HlIW3tDJPc/l6dT0bA1gBhur7NC+rqWhYhYYmLRm97A=; b=WzJdwGXtgnNr25S+rcaoqN4aA
	9IvHAcMTv2xh2txfWYSex+chfefAAcON/MkTnTE7rMDiA5bpRmEwatZsTxc8OcWGoSu/cVmSeKdzz
	Aundg7h11PlWuX45wwIO0AOgqoHuIWB0igoyNlGetkN+Nh36Qk62YfU83sYou+q4HgGV4WgydyN8e
	bfOjZ+2HHlBqxONADpW3O4qZyaMyh7u3YUcsMPMq8fIoWfvaXK4Us4MPpU37mEySdNEZjfPSJfSVs
	y6te/rgrZURP4UgoxvcBj5GiKVxOv4R0RjJK5tgOxLcmoViknPIpdBD58UJzFNK7A2VkonFRq87Xo
	Hl+QgMdQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8i5R-0002Ag-DF; Mon, 02 Mar 2020 10:14:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8i5L-0002AE-BG
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:14:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CDBD631B;
 Mon,  2 Mar 2020 02:14:01 -0800 (PST)
Received: from [10.163.1.6] (unknown [10.163.1.6])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0535A3F6CF;
 Mon,  2 Mar 2020 02:13:56 -0800 (PST)
Subject: Re: [PATCH v5 14/17] arm64: suspend: restore the kernel ptrauth keys
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
 <1581931668-11559-15-git-send-email-amit.kachhap@arm.com>
 <20200228181843.GJ4019108@arrakis.emea.arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <9d69d0ef-7d5a-876a-b242-3f908f9f95cf@arm.com>
Date: Mon, 2 Mar 2020 15:43:58 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200228181843.GJ4019108@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_021403_428331_E3868BD5 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/28/20 11:48 PM, Catalin Marinas wrote:
> On Mon, Feb 17, 2020 at 02:57:45PM +0530, Amit Daniel Kachhap wrote:
>> This patch restores the kernel keys from current task during
>> cpu resume after the mmu is turned on and ptrauth is enabled.
>>
>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>> ---
>>   arch/arm64/kernel/sleep.S | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
>> index 7b2f2e6..f9db925 100644
>> --- a/arch/arm64/kernel/sleep.S
>> +++ b/arch/arm64/kernel/sleep.S
>> @@ -2,6 +2,7 @@
>>   #include <linux/errno.h>
>>   #include <linux/linkage.h>
>>   #include <asm/asm-offsets.h>
>> +#include <asm/asm_pointer_auth.h>
>>   #include <asm/assembler.h>
>>   #include <asm/smp.h>
>>   
>> @@ -134,6 +135,11 @@ ENTRY(_cpu_resume)
>>   	 */
>>   	bl	cpu_do_resume
>>   
>> +#ifdef CONFIG_ARM64_PTR_AUTH
>> +	get_current_task x1
>> +	ptrauth_keys_install_kernel x1, x2, x3, x4
>> +#endif
> 
> Could we move this to cpu_do_resume? Most of the sysreg initialisation
> during resume is done there.

Yes it makes sense. I will implement in my v6 series.

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
