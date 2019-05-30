Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F5F2FF09
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 17:13:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Lxc3m1J/Ks5b5CMFND9IvjkR3rmiU5AKjKpH3yRZZJU=; b=C9Z
	LB2SKdFPZpgU9YOmqRTTi5cydsQNeJ70YiHDgH4oIishQmElkLK50ES6XRK0h+pyy/kwhsPn9bdjm
	cTXtwx6q04TD7GbOAVIta/ghsFbpuZAPmzeo8x8rHoLovbPC98RXPL3XDFKq5wOcdFlWKZPikeEdG
	mqf0da4riYX51FA5aCCQjcdjhy9XNJZp5cdLcNl7Hp8psk+sXijbFRNmKwziF6WlEG8UZ+PO8glSf
	y59CU4Ee+zexWrRKuK4XDcainyQ+xHKUjft7gRv+arIbJcUp30eiaSse8YAJg7IAb6MDhCHaAlYTm
	ebeGPXnvOLdIqyUmAutEVGcPRpY0ftg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWMkF-0001qt-GA; Thu, 30 May 2019 15:13:31 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWMk8-0001qT-H0
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 15:13:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8D30341;
 Thu, 30 May 2019 08:13:22 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2AA253F59C;
 Thu, 30 May 2019 08:13:21 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH kvmtool v3 0/9] arm64: Pointer Authentication and SVE support
Date: Thu, 30 May 2019 16:13:05 +0100
Message-Id: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_081324_566894_A4CAE411 
X-CRM114-Status: GOOD (  12.87  )
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
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series, based on kvmtool master [1], implements basic support for
pointer authentication and SVE for guests.

A git tree is also available [2].

For pointer auth, I include Amit's v10 patch [3], with some additional
refactoring to sit nicely alongside SVE, and some cosmetic / diagnostic
tidyups discussed during review on-list.  (I've kept the extra changes
separate for easier review, but they could be folded if desired.)

[Maintainer note: I'd like Amit to comment on my changes on top of his
pointer auth patch, but the first 4 patches just re-sync headers and
could be pulled earlier if you feel like it.]


This series has been tested against Linux v5.2-rc1.

If people have a strong view on the --sve-vls parameter, I'd be
interested to discuss what that should look like.  Since this is
primarily a debug/experimentation option, the current implementation is
probably good enough though.

[1] 
git://git.kernel.org/pub/scm/linux/kernel/git/will/kvmtool.git master
https://git.kernel.org/pub/scm/linux/kernel/git/will/kvmtool.git/log/
eaeaf60808d6 ("virtio/blk: Avoid taking pointer to packed struct")

[2] [PATCH v10 3/5] KVM: arm64: Add userspace flag to enable pointer authentication
https://lore.kernel.org/linux-arm-kernel/1555994558-26349-6-git-send-email-amit.kachhap@arm.com/

[3]
git://linux-arm.org/kvmtool-dm.git sve/v3/head
http://linux-arm.org/git?p=kvmtool-dm.git;a=shortlog;h=refs/heads/sve/v3/head


Amit Daniel Kachhap (1):
  KVM: arm/arm64: Add a vcpu feature for pointer authentication

Dave Martin (8):
  update_headers.sh: Add missing shell quoting
  update_headers.sh: Cleanly report failure on error
  update_headers.sh: arm64: Copy sve_context.h if available
  update_headers: Sync kvm UAPI headers with linux v5.1-rc1
  arm/arm64: Factor out ptrauth vcpu feature setup
  arm64: Make ptrauth enable/disable diagnostics more user-friendly
  arm64: Add SVE support
  arm64: Select SVE vector lengths via the command line

 arm/aarch32/include/kvm/kvm-cpu-arch.h    |   7 ++
 arm/aarch64/include/asm/kvm.h             |  43 +++++++++
 arm/aarch64/include/asm/sve_context.h     |  53 +++++++++++
 arm/aarch64/include/kvm/kvm-config-arch.h |  16 +++-
 arm/aarch64/include/kvm/kvm-cpu-arch.h    |   3 +
 arm/aarch64/kvm-cpu.c                     | 148 ++++++++++++++++++++++++++++++
 arm/include/arm-common/kvm-config-arch.h  |   5 +
 arm/kvm-cpu.c                             |   5 +
 include/linux/kvm.h                       |  15 ++-
 powerpc/include/asm/kvm.h                 |  48 ++++++++++
 util/update_headers.sh                    |  25 +++--
 x86/include/asm/kvm.h                     |   1 +
 12 files changed, 360 insertions(+), 9 deletions(-)
 create mode 100644 arm/aarch64/include/asm/sve_context.h

-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
