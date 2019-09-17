Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B0BB454E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 03:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FR24XT3PJv07MWnbnI2CMpUbZESHsgu/Zam038qPvLI=; b=EJf5UQrg/f9WlE
	F56BssDm0X2s0fo//qiomqb29Mn9kiXnUrtsBPaR9KaurXnCR/ZZHfGB9D3sEF1oe9vciLdE47y/q
	z9gHXAvFLIr8wzZlJy+pivUlFh4qptBE0KZsSASeE5FKt1Tqm5tm2hlOOe68RXMOdlmvB9JcFMe7u
	A6PYi/leUzF3V39kwYOOBpJFFRcRAreQy6ulZimUlA4nQGlNbvmyl9HEdgTbgmBaDMjROcjaLrGXo
	KW9c9nQiQN/Sm1xqDIatOr7laAMhcd5Wzi6pj6wt54DHxrdHc7Hfal9FHkotVW1RwteLF5OKbaiOn
	AqWz6Ir8DEBLC3uBII8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA2Wy-0008Eo-Kh; Tue, 17 Sep 2019 01:43:48 +0000
Received: from mail.xogium.me ([107.167.81.91])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA2Wd-0008EX-49
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 01:43:28 +0000
Received: from localhost (104-244-69-12.cpe.axion.ca [104.244.69.12])
 by mail.xogium.me (Postfix) with ESMTPSA id 28789F40085;
 Mon, 16 Sep 2019 21:35:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=xogium.me;
 s=xogium-mail; t=1568684137;
 bh=HwqrtRrdmdbAQR7ErwxW+PpTV8WVG52ZqlojX6iGKBI=;
 h=Date:Cc:From:To:Subject;
 b=YWrecy/UaXFpEgq+iZgBUm0h06i6KE9DV2geHYN2f2AV3agv8AJY91uOKPlcQK04q
 qvrjQjxRyTTV6KR7ecOICd4gV3mbltqkeENIW2nIQMuHJz5xZVE7NXoiWCekkyYn6t
 QPowb3DfCYJnDN02ODBIVDGbkSVPdppz1Fyb4TfXziu9OExK/U6ANu5uyQaNmxkWe2
 RrJ8fGBWBYcjQCCqrRmTgyOu47k2MIgGAuAtK933NwNHhELj/pmFh/vt5Jy4SHqp1d
 D3GU7fpJXcemrMlt3r5XIWg/40wk1KgCvdAizauxv1IZmIZXXVlMoguKgSOw8QCCLf
 hdcyA7D6T3JuA==
Date: Mon, 16 Sep 2019 21:35:36 -0400
From: "Xogium" <contact@xogium.me>
To: <linux-arm-kernel@lists.infradead.org>
Subject: [breakage] panic() does not halt arm64 systems under certain
 conditions
Message-Id: <BX1W47JXPMR8.58IYW53H6M5N@dragonstone>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_184327_214761_2A1654E4 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On arm64 in some situations userspace will continue running even after a panic. This means any userspace watchdog daemon will continue pinging, that service 
managers will keep running and displaying messages in certain cases, and that it is possible to enter via ssh in the now unstable system and to do almost 
anything except reboot/power off and etc. If CONFIG_PREEMPT=n is set in the kernel's configuration, the issue is fixed. I have reproduced the very same behavior 
with linux 4.19, 5.2 and 5.3. On x86/x86_64 the issue does not seem to be present at all. Also, kernels without commit 8341f2f222d729688014ce8306727fdb9798d37e 
don't trigger a broken panic using 'echo c > /proc/sysrq-trigger', instead they call die() through the memory manager which works as intended, because it causes 
an oops which ends in a panic, and don't call the panic() function directly. By patching the poweroff sysrq-trigger to panic i can confirm the issue is 
definitely present in kernel 4.19 on qemu. On actual hardware I used a marvell ESPRESSOBin with linux 5.2.14. The issue seemed to be quite random at first, but 
it can be triggered 100% of the time by adding nosmp on the kernel command line. Also if e.g: panic=30 is added on the kernel command line, the problem is also 
worked around and disappears entirely, using nosmp or not.

The easiest way to reproduce this is using qemu and this initramfs containing busybox and the following init script:

    #!/bin/sh
    busybox mkdir /proc
    busybox mount -t proc none /proc
    # Launch some programs to run in the background
    while true; do echo "Ping 1!"; busybox sleep 1; done >/dev/console&
    while true; do echo "Ping 2!"; busybox sleep 2; done >/dev/console&
    echo c > /proc/sysrq-trigger
    # Nothing should be running from here on out
    echo "Running a shell now!"
    exec busybox sh

A copy of the initramfs and a 5.2 arm64 defconfig kernel can be found at:
http://novena.jookia.org/arm64bug/mycpio
http://novena.jookia.org/arm64bug/Image

You can run it in qemu using:
qemu-system-aarch64 -machine virt-4.0 -cpu cortex-a53 -m 256 -kernel Image -initrd mycpio -nographic

As an example, running it with linux 5.2.15 with the arm64 defconfig in qemu gives this:

    [    1.841502] Run /init as init process
    [    1.970386] sysrq: Trigger a crash
    [    1.970967] Kernel panic - not syncing: sysrq triggered crash
    [    1.971693] CPU: 0 PID: 1 Comm: init Not tainted 5.2.15 #1
    [    1.972096] Hardware name: linux,dummy-virt (DT)
    [    1.972661] Call trace:
    [    1.972919]  dump_backtrace+0x0/0x148
    [    1.973271]  show_stack+0x14/0x20
    [    1.973472]  dump_stack+0xa0/0xc4
    [    1.973699]  panic+0x140/0x32c
    [    1.973897]  sysrq_handle_reboot+0x0/0x20
    [    1.974161]  __handle_sysrq+0x124/0x190
    [    1.974422]  write_sysrq_trigger+0x64/0x88
    [    1.974715]  proc_reg_write+0x60/0xa8
    [    1.974973]  __vfs_write+0x18/0x40
    [    1.975224]  vfs_write+0xa4/0x1b8
    [    1.975474]  ksys_write+0x64/0xf0
    [    1.975739]  __arm64_sys_write+0x14/0x20
    [    1.976021]  el0_svc_common.constprop.0+0xb0/0x168
    [    1.976375]  el0_svc_handler+0x28/0x78
    [    1.976661]  el0_svc+0x8/0xc
    [    1.977383] Kernel Offset: disabled
    [    1.977895] CPU features: 0x0002,24002004
    [    1.978241] Memory Limit: none
    [    1.979169] ---[ end Kernel panic - not syncing: sysrq triggered crash ]---
    Ping 2!
    Ping 1!
    Ping 1!
    Ping 2!


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
