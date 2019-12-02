Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EDB10F1CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 21:56:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5oQT939wER4KK6CnKbO0E6ST5AyF0re17hoMCvQKBWk=; b=n0V4Bpraobx+EM
	jSNeYBeDrEmzjNWn23WzMXKimMBgIDLJMFaq3XfINUQWIzQq4GF+uEbdWirQo8J/vxYXW0OjRk6b5
	VFbPFFMvJUgnLbFwGBwvj4gDrog+7spZl24iujlAbP+S6wG1BFTdGIOqgtd0wlxTyxkRGSbYbRWiW
	FpPRR1OlnUV+7f4k0aUL/8uNy7dXpIp/lQDpLjRdjNX1b+JB5oT4rc3siMrl0l3FnwSbnbDnH9gAP
	qgmnoF7J9H8safI0yxnm6uyDm+XFzy6kWB4GVHiLa6Buk7PYU/TtIIH+kXHexBqipcSleaDFnJR/s
	x1XYKLPM+4hK6TO43Dfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibsjr-00083O-54; Mon, 02 Dec 2019 20:56:11 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibsjj-00082d-2F
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 20:56:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id k8so1116683ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 12:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QIgK+qLVKHEPf2GTuMENB+nRIVr2Ql/OCehx7GWCa94=;
 b=mwqstke+n9nUybRRqZG0lOjCFLx6TvuA/Lyb6HoNwtEZDdzCaj3woRN3Dk4gth9NDM
 ChsNH2IQfu1Qz9+fTYJJhWwHLFc7Q/73OXDvQG8pFjxAtWr+gV8vS3KHpPokdEssEnhr
 T1nJZnsRcLjf+Fl0D1jcfd8IEnh3EdOiMmdGepXEeRSq+0qLULX67thLzJD1DvniZuJY
 t9z/G/PdgtDFCmK10/jQajozvsDxN/skZRfQHhw/UjLuAu0GgWnTkqT0/ggemHhmRGCg
 iWHUl8IRch1jGNUlWJq+9BlWl26WnRJbBLhXnMePKPGxYRk69xhNpE7456hIEpIaxK9C
 exJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QIgK+qLVKHEPf2GTuMENB+nRIVr2Ql/OCehx7GWCa94=;
 b=BqphODMjUXj3IGAH6Zdfw63x4SeAv0UJz8rsOq3a9qo1nJ/k4h1oP8F4O7kr//SJr1
 L7Pls0AO2Z11Pz9/AsNW9BZzgH/hJMyOxlV3y4pA1JJd0BGDZ3bPEsZCm40Fwv1Quiad
 X2LEG/7XHnZii/qEJ0b4SURsAunxnQRspgqLh68jcPuioVc2okERL3ClMIO5RJLQVoYT
 ubAn6C9OihKW0QtD9NUyFcuzMkTrTusCm9pxTrdkthaReOVS0pdarxVdD1pInDk+xpzP
 iNJE8YX3QXfnbJieWoVZnTnBc9NAaDQuS+3VH69QL3AiZP3jjuk+U3XmO/mO9YZhxb4P
 0rKg==
X-Gm-Message-State: APjAAAWuNEmXQ7gMyTtONbzrBgsNn5rIdGCUZGqezUwjC+2G3mtzTJPB
 hcrH9HCg8qewPl9R9afhNtpIw61bKOnCtI0A9EC09g==
X-Google-Smtp-Source: APXvYqwKs2oLpwHS6CvPt1vUwO8OaI/r8biQO3wXlD/aPSYj4v7+MvAIKX6bD3QUq+ClFXHb8EAWOlEucuU27pCnUV8=
X-Received: by 2002:a2e:6e10:: with SMTP id j16mr457354ljc.202.1575320160936; 
 Mon, 02 Dec 2019 12:56:00 -0800 (PST)
MIME-Version: 1.0
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
In-Reply-To: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 2 Dec 2019 17:56:15 -0300
Message-ID: <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
Subject: Re: iMX6/UART imprecise external abort
To: Andre Renaud <arenaud@designa-electronics.com>,
 Fugang Duan <fugang.duan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_125603_112165_F72DEFAB 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andre,

[Adding Andy]

On Mon, Dec 2, 2019 at 5:40 PM Andre Renaud
<arenaud@designa-electronics.com> wrote:
>
> Hello,
> I am working with an iMX6Q system that is exhibiting a crash when
> using the serial ports.
> We have /dev/ttymxc2 configured as an RS485 UART, and are seeing an
> 'imprecise external abort' after some time of use (panic listed
> below).
>
> We are able to replicate this both on the custom kernel we're using,
> as well as on the 5.3.x+fslc image from
> https://github.com/Freescale/linux-fslc

Could you please try a vanilla 5.4.1 kernel?

>
> To replicate it we have the mx6 hooked up to a PC, with each end
> sending short 3-4 character messages every second. The fault kicks in
> after about 15-30 minutes. This seems similar to the fault described
> here: https://lkml.org/lkml/2019/11/11/588. We have tried shutting
> down DMA and various performance/cpuidle systems, but that doesn't
> seem to have any impact.
>
> Does anyone have any thoughts on how to solve this?
>
> Regards,
> Andre
>
> [ 5047.074427] Unhandled fault: imprecise external abort (0x1406) at 0xb6e00f78
> [ 5047.081498] pgd = c0004000
> [ 5047.084213] [b6e00f78] *pgd=00000000
> [ 5047.087813] Internal error: : 1406 [#1] SMP ARM
> [ 5047.092348] Modules linked in:
> [ 5047.095429] CPU: 1 PID: 0 Comm: swapper/1 Not tainted 4.8.0+ #19
> [ 5047.101440] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
> [ 5047.107974] task: ef0ecd00 task.stack: ef158000
> [ 5047.112521] PC is at arch_cpu_idle+0x48/0x4c
> [ 5047.116799] LR is at arch_cpu_idle+0x44/0x4c
> [ 5047.121077] pc : [<c0108c70>]    lr : [<c0108c6c>]    psr: 60070013
> [ 5047.121077] sp : ef159f98  ip : ef159fa8  fp : ef159fa4
> [ 5047.132560] r10: 00000000  r9 : 00000002  r8 : c0d025dc
> [ 5047.137791] r7 : c0d95448  r6 : ef158000  r5 : c0d02648  r4 : ef158000
> [ 5047.144324] r3 : c011a140  r2 : 005bc18a  r1 : ef7ae3c0  r0 : 00000000
> [ 5047.150858] Flags: nZCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
> [ 5047.157998] Control: 10c5387d  Table: 3dd9804a  DAC: 00000051
> [ 5047.163748] Process swapper/1 (pid: 0, stack limit = 0xef158210)
> [ 5047.169759] Stack: (0xef159f98 to 0xef15a000)
> [ 5047.174124] 9f80:
>     ef159fb4 ef159fa8
> [ 5047.182310] 9fa0: c0170b54 c0108c34 ef159fdc ef159fb8 c0170da4
> c0170b30 c0a8fb48 c0d8b845
> [ 5047.190496] 9fc0: c0d8c48c c0d025dc 10c0387d c0d95448 ef159ff4
> ef159fe0 c010e6cc c0170b6c
> [ 5047.198682] 9fe0: 3f0fc06a 00000051 00000000 ef159ff8 101018cc
> c010e580 edddf4eb ffeebffd
> [ 5047.206887] [<c0108c70>] (arch_cpu_idle) from [<c0170b54>]
> (default_idle_call+0x30/0x3c)
> [ 5047.214993] [<c0170b54>] (default_idle_call) from [<c0170da4>]
> (cpu_startup_entry+0x244/0x298)
> [ 5047.223619] [<c0170da4>] (cpu_startup_entry) from [<c010e6cc>]
> (secondary_start_kernel+0x158/0x164)
> [ 5047.232677] [<c010e6cc>] (secondary_start_kernel) from [<101018cc>]
> (0x101018cc)
> [ 5047.240083] Code: e34c30d0 e5933014 e12fff33 f1080080 (e89da800)
> [ 5047.246190] ---[ end trace 853e028df8c9b7cd ]---
> [ 5047.250814] Kernel panic - not syncing: Attempted to kill the idle task!
> [ 5047.257528] CPU2: stopping
> [ 5047.260250] CPU: 2 PID: 0 Comm: swapper/2 Tainted: G      D
> 4.8.0+ #19
> [ 5047.267476] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
> [ 5047.274022] [<c0110cc4>] (unwind_backtrace) from [<c010c9d0>]
> (show_stack+0x20/0x24)
> [ 5047.281783] [<c010c9d0>] (show_stack) from [<c04939c8>]
> (dump_stack+0x90/0xa4)
> [ 5047.289019] [<c04939c8>] (dump_stack) from [<c010ebe8>]
> (handle_IPI+0x2a4/0x2c4)
> [ 5047.296426] [<c010ebe8>] (handle_IPI) from [<c01014dc>]
> (gic_handle_irq+0x80/0x84)
> [ 5047.304013] [<c01014dc>] (gic_handle_irq) from [<c080c8cc>]
> (__irq_svc+0x6c/0x90)
> [ 5047.311500] Exception stack(0xef15bf48 to 0xef15bf90)
> [ 5047.316561] bf40:                   00000000 ef7bd3c0 00729232
> c011a140 ef15a000 c0d02648
> [ 5047.324747] bf60: ef15a000 c0d95448 c0d025dc 00000004 00000000
> ef15bfa4 ef15bfa8 ef15bf98
> [ 5047.332930] bf80: c0108c6c c0108c70 60000013 ffffffff
> [ 5047.337999] [<c080c8cc>] (__irq_svc) from [<c0108c70>]
> (arch_cpu_idle+0x48/0x4c)
> [ 5047.345410] [<c0108c70>] (arch_cpu_idle) from [<c0170b54>]
> (default_idle_call+0x30/0x3c)
> [ 5047.353514] [<c0170b54>] (default_idle_call) from [<c0170da4>]
> (cpu_startup_entry+0x244/0x298)
> [ 5047.362137] [<c0170da4>] (cpu_startup_entry) from [<c010e6cc>]
> (secondary_start_kernel+0x158/0x164)
> [ 5047.371191] [<c010e6cc>] (secondary_start_kernel) from [<101018cc>]
> (0x101018cc)
> [ 5047.378593] CPU3: stopping
> [ 5047.381314] CPU: 3 PID: 0 Comm: swapper/3 Tainted: G      D
> 4.8.0+ #19
> [ 5047.388540] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
> [ 5047.395085] [<c0110cc4>] (unwind_backtrace) from [<c010c9d0>]
> (show_stack+0x20/0x24)
> [ 5047.402841] [<c010c9d0>] (show_stack) from [<c04939c8>]
> (dump_stack+0x90/0xa4)
> [ 5047.410073] [<c04939c8>] (dump_stack) from [<c010ebe8>]
> (handle_IPI+0x2a4/0x2c4)
> [ 5047.417479] [<c010ebe8>] (handle_IPI) from [<c01014dc>]
> (gic_handle_irq+0x80/0x84)
> [ 5047.425060] [<c01014dc>] (gic_handle_irq) from [<c080c8cc>]
> (__irq_svc+0x6c/0x90)
> [ 5047.432546] Exception stack(0xef15df48 to 0xef15df90)
> [ 5047.437606] df40:                   00000000 ef7cc3c0 00512f92
> c011a140 ef15c000 c0d02648
> [ 5047.445792] df60: ef15c000 c0d95448 c0d025dc 00000008 00000000
> ef15dfa4 ef15dfa8 ef15df98
> [ 5047.453974] df80: c0108c6c c0108c70 600d0013 ffffffff
> [ 5047.459041] [<c080c8cc>] (__irq_svc) from [<c0108c70>]
> (arch_cpu_idle+0x48/0x4c)
> [ 5047.466452] [<c0108c70>] (arch_cpu_idle) from [<c0170b54>]
> (default_idle_call+0x30/0x3c)
> [ 5047.474555] [<c0170b54>] (default_idle_call) from [<c0170da4>]
> (cpu_startup_entry+0x244/0x298)
> [ 5047.483179] [<c0170da4>] (cpu_startup_entry) from [<c010e6cc>]
> (secondary_start_kernel+0x158/0x164)
> [ 5047.492234] [<c010e6cc>] (secondary_start_kernel) from [<101018cc>]
> (0x101018cc)
> [ 5047.499635] CPU0: stopping
> [ 5047.502356] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G      D
> 4.8.0+ #19
> [ 5047.509582] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
> [ 5047.516126] [<c0110cc4>] (unwind_backtrace) from [<c010c9d0>]
> (show_stack+0x20/0x24)
> [ 5047.523883] [<c010c9d0>] (show_stack) from [<c04939c8>]
> (dump_stack+0x90/0xa4)
> [ 5047.531116] [<c04939c8>] (dump_stack) from [<c010ebe8>]
> (handle_IPI+0x2a4/0x2c4)
> [ 5047.538521] [<c010ebe8>] (handle_IPI) from [<c01014dc>]
> (gic_handle_irq+0x80/0x84)
> [ 5047.546102] [<c01014dc>] (gic_handle_irq) from [<c080c8cc>]
> (__irq_svc+0x6c/0x90)
> [ 5047.553588] Exception stack(0xc0d01d78 to 0xc0d01dc0)
> [ 5047.558645] 1d60:
>     ee4dfae8 20070113
> [ 5047.566831] 1d80: 00000730 000049db ee4dfa80 ef3d9de0 ee4dfae8
> 20070113 00000020 00000000
> [ 5047.575016] 1da0: c0d0799c c0d01dd4 c0d01dd8 c0d01dc8 c05fdd00
> c080c26c 60070113 ffffffff
> [ 5047.583205] [<c080c8cc>] (__irq_svc) from [<c080c26c>]
> (_raw_spin_unlock_irqrestore+0x30/0x34)
> [ 5047.591839] [<c080c26c>] (_raw_spin_unlock_irqrestore) from
> [<c05fdd00>] (sdhci_tasklet_finish+0xfc/0x234)
> [ 5047.601507] [<c05fdd00>] (sdhci_tasklet_finish) from [<c012dfe8>]
> (tasklet_action+0x68/0xf8)
> [ 5047.609955] [<c012dfe8>] (tasklet_action) from [<c0101630>]
> (__do_softirq+0x150/0x34c)
> [ 5047.617892] [<c0101630>] (__do_softirq) from [<c012d9e0>]
> (irq_exit+0xc8/0x128)
> [ 5047.625218] [<c012d9e0>] (irq_exit) from [<c0181338>]
> (__handle_domain_irq+0x70/0xc4)
> [ 5047.633060] [<c0181338>] (__handle_domain_irq) from [<c01014a4>]
> (gic_handle_irq+0x48/0x84)
> [ 5047.641421] [<c01014a4>] (gic_handle_irq) from [<c080c8cc>]
> (__irq_svc+0x6c/0x90)
> [ 5047.648907] Exception stack(0xc0d01f08 to 0xc0d01f50)
> [ 5047.653965] 1f00:                   00000000 ef79f3c0 00449df4
> c011a140 c0d00000 c0d02648
> [ 5047.662151] 1f20: c0d00000 c0d02540 c0d025dc 00000001 ef7db300
> c0d01f64 c0d01f68 c0d01f58
> [ 5047.670333] 1f40: c0108c6c c0108c70 60070013 ffffffff
> [ 5047.675399] [<c080c8cc>] (__irq_svc) from [<c0108c70>]
> (arch_cpu_idle+0x48/0x4c)
> [ 5047.682809] [<c0108c70>] (arch_cpu_idle) from [<c0170b54>]
> (default_idle_call+0x30/0x3c)
> [ 5047.690911] [<c0170b54>] (default_idle_call) from [<c0170da4>]
> (cpu_startup_entry+0x244/0x298)
> [ 5047.699533] [<c0170da4>] (cpu_startup_entry) from [<c0806eb8>]
> (rest_init+0x84/0x88)
> [ 5047.707292] [<c0806eb8>] (rest_init) from [<c0c00d34>]
> (start_kernel+0x390/0x39c)
> [ 5047.714786] ---[ end Kernel panic - not syncing: Attempted to kill
> the idle task!
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
