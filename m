Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BA0388F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 13:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cjHz1NVcge8bKzAPp3niOOjIrxj4fCQtv5k7xVxfMvw=; b=s4g
	7MyGem2OSficohmgCCsVosNsHWECvCZ6G6fK4XP/4ByEz9lYTOzuss9R3Fv6Ko3NcL79caCE4Txrv
	whBgXLfzxoJ/vPn6m9+tJK/rqQEwZdeyok5yEotjx2MJk9EE9hXiaSXLcB0kgzRs9eYl5VS/cVRPL
	aUkCTnOahHPZkZZWvr2ALze1Nlj3G9WgwMDe0jfZrEN3rBi9tJ4ctnDHyumK8wK1RZj2cV/fKRO3W
	GAAxibEQouqi+wvD85XJbBgbhRc4sRwqc3g03D/id04N7wxmLHOreU4kFRL0gt3cFVmgCgiihoHrK
	5dJ2/yrlxhVwxKscNjtaJVOnHC+QtfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZD1A-0007V1-9S; Fri, 07 Jun 2019 11:26:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZD14-0007Ub-2d
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 11:26:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 843F828;
 Fri,  7 Jun 2019 04:26:34 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A7FEC3F246;
 Fri,  7 Jun 2019 04:28:13 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH kvmtool v4 0/8] arm64: Pointer Authentication and SVE support
Date: Fri,  7 Jun 2019 12:26:21 +0100
Message-Id: <1559906789-20936-1-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_042638_209725_9B602511 
X-CRM114-Status: GOOD (  11.00  )
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
pointer authentication and SVE for guests.  This superseded the
previous v3 series [2].

A git tree is also available [3].

For pointer auth, I include Amit's v10 patch [4], with some additional
refactoring to sit nicely alongside SVE, and some cosmetic / diagnostic
tidyups discussed during review on-list.  (I've kept the extra changes
separate for easier review, but they could be folded if desired.)

[Maintainer note: I'd like Amit to comment on my changes on top of his
pointer auth patch so that that can be folded together as appropriate.]


This series has been tested against Linux v5.2-rc1.

After discussion with Will, the command-line options for controlling
pointer auth and SVE support have all been dropped, since they are not
useful to normal users: instead, we just default to the best
configuration that the host supports.  There's always the option to add
this functionality back in some more appropriate form later, if someone
has a use for it.

See the individual patches for other minor changes.

[1] 
git://git.kernel.org/pub/scm/linux/kernel/git/will/kvmtool.git master
https://git.kernel.org/pub/scm/linux/kernel/git/will/kvmtool.git/log/
eaeaf60808d6 ("virtio/blk: Avoid taking pointer to packed struct")

[2] [PATCH kvmtool v3 0/9] arm64: Pointer Authentication and SVE support
https://lists.cs.columbia.edu/pipermail/kvmarm/2019-May/036050.html

[3] [PATCH v10 3/5] KVM: arm64: Add userspace flag to enable pointer authentication
https://lore.kernel.org/linux-arm-kernel/1555994558-26349-6-git-send-email-amit.kachhap@arm.com/

[4]
git://linux-arm.org/kvmtool-dm.git sve/v4/head
http://linux-arm.org/git?p=kvmtool-dm.git;a=shortlog;h=refs/heads/sve/v4/head


Amit Daniel Kachhap (1):
  KVM: arm/arm64: Add a vcpu feature for pointer authentication

Dave Martin (7):
  update_headers.sh: Add missing shell quoting
  update_headers.sh: Cleanly report failure on error
  update_headers.sh: arm64: Copy sve_context.h if available
  update_headers: Sync kvm UAPI headers with linux v5.2-rc1
  KVM: arm/arm64: Back out ptrauth command-line arguments
  arm/arm64: Factor out ptrauth vcpu feature setup
  arm64: Add SVE support

 arm/aarch32/include/kvm/kvm-cpu-arch.h |  7 +++++
 arm/aarch64/include/asm/kvm.h          | 43 +++++++++++++++++++++++++++
 arm/aarch64/include/asm/sve_context.h  | 53 ++++++++++++++++++++++++++++++++++
 arm/aarch64/include/kvm/kvm-cpu-arch.h |  3 ++
 arm/aarch64/kvm-cpu.c                  | 28 ++++++++++++++++++
 arm/kvm-cpu.c                          |  5 ++++
 include/linux/kvm.h                    | 15 ++++++++--
 powerpc/include/asm/kvm.h              | 48 ++++++++++++++++++++++++++++++
 util/update_headers.sh                 | 26 +++++++++++++----
 x86/include/asm/kvm.h                  |  1 +
 10 files changed, 221 insertions(+), 8 deletions(-)
 create mode 100644 arm/aarch64/include/asm/sve_context.h

-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
