Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 290B81CCBA8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 16:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BR79Xk5DCKLxqvvyznvqQbgiei6cdoCQDNLPNc3eldI=; b=Nl+1U0lEpuIwAU
	CHl24XkkHqB5HE0wva7Fz3PGn1Nv7wED3b7aFE9clgDuczQieZxy2quKnFbv8sAeWFBLh8nDiQCa6
	0tdEpCggpUk4iuG7lawtoR+x34lrhRlgDhES/o185MeKiOc6FuuGYjbHF6uHlUa1UJP2dXFD/wDkm
	heXN8kbAixdySmq3tKI/wpAHAMjO769jJn4S2aAjOAjftIThIlHogJ6xHNVkxFxGtTDcX2HImj0G5
	r4qi6XBP3lgqZndZRqZIvChLW/JolIy8d43jHsh9AkehBCrHBJUCUjpM1b+g4RbfThfJIUVefN7iy
	NANly7myHFcE4nj0M9/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXnHl-0000Ag-4w; Sun, 10 May 2020 14:50:33 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXnGk-0006yC-G1
 for linux-arm-kernel@lists.infradead.org; Sun, 10 May 2020 14:49:41 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49Kn5Z5ZV1z1rrVt;
 Sun, 10 May 2020 16:49:22 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49Kn5Z3V2Lz1qrKt;
 Sun, 10 May 2020 16:49:22 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id s5e_F91k8rct; Sun, 10 May 2020 16:49:21 +0200 (CEST)
X-Auth-Info: 9LnSJ1S6AjSmKm+RtiCzdDYwN2gImZ1E3M5CGUmY80Y=
Received: from [127.0.0.1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sun, 10 May 2020 16:49:21 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH] [RFC] genirq: Check irq_data_get_irq_chip() return value
 before use
To: Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
References: <20200507150729.244468-1-marex@denx.de>
 <87r1vvejqa.fsf@nanos.tec.linutronix.de>
 <05c06df8-f871-c20f-3b7e-bcfa0b5d88cd@denx.de>
 <875zd7e7m0.fsf@nanos.tec.linutronix.de>
Message-ID: <d3b76d43-675b-c699-06fa-aab448504f25@denx.de>
Date: Sun, 10 May 2020 16:49:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <875zd7e7m0.fsf@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_074932_106406_BA527C02 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Stephen Boyd <sboyd@codeaurora.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Fabien Dessenne <fabien.dessenne@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/7/20 11:51 PM, Thomas Gleixner wrote:
> Marek,
> 
> Marek Vasut <marex@denx.de> writes:
>> On 5/7/20 7:30 PM, Thomas Gleixner wrote:
>>> Marek Vasut <marex@denx.de> writes:
>>>> NOTE: I don't know whether this is a correct fix. Maybe the
>>>>       irq_data_get_irq_chip() should never return NULL, and
>>>>       I have some other issue?
>>>
>>> What's the callchain?
>>
>> Hmm, I'm currently unable to replicate it on linux-next, but on 5.4.39 I
>> get what's at the end of the email.
>>
>> On next I just noticed I get i2c: Transfer while suspended, which is
>> what I suspect would be the real root cause of my problem, and why
>> irq_data_get_irq_chip() returns NULL?
> 
> Looks like.
> 
>>  Unable to handle kernel NULL pointer dereference at virtual address 00000070
>>  PC is at __irq_get_irqchip_state+0x4/0x30
>>  LR is at __synchronize_hardirq+0x7c/0xe8
>>  [<c0166758>] (__irq_get_irqchip_state) from [<c0166800>] (__synchronize_hardirq+0x7c/0xe8)
>>  [<c0166800>] (__synchronize_hardirq) from [<c01668f0>] (synchronize_irq+0x2c/0x9c)
>>  [<c01668f0>] (synchronize_irq) from [<c016cba0>] (suspend_device_irqs+0xd8/0xf4)
>>  [<c016cba0>] (suspend_device_irqs) from [<c04e3388>] (dpm_suspend_noirq+0x18/0x194)
>>  [<c04e3388>] (dpm_suspend_noirq) from [<c015f174>] (suspend_devices_and_enter+0x170/0x514)
>>  [<c015f174>] (suspend_devices_and_enter) from [<c015f6f4>] (pm_suspend+0x1dc/0x278)
>>  [<c015f6f4>] (pm_suspend) from [<c015e100>] (state_store+0x9c/0xcc)
>>  [<c015e100>] (state_store) from [<c029a424>] (kernfs_fop_write+0x124/0x1e0)
>>  [<c029a424>] (kernfs_fop_write) from [<c02301c8>] (__vfs_write+0x2c/0xe8)
>>  [<c02301c8>] (__vfs_write) from [<c0231658>] (vfs_write+0x98/0xbc)
>>  [<c0231658>] (vfs_write) from [<c02317fc>] (ksys_write+0x74/0xc4)
>>  [<c02317fc>] (ksys_write) from [<c0101000>] (ret_fast_syscall+0x0/0x54)
> 
> I assume that the i2c controller in question tears down the interrupt on
> suspend. The changelog of that i2c driver should give you a few hints.

All right, so I found out the root cause is already fixed in next, and
just needs to be backported to stable. I'll ping the patch author about
that.

It's this patch:
69269446ccbf ("mailbox: stm32-ipcc: Update wakeup management")

I also need to revisit the regulator suspend topic next, that seems to
be a separate issue after all.

Sorry for the noise.

That said, do you want to take this patch to add the missing check
anyway or is there a reason the check is missing ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
