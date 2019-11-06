Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E0EF1291
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 10:42:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SNqcz5OSgT5EZmjGgDJrMTc3/vqP22HqrFLa0tUxrsI=; b=ury
	rEdRRoo9X9H/E8GGZU1BJJZhQtJOwlqj7011oE4dC8m2zQeKVCwflkztQ0KLzhjKFrF9R45QBrkQ8
	1qAQJIYEQOoUzDz2dCzceqMZPyJwFAsqMpZckivMOOrQqE21SSNP2WEy3kL1g7oGJx1zWMKI5+kTX
	53Agqga55HNAqC6JE/iBYh9UR1HKeZ2Jy05dJYRC+rPIFTw66deR4KWt0iymhwXZgG2JhVXhretjr
	ow0xgtXMYFI5xE3I3uBeUlHMCPxS8vKC4wFob7k2bHHv/vQ7S8gq6bVnGJR/e/6xqIApYpx3sIIJ+
	lO39DsLRJXwDE6oQjczqw7XEVlP++8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSHpr-0004vj-MM; Wed, 06 Nov 2019 09:42:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSHph-0004v7-4x
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 09:42:34 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 049D72166E;
 Wed,  6 Nov 2019 09:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573033352;
 bh=zRCPatRd3wVQBB90HosrSnTF2UHKht7Tls78w+IH6Sk=;
 h=From:To:Cc:Subject:Date:From;
 b=ESMTMryZnGLDflsMaofqvw0k1J7Yn/6t+QdXr2m87/+TMb7GixaZULsm2otBOR5X/
 QIAhmI5N26MzJNVCGEIjFiJviIqraLlFaF/icr0mIQCc9sMOwVo+mUnYbZSLsUHAw7
 H7GSQ8iuNRFa3Lt1FCRUvWfcZvHl8zWBIeOvcJvo=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] ARM/decompressor: deal with disabled CP15 barrier
 instructions
Date: Wed,  6 Nov 2019 10:42:17 +0100
Message-Id: <20191106094219.24365-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_014233_210817_4231AFE2 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While trying to test my v4.4 backport of the firmware/hypervisor based spectre
v1/v2 mitigations for 32-bit ARM, I noticed that KVM/qemu failed to boot my
kernel while it booted fine under TCG emulation.

As it turns out, KVM/qemu may instantiate the VCPU with support for CP15
barrier instructions disabled, causing them to UNDEF and crash the
decompressor.

I already fixed the same issue for UEFI boot, but since v4.4 does not support
that, I only noticed now that this is an issue for bare metal as well.

Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Marc Zyngier <maz@kernel.org>

Ard Biesheuvel (2):
  ARM/decompressor: avoid CP15 barrier instructions in v7 cache setup
    code
  Revert "ARM: 8857/1: efi: enable CP15 DMB instructions before cleaning
    the cache"

 arch/arm/boot/compressed/head.S | 51 ++++++++++----------
 1 file changed, 26 insertions(+), 25 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
