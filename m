Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CB864740
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 15:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcLbrGNevm43Iz24fg14tkgPCZp31NgmHWxbftnAte8=; b=sIynwfNyqh+RS2
	XIprvZ9HRQYOfXmAw9VYdEhvhBnSgadxgg3OTZwAH0oxHO4f1WL1rNdk+nox1/XbNjY5R8Nw1Ln1h
	c9ulytEL9FgC0DyXmb+/QMSs/L0ak2EYLFWGuztqjV0OxeOJxUHzYE+/CWBh8ggo+0MqWCycKzf9d
	WBGafiohuLfI3Akkw9YkUJIjiv9ajRet2673oV5V0lX3Yzel31UeVdIpg8MUalf6egHUotTE4Ez9R
	Kn1VA9z+9Rcyy492DyumMelef5m3NQOqcPepVHUcuIfxHnv06qvyKXLXSkULvvEqz3bL56MQzuB9o
	EnYTgVAKLkep6opyFUAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlCtE-0001gJ-Uq; Wed, 10 Jul 2019 13:44:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlCs6-0001e8-UA
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 13:43:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB6732B;
 Wed, 10 Jul 2019 06:42:57 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 152993F71F;
 Wed, 10 Jul 2019 06:42:54 -0700 (PDT)
Subject: Re: [PATCH] arm64: vdso: Fix ABI regression in compat vdso
To: Will Deacon <will@kernel.org>
References: <20190621095252.32307-11-vincenzo.frascino@arm.com>
 <20190710130452.44111-1-vincenzo.frascino@arm.com>
 <20190710132532.r27yryvt25ex76xk@willie-the-truck>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <4ea8fd8a-c50d-0cb7-af56-5bb90b0e50f8@arm.com>
Date: Wed, 10 Jul 2019 14:42:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190710132532.r27yryvt25ex76xk@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_064302_789678_71436F17 
X-CRM114-Status: GOOD (  19.61  )
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
Cc: luto@kernel.org, linux@rasmusvillemoes.dk, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org, shuah@kernel.org, linux-arch@vger.kernel.org,
 daniel.lezcano@linaro.org, linux@armlinux.org.uk, arnd@arndb.de,
 andre.przywara@arm.com, john.stultz@linaro.org, 0x7f454c46@gmail.com,
 tglx@linutronix.de, pcc@google.com, linux-arm-kernel@lists.infradead.org,
 huw@codeweavers.com, linux-kernel@vger.kernel.org, ralf@linux-mips.org,
 salyzyn@android.com, paul.burton@mips.com, sthotton@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/07/2019 14:25, Will Deacon wrote:
> On Wed, Jul 10, 2019 at 02:04:52PM +0100, Vincenzo Frascino wrote:
>> Prior to the introduction of Unified vDSO support and compat layer for
>> vDSO on arm64, AT_SYSINFO_EHDR was not defined for compat tasks.
>> In the current implementation, AT_SYSINFO_EHDR is defined even if the
>> compat vdso layer is not built and this causes a regression in the
>> expected behavior of the ABI.
>>
>> Restore the ABI behavior making sure that AT_SYSINFO_EHDR for compat
>> tasks is defined only when CONFIG_GENERIC_COMPAT_VDSO and
>> CONFIG_COMPAT_VDSO are enabled.
> 
> I think you could do a better job in the changelog of explaining what's
> actually going on here. The problem seems to be that you're advertising
> the presence of a non-existent vDSO to userspace.
> 
>> Reported-by: John Stultz <john.stultz@linaro.org>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  arch/arm64/include/asm/elf.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
>> index 3c7037c6ba9b..b7992bb9d414 100644
>> --- a/arch/arm64/include/asm/elf.h
>> +++ b/arch/arm64/include/asm/elf.h
>> @@ -202,7 +202,7 @@ typedef compat_elf_greg_t		compat_elf_gregset_t[COMPAT_ELF_NGREG];
>>  ({									\
>>  	set_thread_flag(TIF_32BIT);					\
>>   })
>> -#ifdef CONFIG_GENERIC_COMPAT_VDSO
>> +#if defined(CONFIG_COMPAT_VDSO) && defined(CONFIG_GENERIC_COMPAT_VDSO)
> 
> Can't this just be #ifdef CONFIG_COMPAT_VDSO ?
>

Yes, I realized it after I pushed the patch that CONFIG_GENERIC_COMPAT_VDSO can
be removed. Posting v2 shortly.

> John -- can you give this a whirl, please?
> 
> Cheers,
> 
> Will
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
