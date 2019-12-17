Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C141122DBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 14:58:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OrEhHKdW6VU8vwM84vdR7Eus2WBZ16JoTIEw05SXCrU=; b=Unsnz3VMYzYh0B
	0o41ToOJ23D2bEAzH5HIEeMO9OINWPjHFN2+PwwAchRrTsuOYlANmMRPaaRXk7gAMLKIXQJ8ax6jS
	S71A7vO+o0x1tVRoHQSbK/PO0JjZQ4IrMmPn84stZghddXK0IsZbchTWBJJ4R/asV4A0IRUX9WG5f
	/7gZ9PJbCE8xYxBfbc2Vdj7w5WmLIhV0N8pF6pLabl8BbqDa5rPpI4xU3YON4raBbWojDR55jRGQW
	g/AbAd5pUb0d6vWUFzz131RIZwY6NLnvuS5LK3JKDo+m7ASgBrFXhuVI6Ga0TRzI8JnUW0v9EbhKE
	EQ6/jCaT7wCeIOl/jQ7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDMZ-00029L-Hi; Tue, 17 Dec 2019 13:58:11 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDL8-0000tr-NS
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 13:56:46 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7104DDED043953C7AA42;
 Tue, 17 Dec 2019 21:56:30 +0800 (CST)
Received: from DESKTOP-1NISPDV.china.huawei.com (10.173.221.248) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Tue, 17 Dec 2019 21:56:21 +0800
From: <yezengruan@huawei.com>
To: <yezengruan@huawei.com>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <kvm@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <virtualization@lists.linux-foundation.org>
Subject: [PATCH 0/5] KVM: arm64: vcpu preempted check support
Date: Tue, 17 Dec 2019 21:55:44 +0800
Message-ID: <20191217135549.3240-1-yezengruan@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.221.248]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_055642_962963_710F1B8C 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 daniel.lezcano@linaro.org, linux@armlinux.org.uk, steven.price@arm.com,
 james.morse@arm.com, maz@kernel.org, will@kernel.org,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Zengruan Ye <yezengruan@huawei.com>

This patch set aims to support the vcpu_is_preempted() functionality
under KVM/arm64, which allowing the guest to obtain the vcpu is
currently running or not. This will enhance lock performance on
overcommitted hosts (more runnable vcpus than physical cpus in the
system) as doing busy waits for preempted vcpus will hurt system
performance far worse than early yielding.

We have observed some performace improvements in uninx benchmark tests.

unix benchmark result:
  host:  kernel 5.5.0-rc1, HiSilicon Kunpeng920, 8 cpus
  guest: kernel 5.5.0-rc1, 16 vcpus

               test-case                |    after-patch    |   before-patch
----------------------------------------+-------------------+------------------
 Dhrystone 2 using register variables   | 334600751.0 lps   | 335319028.3 lps
 Double-Precision Whetstone             |     32856.1 MWIPS |   32849.6 MWIPS
 Execl Throughput                       |      3662.1 lps   |    2718.0 lps
 File Copy 1024 bufsize 2000 maxblocks  |    432906.4 KBps  |  158011.8 KBps
 File Copy 256 bufsize 500 maxblocks    |    116023.0 KBps  |   37664.0 KBps
 File Copy 4096 bufsize 8000 maxblocks  |   1432769.8 KBps  |  441108.8 KBps
 Pipe Throughput                        |   6405029.6 lps   | 6021457.6 lps
 Pipe-based Context Switching           |    185872.7 lps   |  184255.3 lps
 Process Creation                       |      4025.7 lps   |    3706.6 lps
 Shell Scripts (1 concurrent)           |      6745.6 lpm   |    6436.1 lpm
 Shell Scripts (8 concurrent)           |       998.7 lpm   |     931.1 lpm
 System Call Overhead                   |   3913363.1 lps   | 3883287.8 lps
----------------------------------------+-------------------+------------------
 System Benchmarks Index Score          |      1835.1       |    1327.6

Zengruan Ye (5):
  KVM: arm64: Document PV-lock interface
  KVM: arm64: Implement PV_LOCK_FEATURES call
  KVM: arm64: Support pvlock preempted via shared structure
  KVM: arm64: Add interface to support vcpu preempted check
  KVM: arm64: Support the vcpu preemption check

 Documentation/virt/kvm/arm/pvlock.rst  | 31 +++++++++
 arch/arm/include/asm/kvm_host.h        | 13 ++++
 arch/arm64/include/asm/kvm_host.h      | 17 +++++
 arch/arm64/include/asm/paravirt.h      | 15 ++++
 arch/arm64/include/asm/pvlock-abi.h    | 16 +++++
 arch/arm64/include/asm/spinlock.h      |  7 ++
 arch/arm64/kernel/Makefile             |  2 +-
 arch/arm64/kernel/paravirt-spinlocks.c | 13 ++++
 arch/arm64/kernel/paravirt.c           | 95 +++++++++++++++++++++++++-
 arch/arm64/kernel/setup.c              |  2 +
 arch/arm64/kvm/Makefile                |  1 +
 include/linux/arm-smccc.h              | 13 ++++
 include/linux/cpuhotplug.h             |  1 +
 virt/kvm/arm/arm.c                     |  8 +++
 virt/kvm/arm/hypercalls.c              |  7 ++
 virt/kvm/arm/pvlock.c                  | 21 ++++++
 16 files changed, 260 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/virt/kvm/arm/pvlock.rst
 create mode 100644 arch/arm64/include/asm/pvlock-abi.h
 create mode 100644 arch/arm64/kernel/paravirt-spinlocks.c
 create mode 100644 virt/kvm/arm/pvlock.c

-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
