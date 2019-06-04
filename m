Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B72134768
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:59:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g2pNQJrESSEwL4WaSD549KNAKW7DqarpwNJ5uTaxlCE=; b=tkkSyYnfHy/w9r
	QPE8jdb1GodFy9RljsyGPwpRST7EOmy1GlpZK6k2onep99hZ1jbaLY/5au1vUYzM1LpeXpgklTXyi
	jrXx/mxRYp+BoX1zMc95uR2i9CDNP03tmZSOSqzJpLqBl4LVWlVXp2t+0XD8t2hokmEIYzEMm0rTZ
	vtxk+zRDwRyEk/qI3HSuXLyaWp/zBYU3EMA8dbi/oaDVR5DT2hT2C4DpERLhSEUCdG6SYDKT0MCMU
	QJCqoB1qhJ0nLnozCQvFiuWGTvap+Kw1vAadSRXcFV3iddleou3NKSdmMxgONEAWQaJ8Pk+uwSZ8+
	MiBoFTXY7wYaiZj8hhyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY91u-0002KC-7u; Tue, 04 Jun 2019 12:59:06 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY91o-0002J9-24
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:59:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3AB3AA78;
 Tue,  4 Jun 2019 05:58:55 -0700 (PDT)
Received: from [10.37.8.2] (unknown [10.37.8.2])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 79AAB3F690;
 Tue,  4 Jun 2019 05:58:53 -0700 (PDT)
To: linux-rt-users <linux-rt-users@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 kvmarm@lists.cs.columbia.edu
From: Julien Grall <julien.grall@arm.com>
Subject: KVM Arm Device passthrough and linux-rt
Message-ID: <26832850-37ee-ae07-08ca-cc3e90978867@arm.com>
Date: Tue, 4 Jun 2019 13:58:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_055900_122917_87F3FAD4 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Steven Rostedt <rostedt@goodmis.org>, julia@ni.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

While trying device passthrough on Linux-rt with KVM Arm, I had
the following splat.

[  363.410141] 000: BUG: sleeping function called from invalid context at kernel/locking/rtmutex.c:974
[  363.410150] 000: in_atomic(): 0, irqs_disabled(): 128, pid: 2916, name: qemu-system-aar
[  363.410153] 000: 4 locks held by qemu-system-aar/2916:
[  363.410157] 000:  #0: ffff8007bd248100 (&vcpu->mutex){+.+.}, at: kvm_vcpu_ioctl+0x70/0xae0
[  363.410171] 000:  #1: ffff8007bd1e2b20 (&kvm->irq_srcu){....}, at: kvm_notify_acked_irq+0x7c/0x300
[  363.410179] 000:  #2: ffff8007bd1e2b20 (&kvm->irq_srcu){....}, at: irqfd_resampler_ack+0x0/0xd8
[  363.410187] 000:  #3: ffff8007c2b27d28 (&ctx->wqh#2){+.+.}, at: eventfd_signal+0x24/0x78
[  363.410196] 000: irq event stamp: 4033894
[  363.410197] 000: hardirqs last  enabled at (4033893): [<ffff000011119400>] _raw_spin_unlock_irqrestore+0x88/0x90
[  363.410203] 000: hardirqs last disabled at (4033894): [<ffff0000100bed18>] kvm_arch_vcpu_ioctl_run+0x2a8/0xc08
[  363.410207] 000: softirqs last  enabled at (0): [<ffff0000100edde0>] copy_process.isra.1.part.2+0x8d8/0x1958
[  363.410212] 000: softirqs last disabled at (0): [<0000000000000000>]  (null)
[  363.410216] 000: CPU: 0 PID: 2916 Comm: qemu-system-aar Tainted: G        W       5.0.14-rt9-00013-g4b2a13c8a804 #84
[  363.410219] 000: Hardware name: AMD Seattle (Rev.B0) Development Board (Overdrive) (DT)
[  363.410221] 000: Call trace:
[  363.410222] 000:  dump_backtrace+0x0/0x158
[  363.410225] 000:  show_stack+0x14/0x20
[  363.410227] 000:  dump_stack+0xa0/0xd4
[  363.410230] 000:  ___might_sleep+0x16c/0x1f8
[  363.410234] 000:  rt_spin_lock+0x5c/0x70
[  363.410237] 000:  eventfd_signal+0x24/0x78
[  363.410238] 000:  irqfd_resampler_ack+0x94/0xd8
[  363.410241] 000:  kvm_notify_acked_irq+0xf8/0x300
[  363.410243] 000:  vgic_v2_fold_lr_state+0x174/0x1e0
[  363.410246] 000:  kvm_vgic_sync_hwstate+0x5c/0x2b8
[  363.410249] 000:  kvm_arch_vcpu_ioctl_run+0x624/0xc08
[  363.410250] 000:  kvm_vcpu_ioctl+0x3a0/0xae0
[  363.410252] 000:  do_vfs_ioctl+0xbc/0x910
[  363.410255] 000:  ksys_ioctl+0x78/0xa8
[  363.410257] 000:  __arm64_sys_ioctl+0x1c/0x28
[  363.410260] 000:  el0_svc_common+0x90/0x118
[  363.410263] 000:  el0_svc_handler+0x2c/0x80
[  363.410265] 000:  el0_svc+0x8/0xc

This is happening because vgic_v2_fold_lr_state() is expected
to be called with interrupt disabled. However, some of the path
(e.g eventfd) will take a spinlock.

The spinlock is from the waitqueue, so using a raw_spin_lock cannot
even be considered.

Do you have any input on how this could be solved?

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
