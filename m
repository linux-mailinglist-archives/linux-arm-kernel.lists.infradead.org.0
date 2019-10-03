Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CDEC9DA0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJEvGyWSkugyBnUIkQVbJP2o+uvfDrIwOmZZmjU9zeU=; b=E/Pf75O1Wp3JTO
	YrIcA3QAPVgxmf7+Z6gk/dG2NsRZNeg0slHG+LNBJNzDQ2kRnoD6HPf1as3J6qetzwcOqgrbAmnsh
	8HruyIl/A45lg5fWBGVifVsPvC277NK7nXZnPbhEGkWro/x0PjhNTNDZT1mlStF2lykfp6q/e6prY
	jA7O9hKz+RT0nT/RpX6FUMklw9htl2ztE78ynSTl22+WCim8ywZoHioj0VCM/zSV45kyNJYBQVvmU
	vsNDObM6S09cgd3proOQZjw81MPOsWvyNacCG06HwpVtRWBWcKKyudqFFaEUgIZgZzKzRkTcAi2WY
	qPMDYOKwdirPlXSs5e+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFzWI-0003u1-C1; Thu, 03 Oct 2019 11:43:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFzWB-0003tX-67
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:43:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CCBF31570;
 Thu,  3 Oct 2019 04:43:34 -0700 (PDT)
Received: from [10.1.26.182] (c02wx28rhv2r.cambridge.arm.com [10.1.26.182])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1DFC63F706;
 Thu,  3 Oct 2019 04:43:34 -0700 (PDT)
Subject: Re: Regression: Cortex-M w/ XIP not booting
To: afzal mohammed <afzal.mohd.ma@gmail.com>
References: <20191002061637.GA7743@afzalpc>
 <c9a8d667-0dfb-2dd7-3537-8683cfc3914d@arm.com>
 <20191003000459.GA5467@afzalpc>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <60589407-8740-cf96-4dcf-cf5ca57f916c@arm.com>
Date: Thu, 3 Oct 2019 12:43:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191003000459.GA5467@afzalpc>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_044335_270248_F42E20DC 
X-CRM114-Status: GOOD (  14.98  )
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Afzal,
On 10/3/19 1:04 AM, afzal mohammed wrote:
> Hi Vladimir,
> 
> On Wed, Oct 02, 2019 at 12:55:55PM +0100, Vladimir Murzin wrote:
> 
>> Can you try diff bellow? I do not have XIP target, but non-XIP seems to
>> stay happy...
> 
> Thanks, it fixes the issue.

Great thanks! I've just sent it as a proper patch.

Vladimir

> 
> Regards
> afzal
> 
>>
>>
>> diff --git a/arch/arm/kernel/head-common.S b/arch/arm/kernel/head-common.S
>> index a7810be..4a39828 100644
>> --- a/arch/arm/kernel/head-common.S
>> +++ b/arch/arm/kernel/head-common.S
>> @@ -68,7 +68,7 @@ ENDPROC(__vet_atags)
>>   * The following fragment of code is executed with the MMU on in MMU mode,
>>   * and uses absolute addresses; this is not position independent.
>>   *
>> - *  r0  = cp#15 control register
>> + *  r0  = cp#15 control register (exc_ret for M-class)
>>   *  r1  = machine ID
>>   *  r2  = atags/dtb pointer
>>   *  r9  = processor ID
>> @@ -137,7 +137,8 @@ __mmap_switched_data:
>>  #ifdef CONFIG_CPU_CP15
>>  	.long	cr_alignment			@ r3
>>  #else
>> -	.long	0				@ r3
>> +M_CLASS(.long	exc_ret)			@ r3
>> +AR_CLASS(.long	0)				@ r3
>>  #endif
>>  	.size	__mmap_switched_data, . - __mmap_switched_data
>>  
>> diff --git a/arch/arm/kernel/head-nommu.S b/arch/arm/kernel/head-nommu.S
>> index afa350f..0fc814b 100644
>> --- a/arch/arm/kernel/head-nommu.S
>> +++ b/arch/arm/kernel/head-nommu.S
>> @@ -201,6 +201,8 @@ M_CLASS(streq	r3, [r12, #PMSAv8_MAIR1])
>>  	bic	r0, r0, #V7M_SCB_CCR_IC
>>  #endif
>>  	str	r0, [r12, V7M_SCB_CCR]
>> +	/* Pass exc_ret to __mmap_switched */
>> +	mov	r0, r10
>>  #endif /* CONFIG_CPU_CP15 elif CONFIG_CPU_V7M */
>>  	ret	lr
>>  ENDPROC(__after_proc_init)
>> diff --git a/arch/arm/mm/proc-v7m.S b/arch/arm/mm/proc-v7m.S
>> index 1448f14..efebf41 100644
>> --- a/arch/arm/mm/proc-v7m.S
>> +++ b/arch/arm/mm/proc-v7m.S
>> @@ -136,9 +136,8 @@ __v7m_setup_cont:
>>  	cpsie	i
>>  	svc	#0
>>  1:	cpsid	i
>> -	ldr	r0, =exc_ret
>> -	orr	lr, lr, #EXC_RET_THREADMODE_PROCESSSTACK
>> -	str	lr, [r0]
>> +	/* Calculate exc_ret */
>> +	orr	r10, lr, #EXC_RET_THREADMODE_PROCESSSTACK
>>  	ldmia	sp, {r0-r3, r12}
>>  	str	r5, [r12, #11 * 4]	@ restore the original SVC vector entry
>>  	mov	lr, r6			@ restore LR
>>
>> Cheers
>> Vladimir
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
