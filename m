Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C41CBCB3A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IePsnbOOwGm9JHq3Te/jDpPPqO8F6SHVFzYHsWe5xV4=; b=PYwJ+UHfAt0/tp
	o0TrnxF3PK01JYNfOBff3gMr7Nzin1WDLQy/xJp2G8mkvT8B4FnWnMOoOr9qA8OUOvBuGKzE7AuIe
	t0NaEhimYv3JnZWcRwGcgnFCoIv77AXo3czO8gT1tTBBih3Wdf3Em3fyGx91IX3oGDPaOm041vgQ8
	lECdArEFI5QhpdxZthXxO99jN7o4d+ekfobG5wKhnsoC/QEZsYGOc75x44LHBVTtUhd2QRAikmWcK
	tMAe3Co9IuQQr5yqEyc06r3fMi9sfl/2aFtr7G5OMBIROeMjl+SPbaZxULfbHN9es5NVPmiUd/UAC
	ldTOe77jPjd1lOKg3sHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmfL-00037f-E6; Tue, 24 Sep 2019 15:23:47 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmez-00030x-CL
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 15:23:27 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 4C7D13C505E55FB75118;
 Tue, 24 Sep 2019 23:23:22 +0800 (CST)
Received: from linux-Bxxcye.huawei.com (10.175.104.222) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Tue, 24 Sep 2019 23:23:13 +0800
From: Heyi Guo <guoheyi@huawei.com>
To: <qemu-arm@nongnu.org>, <qemu-devel@nongnu.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>
Subject: [RFC PATCH 00/12] Add SDEI support for arm64
Date: Tue, 24 Sep 2019 23:21:39 +0800
Message-ID: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.222]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_082325_738393_646A0263 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Marc Zyngier <marc.zyngier@arm.com>,
 James Morse <james.morse@arm.com>, Heyi Guo <guoheyi@huawei.com>,
 wanghaibin.wang@huawei.com, Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As promised, this is the first RFC patch set for arm64 SDEI support.
Key points:
- We propose to only support kvm enabled arm64 virtual machines, for
  non-kvm VMs can emulate EL3 and have Trusted Firmware run on it,
  which has a builtin SDEI dispatcher.
- New kvm capability KVM_CAP_FORWARD_HYPERCALL is added to probe if
  kvm supports forwarding hypercalls, and the capability should be
  enabled explicitly. PSCI can be set as exception for backward
  compatibility.
- We make the dispatcher as a logical device, to save the states
  during migration or save/restore operation; only one instance is
  allowed in one VM.
- We use qemu_irq as the bridge for other qemu modules to switch from
  irq injection to SDEI event trigger after VM binds the interrupt to
  SDEI event. We use qemu_irq_intercept_in() to override qemu_irq
  handler with SDEI event trigger, and a new interface
  qemu_irq_remove_intercept() is added to restore the handler to
  default one (i.e. ARM GIC).

More details are in the commit message of each patch.

Basic tests are done by emulating a watchdog timer and triggering SDEI
event in every 10s.

As this is the first rough RFC, please focus on the interfaces and
framework first. We can refine the code for several rounds after the
big things have been determined.

Please give your comments and suggestions.

Thanks,
HG

Cc: Peter Maydell <peter.maydell@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>

Heyi Guo (12):
  linux-headers: import arm_sdei.h
  arm/sdei: add virtual device framework
  arm/sdei: add support to handle SDEI requests from guest
  arm/sdei: add system reset callback
  arm/sdei: add support to trigger event by GIC interrupt ID
  core/irq: add qemu_irq_remove_intercept interface
  arm/sdei: override qemu_irq handler when binding interrupt
  arm/sdei: add support to register interrupt bind notifier
  linux-headers/kvm.h: add capability to forward hypercall
  arm/sdei: check KVM cap and enable SDEI
  arm/kvm: handle guest exit of hypercall
  virt/acpi: add SDEI table if SDEI is enabled

 hw/arm/virt-acpi-build.c       |   16 +
 hw/core/irq.c                  |   11 +
 include/hw/acpi/acpi-defs.h    |    5 +
 include/hw/irq.h               |    8 +-
 linux-headers/linux/arm_sdei.h |   73 ++
 linux-headers/linux/kvm.h      |    3 +
 target/arm/Makefile.objs       |    1 +
 target/arm/kvm.c               |   17 +
 target/arm/sdei.c              | 1518 ++++++++++++++++++++++++++++++++++++++++
 target/arm/sdei.h              |   60 ++
 target/arm/sdei_int.h          |  109 +++
 11 files changed, 1819 insertions(+), 2 deletions(-)
 create mode 100644 linux-headers/linux/arm_sdei.h
 create mode 100644 target/arm/sdei.c
 create mode 100644 target/arm/sdei.h
 create mode 100644 target/arm/sdei_int.h

-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
