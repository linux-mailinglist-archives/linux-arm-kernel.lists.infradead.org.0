Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB5D132E91
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:38:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5LSDhdK2N8K1domdYjaerU2Pp+hKhUEAK3NaBx4DEhM=; b=oDruGGq7vqp8lQ
	AbVKehsrIOXHBGQanAPfrlGvHswY+S7Pq6ABY3GZ+yjNOXTJIzVKBUZ2a+rLCTgiU7/T13Yn/hTYo
	bhom4vKY1jOYcsN2cLk8RWihWMLMc1koPq2Q0GgBsQPnDNrYnw/3VnWuNoVSQbQ5qzwVSXFbYTASL
	gMkRuciW3vQEEGxoST2YxV4BAHQmAM/RvFRWX6//lmkJrXaGF9Q/w37E7boNqgrmIi+TokrnrUCuR
	Aqq2caY8zMBIszFZ7f725ifqU73uwaHbqplBK0IDrI6Yhcatt1CtdZH/X09YmKMnri7JOPDxHk9rC
	0pilPJahIuW4VTcpX99Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotjx-0004iW-KY; Tue, 07 Jan 2020 18:38:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotjp-0004hk-Or
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 18:37:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 149BC31B;
 Tue,  7 Jan 2020 10:37:57 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 91D443F534;
 Tue,  7 Jan 2020 10:37:56 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v8 0/3] ARMv8.5-RNG support
Date: Tue,  7 Jan 2020 18:35:37 +0000
Message-Id: <20200107183540.54794-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_103757_850691_1FC46BD4 
X-CRM114-Status: UNSURE (   9.82  )
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series is based on Richard Henderson's previous v7, it addresses
review comments from that version by splitting the boot and runtime
interaction with the core random code so that they are completely
separate and adds a new change that uses the v8.5-RNG extension to seed
KASLR when ARCH_RANDOM is enabled.

Mark Brown (2):
  arm64: random: Add data to pool from setup_arch()
  arm64: Use v8.5-RNG entropy for KASLR seed

Richard Henderson (1):
  arm64: Implement archrandom.h for ARMv8.5-RNG

 Documentation/arm64/cpu-feature-registers.rst |  2 +
 arch/arm64/Kconfig                            | 12 +++
 arch/arm64/include/asm/archrandom.h           | 91 +++++++++++++++++++
 arch/arm64/include/asm/cpucaps.h              |  3 +-
 arch/arm64/include/asm/sysreg.h               |  4 +
 arch/arm64/kernel/cpufeature.c                | 13 +++
 arch/arm64/kernel/kaslr.c                     | 15 ++-
 arch/arm64/kernel/setup.c                     |  2 +
 8 files changed, 140 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/include/asm/archrandom.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
