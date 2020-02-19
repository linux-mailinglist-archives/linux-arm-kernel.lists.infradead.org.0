Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 692FA1640AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:44:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nqJgnRdQKZK4eUERTcKaG2Ol68sfnFwLAvOuSL1ldWc=; b=M3+
	WuGsPwrGLhvmNb8wc4YxcZgQeZi2lMct0QYSgvUf5HvRndPL7Nc2DX7rbRwMaTi9vgXrXYv2+/pPk
	s9r+qBPWMVFkMXIxWWLvn2yUUtqiNG2pxGnoZMaDeWxcHMIiXPH+8NLc4MA06f5EFQm4Ka7tHYu4l
	4kY6tsKqQz+qafMc9hHOxwsO2RlIBHWTB3WoaC1rl0AI9y7rDPBey3KHwaN4TsWHiZOgYBTKDmb1x
	vquwEoY/Jf8Noct/BHAXxLP+YIaEu3SEWKqxHoVb/OFLtj4U9iuqxh3vw/Zwiuul38NckTiM1RxuB
	A54PdbZbPtEpW8+fHGh1tToeASw5p3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Ltz-00028C-LQ; Wed, 19 Feb 2020 09:44:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4LtW-0001vR-Qu
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:43:52 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DAC682464E;
 Wed, 19 Feb 2020 09:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582105428;
 bh=sIKEUXEhrhihy/PCD1g07Ji9azmc+leKwztylDMz8vU=;
 h=From:To:Cc:Subject:Date:From;
 b=flinfKnP+5qymhAG170Z1tht57sV66eRALIlZAi+gNMk/XJN+keNg08Zp5ECcE8C4
 M40Ai6i6DjX1JyP+m6izFSO+jQqZnjyYZJXzHqGdQVryrxm/MkFsJNiiUBuY3GwdwR
 j/zWFTme30Xn95b7diwH9se5voC0BjU9Sk702bC4=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 0/4] ARM: decompressor: use by-VA cache maintenance for v7
 cores
Date: Wed, 19 Feb 2020 10:43:36 +0100
Message-Id: <20200219094340.16597-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_014350_894152_5267B64C 
X-CRM114-Status: GOOD (  13.70  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Tony Lindgren <tony@atomide.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
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
core is running, as there usually is no system cache. But on systems
like SynQuacer, for which 32-bit firmware is available, the current cache
maintenance only pushes the data out to the L3 system cache, where it
is not visible to the CPU once it turns the MMU and caches off.

So instead, switch to the by-VA cache maintenance that the architecture
requires for v7 and later (and ARM1176, as a side effect).

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

Cc: Russell King <linux@armlinux.org.uk>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Nicolas Pitre <nico@fluxnic.net>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Tony Lindgren <tony@atomide.com>

Ard Biesheuvel (4):
  efi/arm: work around missing cache maintenance in decompressor
    handover
  efi/arm: pass start and end addresses to cache_clean_flush()
  ARM: decompressor: prepare cache_clean_flush for doing by-VA
    maintenance
  ARM: decompressor: switch to by-VA cache maintenance for v7 cores

 arch/arm/boot/compressed/head.S | 133 +++++++++++---------
 1 file changed, 74 insertions(+), 59 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
