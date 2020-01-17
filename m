Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3794C140DD1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 16:27:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XkW1yAZ2c9Dn2vz1PHdup6yIPqunj0tBzEqgDt5DL+U=; b=rg+PoX0y0yyW0C
	h0StXbq2/lGc0QMP/wluHuIdK/0KWeIaeZaEZ/XT8AsIHZnvLVFJgrYROdEfXyKH3TqaztJzZi7RU
	dmy4LLVd6nWiVzUr033PwUFLk6QuN3QFdSxxx/Y4EKHpdkThtVnqySMdDIeiDvd3bt0NSF/rtn0zl
	A3df49ueGCnaRDn6Z6ug0fzptiNIuaybPpZ17ILcROYWzKKfeVBtwXCgtwlX6+2oHiJyDATPiRnsy
	t8a6ARh/ZHkvdOV6ETz8KjOiYT4bPS4HIEd1MUMRaEEKsQUetu4TPA1Bf7uTrYgd8glCZvGQ7Y38M
	kxReNb5dtZKyfJuqbvNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isTWp-0006h2-3L; Fri, 17 Jan 2020 15:27:19 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isTWL-0006WW-2V
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 15:26:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JqsXhTtFmDOlKwkY66SKGJnLrnhRl72CQRYrjKZdTwU=; b=w9Pji8Ai44XMGvKje2+pYAfut
 m/7My+nVqqy1HhjOLXPGFsTKdXHVD6XXyPIEXsGZpXa9sY2ZcFLGzzv9f1rjdF14BhqznYAUmtdl+
 FE9MIp+0L3neA/Nn4NR1vyGRQzDuctiWMp6KUJW4zcb92lqsmvHqNPA/a0N5h3dtg38FY=;
Received: from fw-tnat-cam4.arm.com ([217.140.106.52]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1isTWF-0006mh-Rt; Fri, 17 Jan 2020 15:26:43 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 346AFD02A2A; Fri, 17 Jan 2020 15:26:43 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v11 0/2] ARMv8.5-RNG support
Date: Fri, 17 Jan 2020 15:26:40 +0000
Message-Id: <20200117152642.4905-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_072649_135329_D604E4C7 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Documentation/arm64/elf_hwcaps.rst            |  4 ++
 arch/arm64/Kconfig                            | 12 ++++
 arch/arm64/include/asm/archrandom.h           | 67 +++++++++++++++++++
 arch/arm64/include/asm/cpucaps.h              |  3 +-
 arch/arm64/include/asm/hwcap.h                |  1 +
 arch/arm64/include/asm/sysreg.h               |  4 ++
 arch/arm64/include/uapi/asm/hwcap.h           |  1 +
 arch/arm64/kernel/cpufeature.c                | 14 ++++
 arch/arm64/kernel/kaslr.c                     | 11 +++
 10 files changed, 118 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/include/asm/archrandom.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
