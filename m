Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B93310F1A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 21:40:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rMqPxAv4IRuB3n8Xhoov6C3zcxtktP8BvVnA7ag4xi0=; b=rqv
	4lOORlyVM8dZvWlhDBznYskrkVcSadpn8t6UDJqffREsZwmuLAXsJ4NcbVRE+DSBbDXa8+nvimpM5
	07VlGE4aRDoXGTcJTrBspTY9IJxCtjF1HNmtEPxTzsOIcyNJ0r/JcvGccmMYufhvoIMUyAl/BA7vD
	MxCemmzGUmWMB3UgK5RyWY3+WbzIhHqAEd/gO0DKUejnQwR5dD6xMEBz2rZtnPN1vR54FHyf95jss
	A7uWLSNMxHDF4FAZJZDlPIMA5YuIGAKleKhEntvTrEuolsOv+OPy9jqB2HVytSLXoc6yUrw+RvBwM
	xR1na5vP+wgxV+8LglespYhLzRCmLgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibsUz-0001tf-8k; Mon, 02 Dec 2019 20:40:49 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibsUs-0001t5-RT
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 20:40:44 +0000
Received: by mail-il1-x141.google.com with SMTP id b15so959723ila.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 12:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=designa-electronics-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=IhJ2StDiA7OZp7K2mqE5mqNGAxO3Ft0EOf3eFRUg3LE=;
 b=xiDu8F3hb8vkfRMcNz28+Ep38MeySfDxTFdu2oO6VF+W82oGdDSfdIVYhWaLJEj+0b
 qouQpAmNavGpi7irFCIiYf0jVplV7rukgZSXDy7GjcYSeSUuLMDXVnYhfgYCUrPDYEXN
 YIJctINmvb2Gpa9K+LeRe9B8aayIxwDO8GRAMuNWb356LAer5ZG7CNGZ29hVYVTX4apK
 fRPIU87oU1oeEt4NnWlbvJtrC+t8A9N7PHK7OnuiHelZmxptFnQvIYKqIQb57/NNeGZJ
 1vWU34CkBqHVX492ANzXBLInw29cLL1R/MGm3PBrYbS2LDFoYVWdoRk9TECGFQKa3gJd
 p0EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=IhJ2StDiA7OZp7K2mqE5mqNGAxO3Ft0EOf3eFRUg3LE=;
 b=MqNnNhDALKffjsbIHUtKt21gfFeLaiyIHkGkDX5H++lupH713EkxlBnzB3Hzt7COSD
 ZjFUkVYpOSD4hjEa6Rc0DIuMMNSev4V6Rapjw6n89zjO2hl0RWghr7Zx7+Ue0wJiuqCF
 Cl/DCavJ9oamMWTzgxia5docvK37V61ClBr7lDHuQ12DJa5aznL48BRJjobsoAitq0gT
 3kyxPpbMl0HAzf3qzQ+F4EdpplvS11oa5QXAfSRD5EplWmzBt4RZHvUre+6HCRP3x2DP
 NwwXdb1YVxvJZH+fYLBoAWLSrjIg49noLdZuSb5lstrvfSvqxmAR4GVLvXLroWtLM227
 whlA==
X-Gm-Message-State: APjAAAUj1FtFKpq8hkoaTr8TA7Tu19+BdnVsHwoF6VzUb8FHKAGiXFAG
 8095aOf4pSD84DdWVnm/B6lcv70A+dABVw==
X-Google-Smtp-Source: APXvYqwa238eaylXb9/Wq1Ssz3PoAo0e+GiBOQJ9Vn50O+Yjg9fLKt7vbmsf/ItsrfsXxoxBHFkRxQ==
X-Received: by 2002:a92:ce4b:: with SMTP id a11mr792306ilr.181.1575319241315; 
 Mon, 02 Dec 2019 12:40:41 -0800 (PST)
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com.
 [209.85.166.177])
 by smtp.gmail.com with ESMTPSA id e85sm135645ilk.78.2019.12.02.12.40.40
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Dec 2019 12:40:40 -0800 (PST)
Received: by mail-il1-f177.google.com with SMTP id u16so941452ilg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 12:40:40 -0800 (PST)
X-Received: by 2002:a92:9959:: with SMTP id p86mr829866ili.124.1575319239665; 
 Mon, 02 Dec 2019 12:40:39 -0800 (PST)
MIME-Version: 1.0
From: Andre Renaud <arenaud@designa-electronics.com>
Date: Tue, 3 Dec 2019 09:40:28 +1300
X-Gmail-Original-Message-ID: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
Message-ID: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
Subject: iMX6/UART imprecise external abort
To: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_124042_894090_7158469E 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,
I am working with an iMX6Q system that is exhibiting a crash when
using the serial ports.
We have /dev/ttymxc2 configured as an RS485 UART, and are seeing an
'imprecise external abort' after some time of use (panic listed
below).

We are able to replicate this both on the custom kernel we're using,
as well as on the 5.3.x+fslc image from
https://github.com/Freescale/linux-fslc

To replicate it we have the mx6 hooked up to a PC, with each end
sending short 3-4 character messages every second. The fault kicks in
after about 15-30 minutes. This seems similar to the fault described
here: https://lkml.org/lkml/2019/11/11/588. We have tried shutting
down DMA and various performance/cpuidle systems, but that doesn't
seem to have any impact.

Does anyone have any thoughts on how to solve this?

Regards,
Andre

[ 5047.074427] Unhandled fault: imprecise external abort (0x1406) at 0xb6e00f78
[ 5047.081498] pgd = c0004000
[ 5047.084213] [b6e00f78] *pgd=00000000
[ 5047.087813] Internal error: : 1406 [#1] SMP ARM
[ 5047.092348] Modules linked in:
[ 5047.095429] CPU: 1 PID: 0 Comm: swapper/1 Not tainted 4.8.0+ #19
[ 5047.101440] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
[ 5047.107974] task: ef0ecd00 task.stack: ef158000
[ 5047.112521] PC is at arch_cpu_idle+0x48/0x4c
[ 5047.116799] LR is at arch_cpu_idle+0x44/0x4c
[ 5047.121077] pc : [<c0108c70>]    lr : [<c0108c6c>]    psr: 60070013
[ 5047.121077] sp : ef159f98  ip : ef159fa8  fp : ef159fa4
[ 5047.132560] r10: 00000000  r9 : 00000002  r8 : c0d025dc
[ 5047.137791] r7 : c0d95448  r6 : ef158000  r5 : c0d02648  r4 : ef158000
[ 5047.144324] r3 : c011a140  r2 : 005bc18a  r1 : ef7ae3c0  r0 : 00000000
[ 5047.150858] Flags: nZCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
[ 5047.157998] Control: 10c5387d  Table: 3dd9804a  DAC: 00000051
[ 5047.163748] Process swapper/1 (pid: 0, stack limit = 0xef158210)
[ 5047.169759] Stack: (0xef159f98 to 0xef15a000)
[ 5047.174124] 9f80:
    ef159fb4 ef159fa8
[ 5047.182310] 9fa0: c0170b54 c0108c34 ef159fdc ef159fb8 c0170da4
c0170b30 c0a8fb48 c0d8b845
[ 5047.190496] 9fc0: c0d8c48c c0d025dc 10c0387d c0d95448 ef159ff4
ef159fe0 c010e6cc c0170b6c
[ 5047.198682] 9fe0: 3f0fc06a 00000051 00000000 ef159ff8 101018cc
c010e580 edddf4eb ffeebffd
[ 5047.206887] [<c0108c70>] (arch_cpu_idle) from [<c0170b54>]
(default_idle_call+0x30/0x3c)
[ 5047.214993] [<c0170b54>] (default_idle_call) from [<c0170da4>]
(cpu_startup_entry+0x244/0x298)
[ 5047.223619] [<c0170da4>] (cpu_startup_entry) from [<c010e6cc>]
(secondary_start_kernel+0x158/0x164)
[ 5047.232677] [<c010e6cc>] (secondary_start_kernel) from [<101018cc>]
(0x101018cc)
[ 5047.240083] Code: e34c30d0 e5933014 e12fff33 f1080080 (e89da800)
[ 5047.246190] ---[ end trace 853e028df8c9b7cd ]---
[ 5047.250814] Kernel panic - not syncing: Attempted to kill the idle task!
[ 5047.257528] CPU2: stopping
[ 5047.260250] CPU: 2 PID: 0 Comm: swapper/2 Tainted: G      D
4.8.0+ #19
[ 5047.267476] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
[ 5047.274022] [<c0110cc4>] (unwind_backtrace) from [<c010c9d0>]
(show_stack+0x20/0x24)
[ 5047.281783] [<c010c9d0>] (show_stack) from [<c04939c8>]
(dump_stack+0x90/0xa4)
[ 5047.289019] [<c04939c8>] (dump_stack) from [<c010ebe8>]
(handle_IPI+0x2a4/0x2c4)
[ 5047.296426] [<c010ebe8>] (handle_IPI) from [<c01014dc>]
(gic_handle_irq+0x80/0x84)
[ 5047.304013] [<c01014dc>] (gic_handle_irq) from [<c080c8cc>]
(__irq_svc+0x6c/0x90)
[ 5047.311500] Exception stack(0xef15bf48 to 0xef15bf90)
[ 5047.316561] bf40:                   00000000 ef7bd3c0 00729232
c011a140 ef15a000 c0d02648
[ 5047.324747] bf60: ef15a000 c0d95448 c0d025dc 00000004 00000000
ef15bfa4 ef15bfa8 ef15bf98
[ 5047.332930] bf80: c0108c6c c0108c70 60000013 ffffffff
[ 5047.337999] [<c080c8cc>] (__irq_svc) from [<c0108c70>]
(arch_cpu_idle+0x48/0x4c)
[ 5047.345410] [<c0108c70>] (arch_cpu_idle) from [<c0170b54>]
(default_idle_call+0x30/0x3c)
[ 5047.353514] [<c0170b54>] (default_idle_call) from [<c0170da4>]
(cpu_startup_entry+0x244/0x298)
[ 5047.362137] [<c0170da4>] (cpu_startup_entry) from [<c010e6cc>]
(secondary_start_kernel+0x158/0x164)
[ 5047.371191] [<c010e6cc>] (secondary_start_kernel) from [<101018cc>]
(0x101018cc)
[ 5047.378593] CPU3: stopping
[ 5047.381314] CPU: 3 PID: 0 Comm: swapper/3 Tainted: G      D
4.8.0+ #19
[ 5047.388540] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
[ 5047.395085] [<c0110cc4>] (unwind_backtrace) from [<c010c9d0>]
(show_stack+0x20/0x24)
[ 5047.402841] [<c010c9d0>] (show_stack) from [<c04939c8>]
(dump_stack+0x90/0xa4)
[ 5047.410073] [<c04939c8>] (dump_stack) from [<c010ebe8>]
(handle_IPI+0x2a4/0x2c4)
[ 5047.417479] [<c010ebe8>] (handle_IPI) from [<c01014dc>]
(gic_handle_irq+0x80/0x84)
[ 5047.425060] [<c01014dc>] (gic_handle_irq) from [<c080c8cc>]
(__irq_svc+0x6c/0x90)
[ 5047.432546] Exception stack(0xef15df48 to 0xef15df90)
[ 5047.437606] df40:                   00000000 ef7cc3c0 00512f92
c011a140 ef15c000 c0d02648
[ 5047.445792] df60: ef15c000 c0d95448 c0d025dc 00000008 00000000
ef15dfa4 ef15dfa8 ef15df98
[ 5047.453974] df80: c0108c6c c0108c70 600d0013 ffffffff
[ 5047.459041] [<c080c8cc>] (__irq_svc) from [<c0108c70>]
(arch_cpu_idle+0x48/0x4c)
[ 5047.466452] [<c0108c70>] (arch_cpu_idle) from [<c0170b54>]
(default_idle_call+0x30/0x3c)
[ 5047.474555] [<c0170b54>] (default_idle_call) from [<c0170da4>]
(cpu_startup_entry+0x244/0x298)
[ 5047.483179] [<c0170da4>] (cpu_startup_entry) from [<c010e6cc>]
(secondary_start_kernel+0x158/0x164)
[ 5047.492234] [<c010e6cc>] (secondary_start_kernel) from [<101018cc>]
(0x101018cc)
[ 5047.499635] CPU0: stopping
[ 5047.502356] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G      D
4.8.0+ #19
[ 5047.509582] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
[ 5047.516126] [<c0110cc4>] (unwind_backtrace) from [<c010c9d0>]
(show_stack+0x20/0x24)
[ 5047.523883] [<c010c9d0>] (show_stack) from [<c04939c8>]
(dump_stack+0x90/0xa4)
[ 5047.531116] [<c04939c8>] (dump_stack) from [<c010ebe8>]
(handle_IPI+0x2a4/0x2c4)
[ 5047.538521] [<c010ebe8>] (handle_IPI) from [<c01014dc>]
(gic_handle_irq+0x80/0x84)
[ 5047.546102] [<c01014dc>] (gic_handle_irq) from [<c080c8cc>]
(__irq_svc+0x6c/0x90)
[ 5047.553588] Exception stack(0xc0d01d78 to 0xc0d01dc0)
[ 5047.558645] 1d60:
    ee4dfae8 20070113
[ 5047.566831] 1d80: 00000730 000049db ee4dfa80 ef3d9de0 ee4dfae8
20070113 00000020 00000000
[ 5047.575016] 1da0: c0d0799c c0d01dd4 c0d01dd8 c0d01dc8 c05fdd00
c080c26c 60070113 ffffffff
[ 5047.583205] [<c080c8cc>] (__irq_svc) from [<c080c26c>]
(_raw_spin_unlock_irqrestore+0x30/0x34)
[ 5047.591839] [<c080c26c>] (_raw_spin_unlock_irqrestore) from
[<c05fdd00>] (sdhci_tasklet_finish+0xfc/0x234)
[ 5047.601507] [<c05fdd00>] (sdhci_tasklet_finish) from [<c012dfe8>]
(tasklet_action+0x68/0xf8)
[ 5047.609955] [<c012dfe8>] (tasklet_action) from [<c0101630>]
(__do_softirq+0x150/0x34c)
[ 5047.617892] [<c0101630>] (__do_softirq) from [<c012d9e0>]
(irq_exit+0xc8/0x128)
[ 5047.625218] [<c012d9e0>] (irq_exit) from [<c0181338>]
(__handle_domain_irq+0x70/0xc4)
[ 5047.633060] [<c0181338>] (__handle_domain_irq) from [<c01014a4>]
(gic_handle_irq+0x48/0x84)
[ 5047.641421] [<c01014a4>] (gic_handle_irq) from [<c080c8cc>]
(__irq_svc+0x6c/0x90)
[ 5047.648907] Exception stack(0xc0d01f08 to 0xc0d01f50)
[ 5047.653965] 1f00:                   00000000 ef79f3c0 00449df4
c011a140 c0d00000 c0d02648
[ 5047.662151] 1f20: c0d00000 c0d02540 c0d025dc 00000001 ef7db300
c0d01f64 c0d01f68 c0d01f58
[ 5047.670333] 1f40: c0108c6c c0108c70 60070013 ffffffff
[ 5047.675399] [<c080c8cc>] (__irq_svc) from [<c0108c70>]
(arch_cpu_idle+0x48/0x4c)
[ 5047.682809] [<c0108c70>] (arch_cpu_idle) from [<c0170b54>]
(default_idle_call+0x30/0x3c)
[ 5047.690911] [<c0170b54>] (default_idle_call) from [<c0170da4>]
(cpu_startup_entry+0x244/0x298)
[ 5047.699533] [<c0170da4>] (cpu_startup_entry) from [<c0806eb8>]
(rest_init+0x84/0x88)
[ 5047.707292] [<c0806eb8>] (rest_init) from [<c0c00d34>]
(start_kernel+0x390/0x39c)
[ 5047.714786] ---[ end Kernel panic - not syncing: Attempted to kill
the idle task!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
