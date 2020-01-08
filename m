Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E643134B95
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:41:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QdIAmlx4V52AAjvkrS4Reet9NpMEmrb5uSe0u2aulBY=; b=Hdx1NF81doRptl
	z8Ij0pRMyZiHJ4/speRngxGO5+6rWZFbn3dU1Rf/nBCPfvJJ3MVIZPEj4OjQkIoxLs6qxmlmXRrWG
	TVh0kJx/N3Me/FOyvZhdi5Ce/2VlcwQEgFq1jOv/188VT1a2CcmSiav+3SdAt5yDfzeFM2LqbvagI
	Hr1U8I0YMHKFr6PORnpZZlvLznMmyrNGj37FzICDZTsa86WgcmGe1kHxhcmhaVol6BZkX0yxBfiYg
	OtOvd3qbZgCWnhOBjTgDt7uDduIxb4olC3QuurPd9LRfzs4hoR+XHpzi4AmiJ/DYG4sB6U+jx7r0v
	br4viBFRuRH9qmKncZdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipHD9-0005GW-Rg; Wed, 08 Jan 2020 19:41:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipHCz-0005Fj-M2
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 19:41:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B0131FB;
 Wed,  8 Jan 2020 11:41:36 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1214F3F534;
 Wed,  8 Jan 2020 11:41:35 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v9 0/3] ARMv8.5-RNG support
Date: Wed,  8 Jan 2020 19:41:30 +0000
Message-Id: <20200108194133.44110-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_114137_763715_D9958B55 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Mark Brown <broonie@kernel.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series is based on Richard Henderson's previous v7, it addresses
review comments from that version by splitting the boot and runtime
interaction with the core random code so that they are completely
separate and adds a new change that uses the v8.5-RNG extension to seed
KASLR when ARCH_RANDOM is enabled.

v9:
 - Make another static inline helper for early feature checks.
 - Add init annotations.
 - Use xor to add RNDR output to seed for KASLR.

Mark Brown (2):
  arm64: random: Add data to pool from setup_arch()
  arm64: Use v8.5-RNG entropy for KASLR seed

Richard Henderson (1):
  arm64: Implement archrandom.h for ARMv8.5-RNG

 Documentation/arm64/cpu-feature-registers.rst |  2 +
 arch/arm64/Kconfig                            | 12 +++
 arch/arm64/include/asm/archrandom.h           | 97 +++++++++++++++++++
 arch/arm64/include/asm/cpucaps.h              |  3 +-
 arch/arm64/include/asm/sysreg.h               |  4 +
 arch/arm64/kernel/cpufeature.c                | 13 +++
 arch/arm64/kernel/kaslr.c                     | 11 +++
 arch/arm64/kernel/setup.c                     |  2 +
 8 files changed, 143 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/include/asm/archrandom.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
