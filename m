Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D06315A790
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 12:17:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bsXZ2MW+V3R4GRUOwWmct3H+BoxJHEBjQM2VxpqgLtc=; b=eby
	tIrIdlXzSwsrhGmzCA+sxoFPjbN6AR+6sl2IWRykuIyzrC7wwjqc4pp8c2vsbPaiOHWjdjw8JFwIZ
	ITPFxTjb4ZqXipuLyan7RXcWFmovVgYx24FTDncni1OEywBcKAAQ5u1uRP/KEBKPyawRdZClnKmZb
	NVcl2ReV/RYglp5kwz0KI+64V3qJXUREey65JnuW9ejaBMKttHBzJaFbBAC87y+jTtFcTcLsoSFMp
	YbFcUvq21zff/YUa1rzOEzkWMOkni5zBP1xLRD6B3DX4lAfJ+5g0dG3MBjkpJJBMtRzWK80lrRvFA
	NujUH3q83U5ZxIDMfscB98BTQif/iPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1q1T-0006ri-M0; Wed, 12 Feb 2020 11:17:39 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1oxb-0007ka-QE
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 10:09:37 +0000
Received: from ramsan ([84.195.182.253]) by andre.telenet-ops.be with bizsmtp
 id 1m9b220065USYZQ01m9bLh; Wed, 12 Feb 2020 11:09:35 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j1oxb-0001Fb-58; Wed, 12 Feb 2020 11:09:35 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j1oxb-0005OR-3K; Wed, 12 Feb 2020 11:09:35 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: time: Replace <linux/clk-provider.h> by
 <linux/of_clk.h>
Date: Wed, 12 Feb 2020 11:09:34 +0100
Message-Id: <20200212100934.20322-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_020936_010988_5D49E7C0 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SUBJ_OBFU_PUNCT_FEW    Possible punctuation-obfuscated Subject:
 header
 1.7 SUBJ_OBFU_PUNCT_MANY   Punctuation-obfuscated Subject: header
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arm64 time code is not a clock provider, and just needs to call
of_clk_init().

Hence it can include <linux/of_clk.h> instead of <linux/clk-provider.h>.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm64/kernel/time.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/time.c b/arch/arm64/kernel/time.c
index 73f06d4b3aae5317..eebbc8d7123e08f1 100644
--- a/arch/arm64/kernel/time.c
+++ b/arch/arm64/kernel/time.c
@@ -23,7 +23,7 @@
 #include <linux/irq.h>
 #include <linux/delay.h>
 #include <linux/clocksource.h>
-#include <linux/clk-provider.h>
+#include <linux/of_clk.h>
 #include <linux/acpi.h>
 
 #include <clocksource/arm_arch_timer.h>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
