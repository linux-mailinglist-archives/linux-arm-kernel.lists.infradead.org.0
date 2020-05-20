Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1261DC167
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 23:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vfKPLgbBZdkbgWmtb099JbC3y7iay80eO8QdpP4pqJc=; b=KHu
	ETAs/TumJB8I3s1gO3cGgGRDu32wvja1aQTfiVWyDSRfPlNwslwj4Ed5rTdy12LF6qzqZDrYCpgsd
	hNpdUBCSVNh5MPpzlPugCKpdZjrHnAJIeIG2GUZ14ospOnFn5CYJWMjE76slwPS0EsRLCciAXrJxz
	eCtzXFtlGbdN0EKFKhnFdIbp/KU6a32tjhvJeSD0z3Fle3z4E0naWxoK31rIKhjimYpGUovWY8iQK
	H8R799skZ1sBJ3hatbZXqwi5ZV5AXc9/Ko1aYfaMAmovXKVR3wmOfmq9hADNyYHxt60Sf57H4qLVP
	vTM6L9m3dScwKP99qCu0QlyFjbh470w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbWKu-0004GI-KH; Wed, 20 May 2020 21:33:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbWKk-0004Fp-DG
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 21:33:04 +0000
Received: from e123331-lin.nice.arm.com
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82905207F9;
 Wed, 20 May 2020 21:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590010381;
 bh=lEGVH641CKUJvebvQobI9pOc/m43hhJIu1Jj9AP1Ueg=;
 h=From:To:Cc:Subject:Date:From;
 b=15GC8tigoyxpJQpHMpX+pH6fS2ipKa1JQkP+/RHvscumr/tBBl10Vs59ThKeBkIRH
 GsWyeztMGVgCWtDAI7sK+jNBBFodTohnWrubkM5DCu5/f1HZFODdhztJP2Na7hgOxy
 01obYBJgfZgrBbNxzXGEbueZAjTolkEKr5W8HTZw=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [GIT PULL v2] ARM: simplify handover from UEFI to decompressor
Date: Wed, 20 May 2020 23:32:56 +0200
Message-Id: <20200520213256.16004-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_143302_467609_0AB1F3FD 
X-CRM114-Status: GOOD (  11.12  )
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
Cc: linux+pull@armlinux.org.uk, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Russell,

As discussed in the context of Geert's reverted v6 of the DTB memory
node discovery patch [0], EFI boot is one possible workaround for systems
where the base of memory is not a round multiple of 128 MB. U-boot today
supports the bootefi command out of the box, so this does not require any
special firmware.

So please pull the changes below for v5.8

[0] https://lore.kernel.org/linux-arm-kernel/20200429082120.16259-1-geert+renesas@glider.be/

The following changes since commit a780e485b5768e78aef087502499714901b68cc4:

  ARM: 8971/1: replace the sole use of a symbol with its definition (2020-04-29 13:30:20 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git tags/efi-arm-no-relocate-for-rmk

for you to fetch changes up to d0f9ca9be11f25ef4151195eab7ea36d136084f6:

  ARM: decompressor: run decompressor in place if loaded via UEFI (2020-05-19 18:23:22 +0200)

----------------------------------------------------------------
Simplify EFI handover to decompressor

The EFI stub in the ARM kernel runs in the context of the firmware, which
means it usually runs with the caches and MMU on. Currently, we relocate
the zImage so it appears in the first 128 MiB, disable the MMU and caches
and invoke the decompressor via its ordinary entry point. However, since we
can pass the base of DRAM directly, there is no need to relocate the zImage,
which also means there is no need to disable and re-enable the caches and
create new page tables etc.

This also allows systems whose DRAM start address is not a round multiple
of 128 MB to decompress the kernel proper to the base of memory, ensuring
that all memory is usable at runtime.

----------------------------------------------------------------
Ard Biesheuvel (5):
      ARM: decompressor: move headroom variable out of LC0
      ARM: decompressor: split off _edata and stack base into separate object
      ARM: decompressor: defer loading of the contents of the LC0 structure
      ARM: decompressor: move GOT into .data for EFI enabled builds
      ARM: decompressor: run decompressor in place if loaded via UEFI

 arch/arm/boot/compressed/head.S           | 79 +++++++++++++------------------
 arch/arm/boot/compressed/vmlinux.lds.S    |  5 ++
 drivers/firmware/efi/libstub/arm32-stub.c | 45 +++---------------
 3 files changed, 43 insertions(+), 86 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
