Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700DD4CCD3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 13:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MdyZ6AHdwdYH0yhmorD3K+1zOzJzt+besZ/sauEBsKw=; b=uGtgylFwmar1cb
	Y5O72+TOs1vyppQ1sgHnPH/ZwL2waN1vyAwbMyryH/SvWOlhhAvbkrb9Ii072RTWwCyy643f93uj9
	KzKRRc/TpjO7XGA8j88UtU5VmuV2NBcdr1uGfaGwjBLz4qJ8SRnPSvJQzKTe0yFinKFSLuX5DsBYC
	Dfvl4LrY/glDvAoHLe8TpdU5r8Ufd1ostfeDo3I8PCfSUVJ2Ex++LhEUPG9iqudYP07dC4AeGhNwy
	Vxw0W6kQ28Lx1rIefUDKCcm8W1s6l2mObx4kgAX9XNRUETA8OjSos5tfxPXEGzXfIZwaCVKoSK8VV
	SjN98LWYO3G2C9N9qkkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdvA7-0002RT-3f; Thu, 20 Jun 2019 11:23:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdv9s-0002QB-FS
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 11:23:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 26A53360;
 Thu, 20 Jun 2019 04:23:11 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A77BC3F718;
 Thu, 20 Jun 2019 04:23:09 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [GIT PULL] KVM/arm fixes for 5.2-rc6
Date: Thu, 20 Jun 2019 12:22:57 +0100
Message-Id: <20190620112301.138137-1-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_042312_568221_E13CCD53 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
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
Cc: Andrew Jones <drjones@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Julien Thierry <julien.thierry@arm.com>, kvmarm@lists.cs.columbia.edu,
 James Morse <james.morse@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Paolo, Radim,

Here's the second (and hopefully last) set of fixes for v5.2. We have
our usual timer fix (we obviously will never get it right), a memory
leak plug, a sysreg reporting fix, and an small SVE cleanup.

Please pull.

	M.

The following changes since commit 623e1528d4090bd1abaf93ec46f047dee9a6fb32:

  KVM: arm/arm64: Move cc/it checks under hyp's Makefile to avoid instrumentation (2019-05-24 14:53:20 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-for-5.2-2

for you to fetch changes up to e4e5a865e9a9e8e47ac1959b629e9f3ae3b062f2:

  KVM: arm/arm64: Fix emulated ptimer irq injection (2019-06-19 15:47:52 +0100)

----------------------------------------------------------------
KVM/arm fixes for 5.2, take #2

- SVE cleanup killing a warning with ancient GCC versions
- Don't report non-existent system registers to userspace
- Fix memory leak when freeing the vgic ITS
- Properly lower the interrupt on the emulated physical timer

----------------------------------------------------------------
Andrew Jones (1):
      KVM: arm/arm64: Fix emulated ptimer irq injection

Dave Martin (2):
      KVM: arm64: Filter out invalid core register IDs in KVM_GET_REG_LIST
      KVM: arm/arm64: vgic: Fix kvm_device leak in vgic_its_destroy

Viresh Kumar (1):
      KVM: arm64: Implement vq_present() as a macro

 arch/arm64/kvm/guest.c       | 65 +++++++++++++++++++++++++++++---------------
 virt/kvm/arm/arch_timer.c    |  5 ++--
 virt/kvm/arm/vgic/vgic-its.c |  1 +
 3 files changed, 47 insertions(+), 24 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
