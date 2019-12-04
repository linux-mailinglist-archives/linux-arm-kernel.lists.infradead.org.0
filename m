Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15638112D04
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 14:56:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xmWkRII6wz5FWjT0/U3In0lv2upd2TRGA6MJepxjIA=; b=tdlMX9ZjK+tFhZ
	+ChKcRRAq7r8g1dU9HyV+2HtarE3kNiDE6YcicMHwyODPidjebrj0HodQAhBDhz2RWPsVLOyl6AZN
	yvxZxBpyYrqsBLLMW+dH8QbRGgm402DLsCYLAwpLAAXG0O3dwLDIPfdWO6CEag9ZNmzNS+CcdGGcC
	2fMmLDD731ardWMlu0utttQ4g3tyHuu2DWf2BUy4iKILWOWB+Xfw9fLR715N+oYeRfs33UUnAJGty
	Ot66HHQI3tpLEFEvP/jCPDpNAm7pONCM7NKYcvgQAUeidjrOdWJtubnnkyUqTRlbxTXfuAs4EnV78
	wxYr0ihNL64gqqqTE2Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icV8V-0000rc-4R; Wed, 04 Dec 2019 13:56:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icV8J-0000qh-Bw
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 13:56:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5E0A1FB;
 Wed,  4 Dec 2019 05:55:57 -0800 (PST)
Received: from [192.168.1.18] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9EB5A3F68E;
 Wed,  4 Dec 2019 05:55:53 -0800 (PST)
Subject: Re: [PATCH v7 16/25] arm: Add support for generic vDSO (causing crash)
To: Guenter Roeck <linux@roeck-us.net>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-17-vincenzo.frascino@arm.com>
 <20191204135159.GA7210@roeck-us.net>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <6cdf4734-4065-09c1-8623-1bf523b38c1b@arm.com>
Date: Wed, 4 Dec 2019 13:58:25 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191204135159.GA7210@roeck-us.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_055601_774644_1FCE2D16 
X-CRM114-Status: GOOD (  18.49  )
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Shijith Thotton <sthotton@marvell.com>,
 Andre Przywara <andre.przywara@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Paul Burton <paul.burton@mips.com>, linux-kselftest@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Guenter,

On 12/4/19 1:51 PM, Guenter Roeck wrote:
> On Fri, Jun 21, 2019 at 10:52:43AM +0100, Vincenzo Frascino wrote:
>> The arm vDSO library requires some adaptations to use to take advantage
>> of the newly introduced generic vDSO library.
>>
>> Introduce the following changes:
>>  - Modification vdso.c to be compliant with the common vdso datapage
>>  - Use of lib/vdso for gettimeofday
>>  - Implementation of elf note
>>
>> Cc: Russell King <linux@armlinux.org.uk>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> 
> This patch causes a crash with qemu's mcimx6ul-evk emulation while running
> imx_v6_v7_defconfig.
> 

Thank you for reporting this. Could you please provide some details on how I can
reproduce the scenario you are describing?

> [   19.976852] Run /sbin/init as init process
> [   20.044931] Kernel panic - not syncing: Attempted to kill init! exitcode=0x00000004
> 
> There is nothing else useful in the log, unfortunately.
> 
> Reverting the following three patches fixes the problem.
> 
> 74d06efb9c2f ARM: 8932/1: Add clock_gettime64 entry point
> 052e76a31b4a ARM: 8931/1: Add clock_getres entry point
> 20e2fc42312f ARM: 8930/1: Add support for generic vDSO
> 
> Guenter
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
