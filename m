Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55108E1D4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LeSIxElb8a37aH1BoeNjRjRM7txnmcvPd42RFqPO4mc=; b=C3DPLX9hQhopKx
	7gYJsdy+tCpQMyETuZjL/ehuv7IEduhXvRUV/u/Fp8Rdlk1nhGa00xdqRB4M5esE2G3mKi8Wiy2ri
	sI0djVrxXbM1a3+Lva1gqDGDlGS/P5ZZ4mc7aiykxSlns3B40gXtvSODgmRAJgn+ztWIdGuWKTgPx
	/dp8vT1HGA5leG1tWiHtp+RTlTx+EbaQ33nNsE7OW3+YsYJI94BXgOLjxzl9IwOgcR5u4uRxUgCV1
	abAP8wry9inBr3LBABIacFyjOFNdBEnaFImPQmFy04pD6SukgrHf73Mnf8Wge+XrKAVd2TfKMPbk/
	tAEwii/oGN5sHbF+ezIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNH29-0005iN-1D; Wed, 23 Oct 2019 13:50:41 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNH1x-0005aa-3k
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:50:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9FA494A7;
 Wed, 23 Oct 2019 06:50:17 -0700 (PDT)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C3E743F71F;
 Wed, 23 Oct 2019 06:50:15 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v7 00/10] arm64: Stolen time support
To: Marc Zyngier <maz@kernel.org>
References: <20191021152823.14882-1-steven.price@arm.com>
 <f0d79362ab994e269680fba75f913044@www.loen.fr>
Message-ID: <5b3968d8-9a5a-ee9d-70b3-436dc052dd0a@arm.com>
Date: Wed, 23 Oct 2019 14:50:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <f0d79362ab994e269680fba75f913044@www.loen.fr>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_065029_238100_D1779BE2 
X-CRM114-Status: GOOD (  25.25  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/10/2019 13:39, Marc Zyngier wrote:
> Hi Steven,
> 
> On 2019-10-21 16:28, Steven Price wrote:
>> This series add support for paravirtualized time for arm64 guests and
>> KVM hosts following the specification in Arm's document DEN 0057A:
>>
>> https://developer.arm.com/docs/den0057/a
>>
>> It implements support for stolen time, allowing the guest to
>> identify time when it is forcibly not executing.
>>
>> Note that Live Physical Time (LPT) which was previously part of the
>> above specification has now been removed.
>>
>> Also available as a git tree:
>> git://linux-arm.org/linux-sp.git stolen_time/v7
> 
> Can you please point me to userspace patches that I could apply to
> kvmtool? I'd like to give this series a go as part of my normal testing.

I don't have a proper patch yet, but the below is what I've been testing
with (this breaks with kernels without PV-time).

Steve

----8<----
From 8f6540cfbe2842f3ee422c07fbd1f590534cc90a Mon Sep 17 00:00:00 2001
From: Steven Price <steven.price@arm.com>
Date: Thu, 8 Nov 2018 13:43:56 +0000
Subject: [PATCH kvmtool] ARM PV time support

Signed-off-by: Steven Price <steven.price@arm.com>
---
 Makefile                 |  2 +-
 arm/kvm-cpu.c            |  4 ++++
 arm/pvtime.c             | 47 ++++++++++++++++++++++++++++++++++++++++
 include/kvm/arm-pvtime.h |  6 +++++
 4 files changed, 58 insertions(+), 1 deletion(-)
 create mode 100644 arm/pvtime.c
 create mode 100644 include/kvm/arm-pvtime.h

diff --git a/Makefile b/Makefile
index 3862112..a79956b 100644
--- a/Makefile
+++ b/Makefile
@@ -158,7 +158,7 @@ endif
 # ARM
 OBJS_ARM_COMMON		:= arm/fdt.o arm/gic.o arm/gicv2m.o arm/ioport.o \
 			   arm/kvm.o arm/kvm-cpu.o arm/pci.o arm/timer.o \
-			   arm/pmu.o
+			   arm/pmu.o arm/pvtime.o
 HDRS_ARM_COMMON		:= arm/include
 ifeq ($(ARCH), arm)
 	DEFINES		+= -DCONFIG_ARM
diff --git a/arm/kvm-cpu.c b/arm/kvm-cpu.c
index 7780251..c903b05 100644
--- a/arm/kvm-cpu.c
+++ b/arm/kvm-cpu.c
@@ -1,5 +1,6 @@
 #include "kvm/kvm.h"
 #include "kvm/kvm-cpu.h"
+#include "kvm/arm-pvtime.h"
 
 static int debug_fd;
 
@@ -122,6 +123,9 @@ struct kvm_cpu *kvm_cpu__arch_init(struct kvm *kvm, unsigned long cpu_id)
 	vcpu->cpu_compatible	= target->compatible;
 	vcpu->is_running	= true;
 
+	if (pvtime_vcpu_init(vcpu))
+		die("Unable to initialise pvtime");
+
 	return vcpu;
 }
 
diff --git a/arm/pvtime.c b/arm/pvtime.c
new file mode 100644
index 0000000..fc152d3
--- /dev/null
+++ b/arm/pvtime.c
@@ -0,0 +1,47 @@
+#include "kvm/kvm.h"
+#include "kvm/kvm-cpu.h"
+#include "kvm/arm-pvtime.h"
+
+#define PVTIME_BASE 0x10000000
+
+#define KVM_ARM_VCPU_PVTIME_CTRL	2
+#define   KVM_ARM_VCPU_PVTIME_IPA	0
+
+static int pvtime_init(struct kvm *kvm)
+{
+	char *mem;
+	int size = ALIGN(64 * kvm->cfg.nrcpus, PAGE_SIZE);
+
+	mem = mmap(NULL, size, PROT_RW, MAP_ANON_NORESERVE, -1, 0);
+	if (mem == MAP_FAILED)
+		return -ENOMEM;
+
+	if (kvm__register_dev_mem(kvm, PVTIME_BASE, size, mem))
+		return -EINVAL;
+
+	return 0;
+}
+
+base_init(pvtime_init);
+
+int pvtime_vcpu_init(struct kvm_cpu *vcpu)
+{
+	int err;
+	u64 st_paddr = PVTIME_BASE;
+
+	st_paddr += vcpu->cpu_id * 64;
+
+	struct kvm_device_attr st_base = {
+		.group = KVM_ARM_VCPU_PVTIME_CTRL,
+		.attr = KVM_ARM_VCPU_PVTIME_IPA,
+		.addr = (u64)&st_paddr
+	};
+
+	err = ioctl(vcpu->vcpu_fd, KVM_SET_DEVICE_ATTR, &st_base);
+	if (err) {
+		perror("ioctl st_base failed");
+		return err;
+	}
+
+	return 0;
+}
diff --git a/include/kvm/arm-pvtime.h b/include/kvm/arm-pvtime.h
new file mode 100644
index 0000000..f5db286
--- /dev/null
+++ b/include/kvm/arm-pvtime.h
@@ -0,0 +1,6 @@
+#ifndef ARM_PVTIME_H
+#define ARM_PVTIME_H
+
+int pvtime_vcpu_init(struct kvm_cpu *vcpu);
+
+#endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
