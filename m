Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DF0E1AC4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Tl2WcpkF3AyrG4ACC3iYXtzaFe6+xoSNQSEtcebk29o=; b=PLWab0nAgT4b8aM/FOYNyFhYoe
	SvNELaxVRR3CFyKhjvLdDmEqc31TiOnZ45r7yEGx9f+EjMKJdUs2Er6yphQzW0iozV+NL5hGXRmeI
	Vv7T1KYyIzx0Dq4pfIzdd+5gKehPTt49EVPCC/99FsXDe+5Z2jj+mVQVq1J4E8mMetHFtXGIRIAoj
	WLbyMAU0QgN7t4ZorG4uEBBNweBUgCu4ztpBHcmjdFUKSnlkB2dXCl0KdDG6ljN1djfzfD0YLYqjY
	8CtA7v8KKtSFS7Hdn84EHh4u6S6Ir3MbWsWlapM9PihfWC++eE9Ce2eaZNlsV7Eozswxbe8EQn4wL
	E7FrwyFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFtI-0002AM-Q2; Wed, 23 Oct 2019 12:37:28 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFpi-0006mR-10
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:33:49 +0000
Received: from ramsan ([84.194.98.4]) by baptiste.telenet-ops.be with bizsmtp
 id H0Zj2100t05gfCL010Zkg5; Wed, 23 Oct 2019 14:33:44 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFpf-0003tg-Tf; Wed, 23 Oct 2019 14:33:43 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFpf-0003QG-Rr; Wed, 23 Oct 2019 14:33:43 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH v2 02/11] soc: renesas: Add ARCH_R8A77960 for existing R-Car
 M3-W
Date: Wed, 23 Oct 2019 14:33:33 +0200
Message-Id: <20191023123342.13100-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023123342.13100-1-geert+renesas@glider.be>
References: <20191023123342.13100-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_053346_249754_3A0CBD8B 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add CONFIG_ARCH_R8A77960 as a new config symbol for R-Car M3-W
(R8A77960), to replace CONFIG_ARCH_R8A7796, and avoid confusion with
R-Car M3-W+ (R8A77961), which will use CONFIG_ARCH_R8A77961.

Note that for now, CONFIG_ARCH_R8A7796 is retained, and just selects
CONFIG_ARCH_R8A77960.  This relaxes dependencies of other subsystems on
the SoC configuration symbol, and provides a smooth transition path for
config files through "make oldconfig".

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - New.
---
 drivers/soc/renesas/Kconfig       | 8 ++++++--
 drivers/soc/renesas/renesas-soc.c | 2 +-
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
index 328d7c409202e6a5..ce8e86a037d1d704 100644
--- a/drivers/soc/renesas/Kconfig
+++ b/drivers/soc/renesas/Kconfig
@@ -199,10 +199,14 @@ config ARCH_R8A7795
 	help
 	  This enables support for the Renesas R-Car H3 SoC.
 
-config ARCH_R8A7796
-	bool "Renesas R-Car M3-W SoC Platform"
+config ARCH_R8A77960
+	bool
 	select ARCH_RCAR_GEN3
 	select SYSC_R8A77960
+
+config ARCH_R8A7796
+	bool "Renesas R-Car M3-W SoC Platform"
+	select ARCH_R8A77960
 	help
 	  This enables support for the Renesas R-Car M3-W SoC.
 
diff --git a/drivers/soc/renesas/renesas-soc.c b/drivers/soc/renesas/renesas-soc.c
index 45135bc88e277d34..319e47bb1d99cfcf 100644
--- a/drivers/soc/renesas/renesas-soc.c
+++ b/drivers/soc/renesas/renesas-soc.c
@@ -262,7 +262,7 @@ static const struct of_device_id renesas_socs[] __initconst = {
 #ifdef CONFIG_ARCH_R8A7795
 	{ .compatible = "renesas,r8a7795",	.data = &soc_rcar_h3 },
 #endif
-#ifdef CONFIG_ARCH_R8A7796
+#ifdef CONFIG_ARCH_R8A77960
 	{ .compatible = "renesas,r8a7796",	.data = &soc_rcar_m3_w },
 #endif
 #ifdef CONFIG_ARCH_R8A77965
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
