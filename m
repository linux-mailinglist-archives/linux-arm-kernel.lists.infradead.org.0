Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B20A2013
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Huca35Bf3w1d5zqWCcQjLwVNatJzMNdMWcJjblKx3a0=; b=VtsCTJpcozDup9
	mZK7RhNOwUNzYh/av7H5OCRScQaID/nR56qUfeb6b6031X/ETGa25LDOBhFIBieofAlyREHhnwsDk
	HDfUrUwl8iH6AYQGM646BuqOVEbsSRLyOMmbOitmcabeBUfO2I80vCi1czYCjT1WrpHJEwyFk4Tgc
	fPO1mN9F+LVpGY7gDiPaIPNPt6eV256P1erCEVFafYiJM4ASCqtrk/vQuTLZ865E3wq+QJCuDsH+U
	1BLNrv9fXhINmP2hg7tsBT8v9irk0IZBaYyUVMGo7QLHxMeWMyfGaiqmWY6rv+R+OGPQswPe5CZzt
	cpKNvkYvZ6uFWBtGfWSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MkB-000626-R2; Thu, 29 Aug 2019 15:53:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Mi2-0004bn-Qt
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:51:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29E9828;
 Thu, 29 Aug 2019 08:51:38 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7D34B3F718;
 Thu, 29 Aug 2019 08:51:36 -0700 (PDT)
Subject: Re: [PATCH 4/7] lib: vdso: Remove VDSO_HAS_32BIT_FALLBACK
To: Andy Lutomirski <luto@kernel.org>
References: <20190829111843.41003-1-vincenzo.frascino@arm.com>
 <20190829111843.41003-5-vincenzo.frascino@arm.com>
 <CALCETrVprrrR3TSVSAnHfLW4HDQG=gcVrdjmsk6ss6Z3+vKOBg@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <77d5c414-77c4-49e9-3541-772c74a4735d@arm.com>
Date: Thu, 29 Aug 2019 16:51:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CALCETrVprrrR3TSVSAnHfLW4HDQG=gcVrdjmsk6ss6Z3+vKOBg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_085139_035209_6557D49C 
X-CRM114-Status: GOOD (  18.51  )
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Thomas Gleixner <tglx@linutronix.de>, Mark Salyzyn <salyzyn@android.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/08/2019 16:25, Andy Lutomirski wrote:
> On Thu, Aug 29, 2019 at 4:19 AM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
>>
>> VDSO_HAS_32BIT_FALLBACK was introduced to address a regression which
>> caused seccomp to deny access to the applications to clock_gettime64()
>> and clock_getres64() because they are not enabled in the existing
>> filters.
>>
>> The purpose of VDSO_HAS_32BIT_FALLBACK was to simplify the conditional
>> implementation of __cvdso_clock_get*time32() variants.
>>
>> Now that all the architectures that support the generic vDSO library
>> have been converted to support the 32 bit fallbacks the conditional
>> can be removed.
>>
>> Cc: Thomas Gleixner <tglx@linutronix.de>
>> CC: Andy Lutomirski <luto@kernel.org>
>> References: c60a32ea4f45 ("lib/vdso/32: Provide legacy syscall fallbacks")
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  lib/vdso/gettimeofday.c | 10 ----------
>>  1 file changed, 10 deletions(-)
>>
>> diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
>> index a86e89e6dedc..2c4b311c226d 100644
>> --- a/lib/vdso/gettimeofday.c
>> +++ b/lib/vdso/gettimeofday.c
>> @@ -126,13 +126,8 @@ __cvdso_clock_gettime32(clockid_t clock, struct old_timespec32 *res)
>>
>>         ret = __cvdso_clock_gettime_common(clock, &ts);
>>
>> -#ifdef VDSO_HAS_32BIT_FALLBACK
>>         if (unlikely(ret))
>>                 return clock_gettime32_fallback(clock, res);
>> -#else
>> -       if (unlikely(ret))
>> -               ret = clock_gettime_fallback(clock, &ts);
>> -#endif
>>
>>         if (likely(!ret)) {
>>                 res->tv_sec = ts.tv_sec;
> 
> I think you could have a little follow-up patch to remove the if
> statement -- by the time you get here, it's guaranteed that ret == 0.
>

Thanks, I will add a new patch that does that to v2 (with a comment).

> --Andy
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
