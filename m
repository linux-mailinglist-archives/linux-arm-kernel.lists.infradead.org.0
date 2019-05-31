Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD0930B1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 11:10:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zazd0gmv3KBUIWxLEbajF5ntUK8vUo8U7c+RnBLkcCc=; b=N8ivAadJ38avXQ
	+PD0dBUiTUOBUGZxshHXHaZ3QBnatmwWq6KStANDumCoISucdYb97gpLGIXr+TS38STDAM45mI9Ke
	dVtVqNaYW6NQffLqNCHUx4Qugzvu+EsAEEXLdzF/CwT1uJmpAWwGdJBXXDI3R6Z914YBZ5XNA1/97
	PnXP4XDxbTt5zZQ36QCVU+f8ctMlteBrTD9qjRyh+r7tvSXjKysxeaBLmMVIv1LNthPcMQyt0G3bl
	CWMi5xXc3Wi5ZLSNfRLsHcoZaAWHCXFwwuMtEjHHS5fsMQQ3fPqDz1O+ag55RWYH01ckUBrY0oqrT
	/vv03O4FLDea67E0vc0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdYB-0008Po-10; Fri, 31 May 2019 09:10:11 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdY2-0007rr-FW
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 09:10:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACD39341;
 Fri, 31 May 2019 02:10:01 -0700 (PDT)
Received: from [10.162.42.223] (p8cg001049571a15.blr.arm.com [10.162.42.223])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 2CF433F59C; Fri, 31 May 2019 02:09:58 -0700 (PDT)
Subject: Re: [PATCH 3/4] arm64/mm: Consolidate page fault information capture
To: Mark Rutland <mark.rutland@arm.com>
References: <1559133285-27986-1-git-send-email-anshuman.khandual@arm.com>
 <1559133285-27986-4-git-send-email-anshuman.khandual@arm.com>
 <20190529145312.GG31777@lakrids.cambridge.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <4d799bda-dfde-8ba5-9aeb-aa38550f6103@arm.com>
Date: Fri, 31 May 2019 14:40:13 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190529145312.GG31777@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_021002_669441_9CF4E06F 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andrey Konovalov <andreyknvl@google.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/29/2019 08:23 PM, Mark Rutland wrote:
> On Wed, May 29, 2019 at 06:04:44PM +0530, Anshuman Khandual wrote:
>> This consolidates page fault information capture and move them bit earlier.
>> While here it also adds an wrapper is_write_abort(). It also saves some
>> cycles by replacing multiple user_mode() calls into a single one earlier
>> during the fault.
> 
> To be honest, I doubt this has any measureable impact, but I agree that
> using variables _may_ make the flow control easier to understand.
> 
>>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: James Morse <james.morse@arm.com> 
>> Cc: Andrey Konovalov <andreyknvl@google.com>
>> ---
>>  arch/arm64/mm/fault.c | 22 +++++++++++++++-------
>>  1 file changed, 15 insertions(+), 7 deletions(-)
>>
>> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
>> index da02678..170c71f 100644
>> --- a/arch/arm64/mm/fault.c
>> +++ b/arch/arm64/mm/fault.c
>> @@ -435,6 +435,11 @@ static bool is_el0_instruction_abort(unsigned int esr)
>>  	return ESR_ELx_EC(esr) == ESR_ELx_EC_IABT_LOW;
>>  }
>>  
>> +static bool is_write_abort(unsigned int esr)
>> +{
>> +	return (esr & ESR_ELx_WNR) && !(esr & ESR_ELx_CM);
>> +}
> 
> In off-list review, I mentioned that this isn't true for EL1, and I
> think that we should name this 'is_el0_write_abort()' or add a comment
> explaining the caveats if factored into a helper.
> 
> Thanks,
> Mark.

Okay will change the wrapper name to is_el0_write_abort() and add a comment
explaining how this is only applicable to aborts originating from EL0.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
