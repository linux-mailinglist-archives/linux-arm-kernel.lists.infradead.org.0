Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42883464A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLa1rmXr3mettisfejvgXZleB5w0KVqO/LeFh0hvSnQ=; b=RTCu1TNkEaEgev
	piLz0eq1Z2bM4MSngkTqumTdWvi8Ye+9j3b9vHMDd07XNTc2z3RZCM29A2XZS3U9hvQDoNqBRRzFO
	D+auB0S3hGhCABuJpKWvOqlmQyygXzD41boy/94Uly2z2PDZvpLGZnTc0v/dObwrhP5V0D0UKeuzq
	2FK34YKH2DA8PmviLldCFln7QihJsSGK1Xa1ap+UenCL8959+atlxaTnforMGf/Dqw/MXBuYmTarc
	0s7a+hUrEtSDDCvbV/cxwdsnqvza6cKlmQJdEIRXgCFgHaVIbz95IuicnpeuV+LEU4xWm92TFOqpX
	KZ3pNp2EnyzR9ax6lt+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8H6-0002zh-G4; Tue, 04 Jun 2019 12:10:44 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8Gy-0002z9-Ld
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:10:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D48EF80D;
 Tue,  4 Jun 2019 05:10:35 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BB3B43F690;
 Tue,  4 Jun 2019 05:10:32 -0700 (PDT)
Subject: Re: [PATCH v6 15/19] arm64: Add vDSO compat support
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-16-vincenzo.frascino@arm.com>
 <20190601093830.GA13589@arrakis.emea.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <2027e092-2d76-9350-6c5b-7d3debc6a93f@arm.com>
Date: Tue, 4 Jun 2019 13:10:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190601093830.GA13589@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_051036_715721_D02ECAEA 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Huw Davies <huw@codeweavers.com>,
 Shuah Khan <shuah@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, linux-kselftest@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

thank you for testing my patches and providing the scripts you used to reproduce
the issue.

On 01/06/2019 10:38, Catalin Marinas wrote:
> On Thu, May 30, 2019 at 03:15:27PM +0100, Vincenzo Frascino wrote:
>> Add vDSO compat support to the arm64 building system.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  arch/arm64/Kconfig         |  1 +
>>  arch/arm64/Makefile        | 23 +++++++++++++++++++++--
>>  arch/arm64/kernel/Makefile |  6 +++++-
>>  3 files changed, 27 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 952c9f8cf3b8..3e1d4f8347f4 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -108,6 +108,7 @@ config ARM64
>>  	select GENERIC_STRNLEN_USER
>>  	select GENERIC_TIME_VSYSCALL
>>  	select GENERIC_GETTIMEOFDAY
>> +	select GENERIC_COMPAT_VDSO if !CPU_BIG_ENDIAN
> 
> This select needs to also depend on COMPAT (or rather be selected from
> the COMPAT menuconfig), otherwise, trying to build this series with 64K
> pages where COMPAT is disabled, I get:
> 

This is a very good catch, my bad, will definitely fix in v7.

...

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
