Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B671C994F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 20:30:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MWIHU4cQFeQ8ytMgj8FJA6xMZmaKv8Ab8620bOwsndA=; b=P1ropU3skRRutj
	FLX69IPXQ85K/+tWM1TFM8n9bqUoSCOg+m1dw1V3Vv2RgBduCfDQcmmDWxomBue7GEEfwD8tHmhT/
	r8akKGdzRoxXemaWUKeuYsYG+7FV7FVCRsWQazJdl4d2KGa/qpA+JX3BXqSDVXOuaMc3lBEQHMBmB
	MKlttwUHqUPCAvUt8zW6avRNd+fSW+bFjROzK2BSIqKQMuy5MHwCbEepOQCEVyous0f4eFYPA23Mu
	wWbiQUDMYWSMINIfFpT+Tvuf1LlUUiL3LG5/zlje3ADDgukxMQaHwTSXw/aJkBv23qMwhEroKTWAm
	yYs/w1c0rmat74H9APFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWlHg-00064v-Ee; Thu, 07 May 2020 18:30:12 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWlHO-00063y-CW
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 18:29:56 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49J27M73Szz1qrfc;
 Thu,  7 May 2020 20:29:51 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49J27M6MPXz1qtwT;
 Thu,  7 May 2020 20:29:51 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id IvhfuZ31SWu3; Thu,  7 May 2020 20:29:50 +0200 (CEST)
X-Auth-Info: ak3Pt2h1c+ULM+yIYYZI42YXGyZ3Lg4m+rzC4+KsQEI=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu,  7 May 2020 20:29:49 +0200 (CEST)
Subject: Re: [PATCH] [RFC] genirq: Check irq_data_get_irq_chip() return value
 before use
To: Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
References: <20200507150729.244468-1-marex@denx.de>
 <87r1vvejqa.fsf@nanos.tec.linutronix.de>
From: Marek Vasut <marex@denx.de>
Message-ID: <05c06df8-f871-c20f-3b7e-bcfa0b5d88cd@denx.de>
Date: Thu, 7 May 2020 20:29:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <87r1vvejqa.fsf@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_112954_731444_6A4E1570 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 5/7/20 7:30 PM, Thomas Gleixner wrote:
> Marek Vasut <marex@denx.de> writes:
> 
>> The irq_data_get_irq_chip() can return NULL. If the kernel accesses
>> chip->irq_get_irqchip_state without checking whether chip is valid,
>> we get a crash. Fix this by checking whether chip is not NULL before
>> using it.
>>
>> Fixes: 1b7047edfcfb ("genirq: Allow the irqchip state of an IRQ to be save/restored")
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> NOTE: I don't know whether this is a correct fix. Maybe the
>>       irq_data_get_irq_chip() should never return NULL, and
>>       I have some other issue?
> 
> What's the callchain?

Hmm, I'm currently unable to replicate it on linux-next, but on 5.4.39 I
get what's at the end of the email.

On next I just noticed I get i2c: Transfer while suspended, which is
what I suspect would be the real root cause of my problem, and why
irq_data_get_irq_chip() returns NULL?

 8<--- cut here ---
 Unable to handle kernel NULL pointer dereference at virtual address
00000070
 pgd = d06053c1
 [00000070] *pgd=fb2ae835
 Internal error: Oops: 17 [#1] SMP ARM
 Modules linked in:
 CPU: 1 PID: 134 Comm: sh Not tainted 5.4.39-00040-gbfd890984358 #3
 Hardware name: STM32 (Device Tree Support)
 PC is at __irq_get_irqchip_state+0x4/0x30
 LR is at __synchronize_hardirq+0x7c/0xe8
 pc : [<c0166758>]    lr : [<c0166800>]    psr: a0000093
 sp : ed8bddb8  ip : 0000000f  fp : 00000000
 r10: eeedcd68  r9 : c0e0ee04  r8 : eeedcd14
 r7 : eeedcd68  r6 : 00000001  r5 : 40000013  r4 : eeedcd00
 r3 : 00000000  r2 : ed8bddbb  r1 : 00000001  r0 : eeef5f40
 Flags: NzCv  IRQs off  FIQs on  Mode SVC_32  ISA ARM  Segment none
 Control: 10c5387d  Table: eef1c06a  DAC: 00000051
 Process sh (pid: 134, stack limit = 0xd4728d7d)
 Stack: (0xed8bddb8 to 0xed8be000)
 dda0:                                                       00edcd00
c0e04e48
 ddc0: eeedcd00 00000001 0000004d 40000013 c0e0ef40 c01668f0 00000fff
c0e04e48
 dde0: eeedc700 00000001 0000004d c0e04e48 40000013 eeedcd00 00000001
c016cba0
 de00: 00000001 c0e8d714 c0ed0498 00000002 c0e9494c 00000001 c0e8d5bc
00000004
 de20: 00000000 c04e3388 00000002 00000002 c0e8a44c 00000000 c0ed0498
00000001
 de40: c0e9494c 00000001 c0e8d5bc 00000004 00000000 c015f174 2e9b7000
c0162a48
 de60: ed8bde74 c0e04e48 00000000 00000000 c0ed0498 00000001 c0e8d5bc
c094b61f
 de80: c0e94960 c015f6f4 00000007 c0e04e48 eef5c1c3 00000003 00000001
eef5c1c0
 dea0: 00000004 c015e100 00000004 eef5c1c0 eef4c780 ed8bdf78 eef4c790
00000051
 dec0: 00000004 c029a424 00000000 00000000 00000004 00000000 ee9e6540
00000004
 dee0: c029a300 ed8bdf78 ed8bc000 c02301c8 eef1c000 eef1c000 00000000
00000000
 df00: 00000000 00000000 00000000 eef1a03c 00000000 c0e04e48 eeb25a00
00075ff4
 df20: ed8bdfb0 eeebb1e0 00000054 80000007 eef1a040 c015b6ac 00075ff4
c0112a30
 df40: c0101204 c0e04e48 ee9e6540 00000000 ee9e6540 00000004 001d2730
c0231658
 df60: ee9e6540 001d2730 ed8bdf78 ed8bdf84 00000004 c02317fc 00000000
00000000
 df80: 00000000 ee9e6540 00000000 c0e04e48 001ceeac 00000004 001d2730
00000004
 dfa0: c0101204 c0101000 001ceeac 00000004 00000001 001d2730 00000004
00000000
 dfc0: 001ceeac 00000004 001d2730 00000004 00000001 00000002 00000020
00000000
 dfe0: 00000001 be830660 0000c1d0 00008e0c 60000010 00000001 00000000
00000000
 [<c0166758>] (__irq_get_irqchip_state) from [<c0166800>]
(__synchronize_hardirq+0x7c/0xe8)
 [<c0166800>] (__synchronize_hardirq) from [<c01668f0>]
(synchronize_irq+0x2c/0x9c)
 [<c01668f0>] (synchronize_irq) from [<c016cba0>]
(suspend_device_irqs+0xd8/0xf4)
 [<c016cba0>] (suspend_device_irqs) from [<c04e3388>]
(dpm_suspend_noirq+0x18/0x194)
 [<c04e3388>] (dpm_suspend_noirq) from [<c015f174>]
(suspend_devices_and_enter+0x170/0x514)
 [<c015f174>] (suspend_devices_and_enter) from [<c015f6f4>]
(pm_suspend+0x1dc/0x278)
 [<c015f6f4>] (pm_suspend) from [<c015e100>] (state_store+0x9c/0xcc)
 [<c015e100>] (state_store) from [<c029a424>] (kernfs_fop_write+0x124/0x1e0)
 [<c029a424>] (kernfs_fop_write) from [<c02301c8>] (__vfs_write+0x2c/0xe8)
 [<c02301c8>] (__vfs_write) from [<c0231658>] (vfs_write+0x98/0xbc)
 [<c0231658>] (vfs_write) from [<c02317fc>] (ksys_write+0x74/0xc4)
 [<c02317fc>] (ksys_write) from [<c0101000>] (ret_fast_syscall+0x0/0x54)
 Exception stack(0xed8bdfa8 to 0xed8bdff0)
 dfa0:                   001ceeac 00000004 00000001 001d2730 00000004
00000000
 dfc0: 001ceeac 00000004 001d2730 00000004 00000001 00000002 00000020
00000000
 dfe0: 00000001 be830660 0000c1d0 00008e0c
 Code: e8bd8010 c094f6b4 c094f6ee e5903010 (e5933070)
 ---[ end trace 0c491ff303550b8d ]---

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
