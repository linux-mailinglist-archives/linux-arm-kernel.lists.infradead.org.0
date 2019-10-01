Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFD0C4267
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 23:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pprcqL2AoK0yl1GFK3uSkmTsLVS3CnNSaZ/zKULvYSs=; b=THFn9a1WqNuO/8
	++2dJdTeQCdfuHPuGCZOe3WQPBSB39vCy7ySGJwscP//cSz+iiKwTCFxhK8QktJDuVaWtMw4W7KJe
	gFGLGAUkIfHmXmd0HQY33Qz0uV6c6aIvP4QfN9FYxKjBWqc6Ekq0mexQk/PDpxhXCJoN318glszOO
	wI/okT5B9ebDaNb34rW3VzX2gwlawiEpdcZMJISLI9ClUPSjuFi/cghOclGRPrUimmK1vADEH/Usj
	ne6siRj8Bv2hVS8WGUHa/1UJyUdNBGsZtqML6pjzaXYZQ2a9YOL8wY8TiFH9NOtGrtuxJYGRQGnsH
	mcKC65xqdG82mIocQUFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFPTY-0006pj-RR; Tue, 01 Oct 2019 21:14:28 +0000
Received: from avon.wwwdotorg.org ([104.237.132.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFPTB-0006ho-Pp
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 21:14:07 +0000
Received: from swarren-lx1.nvidia.com (unknown [216.228.112.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by avon.wwwdotorg.org (Postfix) with ESMTPSA id 4BBCC1C0B2F;
 Tue,  1 Oct 2019 15:14:03 -0600 (MDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at avon.wwwdotorg.org
From: Stephen Warren <swarren@wwwdotorg.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>
Subject: [PATCH 2/4] ARM: tegra: Enable PLLP bypass during Tegra124 LP1
Date: Tue,  1 Oct 2019 15:13:44 -0600
Message-Id: <20191001211346.104400-2-swarren@wwwdotorg.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191001211346.104400-1-swarren@wwwdotorg.org>
References: <20191001211346.104400-1-swarren@wwwdotorg.org>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_141405_871229_6307DAB6 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stephen Boyd <sboyd@kernel.org>, linux-tegra@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stephen Warren <swarren@nvidia.com>

For a little over a year, U-Boot has configured the flow controller to
perform automatic RAM re-repair on off->on power transitions of the CPU
rail1]. This is mandatory for correct operation of Tegra124. However, RAM
re-repair relies on certain clocks, which the kernel must enable and
leave running. PLLP is one of those clocks. This clock is shut down
during LP1 in order to save power. Enable bypass (which I believe routes
osc_div_clk, essentially the crystal clock, to the PLL output) so that
this clock signal toggles even though the PLL is not active. This is
required so that LP1 power mode (system suspend) operates correctly.

The bypass configuration must then be undone when resuming from LP1, so
that all peripheral clocks run at the expected rate. Without this, many
peripherals won't work correctly; for example, the UART baud rate would
be incorrect.

NVIDIA's downstream kernel code only does this if not compiled for
Tegra30, so the added code is made conditional upon the chip ID. NVIDIA's
downstream code makes this change conditional upon the active CPU
cluster. The upstream kernel currently doesn't support cluster switching,
so this patch doesn't test the active CPU cluster ID.

[1] 3cc7942a4ae5 ARM: tegra: implement RAM repair

Reported-by: Jonathan Hunter <jonathanh@nvidia.com>
Cc: stable@vger.kernel.org
Signed-off-by: Stephen Warren <swarren@nvidia.com>
---
 arch/arm/mach-tegra/sleep-tegra30.S | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/mach-tegra/sleep-tegra30.S b/arch/arm/mach-tegra/sleep-tegra30.S
index b408fa56eb89..6922dd8d3e2d 100644
--- a/arch/arm/mach-tegra/sleep-tegra30.S
+++ b/arch/arm/mach-tegra/sleep-tegra30.S
@@ -370,6 +370,14 @@ _pll_m_c_x_done:
 	pll_locked r1, r0, CLK_RESET_PLLC_BASE
 	pll_locked r1, r0, CLK_RESET_PLLX_BASE
 
+	tegra_get_soc_id TEGRA_APB_MISC_BASE, r1
+	cmp	r1, #TEGRA30
+	beq	1f
+	ldr	r1, [r0, #CLK_RESET_PLLP_BASE]
+	bic	r1, r1, #(1<<31)	@ disable PllP bypass
+	str	r1, [r0, #CLK_RESET_PLLP_BASE]
+1:
+
 	mov32	r7, TEGRA_TMRUS_BASE
 	ldr	r1, [r7]
 	add	r1, r1, #LOCK_DELAY
@@ -630,7 +638,10 @@ tegra30_switch_cpu_to_clk32k:
 	str	r0, [r4, #PMC_PLLP_WB0_OVERRIDE]
 
 	/* disable PLLP, PLLA, PLLC and PLLX */
+	tegra_get_soc_id TEGRA_APB_MISC_BASE, r1
+	cmp	r1, #TEGRA30
 	ldr	r0, [r5, #CLK_RESET_PLLP_BASE]
+	orrne	r0, r0, #(1 << 31)	@ enable PllP bypass on fast cluster
 	bic	r0, r0, #(1 << 30)
 	str	r0, [r5, #CLK_RESET_PLLP_BASE]
 	ldr	r0, [r5, #CLK_RESET_PLLA_BASE]
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
