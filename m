Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3291A0C2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 12:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PgYgx43XXJNVEpBXteSIAGS+A7DduX4rKEFoSWg06QE=; b=fxh/u30Z6mBC23jTtblrWPbhw
	HsUJQnjxAyPBH0+6yKrsKQf891tjMqVC2woY2+0d7qcetstVwB++sysgsoGunlrMTuXhL1vKwG4YF
	/qa9lkl1E6TCd19Lt3159g7SIcb4kRSX/3oGhmndt0UHt7RQjtpyWJbTK7HTfwvPdIXkQS4UiKHXs
	wlI7zRA3tBpi4u0a8SzDx5LJvk6VH0ePUywnqskvgHt6/j8TFb8j1qkOTuLLIVPZs4ea04njql7gv
	7aV/i2alnUc23KxXPmzSzRzTHnpwqpcr1tYvVnLw8jcdS7OYVe1vXny4TFxX+seQ8J/aTg+4SLzas
	v4Yx4kKjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLlgh-0001cO-0X; Tue, 07 Apr 2020 10:42:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLlga-0001bf-Cd
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 10:42:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D2B431B;
 Tue,  7 Apr 2020 03:42:27 -0700 (PDT)
Received: from [10.37.12.154] (unknown [10.37.12.154])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 268C13F73D;
 Tue,  7 Apr 2020 03:42:25 -0700 (PDT)
Subject: Re: [PATCH] arm64: armv8_deprecated: Fix undef_hook mask for thumb
 setend
To: catalin.marinas@arm.com, fredrik@strupe.net
References: <911db2f1-e078-a460-32ee-154a0b4de5d4@strupe.net>
 <20200407092744.GA2665@gaia>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <a2b345a4-30a0-3218-8c8d-e84ec2317dc9@arm.com>
Date: Tue, 7 Apr 2020 11:47:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200407092744.GA2665@gaia>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_034228_475332_4C578A2C 
X-CRM114-Status: GOOD (  24.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/07/2020 10:27 AM, Catalin Marinas wrote:
> On Mon, Apr 06, 2020 at 04:16:05PM +0200, Fredrik Strupe wrote:
>> Use a full 32-bit mask to prevent accidental matchings of thumb32
>> instructions where the second half-word is equal to the thumb16 setend
>> encoding.
>>
>> This fixes the same problem as the following patch:
>>
>>      https://lkml.org/lkml/2020/3/16/341
> 
> This link is not guaranteed to be stable and the commit should have the
> full description rather than referring to another email.
> 
>> but for setend emulation instead.
>>
>> Signed-off-by: Fredrik Strupe <fredrik@strupe.net>
> 
> It also needs Fixes: and Cc: stable tags.
> 
>> ---
>>   arch/arm64/kernel/armv8_deprecated.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/kernel/armv8_deprecated.c b/arch/arm64/kernel/armv8_deprecated.c
>> index 9d3442d62..8c06dfee0 100644
>> --- a/arch/arm64/kernel/armv8_deprecated.c
>> +++ b/arch/arm64/kernel/armv8_deprecated.c
>> @@ -609,7 +609,7 @@ static struct undef_hook setend_hooks[] = {
>>   	},
>>   	{
>>   		/* Thumb mode */
>> -		.instr_mask	= 0x0000fff7,
>> +		.instr_mask	= 0xfffffff7,
>>   		.instr_val	= 0x0000b650,
> 
> I can see how this could happen but it would be useful to provide a
> concrete example in the commit log.
> 
> The instruction opcode built by call_undef_hook() first reads a u16 as a
> T16 instruction and the above should be fine. However, if this looks
> like a T32 opcode, it reads a subsequent u16 which becomes the lowest
> half-word and the above mask/val may inadvertently match it.
> 

We also do a check on the pstate_val, along with the instr_val to
confirm the mode. So this should be fine as it is ?

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
