Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62A1171546
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 11:43:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SZpObZWOAyUI9PEfKj0i4Pa+ouaZxqgEbtF8LF51F4c=; b=uqy
	LiTnTtEN4bxyHqHv0Y8qSIK3ec8P1g6pvfcOaJqlNSH/FTyctUKrl6eILUMQ1vA6P8f5zkkHar50Z
	dg+uKqqs+1h50K6dNLuTjEtlmSqxQQtHgn2M+pqP8wA90nWTcKk/jOMk8M/wjT0bKOzPc4JUEM7OQ
	kSHgN8Zm3JpJpKfLQF2LQNRx0pj+JxGmpinMbDp7sdooqhXwuYMmJpIRVBvmuZ+t7VO8/Kxqw7Z9y
	AQXmpFj7bqiY+FuV7hYgeq/UYkKYtVxiKT0g/5AXkciDSzhKySlNvb0YPhgwjnhet6mbyQkVFag4e
	cmUGlZ5LuIF1NAn/t0qlLSwMbsv5ujQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Gdk-0002e7-Al; Thu, 27 Feb 2020 10:43:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Gd0-00024V-6D
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 10:42:53 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6340424690;
 Thu, 27 Feb 2020 10:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582800168;
 bh=ea5zxwAIySTsSpl0tyPCjZWkJ5QDbVH2ZRXXoee9T6g=;
 h=From:To:Cc:Subject:Date:From;
 b=F8vabLi0YuNxKHsgQ5a3d7cUg2jkouvQJ+HxGAXjhFOSsU/CKaozA+pcuyZjMvb9R
 UHz89Mxgo5Cc79oGIa0ymMQsf/WgNAA01MFeXrkJkYq074JrOhhMY3DBQuRrzhvPG4
 mcQMCjSPcCSIi6PzBCOcNYS0whLIz7I6EiNFDh44=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	linux+pull@armlinux.org.uk
Subject: [GIT PULL] ARM: switch to by-VA cache ops for v7 in the decompressor
Date: Thu, 27 Feb 2020 11:42:42 +0100
Message-Id: <20200227104242.9589-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_024250_374737_6DFEF43B 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tony Lindgren <tony@atomide.com>, Marc Zyngier <maz@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Ard Biesheuvel <ardb@kernel.org>,
 Nicolas Pitre <nico@fluxnic.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Russell,

Please consider the pull request below.

Regards,
Ard.

Cc: Marc Zyngier <maz@kernel.org>,
Cc: Nicolas Pitre <nico@fluxnic.net>
Cc: Tony Lindgren <tony@atomide.com>
Cc: Linus Walleij <linus.walleij@linaro.org>

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git tags/arm32-efi-cache-ops-for-rmk

for you to fetch changes up to 401b368caaecdce1cf8f05bab448172752230cb0:

  ARM: decompressor: switch to by-VA cache maintenance for v7 cores (2020-02-27 11:15:50 +0100)

----------------------------------------------------------------
ARMv7 compliant cache maintenance for the decompressor

On v7 and later cores, cache maintenance operations by set/way are only
intended to be used in the context of on/offlining a core, while it has
been taken out of the coherency domain. Any use intended to ensure that
the contents of the cache have made it to main memory is unreliable,
since cacheline migration and non-architected system caches may cause
these contents to linger elsewhere, without being visible in main memory
once the MMU and caches are disabled.

So switch to cache maintenance by virtual address for v7 and later cores.
This makes the 32-bit kernel bootable on systems with L3 system caches
that are not covered by set/way operations, such as Socionext SynQuacer.

Tony says:

  I gave these a try on top of the earlier "arm: fix Kbuild issue caused
  by per-task stack protector GCC plugin" and booting still works for
  me on armv7 including appended dtb:

  Tested-by: Tony Lindgren <tony@atomide.com>

Linus says:

  No problem, I have tested it on the following:

  - ARMv7 Cortex A9 x 2 Qualcomm APQ8060 DragonBoard
  - ARM PB11MPCore (4 x 1176)
  - ARMv7 Ux500 Cortex A9 x 2

  The PB11MPCore is again the crucial board, if it work on that
  board it works on anything, most of the time :D

  Tested-by: Linus Walleij <linus.walleij@linaro.org>

Note that the first 2 patches are shared with the efi/core branch in
TIP, which is the reason why this is sent as a pull request rather
than via the patch system.

----------------------------------------------------------------
Ard Biesheuvel (5):
      efi/arm: Work around missing cache maintenance in decompressor handover
      efi/arm: Pass start and end addresses to cache_clean_flush()
      ARM: decompressor: factor out routine to obtain the inflated image size
      ARM: decompressor: prepare cache_clean_flush for doing by-VA maintenance
      ARM: decompressor: switch to by-VA cache maintenance for v7 cores

 arch/arm/boot/compressed/head.S | 162 +++++++++++++++++++++-------------------
 1 file changed, 86 insertions(+), 76 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
