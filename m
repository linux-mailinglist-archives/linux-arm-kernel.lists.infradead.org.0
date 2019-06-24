Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EF8518AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 18:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HiPSs8Cni3RDsyol9eSvMEreiSdc3zem9kz93RqLXDk=; b=B1Pj21F4sYczPPfet9GZF2tr9
	x9duX8p+y0TAoJzd5/otTPj7MR2JzM0hZYU89ZrmUMnlqTkC/a9j6ZoPzwOv00Ee7Gg1IZM+h+sgS
	TSNVWxxq13om0nXTt7FlWEPOjPQFl1XA2shZvg8PzXdXFccbhpL6SH2JcY5NSqdYRx9lrPC6w9xrv
	fQkRKAqHs9SCbO+CDU1DrZoGYZOQm+1Q1v6Lhz3u7vSw27XonySbLJL3DCfHbq6Xc2F1pZQokV2v7
	r69BTnWuf7gaxhfmWjWTTXAgsxZiIrDuiVT7J5cezVHKHKrBH++0P5/D+MznwqYKKNnDdJkgNfPlf
	18a23jGfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfRqv-0005xv-FG; Mon, 24 Jun 2019 16:29:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfRqi-0005xM-FV
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 16:29:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0EEDC360;
 Mon, 24 Jun 2019 09:29:44 -0700 (PDT)
Received: from [10.37.12.219] (unknown [10.37.12.219])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E8A83F71E;
 Mon, 24 Jun 2019 09:29:42 -0700 (PDT)
Subject: Re: [RFC PATCH v2 6/8] arm64/sve: Implement an helper to load SVE
 registers from FPSIMD state
To: Dave Martin <Dave.Martin@arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-7-julien.grall@arm.com>
 <20190621153309.GB2790@e103592.cambridge.arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <8894be57-8ae2-31b6-2871-31483463bf2e@arm.com>
Date: Mon, 24 Jun 2019 17:29:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190621153309.GB2790@e103592.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_092944_560279_C47EE1A6 
X-CRM114-Status: GOOD (  16.91  )
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org, Daniel.Kiss@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 6/21/19 4:33 PM, Dave Martin wrote:
> On Thu, Jun 13, 2019 at 05:16:54PM +0100, Julien Grall wrote:
>> In a follow-up patch, we may save the FPSIMD rather than the full SVE
>> state when the state has to be zeroed on return to userspace (e.g
>> during a syscall).
>>
>> Introduce an helper to load SVE vectors from FPSIMD state and zero the rest
>> of SVE registers.
>>
>> Signed-off-by: Julien Grall <julien.grall@arm.com>
>> ---
>>   arch/arm64/include/asm/fpsimd.h  |  3 +++
>>   arch/arm64/kernel/entry-fpsimd.S | 17 +++++++++++++++++
>>   2 files changed, 20 insertions(+)
>>
>> diff --git a/arch/arm64/include/asm/fpsimd.h b/arch/arm64/include/asm/fpsimd.h
>> index fda3544c9606..f07a88552588 100644
>> --- a/arch/arm64/include/asm/fpsimd.h
>> +++ b/arch/arm64/include/asm/fpsimd.h
>> @@ -86,6 +86,9 @@ extern void sve_load_state(void const *state, u32 const *pfpsr,
>>   
>>   extern void sve_flush_live(void);
>>   
>> +extern void sve_load_from_fpsimd_state(struct user_fpsimd_state const *state,
>> +				       unsigned long vq_minus_1);
>> +
> 
> Lose the extra blank line?
> 
>>   extern unsigned int sve_get_vl(void);
>>   
>>   struct arm64_cpu_capabilities;
>> diff --git a/arch/arm64/kernel/entry-fpsimd.S b/arch/arm64/kernel/entry-fpsimd.S
>> index 17121a51c41f..35c21a707730 100644
>> --- a/arch/arm64/kernel/entry-fpsimd.S
>> +++ b/arch/arm64/kernel/entry-fpsimd.S
>> @@ -58,6 +58,23 @@ ENTRY(sve_get_vl)
>>   	ret
>>   ENDPROC(sve_get_vl)
>>   
>> +/*
>> + * Load SVE state from FPSIMD state.
>> + *
>> + * x0 = pointer to struct fpsimd_state
>> + * x1 = VQ - 1
>> + *
>> + * Each SVE vector will be loaded with the first 128-bits taken from FPSIMD
>> + * and the rest zeroed. All the other SVE registers will be zeroed.
>> + */
>> +ENTRY(sve_load_from_fpsimd_state)
>> +		sve_load_vq	x1, x2, x3
>> +		fpsimd_restore	x0, 8
>> + _for n, 0, 15, _sve_pfalse	\n
>> +		_sve_wrffr 0
>> +		ret
>> +ENDPROC(sve_load_from_fpsimd_state)
>> +
>>   /* Zero all SVE registers but the first 128-bits of each vector */
>>   ENTRY(sve_flush_live)
>>   	sve_flush
> 
> With the extra blank line in fpsimd.h gone (if you agree):

I don't particularly care of the newline :).

> 
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
> 

Thank you!

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
