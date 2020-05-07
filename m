Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6586A1C9DED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 23:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXJvdjRUiCjrHWet8P5D0D0uPNPPLK5WDOSNJJu0BIU=; b=QwuxCceFlTP/35
	BBFfxwvLEFUh9ZGBE9VKYZhWoZc/Js8Za9d+QqYrNVe3xRcbnc+az706Y/oRIub/aTiFTBqJkvoT4
	LNXSrs1fIAikyDBvVV2NII0KKy0s5PNu4gcvyou77Z5GcxRCLoTauCUH0sKEXi2WP5Rj2FmgG00ER
	WCNAzvlmxCSC7ba0OT1RogdUXuj/sVqaIbTlQ/QtX+FM4Zq8SRUBuZH+WP1/FbQse0Cq7dxK0csAD
	jJQAhesGDDYxXdhQZcTABaO1cauw5v9FdyO2wTeKp3WPPkmgp+UBaZQVeLCSre71qG2R3paIhBwmK
	v171mzYYMycCI9AqjiBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWoR2-0007lc-Si; Thu, 07 May 2020 21:52:04 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWoQv-0007l5-Vz
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 21:51:59 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jWoQp-00079V-W0; Thu, 07 May 2020 23:51:52 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 46CA0102652; Thu,  7 May 2020 23:51:51 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] [RFC] genirq: Check irq_data_get_irq_chip() return value
 before use
In-Reply-To: <05c06df8-f871-c20f-3b7e-bcfa0b5d88cd@denx.de>
References: <20200507150729.244468-1-marex@denx.de>
 <87r1vvejqa.fsf@nanos.tec.linutronix.de>
 <05c06df8-f871-c20f-3b7e-bcfa0b5d88cd@denx.de>
Date: Thu, 07 May 2020 23:51:51 +0200
Message-ID: <875zd7e7m0.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_145158_171753_CB68463B 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Linus Walleij <linus.walleij@linaro.org>, Stephen Boyd <sboyd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Marek,

Marek Vasut <marex@denx.de> writes:
> On 5/7/20 7:30 PM, Thomas Gleixner wrote:
>> Marek Vasut <marex@denx.de> writes:
>>> NOTE: I don't know whether this is a correct fix. Maybe the
>>>       irq_data_get_irq_chip() should never return NULL, and
>>>       I have some other issue?
>> 
>> What's the callchain?
>
> Hmm, I'm currently unable to replicate it on linux-next, but on 5.4.39 I
> get what's at the end of the email.
>
> On next I just noticed I get i2c: Transfer while suspended, which is
> what I suspect would be the real root cause of my problem, and why
> irq_data_get_irq_chip() returns NULL?

Looks like.

>  Unable to handle kernel NULL pointer dereference at virtual address 00000070
>  PC is at __irq_get_irqchip_state+0x4/0x30
>  LR is at __synchronize_hardirq+0x7c/0xe8
>  [<c0166758>] (__irq_get_irqchip_state) from [<c0166800>] (__synchronize_hardirq+0x7c/0xe8)
>  [<c0166800>] (__synchronize_hardirq) from [<c01668f0>] (synchronize_irq+0x2c/0x9c)
>  [<c01668f0>] (synchronize_irq) from [<c016cba0>] (suspend_device_irqs+0xd8/0xf4)
>  [<c016cba0>] (suspend_device_irqs) from [<c04e3388>] (dpm_suspend_noirq+0x18/0x194)
>  [<c04e3388>] (dpm_suspend_noirq) from [<c015f174>] (suspend_devices_and_enter+0x170/0x514)
>  [<c015f174>] (suspend_devices_and_enter) from [<c015f6f4>] (pm_suspend+0x1dc/0x278)
>  [<c015f6f4>] (pm_suspend) from [<c015e100>] (state_store+0x9c/0xcc)
>  [<c015e100>] (state_store) from [<c029a424>] (kernfs_fop_write+0x124/0x1e0)
>  [<c029a424>] (kernfs_fop_write) from [<c02301c8>] (__vfs_write+0x2c/0xe8)
>  [<c02301c8>] (__vfs_write) from [<c0231658>] (vfs_write+0x98/0xbc)
>  [<c0231658>] (vfs_write) from [<c02317fc>] (ksys_write+0x74/0xc4)
>  [<c02317fc>] (ksys_write) from [<c0101000>] (ret_fast_syscall+0x0/0x54)

I assume that the i2c controller in question tears down the interrupt on
suspend. The changelog of that i2c driver should give you a few hints.

Thanks,

        tglx


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
