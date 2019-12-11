Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8397411A890
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:05:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fBmVLEpx33WnM7C2v5m7yhEwxgir0/qjc+8X4zk6gas=; b=J50
	qKDZRaMg+z1T1M63uYvivYaq3P7cYFZde0HIovfvllMtHZJQLnkrpcRaYfSKtG9Kv05VAMFtGA4G4
	Aw6wDORoGO55G4NRM8eNAljBnlM3Z3cR0nYkx9dt8mqrhaKEbxo9hi7QbUr6Ac9GwuUjZfmOxrZ4w
	bRAw+WlNx11rOd+gIENIXbkq9woWmNFrNB/FsuxMTEwYIMIMJyBwRt9FGY0M6LIGh43KFE8N7NEmd
	iBnUQ72f8CKrO1TTlMdJjPqUABKSDopTY/uWoVuKGaGD+UIBPUSGdFuYzo5hXO1Qt0mB0EKOxnmUz
	dITrQaayBw/ryXeWQPNczhryB6xT7aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyry-0006VI-SP; Wed, 11 Dec 2019 10:05:22 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyro-00054M-7n
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:05:14 +0000
Received: from ramsan ([84.195.182.253]) by xavier.telenet-ops.be with bizsmtp
 id ca5B2100H5USYZQ01a5Bfp; Wed, 11 Dec 2019 11:05:11 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ieyrn-0007Pv-LF; Wed, 11 Dec 2019 11:05:11 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ieyrn-0001sZ-Jl; Wed, 11 Dec 2019 11:05:11 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH] soc: renesas: Remove ARCH_R8A7796
Date: Wed, 11 Dec 2019 11:05:10 +0100
Message-Id: <20191211100510.7182-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_020512_445781_5A94B65B 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All users of CONFIG_ARCH_R8A7796 have been updated to use
CONFIG_ARCH_R8A77960, so the former can be removed.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-devel for v5.6.

 drivers/soc/renesas/Kconfig | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
index f93492b72c04e237..2d10e34cdbe4d117 100644
--- a/drivers/soc/renesas/Kconfig
+++ b/drivers/soc/renesas/Kconfig
@@ -200,13 +200,9 @@ config ARCH_R8A7795
 	  This enables support for the Renesas R-Car H3 SoC.
 
 config ARCH_R8A77960
-	bool
+	bool "Renesas R-Car M3-W SoC Platform"
 	select ARCH_RCAR_GEN3
 	select SYSC_R8A77960
-
-config ARCH_R8A7796
-	bool "Renesas R-Car M3-W SoC Platform"
-	select ARCH_R8A77960
 	help
 	  This enables support for the Renesas R-Car M3-W SoC.
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
