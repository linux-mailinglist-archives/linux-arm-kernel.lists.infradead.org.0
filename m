Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF411DA483
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 00:25:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l72EhHh3flEIsFiIcxpIyVNPIZXGQZ6hrVPgiNd7iIk=; b=mrBsSRaAm4pHFV2qdKoN3tVU0A
	Sitd+26/r06laB4uVJYM0V00yjPc2TS+wCRK2ag+JQoecybmJbCKN1vXbciWyp1mH/K2TDVFH1UjO
	PIBpU/In/s/bPZTdGKNmLqivm8+V1Xsf+PixJXZ67MOKwPF/HDy8Eq3OEHCtoyLbBJcbBALymLmte
	rQNT7LZ+MtNij03kCZkbRkFb7t2p88j+k5W65DjjxMQzLI0zugHWewL5NLCnt4FWzbzPlPjOIY7uQ
	RKSzOU21YsZnXNmVYryRkiLOOsmjSH7kOMvN2F+oXe+RnQA66SMh8EYYEj2dD9vL6daLEvAXeuvP4
	4C8IimWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbAgD-0000PT-Vv; Tue, 19 May 2020 22:25:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbAfv-0000Gs-11
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 22:25:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A823330E;
 Tue, 19 May 2020 15:25:22 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 575523F52E;
 Tue, 19 May 2020 15:25:21 -0700 (PDT)
References: <20200519161755.209565-1-maz@kernel.org>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 00/11] arm/arm64: Turning IPIs into normal interrupts
In-reply-to: <20200519161755.209565-1-maz@kernel.org>
Date: Tue, 19 May 2020 23:25:14 +0100
Message-ID: <jhja723r29h.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_152527_171717_6E3B5C0C 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sumit Garg <sumit.garg@linaro.org>, kernel-team@android.com,
 Russell King <linux@arm.linux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Marc,

On 19/05/20 17:17, Marc Zyngier wrote:
>
> This has been tested on a bunch of 32 and 64bit guests.
>

I gave this a brief spin on Juno and on HiKey960, nothing to report there.

FWIW I'd like to stare a bit at the rest; I already have a rookie question
on the accounting, but the rest will be for after I get some sleep, and
maybe even a mug of coffee :-)

> Marc Zyngier (11):
>   genirq: Add fasteoi IPI flow
>   genirq: Allow interrupts to be excluded from /proc/interrupts
>   arm64: Allow IPIs to be handled as normal interrupts
>   ARM: Allow IPIs to be handled as normal interrupts
>   irqchip/gic-v3: Describe the SGI range
>   irqchip/gic-v3: Configure SGIs as standard interrupts
>   irqchip/gic: Refactor SMP configuration
>   irqchip/gic: Configure SGIs as standard interrupts
>   irqchip/gic-common: Don't enable SGIs by default
>   irqchip/bcm2836: Configure mailbox interrupts as standard interrupts
>   arm64: Kill __smp_cross_call and co
>
>  arch/arm/Kconfig                  |   1 +
>  arch/arm/include/asm/smp.h        |   5 +
>  arch/arm/kernel/smp.c             |  97 +++++++++++---
>  arch/arm64/Kconfig                |   1 +
>  arch/arm64/include/asm/irq_work.h |   4 +-
>  arch/arm64/include/asm/smp.h      |   6 +-
>  arch/arm64/kernel/smp.c           |  98 +++++++++++----
>  drivers/irqchip/irq-bcm2836.c     | 151 ++++++++++++++++++----
>  drivers/irqchip/irq-gic-common.c  |   3 -
>  drivers/irqchip/irq-gic-v3.c      | 109 ++++++++++------
>  drivers/irqchip/irq-gic.c         | 203 ++++++++++++++++++------------
>  include/linux/irq.h               |   4 +-
>  kernel/irq/chip.c                 |  26 ++++
>  kernel/irq/debugfs.c              |   1 +
>  kernel/irq/proc.c                 |   2 +-
>  kernel/irq/settings.h             |   7 ++
>  16 files changed, 515 insertions(+), 203 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
