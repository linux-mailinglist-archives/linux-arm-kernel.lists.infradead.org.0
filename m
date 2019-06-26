Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E00B565A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:25:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8Xo63HuR2kZsyAyIkpD7Q0zHPVTE2ov8Zyic0gxSxU=; b=fMdjnHztuHgPkD
	MBzirBrOWbFXiW1OgnXkGlPNjrxlsxBhSigy5RjXNY+w7E0vOCnFURm8wEq3UFwko98zsnAGkMHh5
	nUouEhS1SPnyHv3T08xS68weU0GHVyLEHe1UqKMfrSPaIr9JJgqSAUzDicwm6wB4fiHyEhr5iS84q
	59J6lPSVYVn+9eOmnv9b29O8DMPXN/DIi539ASGTPSu9HJoWdmEygsRgTJ5WMM8qRjvNWAwtljLnP
	n5D5YoxlFsRy0h0Gc5B24sJJi7skgLYrwVlQEg0YdSbA/8Q8j1huXB9FzgFYjNk6PqvKsjHrzH7/o
	P71/mI0SKmf5iABgaMgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg4Ba-0006lo-GC; Wed, 26 Jun 2019 09:25:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4BC-0006lO-U2
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:25:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 818432B;
 Wed, 26 Jun 2019 02:25:25 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 55EE03F718;
 Wed, 26 Jun 2019 02:25:22 -0700 (PDT)
Subject: Re: [PATCH 1/3] lib/vdso: Delay mask application in do_hres()
To: Thomas Gleixner <tglx@linutronix.de>
References: <20190624133607.GI29497@fuggles.cambridge.arm.com>
 <20190625161804.38713-1-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906251851350.32342@nanos.tec.linutronix.de>
 <alpine.DEB.2.21.1906260832470.32342@nanos.tec.linutronix.de>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <4ff43de4-fe51-eed4-a155-31a05edf2f11@arm.com>
Date: Wed, 26 Jun 2019 10:25:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1906260832470.32342@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_022527_014147_2A0899A4 
X-CRM114-Status: GOOD (  14.11  )
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
Cc: linux-arch@vger.kernel.org, shuah@kernel.org, sthotton@marvell.com,
 andre.przywara@arm.com, Arnd Bergmann <arnd@arndb.de>, huw@codeweavers.com,
 catalin.marinas@arm.com, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, paul.burton@mips.com,
 linux-kselftest@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux@armlinux.org.uk, 0x7f454c46@gmail.com, salyzyn@android.com,
 pcc@google.com, LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

On 26/06/2019 07:38, Thomas Gleixner wrote:
> On Tue, 25 Jun 2019, Thomas Gleixner wrote:
>> On Tue, 25 Jun 2019, Vincenzo Frascino wrote:
>>> do_hres() in the vDSO generic library masks the hw counter value
>>> immediately after reading it.
>>>
>>> Postpone the mask application after checking if the syscall fallback is
>>> enabled, in order to be able to detect a possible fallback for the
>>> architectures that have masks smaller than ULLONG_MAX.
>>
>> Right. This only worked on x86 because the mask is there ULLONG_MAX for all
>> VDSO capable clocksources, i.e. that ever worked just by chance.
> 
> But it's actually worse than that:
> 
>>> +		cycles &= vd->mask;
>>>  		if (cycles > last)
>>>  			ns += (cycles - last) * vd->mult;
>>>  		ns >>= vd->shift;
> 
> This is broken for any clocksource which can legitimately wrap around. The
> core timekeeping does the right thing:
> 
>      		 (cycles - last) & mask
> 
> That makes sure that a wraparound is correctly handled. With the above the
> wrap around would be ignored due to
> 
>      	    if (cycles > last)
> 

You are right. Thanks for spotting it.


...

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
