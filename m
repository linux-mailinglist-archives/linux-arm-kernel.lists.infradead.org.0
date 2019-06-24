Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E28518AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 18:29:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NhG6Mkbwj55UHi6JT6PcM7uiNUNX9WTJfRS1+UiVaoI=; b=EE1IYoh6PJNVYSZO3mXcSAFW3
	JhI25eCCHl+FObNbzOSxWhBZXNWziBM+amsr0bMo1kaDdQSxphKFThIp+rYhZaaGb8gYlpk3eNkjx
	UxEpvQPx3U3pLupT/XIRkcKZXgnL0GY0R5stdA0NvXIECjfmtudBuYSrJEYY7P/fDHA3z/P56ug1H
	MERfdRzcmSBza8M6P4gTxJmCi3GROxEj6kLz/jqlWAeaY90O1q+Fe7dol499jA5/z7VBLHA5YMzWr
	fwO+CfXbrZovVdzsIZw3k5PE/pzypvdzJI//JiZBT/Viw4V4PNXYolbk4e0GB01D801VeSliK1q7b
	OkBmdPVbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfRqG-0005hV-Ln; Mon, 24 Jun 2019 16:29:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfRq0-0005gx-QK
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 16:29:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E8D2B360;
 Mon, 24 Jun 2019 09:28:59 -0700 (PDT)
Received: from [10.37.12.219] (unknown [10.37.12.219])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C50113F71E;
 Mon, 24 Jun 2019 09:28:57 -0700 (PDT)
Subject: Re: [RFC PATCH v2 5/8] arm64/sve: Implement an helper to flush SVE
 registers
To: Dave Martin <Dave.Martin@arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-6-julien.grall@arm.com>
 <20190621153302.GA2790@e103592.cambridge.arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <20772a47-5cd3-0566-1e29-839e39961def@arm.com>
Date: Mon, 24 Jun 2019 17:28:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190621153302.GA2790@e103592.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_092900_957894_F4926D63 
X-CRM114-Status: GOOD (  19.89  )
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
> On Thu, Jun 13, 2019 at 05:16:53PM +0100, Julien Grall wrote:
>> Introduce a new helper that will zero all SVE registers but the first
>> 128-bits of each vector.
> 
> Maybe mention that the helper will be used by a subsequent patch.  For
> now, it's dead code.
> 
> Maybe also mention briefly what this will be used for: i.e., to avoid
> the costly store/munge/reload sequences currently used by things like
> do_sve_acc().

How about the following commit message:

"Introduce a new helper that will zero all SVE registers but the first 
128-bits of each vector. This will be used in subsequent patch to avoid 
the costly store/munge/reload sequences used in place such as do_sve_acc()."

> 
>> Signed-off-by: Julien Grall <julien.grall@arm.com>
>>
>> ---
>>      Changes in v2:
>>          - Fix typo in the commit title
>> ---
>>   arch/arm64/include/asm/fpsimd.h       |  3 +++
>>   arch/arm64/include/asm/fpsimdmacros.h | 19 +++++++++++++++++++
>>   arch/arm64/kernel/entry-fpsimd.S      |  7 +++++++
>>   3 files changed, 29 insertions(+)
>>
>> diff --git a/arch/arm64/include/asm/fpsimd.h b/arch/arm64/include/asm/fpsimd.h
>> index df62bbd33a9a..fda3544c9606 100644
>> --- a/arch/arm64/include/asm/fpsimd.h
>> +++ b/arch/arm64/include/asm/fpsimd.h
>> @@ -83,6 +83,9 @@ static inline void *sve_pffr(struct thread_struct *thread)
>>   extern void sve_save_state(void *state, u32 *pfpsr);
>>   extern void sve_load_state(void const *state, u32 const *pfpsr,
>>   			   unsigned long vq_minus_1);
>> +
>> +extern void sve_flush_live(void);
>> +
> 
> We probably don't need the extra blank lines here... these operations
> are all closely related low-level backend functions.

Sure.

> 
>>   extern unsigned int sve_get_vl(void);
>>   
>>   struct arm64_cpu_capabilities;
>> diff --git a/arch/arm64/include/asm/fpsimdmacros.h b/arch/arm64/include/asm/fpsimdmacros.h
>> index 5e291d9c1ba0..a41ab337bf42 100644
>> --- a/arch/arm64/include/asm/fpsimdmacros.h
>> +++ b/arch/arm64/include/asm/fpsimdmacros.h
>> @@ -175,6 +175,13 @@
>>   		| ((\np) << 5)
>>   .endm
>>   
>> +/* PFALSE P\np.B */
>> +.macro _sve_pfalse np
>> +	_sve_check_preg \np
>> +	.inst	0x2518e400			\
>> +		| (\np)
>> +.endm
>> +
>>   .macro __for from:req, to:req
>>   	.if (\from) == (\to)
>>   		_for__body %\from
>> @@ -209,6 +216,18 @@
>>   921:
>>   .endm
>>   
>> +/* Preserve the first 128-bits of Znz and zero the rest. */
>> +.macro _sve_flush_z nz
>> +	_sve_check_zreg \nz
>> +	mov	v\nz\().16b, v\nz\().16b
>> +.endm
>> +
>> +.macro sve_flush
>> + _for n, 0, 31, _sve_flush_z	\n
>> + _for n, 0, 15, _sve_pfalse	\n
>> +		_sve_wrffr	0
>> +.endm
>> +
>>   .macro sve_save nxbase, xpfpsr, nxtmp
>>    _for n, 0, 31,	_sve_str_v	\n, \nxbase, \n - 34
>>    _for n, 0, 15,	_sve_str_p	\n, \nxbase, \n - 16
>> diff --git a/arch/arm64/kernel/entry-fpsimd.S b/arch/arm64/kernel/entry-fpsimd.S
>> index 12d4958e6429..17121a51c41f 100644
>> --- a/arch/arm64/kernel/entry-fpsimd.S
>> +++ b/arch/arm64/kernel/entry-fpsimd.S
>> @@ -57,4 +57,11 @@ ENTRY(sve_get_vl)
>>   	_sve_rdvl	0, 1
>>   	ret
>>   ENDPROC(sve_get_vl)
>> +
>> +/* Zero all SVE registers but the first 128-bits of each vector */
>> +ENTRY(sve_flush_live)
>> +	sve_flush
>> +	ret
>> +ENDPROC(sve_flush_live)
>> +
>>   #endif /* CONFIG_ARM64_SVE */
> 
> The extra blank line makes this more readable, but in the interests
> of symmetry can you also add a blank after the corresponding #ifdef?

I would prefer to do this change in a separate patch. So I will drop the 
newline here.

> 
> [...]
> 
> With those addressed as appropriate,
> 
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>

Thank you!

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
