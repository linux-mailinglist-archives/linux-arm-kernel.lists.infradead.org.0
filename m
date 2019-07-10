Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3483C64A26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 17:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XCy2q8eqHhb1DRGb36hHvY+/FaI55ze/Bk+V+T9L1Lo=; b=K61RFFiNyadgB9
	+8DNltwQQYpbEHLzXzqqMPvSmpTiIloJnIV5URYmxkRFxDVzUuMaafP6j5ReNp7vr0jGjRUiMowSg
	LnAZCNpmtuyFcBYIkOhmPJncEbZF3QClFY/9jxD+OqaEc7wjjsxuTAkj8qEIqSxhDGqn/AfXlaz6R
	gQ96oCTDWoU9gPMEpkn4imOyjCQOulQDodOTPUuBYUgD93s4o27Wak1C5wZasJIXJx3NqHrxvqXZZ
	8o2HBSmElYLsFkzYT+i4/k0SOKKELJJPGqaxAaTHeswI5IuMr/cMlilMxH+wKRb7SpSG1OlZe3pDE
	YsBDMjtLUbyvb08Iyl4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlEv9-0006K3-J6; Wed, 10 Jul 2019 15:54:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlEuu-0006JG-HG
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 15:54:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB7602B;
 Wed, 10 Jul 2019 08:53:59 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 220293F246;
 Wed, 10 Jul 2019 08:53:57 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: vdso: Fix ABI regression in compat vdso
To: John Stultz <john.stultz@linaro.org>
References: <20190621095252.32307-11-vincenzo.frascino@arm.com>
 <20190710140119.23417-1-vincenzo.frascino@arm.com>
 <CALAqxLVnf_hyxxmx72F360PbJUTZowuD3wJx0nJ=dCTyW+w-Tw@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <7fc94d97-3cff-c983-ad63-e61f118e2936@arm.com>
Date: Wed, 10 Jul 2019 16:53:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CALAqxLVnf_hyxxmx72F360PbJUTZowuD3wJx0nJ=dCTyW+w-Tw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_085400_616226_7DAFA4DF 
X-CRM114-Status: GOOD (  16.54  )
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
Cc: Andy Lutomirski <luto@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Shuah Khan <shuah@kernel.org>, linux-arch@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Arnd Bergmann <arnd@arndb.de>, Andre Przywara <andre.przywara@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Huw Davies <huw@codeweavers.com>, lkml <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

On 10/07/2019 16:44, John Stultz wrote:
> On Wed, Jul 10, 2019 at 7:01 AM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
>>
>> Prior to the introduction of Unified vDSO support and compat layer for
>> vDSO on arm64, AT_SYSINFO_EHDR was not defined for compat tasks.
>> In the current implementation, AT_SYSINFO_EHDR is defined even if the
>> compat vdso layer is not built and this causes a regression in the
>> expected behavior of the ABI.
>>
>> Restore the ABI behavior making sure that AT_SYSINFO_EHDR for compat
>> tasks is defined only when CONFIG_COMPAT_VDSO is enabled.
>>
>> Reported-by: John Stultz <john.stultz@linaro.org>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> 
> This seems to solve it for me!
> Thanks so much for the quick turnaround on a fix. I really appreciate it!
> 
> Tested-by: John Stultz <john.stultz@linaro.org>
> 

Thank you for the quick reply, it means I can go home early today ;-)

> thanks
> -john
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
