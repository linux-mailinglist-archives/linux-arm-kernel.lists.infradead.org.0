Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595341955D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 11:59:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gvbX3cY6h0THlUAyjdZeT+vsvRsG3z0kptqakF+rmgc=; b=H01
	tGb5is1ofa/nAEJR91m/IdcyD6EI8uDF7LVEYlXz9lSTENC72ZxnkjWObmYUM5lVCn1xaq5GCOyby
	enE70K7HTQ/YdioOile0UqDqFE/wFT9NckwAsDyGhPxI553DYXZEiz4d6uvtDpG8nb3o14KleJK0z
	0KhKXENcgIhCjEanGA4jYAS4+5ecXve3tQg9lPYkrO5db9k93/Z/ILxjg0pfnvxnTQoRHZ/YjwBVI
	i+Lpl2XrdGaKDH+CdxqKMlpqlRzIPgmFrxTiz7xiRAF2OlCf6/ec6QhqJTdkFai8gCLf5dsyo/IVT
	ir5hmGAlvp5NwpGJyxxYNUFtuJl0Hyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmi6-0006TO-0H; Fri, 27 Mar 2020 10:59:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmhv-0006Ss-9I
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 10:59:24 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94EFB20705;
 Fri, 27 Mar 2020 10:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585306762;
 bh=90UfxI5OVQUnvcKw/oB6o3ZeklCir3nEiRKTl6IJlks=;
 h=From:To:Cc:Subject:Date:From;
 b=eXsrgFV/FedQh+Ab0iPY74W5JQKaPYaoZNLPZ9g2ELiuM4S84AsWvChXP+xKj/wNg
 wIHTZHzCq7Q99xQVoBEt88aEiNRBeqckbDuMkHFPhH/cH9Fitk63iNCSd1Ko6lnn2p
 hmYn0zRfSs2Y8zxZY6VQjwYex5qzecAKKrahmmoQ=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/5] ARM: simplify handover from UEFI to decompressor
Date: Fri, 27 Mar 2020 11:59:01 +0100
Message-Id: <20200327105906.2665-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_035923_348200_40A2B7DC 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Nicolas Pitre <nico@fluxnic.net>, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The EFI stub in the ARM kernel runs in the context of the firmware, which
means it runs with the caches and MMU on. Currently, we relocate the zImage
so it appears in the first 128 MiB, disable the MMU and caches and invoke
the decompressor via its ordinary entry point. However, since we can pass
the base of DRAM directly, there is no need to relocate the zImage, which
also means there is no need to disable and re-enable the caches and create
new page tables etc.

This simplification is implemented by patch #5. Patches #1 - #4 are
prerequisite changes to permit the decompressor to execute from the
offset chosen by the UEFI firmware.

Note that this applies onto linux-next with Geert's patch 'ARM: boot: Obtain
start of physical memory from DTB' applied [0]

Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Nicolas Pitre <nico@fluxnic.net>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Russell King <linux@armlinux.org.uk>

[0] https://lore.kernel.org/linux-arm-kernel/20200320144348.12865-1-geert+renesas@glider.be/

Ard Biesheuvel (5):
  ARM: decompressor: move headroom variable out of LC0
  ARM: decompressor: split off _edata and stack base into separate
    object
  ARM: decompressor: defer loading of the contents of the LC0 structure
  ARM: decompressor: move GOT into .data for EFI enabled builds
  ARM: decompressor: run decompressor in place if loaded via UEFI

 arch/arm/boot/compressed/head.S           | 84 +++++++-------------
 arch/arm/boot/compressed/vmlinux.lds.S    |  5 ++
 drivers/firmware/efi/libstub/arm32-stub.c | 41 ++--------
 3 files changed, 38 insertions(+), 92 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
