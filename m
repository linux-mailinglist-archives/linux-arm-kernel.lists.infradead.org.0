Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 342841D9C46
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gcsy6syFLfvxRprzHk9UdWFOfX4Gmgd8f1aha0UVrDg=; b=OeSdrcn2biQL4J
	9az5Rwlkv4YYtc0CzlPFQAyUxuE3K+Eqojsr1CO+MOWRW5CROujmU21osoPz4JBsWoh04+iLhrFV1
	DRXiad1eZ1fMUnGOlKuzKgaVAFHqKIsi5pITvBbGncq5ANXtZq8HcQl5B+lfA1VzVw411n/xLkjWc
	MazVIHb5j3Qhvfev1Tsar+oynQGM74RJZitVU29Y4umYjg+EGO4CqMSSkHu2663U9WMPu8VEaEtlx
	+NCU93ZdbJMO25WbtfaQsOTb3+Z+z/KvzHJ0IFjyLuSn9ORqmXr/a6qAg5dJ9jn2mXG7PCXyf45RH
	aJmBZA6Fi2LHaaVs7F3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4x0-0003IG-MP; Tue, 19 May 2020 16:18:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4wg-0003Ft-Db
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:18:24 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF6562075F;
 Tue, 19 May 2020 16:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905102;
 bh=43ce4nit21Yc0x0JFx+LHp0qLH0ptaBXuqqPGTS36WI=;
 h=From:To:Cc:Subject:Date:From;
 b=GSE28+0qDdPvn+rf3b26ijIH0PB2Tb3q5+F9sWRssg3xdF9sv0lalo/qRKmykHxeS
 KhFU+4/8EXjTGXmWxw9JicapnJA+T0/JffZjGLCZYinV+FFgX9jps8soazjO50Hnlw
 GZw95knVh1mAm0+XEU3AEGvckgqiyCxvDllzvipE=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jb4we-00Decy-9b; Tue, 19 May 2020 17:18:20 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 00/11] arm/arm64: Turning IPIs into normal interrupts
Date: Tue, 19 May 2020 17:17:44 +0100
Message-Id: <20200519161755.209565-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, will@kernel.org, catalin.marinas@arm.com,
 linux@arm.linux.org.uk, tglx@linutronix.de, jason@lakedaemon.net,
 sumit.garg@linaro.org, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_091822_497434_E1263D3E 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sumit Garg <sumit.garg@linaro.org>, kernel-team@android.com,
 Russell King <linux@arm.linux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For as long as SMP ARM has existed, IPIs have been handled as
something special. The arch code and the interrupt controller exchange
a couple of hooks (one to generate an IPI, another to handle it).

Although this is perfectly manageable, it prevents the use of features
that we could use if IPIs were Linux IRQs (such as pseudo-NMIs). It
also means that each interrupt controller driver has to follow an
architecture-specific interface instead of just implementing the base
irqchip functionnalities. The arch code also duplicates a number of
things that the core irq code already does (such as calling
set_irq_regs(), irq_enter()...).

This series tries to remedy this on arm/arm64 by offering a new
registration interface where the irqchip gives the arch code a range
of interrupts to use for IPIs. The arch code requests these as normal
interrupts.

The bulk of the work is at the interrupt controller level, where all 3
irqchips used on arm64 get converted.

Finally, the arm64 code drops the legacy registration interface. The
same thing could be done on 32bit as well once the two remaining
irqchips using that interface get converted.

There is probably more that could be done: statistics are still
architecture-private code, for example, and no attempt is made to
solve that (apart from hidding the IRQs from /proc/interrupt).

This has been tested on a bunch of 32 and 64bit guests.

Marc Zyngier (11):
  genirq: Add fasteoi IPI flow
  genirq: Allow interrupts to be excluded from /proc/interrupts
  arm64: Allow IPIs to be handled as normal interrupts
  ARM: Allow IPIs to be handled as normal interrupts
  irqchip/gic-v3: Describe the SGI range
  irqchip/gic-v3: Configure SGIs as standard interrupts
  irqchip/gic: Refactor SMP configuration
  irqchip/gic: Configure SGIs as standard interrupts
  irqchip/gic-common: Don't enable SGIs by default
  irqchip/bcm2836: Configure mailbox interrupts as standard interrupts
  arm64: Kill __smp_cross_call and co

 arch/arm/Kconfig                  |   1 +
 arch/arm/include/asm/smp.h        |   5 +
 arch/arm/kernel/smp.c             |  97 +++++++++++---
 arch/arm64/Kconfig                |   1 +
 arch/arm64/include/asm/irq_work.h |   4 +-
 arch/arm64/include/asm/smp.h      |   6 +-
 arch/arm64/kernel/smp.c           |  98 +++++++++++----
 drivers/irqchip/irq-bcm2836.c     | 151 ++++++++++++++++++----
 drivers/irqchip/irq-gic-common.c  |   3 -
 drivers/irqchip/irq-gic-v3.c      | 109 ++++++++++------
 drivers/irqchip/irq-gic.c         | 203 ++++++++++++++++++------------
 include/linux/irq.h               |   4 +-
 kernel/irq/chip.c                 |  26 ++++
 kernel/irq/debugfs.c              |   1 +
 kernel/irq/proc.c                 |   2 +-
 kernel/irq/settings.h             |   7 ++
 16 files changed, 515 insertions(+), 203 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
