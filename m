Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18762979D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nFMLzt0eL8+wtogqD6Wesw7nPm5RjwXesP9+Bi170n4=; b=gyX4uhB3kXNIYxJapqNGLlQ7iU
	AGxRDUiaWeqkCpUXprnP7PdDXf+XZwUZ33zwcrV5cetlkmFCLF+jDG35oaNnbnO6flaByO2aDM2bL
	f8KAMzzYVpaAzgoyDNVMlVPN8zCY2B8IzzLjnUBWYCDjTn3Hr5UKXlvH0cakkUVzUi4iSKiY+c96v
	wgOCKxk6rkbhVQQPJdR7yThdAEN1Eqd70s+Xkp5cgVJV3P+uuDYiuB2NcH6s4MNkE/RY0yYsDDRFR
	TxAONiEw563ZM/lHtKin0Cp/U/Yg3fPNaBwFhCG5lbRgKE1SPmW2W6tCeXDUcdqMS23ikLoBbWJHn
	8838Wu0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Q0l-0000YN-Au; Wed, 21 Aug 2019 12:46:47 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Q0G-0000MO-9l
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:46:18 +0000
Received: from ramsan ([84.194.98.4]) by albert.telenet-ops.be with bizsmtp
 id rom32000L05gfCL06om3Dn; Wed, 21 Aug 2019 14:46:06 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i0Q03-0003dz-LK; Wed, 21 Aug 2019 14:46:03 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i0Q03-0007df-KC; Wed, 21 Aug 2019 14:46:03 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Simon Horman <horms@verge.net.au>,
	Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH 1/3] soc: renesas: Enable ARM_ERRATA_814220 for affected
 Cortex-A7
Date: Wed, 21 Aug 2019 14:46:00 +0200
Message-Id: <20190821124602.29317-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821124602.29317-1-geert+renesas@glider.be>
References: <20190821124602.29317-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_054616_491847_2397B094 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARM Erratum 814220 affects Cortex-A7 revisions r0p2-r0p5.

Enable automatically support to mitigate the erratum when compiling a
kernel for any of the affected Renesas SoCs:
  - R-Mobile APE6: r0p2,
  - RZ/G1E: r0p5,
  - RZ/G1C: r0p5,
  - R-Car H2: r0p3,
  - R-Car E2: r0p5,
  - RZ/N1: r0p5.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/soc/renesas/Kconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
index 2bbf49e5d441808b..a72d014ea37cc788 100644
--- a/drivers/soc/renesas/Kconfig
+++ b/drivers/soc/renesas/Kconfig
@@ -72,6 +72,7 @@ config ARCH_R8A73A4
 	bool "R-Mobile APE6 (R8A73A40)"
 	select ARCH_RMOBILE
 	select ARM_ERRATA_798181 if SMP
+	select ARM_ERRATA_814220
 	select HAVE_ARM_ARCH_TIMER
 	select RENESAS_IRQC
 
@@ -95,11 +96,13 @@ config ARCH_R8A7744
 config ARCH_R8A7745
 	bool "RZ/G1E (R8A77450)"
 	select ARCH_RCAR_GEN2
+	select ARM_ERRATA_814220
 	select SYSC_R8A7745
 
 config ARCH_R8A77470
 	bool "RZ/G1C (R8A77470)"
 	select ARCH_RCAR_GEN2
+	select ARM_ERRATA_814220
 	select SYSC_R8A77470
 
 config ARCH_R8A7778
@@ -117,6 +120,7 @@ config ARCH_R8A7790
 	bool "R-Car H2 (R8A77900)"
 	select ARCH_RCAR_GEN2
 	select ARM_ERRATA_798181 if SMP
+	select ARM_ERRATA_814220
 	select I2C
 	select SYSC_R8A7790
 
@@ -143,11 +147,13 @@ config ARCH_R8A7793
 config ARCH_R8A7794
 	bool "R-Car E2 (R8A77940)"
 	select ARCH_RCAR_GEN2
+	select ARM_ERRATA_814220
 	select SYSC_R8A7794
 
 config ARCH_R9A06G032
 	bool "RZ/N1D (R9A06G032)"
 	select ARCH_RZN1
+	select ARM_ERRATA_814220
 
 config ARCH_SH73A0
 	bool "SH-Mobile AG5 (R8A73A00)"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
