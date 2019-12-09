Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F8C1173DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:16:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yh0nSwC1jOP6oqCohNz9sd6+tPO+DkwOeFf1Hp7mhKo=; b=QZl+3K12esE6Gw
	hlKdbsQTPbbxS2t42FbfYmg7kqhXOThy5O1hvzicUcbu8PvF5pSlSLpFXBk4fJJFrbtb9UboVePa+
	z1pZaIc/Rmv7OeMVW/mPVIguexrLjaaKxcD1/Mj/5f34VwGaVkCDuvCX6vxxdlMovajU9HEcrlAi9
	dzgj9DI8Hd4SL9ZvVI5PKgOEuvam0vuy20qshXB12sUxGvXPQwkGGU51mInZqPwad+rzcir35tNz5
	WuNrwcZMJ+QueYUM07baV7paERFyqbajRNwRN+AoUFRULKxN4R++7NWI5N+XrOEh0SNyCFtBeJ1pu
	kB0XG/lwGE5LNqhF3GXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNZa-000156-Oh; Mon, 09 Dec 2019 18:15:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNWC-000512-99
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:12:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E63D328;
 Mon,  9 Dec 2019 10:12:21 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0D233F6CF;
 Mon,  9 Dec 2019 10:12:20 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v9 0/4] 
Date: Mon,  9 Dec 2019 18:12:13 +0000
Message-Id: <20191209181217.44890-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101224_370631_AEA4DDCD 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for E0PD. We enable E0PD unconditionally where
present on systems where all the CPUs in the system support E0PD and
change to not enabling KPTI by default on systems where we have enabled
E0PD. It also converts the runtime checks for use of non-global mappings
into a variable.

This is a resend, rebased on v5.5-rc1.

v9: Further comment tweaks from Suzuki.
v8: Keep the explicit MIDR check for TX1 so things work properly in
    early init and tweak comments.
v7: Move early initialization to the start of setup_arch()
v6: Move early initialization earlier.
v5: Rebase on v5.4-rc3 (there will be conflicts in cpucaps.h) and add
    code in patch 4 to start making non-global mappings from boot if we
    know then that we will need KPTI, preserving an existing performance
    improvement.
v4: Use a variable to store our decision about using non-global mappings
    rather than rechecking constantly at runtime. I've added this as a
    separate patch mainly for bisection.
v3: Make E0PD a system wide feature.

Mark Brown (4):
  arm64: Add initial support for E0PD
  arm64: Factor out checks for KASLR in KPTI code into separate function
  arm64: Don't use KPTI where we have E0PD
  arm64: Use a variable to store non-global mappings decision

 arch/arm64/Kconfig                     | 15 +++++
 arch/arm64/include/asm/cpucaps.h       |  3 +-
 arch/arm64/include/asm/mmu.h           | 48 ++--------------
 arch/arm64/include/asm/pgtable-hwdef.h |  2 +
 arch/arm64/include/asm/pgtable-prot.h  |  4 +-
 arch/arm64/include/asm/sysreg.h        |  1 +
 arch/arm64/kernel/cpufeature.c         | 79 ++++++++++++++++++++++++--
 arch/arm64/kernel/setup.c              |  7 +++
 8 files changed, 108 insertions(+), 51 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
