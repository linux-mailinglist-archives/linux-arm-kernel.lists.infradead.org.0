Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A31516C457
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 15:48:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vZ9lPI53Zl/G+pw9Wf9/pMl8CNUYLtD0rZIEmkjO870=; b=XAU
	oPDVvnzXbXzGndkjqaltNNFcYEslRvj41lFCnHaOjLt6PpU+KU2CFLr6OT2qlO/DrhepytT0N1Y5C
	Twu9a5t06tu4FmlFqS0FOq6RhStweQBfQVJ8m+2fCsUPQIAJGedXvUzxNJ5yDYOJC88YxHtvF6vyi
	IluHT9OCvP9/DGRdDJTEcokXcVbKu02MBhljo7s4qJVTxAQjssnlARkar0sRz2/gfJGoLQ3nG5Zku
	2cuYrgd65Pyw09MPCCK+5m4BxFD0ll7lp0S99z27gctVoXcaF5GtYZNwU5CIbniF0Oajjs+U7Hgb+
	YlV4Zyk+K2cNKBjcqhbrO7L3LcqVCjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6bVS-0007rD-To; Tue, 25 Feb 2020 14:48:18 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6bVH-0007pj-Kl
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 14:48:10 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id 72nr2200M5USYZQ062nsVf; Tue, 25 Feb 2020 15:47:57 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j6bV1-0007yI-Rg; Tue, 25 Feb 2020 15:47:51 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j6bV1-0005AV-Oq; Tue, 25 Feb 2020 15:47:51 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 Russell King <linux@armlinux.org.uk>, Nicolas Pitre <nico@fluxnic.net>,
 Arnd Bergmann <arnd@arndb.de>, Eric Miao <eric.miao@nvidia.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH] ARM: boot: Fix ATAGs with appended DTB
Date: Tue, 25 Feb 2020 15:47:49 +0100
Message-Id: <20200225144749.19815-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_064807_840615_CA813EB7 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At early boot, register r8 may contain an ATAGs or DTB pointer.
When an appended DTB is found, its address is stored in r8, for
extraction of the RAM base address later.

However, if r8 contained an ATAGs pointer before, that pointer will be
lost, and the provided ATAGs is no longer folded into the provided DTB.

Fix this by leaving r8 untouched.

Fixes: 137e522593918be2 ("ARM: 8960/1: boot: Obtain start of physical memory from DTB")
Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Not tested with ATAGs, only with [uz]Image + DTB, and zImage with
appended DTB.
---
 arch/arm/boot/compressed/head.S | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 339d4b4cfbbeed15..a351ed2bc195ed8d 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -267,16 +267,18 @@ not_angel:
 		cmp	r0, r1		@ do we have a DTB there?
 		bne	1f
 
-		mov	r8, r6		@ use it if so
 		/* preserve 64-bit alignment */
 		add	r5, r5, #7
 		bic	r5, r5, #7
-		add	sp, sp, r5	@ and move stack above it
+		add	sp, sp, r5	@ if so, move stack above DTB
+		mov	r0, r6		@ and extract memory start from DTB
+		b	2f
 
 1:
 #endif /* CONFIG_ARM_APPENDED_DTB */
 
 		mov	r0, r8
+2:
 		bl	fdt_get_mem_start
 		mov	r4, r0
 		cmp	r0, #-1
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
