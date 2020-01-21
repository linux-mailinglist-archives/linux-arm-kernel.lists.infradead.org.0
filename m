Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9869C143D85
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 14:00:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3bJPt6TiEbcSbWIXj8WB8EG+l5uyRVoIUrghP3y2PtI=; b=IZt3r5ZW25wbod
	TGwgi4MzeBoCTGXU6/ST+y9DcTV1BKAdZqDWsrjYoHRcxztEvNG11snySPr53/SlIIyZHeQWnY6Dd
	MMd/2HZk6vN6prvX+j8pW5oGpwV5iGWbpjtGV2I1kZfpgvDHu92qMBKYz7w4nIsciO5KOb4dfd/1c
	YcDDWBsE7LQXSpkjDHvz+nLUWVRJ991QuxGuR/DG9uvAKFhI7wdZy3MyBe+Ay9OdKZxLHPnsdRoXX
	apvV5gtpQdyXZc6XeuacGmM/wsiK8VGRO8+4dgiiq5l4xynqHx7egAsH6lRRqx2PI1R+nqWOs6mWp
	bls3Nk9cYWcHoMvTlXrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itt8N-0000H6-R6; Tue, 21 Jan 2020 12:59:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itt7q-00007K-T8
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 12:59:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 65F3530E;
 Tue, 21 Jan 2020 04:59:20 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D756F3F52E;
 Tue, 21 Jan 2020 04:59:19 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v13 0/2] ARMv8.5-RNG support
Date: Tue, 21 Jan 2020 12:58:51 +0000
Message-Id: <20200121125853.28825-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_045922_984339_1688A2D9 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Mark Brown <broonie@kernel.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series is based on Richard Henderson's previous v7, it addresses
review comments from that version by dropping the boot time RNG
support and adds a new change that uses the v8.5-RNG extension to
seed KASLR when ARCH_RANDOM is enabled.  The boot time support
will be re-added later, there are awkward potential interactons
with CPU feature enumeration which need a bit more thought.

v13:
 - Re-add the hwcap code which was accidentally dropped from v12.
v12:
 - Move definition of __early_cpu_has_rndr() into KASLR patch.
v11:
 - Add a hwcap for v8.5-RNG.
 - Drop the addition of data to the pool, it's of questionable
   value and we need to go back and get the addition of actual
   entropy working anyway.
v10:
 - Spell out that we're adding data not entropy from setup_arch() in
   the commit message for patch 2.
v9:
 - Make another static inline helper for early feature checks.
 - Add init annotations.
 - Use xor to add RNDR output to seed for KASLR.

Mark Brown (1):
  arm64: Use v8.5-RNG entropy for KASLR seed

Richard Henderson (1):
  arm64: Implement archrandom.h for ARMv8.5-RNG

 Documentation/arm64/cpu-feature-registers.rst |  2 +
 Documentation/arm64/elf_hwcaps.rst            |  4 +
 arch/arm64/Kconfig                            | 12 +++
 arch/arm64/include/asm/archrandom.h           | 75 +++++++++++++++++++
 arch/arm64/include/asm/cpucaps.h              |  3 +-
 arch/arm64/include/asm/hwcap.h                |  1 +
 arch/arm64/include/asm/sysreg.h               |  4 +
 arch/arm64/include/uapi/asm/hwcap.h           |  1 +
 arch/arm64/kernel/cpufeature.c                | 14 ++++
 arch/arm64/kernel/kaslr.c                     | 11 +++
 10 files changed, 126 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/include/asm/archrandom.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
