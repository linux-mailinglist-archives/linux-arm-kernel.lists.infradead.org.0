Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C41E4A1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 13:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uYMYAGVAgh9hewVKbtOyXLMA0meIi6LuI45oGjIfbhI=; b=X8i
	B7XHDGoi3wPIG6+kgma3abVF3U9+lzjCKxjWeQTPgamsKDcUsTfSl5KM5x8gb13S8HzxgEhED0ZuG
	XGvSz9ts9koLTanU+I20ETkPaERdXHgsSZlvu0JUUGLE/X6LdVZYJQSnfIhP82Fr88x2tBGJd7Cm3
	0MADoczuYTSFPFMLtWmMnemQhYfzQkWg5oBGtB36mw4HGaBkOySj6eiceJxjEJn8zFED6dmZkun+h
	nbEpnXiSmwJQXPu8/BV7R1NAZfll1asE5AQtilEq13vWRaaiJ41GlO7sWMlv/m4a8qB0od6FYbTKy
	kE53lBaeRcJug6y2AFlyTBHe+hh/3BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNxvy-0001m1-PW; Fri, 25 Oct 2019 11:39:10 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNxvd-0001bz-LM
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 11:38:51 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id Hnej2100e5USYZQ06nejBg; Fri, 25 Oct 2019 13:38:43 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNxvX-000481-Q1; Fri, 25 Oct 2019 13:38:43 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNxvX-00026E-O6; Fri, 25 Oct 2019 13:38:43 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: patches@armlinux.org.uk,
	Russell King <rmk+kernel@arm.linux.org.uk>
Subject: [PATCH v2] ARM: ARM_ERRATA_775420: Spelling s/date/data/
Date: Fri, 25 Oct 2019 13:38:43 +0200
Message-Id: <20191025113843.8029-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_043849_866454_6C087757 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Caching dates is never a good idea ;-)

Fixes: 7253b85cc62d6ff8 ("ARM: 7541/1: Add ARM ERRATA 775420 workaround")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Simon Horman <horms+renesas@verge.net.au>
---
KernelVersion: v5.4-rc4

v2:
  - Add Reviewed-by,
  - Add Fixes.
---
 arch/arm/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8a50efb559f35a2c..b7dbeb652cb1edd5 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1020,7 +1020,7 @@ config ARM_ERRATA_775420
        depends on CPU_V7
        help
 	 This option enables the workaround for the 775420 Cortex-A9 (r2p2,
-	 r2p6,r2p8,r2p10,r3p0) erratum. In case a date cache maintenance
+	 r2p6,r2p8,r2p10,r3p0) erratum. In case a data cache maintenance
 	 operation aborts with MMU exception, it might cause the processor
 	 to deadlock. This workaround puts DSB before executing ISB if
 	 an abort may occur on cache maintenance.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
