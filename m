Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B30162AEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 17:45:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ljR8BiqbqLpDq4wwr/t71xz5CCNQEDIqL6Thbbmpj8k=; b=MJm
	ItS8IDyvaJp+kQXoxhL9SP6bgcvrPFs9fyCnRW9nIqQO/VMRvYKU/uFkZArplHjKpwyb55zZBDN++
	P4/hRneR/4xlyCyhr5AErXb8oGhzuBBizKmLjAnVHIk7NJsNAsk+nEpzOlfV4CK5DEQR5vtX4ZXqF
	aA73zSjesIxk7lcAJw/Nhoxpzi3QHlq+nMCW0zLVAC4aTflBNu7REFVqpNUq/5GsVWANZwYxVnzQn
	Hw7QMVz/Ok1o/yyMZsZysdkwl1fmdgp+wNgSBcH/Fe7/R42rwLMubp+0djQtGQ2xmPKyTv/ucov8i
	Wy2/YwD1fYJ2V8jJV7dCAEMR3ZyPzPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4601-0006cd-65; Tue, 18 Feb 2020 16:45:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j45zt-0006c8-3V
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 16:45:22 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ECB2E208C4;
 Tue, 18 Feb 2020 16:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582044320;
 bh=+2SpNmyfTUVe42vgI91DR/e37g2sr67kx9vcvXWW0lc=;
 h=From:To:Cc:Subject:Date:From;
 b=nhAS1Hyv2EQypIp639Vw4nrmp/Z3SP/k2ESjVpvsJPlVfu4Y44HoPJ5VOV0lbB9Mo
 3MrfkrMpa/5N/WK2Bbu8oRk1eaO5t7SS+Kbv5pmZ9r7rHFBmaBUboZhEPWCuDS0nl1
 Rx8GwnCntbHCLyxUyT+YiVB4460t1Zq2PqmJCLoY=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 0/2] ARM: decompressor: use by-VA cache maintenance for v7
 cores
Date: Tue, 18 Feb 2020 17:44:28 +0100
Message-Id: <20200218164430.32671-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_084521_162542_6FCEC814 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
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
core is running, as there usually is no system cache.

But let's make this code a bit more future proof, by switching to by-VA
ops for the v7 code paths (and for ARM1176, as a side effect).

Note that these patches are based on an EFI stub fix that I have omitted
here, and which can be found at

https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/commit/?h=arm32-efi-cache-ops&id=01d742dcf0a3dce6f6db9e4661750129bc3d3216

Cc: Russell King <linux@armlinux.org.uk>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Nicolas Pitre <nico@fluxnic.net>
Cc: Catalin Marinas <catalin.marinas@arm.com>

Ard Biesheuvel (2):
  ARM: decompressor: prepare cache_clean_flush for doing by-VA
    maintenance
  ARM: decompressor: switch to by-VA cache maintenance for v7 cores

 arch/arm/boot/compressed/head.S | 105 ++++++++++----------
 1 file changed, 54 insertions(+), 51 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
