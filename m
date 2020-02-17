Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACC2160FC8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 11:18:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SRdXyFKdWiZTuz9dRLNAfvA86eYcre0WFPTM11ZUovc=; b=pzE
	35qUHHcn5mSmsYbA1oVN+AutI6TA5+E26r26knQBPK0eTkZe4dgTcTB/y/fvbDQOW4Kn7NYAVyksZ
	2dBnMl8ZC7eFb97rwcfpSKjPCc0fKCxRJMNV5wYRm3bZZTzJVcYh53T7dTWAn73/Rzjp93IN9LkqJ
	2uG7luHTa82rgV4epzwKHeRbl13kdhReQhru2Ypi24SLnjiSOqc9JqOO5wqCzZ6vpIheuvN9bJ3VM
	cAW8oEKh1VaUhqX3ZoCbM3pakH84/vZyw+fKpS/snbvnSMdLfmbT1IC7WeKsJYDBd0Oyyb0pF82q1
	SFL4inadsBywnYwGpuKgHfKjTpNHN0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3dTd-00056F-CH; Mon, 17 Feb 2020 10:18:09 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3dTU-00055Y-Vg
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 10:18:03 +0000
Received: from ramsan ([84.195.182.253]) by andre.telenet-ops.be with bizsmtp
 id 3mHm220015USYZQ01mHmiq; Mon, 17 Feb 2020 11:17:49 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j3dTG-0003vS-03; Mon, 17 Feb 2020 11:17:46 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j3dTF-0000zU-TV; Mon, 17 Feb 2020 11:17:45 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH] arm64: defconfig: Replace ARCH_R8A7796 by ARCH_R8A77960
Date: Mon, 17 Feb 2020 11:17:41 +0100
Message-Id: <20200217101741.3758-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_021801_186717_AA542E32 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.7 SUBJ_OBFU_PUNCT_FEW    Possible punctuation-obfuscated Subject:
 header
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

CONFIG_ARCH_R8A7796 was replaced by CONFIG_ARCH_R8A77960, cfr. commits
39e57e14d7eaf818 ("soc: renesas: Add ARCH_R8A77960 for existing R-Car
M3-W") and 24240845c87185fe ("soc: renesas: Remove ARCH_R8A7796").

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-fixes for v5.6.

 arch/arm64/configs/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0f212889c931a83d..51b8b8555a6e4065 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -771,7 +771,7 @@ CONFIG_ARCH_R8A774A1=y
 CONFIG_ARCH_R8A774B1=y
 CONFIG_ARCH_R8A774C0=y
 CONFIG_ARCH_R8A7795=y
-CONFIG_ARCH_R8A7796=y
+CONFIG_ARCH_R8A77960=y
 CONFIG_ARCH_R8A77961=y
 CONFIG_ARCH_R8A77965=y
 CONFIG_ARCH_R8A77970=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
