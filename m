Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 485D5192722
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:28:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MR0DE43flE/LhiqbPICLKvjO1qrqxjczBdjqtowycgA=; b=pEX6dB8eQV3PsNNmVtF+43zFw
	d7sRzZmd04ziaGpDjOhj8Yd8yUPUQneoBGVOcHb8HPVQaxDXhjkebwFc7Wsr00/coPzgnMaNKa5bq
	jG8zmdAtXmc1GdzxSJ0FtJPrcDCxCp6HCK/zAE/Heq5rxSkDVBQeW3lvcl/GRQenNIKo3KFOaP4LU
	/Pvr4lHJvlhLoFPOhaK3RJtXE+CI3B4kaLWY/S8V93uKd1Dk+CyjeXk4apaNPCzzb1IPx4YychvNQ
	2X/T8CHBQilR+jSuorNZcjycEZ8yFGfBD7vE5Z/DiIWiD/DSjbRKcpv/wfWJIonnxNvklZyJ7iRUe
	U0jDUdxNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4Cl-0003xK-Fs; Wed, 25 Mar 2020 11:28:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4Cc-0003ww-AP
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:28:07 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A45D20775;
 Wed, 25 Mar 2020 11:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585135685;
 bh=BHTyMXxT7R8s+L2COQD3ZAPpvsUWEcKjOljLSm0Wu3A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=1bwUEUqjm9b6Mu/q9P+ajsOvu8VDv0nzyoM8tr0rAOdb3wfxf8xV6I1bG+QkYdolU
 YSaXl0Qj0TcdTgpWBURD98tmoz+quFnMkGo4VZOE7xJYVAF/x7xnDnGnM6Gkj13Tcj
 6CNsTSaqH9S+u4kijUyZl5p+ocWanrS9G41Dtdts=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jH4CZ-00FYAH-Fv; Wed, 25 Mar 2020 11:28:03 +0000
MIME-Version: 1.0
Date: Wed, 25 Mar 2020 11:28:03 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [PATCH v2 67/94] arm64: Add level-hinted TLB invalidation helper
In-Reply-To: <b4120382-d175-0c2f-249e-cc77a09709db@huawei.com>
References: <20200211174938.27809-1-maz@kernel.org>
 <20200211174938.27809-68-maz@kernel.org>
 <b4120382-d175-0c2f-249e-cc77a09709db@huawei.com>
Message-ID: <ff18c6737eed7baa29adee5de4f044c5@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yezhenyu2@huawei.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, suzuki.poulose@arm.com,
 andre.przywara@arm.com, christoffer.dall@arm.com, Dave.Martin@arm.com,
 james.morse@arm.com, alexandru.elisei@arm.com, jintack@cs.columbia.edu,
 julien.thierry.kdev@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_042806_404748_47BAC0F8 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Zhenyu,

On 2020-03-25 10:38, Zhenyu Ye wrote:
> Hi Marc,
> 
> On 2020/2/12 1:49, Marc Zyngier wrote:
>> Add a level-hinted TLB invalidation helper that only gets used if
>> ARMv8.4-TTL gets detected.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  arch/arm64/include/asm/tlbflush.h | 30 ++++++++++++++++++++++++++++++
>>  1 file changed, 30 insertions(+)
>> 
>> diff --git a/arch/arm64/include/asm/tlbflush.h 
>> b/arch/arm64/include/asm/tlbflush.h
>> index bc3949064725..a3f70778a325 100644
>> --- a/arch/arm64/include/asm/tlbflush.h
>> +++ b/arch/arm64/include/asm/tlbflush.h
>> @@ -10,6 +10,7 @@
>> 
>>  #ifndef __ASSEMBLY__
>> 
>> +#include <linux/bitfield.h>
>>  #include <linux/mm_types.h>
>>  #include <linux/sched.h>
>>  #include <asm/cputype.h>
>> @@ -59,6 +60,35 @@
>>  		__ta;						\
>>  	})
>> 
>> +#define TLBI_TTL_MASK	GENMASK_ULL(47, 44)
>> +
>> +#define __tlbi_level(op, addr, level)					\
>> +	do {								\
>> +		u64 arg = addr;						\
>> +									\
>> +		if (cpus_have_const_cap(ARM64_HAS_ARMv8_4_TTL) &&	\
>> +		    level) {						\
>> +			u64 ttl = level;				\
>> +									\
>> +			switch (PAGE_SIZE) {				\
>> +			case SZ_4K:					\
>> +				ttl |= 1 << 2;				\
>> +				break;					\
>> +			case SZ_16K:					\
>> +				ttl |= 2 << 2;				\
>> +				break;					\
>> +			case SZ_64K:					\
>> +				ttl |= 3 << 2;				\
>> +				break;					\
>> +			}						\
> 
> Can we define a macro here to replace the switch? It will be more
> clearly and efficient. Such as:
> 
> #define __TG ((PAGE_SHIFT - 12) / 2 + 1)
> ttl |= __TG << 2;

Let me rephrase this: a convoluted formula with magic numbers in it
is clearer than the values documented in the specification (Table 
D5-53)?
I have the exact opposite view.

As for efficency, you do realize that the compiler always discards two 
third
of this code on any possible configuration, right?

I think the code above is the clearest way to express table D5-53, and
the only missing bit is a reference to that table.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
