Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0D5C05E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 14:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XDtanXA83f3jVRcO4f2uR9HLY4n7P9CtMkWrytZFDpQ=; b=QV4ya0XldbkXSBrN6ekbjG+Dr
	v/AecH41+kWIvpWyZGkSjthOFsJlHcWjrzxJz9qTHjXpdM/0qp/5GnghtUViytkgM/cNC0iCfalOb
	t7z9DeEAr1oPdPDjFOBLJuR+7uTwd5/kc6xUmRYqyn5CoqKC84tMg06UGFGzAEDjfQdISslGWN0r+
	f0tT8Psk5wCLXUc8kSeXdhEyFuUtMmb4wM1K7YjzS6ZLkRyOe2nKk/Bp6wqGtoBu0X/S8btawlYTv
	geMVCzJINRwsQM0j7e33fji1jgdQ+WW/tX/hYf+xrffQ3tBpsNfrXi9wcDeA7UDS1yZlk6vqkV0hG
	DDXS6H9iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDpqE-0000DW-Mv; Fri, 27 Sep 2019 12:59:22 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDpq5-0000CZ-2l
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 12:59:15 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iDppz-0008Q0-8M; Fri, 27 Sep 2019 14:59:07 +0200
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
Subject: Re: [PATCH] ARM: dts: stm32: Enable high resolution timer
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 27 Sep 2019 13:59:06 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <69af57d1-13a9-9e35-78f2-4a0d17bdaf6d@st.com>
References: <20190927084819.645-1-benjamin.gaignard@st.com>
 <da48ce9633441cd0186518fa7ce1d528@www.loen.fr>
 <341949c8-7864-5d65-2797-988022724a4c@st.com>
 <ff11797da8f049b354797689754fde52@www.loen.fr>
 <69af57d1-13a9-9e35-78f2-4a0d17bdaf6d@st.com>
Message-ID: <e376301a8e9ec02dfd7713748abed83e@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: benjamin.gaignard@st.com, alexandre.torgue@st.com,
 robh+dt@kernel.org, mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_055913_270397_95FCD488 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Alexandre TORGUE <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-27 13:44, Benjamin GAIGNARD wrote:
> On 9/27/19 2:41 PM, Marc Zyngier wrote:
>> On 2019-09-27 13:36, Benjamin GAIGNARD wrote:
>>> On 9/27/19 1:22 PM, Marc Zyngier wrote:
>>>> On 2019-09-27 09:48, Benjamin Gaignard wrote:
>>>>> Adding always-on makes arm arch_timer claim to be an high 
>>>>> resolution
>>>>> timer.
>>>>> That is possible because power mode won't stop clocking the 
>>>>> timer.
>>>>
>>>> The "always-on" is not about the clock. It is about the 
>>>> comparator.
>>>> The clock itself is *guaranteed* to always tick. If it didn't,
>>>> that'd be
>>>> an integration bug, and a pretty bad one.
>>>>
>>>> What you're claiming here is that your CPU never enters a 
>>>> low-power
>>>> mode?
>>>> Ever? I find this very hard to believe.
>>>>
>>>> Furthermore, claiming that always-on is the way to force the 
>>>> arch-timer
>>>> to be an hrtimer is factually wrong. This is what happens *if* 
>>>> this is
>>>> the only timer in the system. The only case this is true is for 
>>>> virtual
>>>> machines. Anything else has a global timer somewhere that will 
>>>> allow
>>>> the arch timers to be used as an hrtimer.
>>>>
>>>> I'm pretty sure you too have a global timer somewhere in your 
>>>> system.
>>>> Enable it, and enjoy hrtimers without having to lie about the
>>>> properties
>>>> of your system! ;-)
>>>
>>> Hi Marc,
>>>
>>> This SoC doesn't have any other global timer. Use arch_time is the 
>>> only
>>> we have to provide hrtimer on this system.
>>
>> And you don't have any form of power management either? What happens 
>> when
>> your CPU goes into idle? If your system does any form of power 
>> management
>> *and* doesn't have a separate timer, it is remarkably broken.
>
> Even in low-power modes this timer is always powered and clocked so 
> it
> is working fine.

You're missing the point again. It is not about the clock, but the 
comparator
that is internal to the CPU, and not functional when the CPU is in its 
lowest
power mode. See also the verbiage in [1] (44.3 STGEN functional 
description),
which indicates that the clock source actually dies in low-power mode 
(going
against the architecture which mandates it to be always-on).

Also, coming back to your earlier assertion ("This SoC doesn't have any 
other
global timer"): The documentation at [1] shows at least 17 timers that 
could
be used and avoid this dirty hack.

So for what it is worth, NAK to this patch.

         M.

[1] https://www.st.com/resource/en/reference_manual/dm00366355.pdf
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
