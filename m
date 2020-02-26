Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFFE170509
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:58:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SMddBhlvb0+gm3nz4zSLM22E/JoqZydt/VmJrFpLdxg=; b=HC5
	UwJAUNXOlgnDnS2sACyKgCrFP/RtZ1USHV+1/7RLbJ+F8c+gV6pN4Oetnhef6upmDmISY6sh00ASm
	MPn3XwPscCK/pKs9qS2kUislwryoMxgJl1cNKmCzN/NQFXUtwO2SpTnnF/JqusXbNBpX2sDKB5YCP
	tvaR+ZEl2cHCIHvVTeQ3UuA3vOIjQ/J4umQ/9npBHqsSWmcgCwMDtQYJ4uo+uRnOSw7zCzFI/qKUb
	+Z/eKgzHFchLwmPz7r5ve6LK6wzIwoQXh3gJB/ZjPT43IqV4fPUoSLHyylaQt76QJuKOe+OYb1jIi
	8JJv+y3ivM66b7X98pOZSYYBf8tfO1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j700X-0002ow-5W; Wed, 26 Feb 2020 16:58:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j700J-0002oA-Vw
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 16:57:49 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42D2D21556;
 Wed, 26 Feb 2020 16:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582736267;
 bh=Snro6dewJjLv0IRXOXFhEpHZJxQtAuKLFzocHl4NYu0=;
 h=From:To:Cc:Subject:Date:From;
 b=QbkaaaoZusV5GN4xkIz9nl0KTwlVMJWOz/U0UGhMGMslxSGXIlqYGBBucWunuZ/Bi
 FhtgKLmotwCyNkQJVdwwxLaLcyZDbRiQen5vD3VKSD8LuRoKCkEYusfei8ECBkaebL
 mGw4gw3JvV+u8VPRKr4LlWXcfeREQztbJwGBiZQM=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/5] ARM: decompressor: use by-VA cache maintenance for v7
 cores
Date: Wed, 26 Feb 2020 17:57:33 +0100
Message-Id: <20200226165738.11201-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_085748_067512_FB792468 
X-CRM114-Status: GOOD (  16.77  )
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
Cc: linux-efi@vger.kernel.org, Nicolas Pitre <nico@fluxnic.net>,
 Tony Lindgren <tony@atomide.com>, Marc Zyngier <maz@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While making changes to the EFI stub startup code, I noticed that we are
still doing set/way maintenance on the caches when booting on v7 cores.
This works today on VMs by virtue of the fact that KVM traps set/way ops
and cleans the whole address space by VA on behalf of the guest, and on
most v7 hardware, the set/way ops are in fact sufficient when only one
core is running, as there usually is no system cache. But on systems
like SynQuacer, for which 32-bit firmware is available, the current cache
maintenance only pushes the data out to the L3 system cache, where it
is not visible to the CPU once it turns the MMU and caches off.

So instead, switch to the by-VA cache maintenance that the architecture
requires for v7 and later (and ARM1176, as a side effect).

Changes since v3:
- ensure that the region that is cleaned after self-relocation of the zImage
  covers the appended DTB, if present

Apologies to Linus, but due to this change, I decided not to take your
Tested-by into account, and I would appreciate it if you could retest
this version of the series? Thanks.

Changes since v2:
- add a patch to factor out the code sequence that obtains the inflated image
  size by doing an unaligned LE32 load from the end of the compressed data
- use new macro to load the inflated image size instead of doing a potentially
  unaligned load
- omit the stack for getting the base and size of the self-relocated zImage

Changes since v1:
- include the EFI patch that was sent out separately before (#1)
- split the preparatory work to pass the region to clean in r0/r1 in a EFI
  specific one and one for the decompressor - this way, the first two patches
  can go on a stable branch that is shared between the ARM tree and the EFI
  tree
- document the meaning of the values in r0/r1 upon entry to cache_clean_flush
- take care to treat the region end address as exclusive
- switch to clean+invalidate to align with the other implementations
- drop some code that manages the stack pointer value before calling
  cache_clean_flush(), which is no longer necessary
- take care to clean the entire region that is covered by the relocated zImage
  if it needs to relocate itself before decompressing

https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/?h=arm32-efi-cache-ops

[ Several people asked me offline why on earth I am running SynQuacer on 32 bit:
  the answer is that this is simply to prove that it is currently broken, and
  this implies that for 32-bit VMs running under KVM, we are relying on the
  special, non-architectural cache management done by the hypervisor on behalf
  of the guest to be able to run this code. ]

Cc: Russell King <linux@armlinux.org.uk>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Nicolas Pitre <nico@fluxnic.net>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Tony Lindgren <tony@atomide.com>
Cc: Linus Walleij <linus.walleij@linaro.org>

Ard Biesheuvel (5):
  efi/arm: Work around missing cache maintenance in decompressor
    handover
  efi/arm: Pass start and end addresses to cache_clean_flush()
  ARM: decompressor: factor out routine to obtain the inflated image
    size
  ARM: decompressor: prepare cache_clean_flush for doing by-VA
    maintenance
  ARM: decompressor: switch to by-VA cache maintenance for v7 cores

 arch/arm/boot/compressed/head.S | 162 +++++++++++---------
 1 file changed, 86 insertions(+), 76 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
