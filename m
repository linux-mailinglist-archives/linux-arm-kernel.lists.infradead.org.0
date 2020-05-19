Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402481D9C8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:27:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=t4fk/6oiy3bMyIjYfYCz92TaeES1xVbOVTSFuXa+PFY=; b=WNI
	32HiriCjLlBhVeH8mJ75vM0qC3okQ4nA38CosQFNXudphw1+3v4CQQqW0cqqbV7DxVgWT4KXZpc2a
	NjE7KhaZuxAkoDGCFw61P/musHgKKfoXGhx3j/TAdYjOEnFsjKcyJDLhWRjBm91S7Pl8e2ZqgK710
	I+HoO5BDc2MMNslVhP7BuvLMq9+ApaSS7KAgv6v3EGJf/0gldbOF+LFBsPiV6FLnsiInR0wufvuka
	uOQhfv1+Q3mLWj23YRgv1HZsrSthR/OXyfbLOfmPIH/bD7gXLT4W8VBlk9mFfWZQ/LTHg9qkdkHVn
	fqcMf9I3yiJAgmGkLJjHOiDEmgyR8Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb55H-00042B-Sd; Tue, 19 May 2020 16:27:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb551-00041U-Mg
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:27:01 +0000
Received: from e123331-lin.nice.arm.com
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44CCC207FB;
 Tue, 19 May 2020 16:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905619;
 bh=gttWjWL8xYUb+Tczx1HyO/+yr0UIgrXN4QhVzeWuWTM=;
 h=From:To:Cc:Subject:Date:From;
 b=Ma8Zr/G3N0gedcDU0dr5mkD9VXaBjHskBb4EmZOa33JzzQSAUkkLOsfSJezIQDsJ2
 IypGGtY3QWzhUXdlC28Kkmjjp+kVy/OBH3aUN2FMaDUjX27AiBImLsUGEw1CLJbjbD
 Y//AhLldSzBF8jDWcuaB2PnbgqloHDW+Ko73qepE=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/5] ARM: simplify handover from UEFI to decompressor
Date: Tue, 19 May 2020 18:26:40 +0200
Message-Id: <20200519162645.31065-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_092659_756732_7D894201 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-efi@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Nicolas Pitre <nico@fluxnic.net>, Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The EFI stub in the ARM kernel runs in the context of the firmware, which
means it usually runs with the caches and MMU on. Currently, we relocate
the zImage so it appears in the first 128 MiB, disable the MMU and caches
and invoke the decompressor via its ordinary entry point. However, since we
can pass the base of DRAM directly, there is no need to relocate the zImage,
which also means there is no need to disable and re-enable the caches and
create new page tables etc.

This simplification is implemented by patch #5. Patches #1 - #4 are
prerequisite changes to permit the decompressor startup code to be invoked
past its ordinary entry point, and execute from the offset where the UEFI
firmware happened to load it.

Note that this applies onto rmk/for-next as of today.

Changes since v3:
- rebase onto rmk/for-next with Geert's DT memory node patch [0] removed, as
  it has been reverted again due to regressions

Changes since v2:
- Set the LSB of the image address if we are entering with MMU and caches off,
  so that the decompressor will install its own page tables as it usually
  does. This might happen on U-Boot platforms that call 'bootefi' without
  enabling the caches (which technically violates the UEFI spec, but might
  be working fine today)
- Add Nico's ack to the series

Changes since v1:
- Tweak some asm sequences in #2 to fix the Thumb2 build
- Switch immediately to the new stack in #5

Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Nicolas Pitre <nico@fluxnic.net>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>

[0] https://lore.kernel.org/linux-arm-kernel/20200429082120.16259-1-geert+renesas@glider.be/

Ard Biesheuvel (5):
  ARM: decompressor: move headroom variable out of LC0
  ARM: decompressor: split off _edata and stack base into separate
    object
  ARM: decompressor: defer loading of the contents of the LC0 structure
  ARM: decompressor: move GOT into .data for EFI enabled builds
  ARM: decompressor: run decompressor in place if loaded via UEFI

 arch/arm/boot/compressed/head.S           | 79 ++++++++------------
 arch/arm/boot/compressed/vmlinux.lds.S    |  5 ++
 drivers/firmware/efi/libstub/arm32-stub.c | 45 ++---------
 3 files changed, 43 insertions(+), 86 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
