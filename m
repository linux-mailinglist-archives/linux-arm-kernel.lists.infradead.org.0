Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C1BD3DEE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 13:07:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8PM6Ve+wyz5MNnr4gJdKJNHXRWcMBa5H9kchvC392Vs=; b=WvZ
	tLCQZE5Hp8CQPgD+m8xIenYtUMCGEoBjqmv274+lFq42FVUjXpa8ctYUMl/XqdTH4UnY/UlgvJ7ds
	Yog09bzrNrjJxt5qy7q86izlNjJza4+8r/SNeFPP2fOYFeglGmhVsPESylCLJjhBREP8NGMmoEoP1
	HbJPyyUIKK/w00ADDnP0YMoxr+Up1VOJKIFwKp5Aa4GkZb2uwpQNkCk/zECl3m2zfmfZ2rtiiAfce
	6fffgm2wXlqQuhJrYvC6Lr9sgYYwPwuDbQms7XAtbpe4pZeJjzntt6HIM/x5TWLRsqQKiVpEWsOMC
	H2xAdhpZGq7/JPufA6vvY329FR6T1Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsld-0000B1-54; Fri, 11 Oct 2019 11:07:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIslS-0000AE-DJ
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 11:07:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5EE6328;
 Fri, 11 Oct 2019 04:07:15 -0700 (PDT)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E66823F703;
 Fri, 11 Oct 2019 04:07:14 -0700 (PDT)
From: Christoffer Dall <christoffer.dall@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH v3 0/2] Improve handling of stage 2 aborts without instruction
 decode
Date: Fri, 11 Oct 2019 13:07:04 +0200
Message-Id: <20191011110709.2764-1-christoffer.dall@arm.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_040718_493372_6C7EF493 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Changes since v2:
 - Cleanup inconsistent use of has_ in patch 2 and allow injecting
   SError and external abort simultaenously with a single call to set
   VCPU events.

Changes since v1:
 - Rebased on v5.4-rc2
 - Fixed some documentation and coding nit in review of v1

Christoffer Dall (2):
  KVM: arm/arm64: Allow reporting non-ISV data aborts to userspace
  KVM: arm/arm64: Allow user injection of external data aborts

 Documentation/virt/kvm/api.txt       | 55 +++++++++++++++++++++++++++-
 arch/arm/include/asm/kvm_arm.h       |  1 +
 arch/arm/include/asm/kvm_emulate.h   |  5 +++
 arch/arm/include/asm/kvm_host.h      |  8 ++++
 arch/arm/include/uapi/asm/kvm.h      |  3 +-
 arch/arm/kvm/guest.c                 | 10 +++++
 arch/arm64/include/asm/kvm_emulate.h |  5 +++
 arch/arm64/include/asm/kvm_host.h    |  8 ++++
 arch/arm64/include/uapi/asm/kvm.h    |  3 +-
 arch/arm64/kvm/guest.c               | 10 +++++
 arch/arm64/kvm/inject_fault.c        |  4 +-
 include/uapi/linux/kvm.h             |  8 ++++
 virt/kvm/arm/arm.c                   | 22 +++++++++++
 virt/kvm/arm/mmio.c                  |  9 ++++-
 14 files changed, 145 insertions(+), 6 deletions(-)

-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
