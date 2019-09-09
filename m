Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97979AD8A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 14:14:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dOFPgFttFQe/+cMAO1pl7lpX5eYs1fmSHR9YJWmbKQs=; b=BLg
	1sGb1IIt44W3ULv+YVtvqOOotcfMpV7Yc1W/5P19QOyYQ0ym6+LS2O/bowWQ6UeLkVzId83j/kXa6
	I7EnUbR3M07QAzbxvq/O4QRhEbbpzuup0KVZuMTUQMLrOG8T9j9cheZJRDsv88lFc9qLampJNzrZe
	ocp+guRN0xoJupl0r9Om+6aiChgUbLJTnXj86Q7bo+vI1EM1chptk6+Su9FQCh+ntwbnQmVelCqac
	6w7GpC5KIcJFoz1IO/11F9suc/8NqI6m4hBpTi5zaOUqX6sSJrs7IvpA7rF5dCKd659gpf5/KmRMq
	gUgoHnnm2toI35gUjl63csqo986qQaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7IYT-0006WL-2z; Mon, 09 Sep 2019 12:14:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7IYF-0006Oc-BO
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 12:13:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4332628;
 Mon,  9 Sep 2019 05:13:44 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 93BF93F59C;
 Mon,  9 Sep 2019 05:13:41 -0700 (PDT)
From: Christoffer Dall <christoffer.dall@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH 0/2] Improve handling of stage 2 aborts without instruction
 decode
Date: Mon,  9 Sep 2019 14:13:32 +0200
Message-Id: <20190909121337.27287-1-christoffer.dall@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_051347_448414_D3C7E51C 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 =?UTF-8?q?Daniel=20P=2E=20Berrang=C3=A9?= <berrange@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Stefan Hajnoczi <stefanha@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, Alexander Graf <graf@amazon.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a guest accesses memory outside the memory slots, KVM usually
bounces the access back to userspace with KVM_EXIT_MMIO.  However, on
arm/arm64 systems, certain load/store instructions did not provide
decoding info for the hypervisor to emulate the instruction, and in this
case KVM has rather rudely returned -ENOSYS and printed a not overly
helpful error message:

  load/store instruction decoding not implemented

This patch series improves the error message and allows userspace to be
notified of this event instead of receiving -ENOSYS, and also allows
userspace to ask KVM to inject an external abort to the guest, which it
can use for any memory access that it either cannot handle.

One remaining case which this patch set does not address is if the guest
accesses an in-kernel emulated device, such as the VGIC, but using a
load/store instruction which doesn't provide decode info.  With these
patches, this will return to userspace for it to handle, but there's no
way for userspace to return the decoding information to KVM and have KVM
complete the access to the in-kernel emulated device.  I have no plans
to address this limitation.

Christoffer Dall (2):
  KVM: arm/arm64: Allow reporting non-ISV data aborts to userspace
  KVM: arm/arm64: Allow user injection of external data aborts

 Documentation/virt/kvm/api.txt       | 44 +++++++++++++++++++++++++++-
 arch/arm/include/asm/kvm_arm.h       |  2 ++
 arch/arm/include/asm/kvm_emulate.h   |  5 ++++
 arch/arm/include/asm/kvm_host.h      |  8 +++++
 arch/arm/include/uapi/asm/kvm.h      |  3 +-
 arch/arm/kvm/guest.c                 |  3 ++
 arch/arm64/include/asm/kvm_emulate.h |  5 ++++
 arch/arm64/include/asm/kvm_host.h    |  8 +++++
 arch/arm64/include/uapi/asm/kvm.h    |  3 +-
 arch/arm64/kvm/guest.c               |  3 ++
 arch/arm64/kvm/inject_fault.c        |  4 +--
 include/uapi/linux/kvm.h             |  8 +++++
 virt/kvm/arm/arm.c                   | 22 ++++++++++++++
 virt/kvm/arm/mmio.c                  | 11 +++++--
 14 files changed, 122 insertions(+), 7 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
