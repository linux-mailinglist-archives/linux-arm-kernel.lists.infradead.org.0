Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE693108AFE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 10:35:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4DBLhegJH7YtC6+6RK1tzVTKH6l0yvxCy9PrhnupfuU=; b=gjoRKMkYXu8IWiU8cO2d1lB8x
	J5e2t2SLgWsTTekfwHJK8oVUWdAp5YHlIJIYu6VXImxiWbQOZVCxiwG2joX75Rf+LU6HS2u+02gLQ
	gB8SP1YX3028Q9JV7/vyE3BEifs4Y1YIIVlsOaAwisGHcrcAT4iOpKn76/OK4mhNMD7qloesDh0u0
	eFnTSG1urKOKWAF/YXZVdeN75LnQvDzo18igOXzRq5JxayelefMwoMIr2K7QbtFVh59EJ/fkRj4I1
	VE2W0NtupP0yiwak0FcfsMdq19+Kxq87c6Y0g54RM7xmNqBi2/Z+CVdm3bxfRQajly0k/g0NEb/hq
	XMEcNtBuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZAlo-0003Jz-P9; Mon, 25 Nov 2019 09:35:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZAlf-0003JV-Ng
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 09:34:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B4D33328;
 Mon, 25 Nov 2019 01:34:50 -0800 (PST)
Received: from [10.163.1.198] (unknown [10.163.1.198])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC1F53F6C4;
 Mon, 25 Nov 2019 01:34:42 -0800 (PST)
Subject: Re: [PATCH v2 07/14] arm64: initialize and switch ptrauth kernel keys
To: Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-8-git-send-email-amit.kachhap@arm.com>
 <432f8082-c34f-8036-8c5e-fd1fcec9aa17@linaro.org>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <aa92b083-ddc6-9724-6655-3abc79e78ca9@arm.com>
Date: Mon, 25 Nov 2019 15:04:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <432f8082-c34f-8036-8c5e-fd1fcec9aa17@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_013451_810666_2A6B2C5F 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/23/19 12:49 AM, Richard Henderson wrote:
> On 11/19/19 12:32 PM, Amit Daniel Kachhap wrote:
>> --- a/arch/arm64/include/asm/asm_pointer_auth.h
>> +++ b/arch/arm64/include/asm/asm_pointer_auth.h
>> @@ -35,11 +35,25 @@ alternative_if ARM64_HAS_GENERIC_AUTH
>>   alternative_else_nop_endif
>>   	.endm
>>   
>> +	.macro ptrauth_keys_install_kernel tsk, tmp1, tmp2, tmp3
>> +	mov	\tmp1, #THREAD_KEYS_KERNEL
>> +	add	\tmp1, \tsk, \tmp1
>> +alternative_if ARM64_HAS_ADDRESS_AUTH
>> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KERNEL_KEY_APIA]
>> +	msr_s	SYS_APIAKEYLO_EL1, \tmp2
>> +	msr_s	SYS_APIAKEYHI_EL1, \tmp3
>> +	isb
>> +alternative_else_nop_endif
>> +	.endm
> 
> Any reason you didn't put the first two insns in the alternative?

Yes these 2 instructions can be moved below. Thanks for the catch.

> 
> You could have re-used tmp1 instead of requiring tmp3, but at no point are we
> lacking tmp registers so it doesn't matter.
> 
> 
> r~
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
