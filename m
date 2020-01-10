Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 386B1137646
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 19:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dwAtC7vnDPpWYI7ojYcR/eAC0qMtVOeNPhNCcN1wvoc=; b=g8T3RaU+UPzvOjxEoNyjw9xS5
	Aq4D0BE8jMtMHwsCOVgWzK4MFzRFId+SRWLYrDpZUcwPvjYpQmCS6FAH6bcvol+zYdVgmSnQrKmrq
	uUi+/3JeZ/XjZZVF+E/K9gQNTTHm0nU56d9rORhKdeGwaYt31vzbVJfajdMzz5bb1YpooCf2hwbrM
	/dd8Yi3uX+0MooVBbgRfCJHn8jaDJqEsS/+qGxh1ZixclwGr5R/jcY3tW3KocUDaUv5UBuL1g1sUd
	DAZsCR7ZzWi7Tkl44nCS7KkqPjYYXv/CDvzv91W9bDjdboMMNQyrCCnvEdDFvH/zzhWF1RLHn51zk
	r/UqJBZ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipzFC-0005sk-T8; Fri, 10 Jan 2020 18:42:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipzF3-0005rC-NQ
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 18:42:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 934AC30E;
 Fri, 10 Jan 2020 10:42:40 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4D6EA3F6C4;
 Fri, 10 Jan 2020 10:42:39 -0800 (PST)
Subject: Re: [PATCH v2 5/7] arm64: ptrace: nofpsimd: Fail FP/SIMD regset
 operations
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20191217183402.2259904-1-suzuki.poulose@arm.com>
 <20191217183402.2259904-6-suzuki.poulose@arm.com>
 <20200110151231.GG8786@arrakis.emea.arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <2078734b-fba5-8207-a73a-3eee4b899256@arm.com>
Date: Fri, 10 Jan 2020 18:42:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200110151231.GG8786@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_104241_805104_AFCAA1C9 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 christoffer.dall@arm.com, will@kernel.org, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/01/2020 15:12, Catalin Marinas wrote:
> On Tue, Dec 17, 2019 at 06:34:00PM +0000, Suzuki K Poulose wrote:
>> diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
>> index 6771c399d40c..0135b944b8db 100644
>> --- a/arch/arm64/kernel/ptrace.c
>> +++ b/arch/arm64/kernel/ptrace.c
>> @@ -637,6 +637,9 @@ static int fpr_get(struct task_struct *target, const struct user_regset *regset,
>>   		   unsigned int pos, unsigned int count,
>>   		   void *kbuf, void __user *ubuf)
>>   {
>> +	if (!system_supports_fpsimd())
>> +		return -EINVAL;
>> +
>>   	if (target == current)
>>   		fpsimd_preserve_current_state();
> 
> I checked the coredump code (fill_thread_core_info) and works correctly
> if we return -EINVAL here. But for completeness, we could add an
> fpr_active() callback to aarch{32,64}_regsets (x86 does the same).
> 

Sure, makes sense. I have now added fpr_active() hook for the FP
regsets.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
