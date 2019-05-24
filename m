Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 986F429A4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 16:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p6hn8wkSjenB+HSbi8W6z3v4MJStuGhZTc2eAHHoFkc=; b=cn12lySwlbqPeH
	GPyXjB6ZlAiiL3vFEayJaMbLaORtbhOlDJzlzz4JdLfb0kQhwqo931DfykjNT4SAew5RZ+uxpkOhO
	EkXNXRnJH6SkcehtTiDFjiF7CLrcT5lzpDqSGOJfhfyAAkCh8jPLIesNA3I2fkeEoks4PcApbxdKt
	hZEwWkUEVVgPntXoAT5PaBMTC/XJCfzLaWqTtBeFUwJHeUf/20DBbVwoJMtTlD0AcD8n/Y4GxsOW9
	XOOj2rfGlDl4s9Rgj+COz4lLkDM2JE0mzP9xWx21U/CrLNhJ0DIGK9W6HOJQgKI52u2RmTA53YwPS
	DNahFar3feIJkASt2kBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUBUM-0006Bl-91; Fri, 24 May 2019 14:48:06 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUBUF-0006BO-U7
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 14:48:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8594980D;
 Fri, 24 May 2019 07:47:59 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB7E23F575;
 Fri, 24 May 2019 07:47:57 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [GIT PULL] KVM/arm updates for 5.2-rc2
Date: Fri, 24 May 2019 15:47:42 +0100
Message-Id: <20190524144745.227242-1-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_074759_974717_87E4F339 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Julien Thierry <julien.thierry@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Paolo, Radim,

This is the first batch of KVM/arm fixes for 5.2. The biggest item on
the menu is Christoffer removing himself from the MAINTAINERS
file. He'll be missed. The rest is a set of fixes moving some code
around to prevent KASAN and co from crashing the kernel on non-VHE
systems.

Please pull,

	M.

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-for-5.2

for you to fetch changes up to 623e1528d4090bd1abaf93ec46f047dee9a6fb32:

  KVM: arm/arm64: Move cc/it checks under hyp's Makefile to avoid instrumentation (2019-05-24 14:53:20 +0100)

----------------------------------------------------------------
KVM/arm updates for 5.2-rc2

- Correctly annotate HYP-callable code to be non-traceable
- Remove Christoffer from the MAINTAINERS file as his request

----------------------------------------------------------------
Christoffer Dall (1):
      MAINTAINERS: KVM: arm/arm64: Remove myself as maintainer

James Morse (2):
      KVM: arm64: Move pmu hyp code under hyp's Makefile to avoid instrumentation
      KVM: arm/arm64: Move cc/it checks under hyp's Makefile to avoid instrumentation

 MAINTAINERS                       |   2 -
 arch/arm/kvm/hyp/Makefile         |   1 +
 arch/arm64/include/asm/kvm_host.h |   3 -
 arch/arm64/kvm/hyp/Makefile       |   1 +
 arch/arm64/kvm/hyp/switch.c       |  39 +++++++++++
 arch/arm64/kvm/pmu.c              |  38 -----------
 virt/kvm/arm/aarch32.c            | 121 ---------------------------------
 virt/kvm/arm/hyp/aarch32.c        | 136 ++++++++++++++++++++++++++++++++++++++
 8 files changed, 177 insertions(+), 164 deletions(-)
 create mode 100644 virt/kvm/arm/hyp/aarch32.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
