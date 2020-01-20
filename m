Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BDC14287C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 11:51:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+mO3iHlM2EONbXiJYx6Wjns5twZFW+PA6Jw4ARseaEY=; b=uZD+jQh0Ij11PwM/i9Q++oCZ0
	urU3sA4RhRmvRTlYJo7BltE92Me+JTXxkZOw09ahddsMYogeNPW/OLHpV2F3HTjKqXAv1/KJchrEI
	QKnt3hsHLV/0BzelyGiLABGyo0rvMnzy8S23s/rr5H+ZxE8fSOx+SdwZQLtjXMKcDQmYIH++MvNKB
	9qRXU3QxGStkGCWxeOepZWcLcmrkR0WZBzHh9GCMZJRu7D4WFMqHRJfk0bnXMGy2vnqa8FgIpCQRD
	QtcnKv4qSHLxEJIUXl+PrClsyFzOR017yfJ+9CHPww3LurZJ9yuVhVwBqjvlSU3ojdcTzYame9NIn
	CT3T/R6DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itUeM-00062w-G3; Mon, 20 Jan 2020 10:51:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itUe7-00062Q-0x
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 10:51:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 77CEC30E;
 Mon, 20 Jan 2020 02:50:59 -0800 (PST)
Received: from [10.1.196.51] (a075563-lin.cambridge.arm.com [10.1.196.51])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C16CC3F68E;
 Mon, 20 Jan 2020 02:50:57 -0800 (PST)
Subject: Re: [PATCH v3 08/16] arm64: initialize ptrauth keys for kernel
 booting task
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-9-git-send-email-amit.kachhap@arm.com>
 <20200116175920.GH10277@arrakis.emea.arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <3085de97-39b4-dd58-b319-c1d1b771864f@arm.com>
Date: Mon, 20 Jan 2020 10:50:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200116175920.GH10277@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_025103_110858_C33443F6 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/16/20 11:29 PM, Catalin Marinas wrote:
> On Mon, Dec 16, 2019 at 02:17:10PM +0530, Amit Daniel Kachhap wrote:
>> diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
>> index aa956ca..0f89f59 100644
>> --- a/arch/arm64/include/asm/pointer_auth.h
>> +++ b/arch/arm64/include/asm/pointer_auth.h
>> @@ -60,6 +60,12 @@ static inline void ptrauth_keys_init_kernel(struct ptrauth_keys_kernel *keys)
>>   		get_random_bytes(&keys->apia, sizeof(keys->apia));
>>   }
>>   
>> +static inline void ptrauth_keys_switch_kernel(struct ptrauth_keys_kernel *keys)
> 
> I think we should use __always_inline here, just in case the compiler
> ignores the hint.

yes agreed. Even the other function ptrauth_keys_init_kernel.

> 
> Otherwise:
> 
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

Thanks.

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
