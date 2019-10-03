Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7304DCB07C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tPHgWgie/tHHGmk2LVEkz1RlKIds6lRah+UQFXB4aqc=; b=gvwWgq/oGxt3cg
	BoKBfChz5BvECe7gq6Kb5K9f/Oq4Y5M/VIk6u/MYXVsGpfEhMG7Jy55iie28A/jAsa8QTGllf4dQs
	9g2VKXySb8ouqpTvh2Q+QT5szIYcknDGsIupp15LkazJvbMQtWtPZ7PXkj6BFmLoVi30g+Zr0Bt1O
	g11PFSsZF9OVyVsNRayaDWCjVKUh1v5B/gHPIsQXuNaNXpFY1yYT3A26ZiJPB5/nYTO3AX6JkAkKm
	HI78mb7tm/KfHhRqgEaILHeRKzcejZEyrHI69QDavxAwXxt2zT0oGK7b98Zl/JaR8td3d1P0Ll3Sg
	iuMBjGk/nW9pw4rWD/5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG84K-0006aH-6G; Thu, 03 Oct 2019 20:51:24 +0000
Received: from avon.wwwdotorg.org ([104.237.132.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG83c-0005wx-EE
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:50:41 +0000
Received: from swarren-lx1.nvidia.com (unknown [216.228.112.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by avon.wwwdotorg.org (Postfix) with ESMTPSA id 3AF0A1C10A8;
 Thu,  3 Oct 2019 14:50:39 -0600 (MDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at avon.wwwdotorg.org
From: Stephen Warren <swarren@wwwdotorg.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>
Subject: [PATCH V3 4/4] ARM: tegra: use clk_m CPU on Tegra124 LP1 resume
Date: Thu,  3 Oct 2019 14:50:33 -0600
Message-Id: <20191003205033.98381-4-swarren@wwwdotorg.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003205033.98381-1-swarren@wwwdotorg.org>
References: <20191003205033.98381-1-swarren@wwwdotorg.org>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_135040_528224_72E95398 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stephen Boyd <sboyd@kernel.org>, linux-tegra@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stephen Warren <swarren@nvidia.com>

Configure the clock controller to set an alternate clock for the CPU when
it receives an IRQ during LP1 (system suspend). Specifically, use clk_m
(the crystal) rather than clk_s (a 32KHz clock). Such an IRQ will be the
LP1 wake event. This reduces the amount of time taken to resume from LP1.

NVIDIA's downstream kernel executes this code on both Tegra30 and
Tegra124, so it appears OK to make this change unconditionally.

Signed-off-by: Stephen Warren <swarren@nvidia.com>
---
v3: No change.
v2: No change.
---
 arch/arm/mach-tegra/sleep-tegra30.S | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-tegra/sleep-tegra30.S b/arch/arm/mach-tegra/sleep-tegra30.S
index 6191f9456288..ba5e9c07d1b6 100644
--- a/arch/arm/mach-tegra/sleep-tegra30.S
+++ b/arch/arm/mach-tegra/sleep-tegra30.S
@@ -670,8 +670,12 @@ tegra30_switch_cpu_to_clk32k:
 	pll_iddq_entry r1, r5, CLK_RESET_PLLX_MISC3, CLK_RESET_PLLX_MISC3_IDDQ
 _no_pll_in_iddq:
 
-	/* switch to CLKS */
-	mov	r0, #0	/* brust policy = 32KHz */
+	/*
+	 * Switch to clk_s (32KHz); bits 28:31=0
+	 * Enable burst on CPU IRQ; bit 24=1
+	 * Set IRQ burst clock source to clk_m; bits 10:8=0
+	 */
+	mov	r0, #(1 << 24)
 	str	r0, [r5, #CLK_RESET_SCLK_BURST]
 
 	ret	lr
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
