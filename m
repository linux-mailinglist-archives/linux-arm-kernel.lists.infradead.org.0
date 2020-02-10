Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFAB157766
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 14:00:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=z+o1PMEW8egpeBiXtsYZXw8r08jU0y/tT+5XBuD2HBk=; b=RxK
	U3gyAqhM/oQMplLJ1r+Znc4QXv1EMrPlteeVx47IppSWMcdX0Qupews/JYRwz/pURewEDs7Gz55MX
	DOK62Q4EOk55tSkFLyADZFlh13Y38XQcleOsE1eKCV1uh8xdVqJsHkE5HVInX9HN6qlVKUt6lYyUL
	IYi/MrV0RrT5H+G6fxt5e3HDt9X2VbC9mKiPDTw2fMAKSWoqmpO9+kfmfxCTi75JfZ5G/4RRk2WqB
	MZsJpVl/WO9qfnRgEXKyjpSVoCG9BDJXHFoOGibGsarZRnDtrrC6OEjzCuVTeuzVA87mapezMF0di
	blsBF1JhhqXa6b1Oh5ustFI133H62bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j18fv-0002i9-R8; Mon, 10 Feb 2020 13:00:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j18fm-0002gt-N4
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 13:00:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8EF771FB;
 Mon, 10 Feb 2020 05:00:20 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 67CB93F68E;
 Mon, 10 Feb 2020 05:00:19 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] random/arm64: enable RANDOM_TRUST_CPU for arm64
Date: Mon, 10 Feb 2020 13:00:11 +0000
Message-Id: <20200210130015.17664-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_050022_796637_B3C0C1CB 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, tytso@mit.edu, catalin.marinas@arm.com,
 richard.henderson@linaro.org, broonie@kernel.org, will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On arm64 systems some CPUs may have RNG instructions while others do
not, and consequently we cannot generally enable the use of RNG
instructions until all CPUs have been booted (as otherwise we'd have
problems with preemption, etc). This prevents us from seeding the
primary CRNG using the RNG, as this occurs before secondary CPUs are
onlined.

These patches rework the core CRNG intialization code so that the arch
code can (optionally) distinguish boot-time usage from runtime usage of
the arch_get_random_*() functions. This allows arm64 to use the boot
CPU's RNG to seed the primary CRNG, regardless of whether secondary CPUs
support the RNG instructions. Other architectures should see no
functional change as a result of this patches.

Thanks,
Mark.

Mark Rutland (3):
  random: split primary/secondary crng init paths
  random: add arch_get_random_*long_early()
  arm64: add credited/trusted RNG support

Richard Henderson (1):
  random: Make RANDOM_TRUST_CPU depend on ARCH_RANDOM

 arch/arm64/include/asm/archrandom.h | 14 ++++++++++
 drivers/char/Kconfig                |  2 +-
 drivers/char/random.c               | 52 ++++++++++++++++++++++++++++---------
 include/linux/random.h              | 22 ++++++++++++++++
 4 files changed, 77 insertions(+), 13 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
