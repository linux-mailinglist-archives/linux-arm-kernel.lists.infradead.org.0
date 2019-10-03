Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6ACCB07D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7zN2fcKONokXYPdQZKBpN/fwjCqZxXYzhiCl4TSclk=; b=ANWJI9KFL1UOTS
	P6mGh5QOVEVA0oF/Ek3WcsX10LW59kxw/qcsKQaM2eiVgetBuW72S27rH+gswOCWDUzVOwOQm64XC
	JNOGw7yMVK1uymJIfiezpGsug4X5E/05vKGbRybe+iXEjWe9O/e2iFUqHB9/LcvSjEvYpsqvdyMlP
	CkBlKAdYgnZeMxBa/pkQBQ2aqOKxk4BbJ5jDSTOE6euZ9QaoUCaEDwdsjwTMrAZtvFCyipGGRYOzV
	9MJi4itu6EHmf8ERMSfWtTTIbm85Tkv8sEzteJQKEJa1O+jUWUTB9u7NitwR/R2X2kMYjebNrfrPQ
	mcGcMvEcvrOe5PHhd1cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG847-0006LH-8G; Thu, 03 Oct 2019 20:51:11 +0000
Received: from avon.wwwdotorg.org ([104.237.132.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG83b-0005wc-DF
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:50:40 +0000
Received: from swarren-lx1.nvidia.com (unknown [216.228.112.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by avon.wwwdotorg.org (Postfix) with ESMTPSA id 33B9B1C0CB9;
 Thu,  3 Oct 2019 14:50:38 -0600 (MDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at avon.wwwdotorg.org
From: Stephen Warren <swarren@wwwdotorg.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>
Subject: [PATCH V3 3/4] ARM: tegra: modify reshift divider during LP1
Date: Thu,  3 Oct 2019 14:50:32 -0600
Message-Id: <20191003205033.98381-3-swarren@wwwdotorg.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003205033.98381-1-swarren@wwwdotorg.org>
References: <20191003205033.98381-1-swarren@wwwdotorg.org>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_135039_481430_40BF1607 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
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

The reshift hardware module implements the RAM re-repair process. This
module uses PLLP as an input clock during LP1 resume. The input divider
for this clock is typically set for PLLP's normal rate. During LP1
resume, PLLP is bypassed and so runs at the crystal rate, which is much
slower. Consequently, decrease the divider so that the reshift module
runs at a reasonable rate during LP1 resume.

NVIDIA's downstream kernel code only does this if not compiled for
Tegra30, so the added code is made conditional upon the chip ID.

Signed-off-by: Stephen Warren <swarren@nvidia.com>
---
v3: No change.
v2: No change.
---
 arch/arm/mach-tegra/sleep-tegra30.S | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/mach-tegra/sleep-tegra30.S b/arch/arm/mach-tegra/sleep-tegra30.S
index 6922dd8d3e2d..6191f9456288 100644
--- a/arch/arm/mach-tegra/sleep-tegra30.S
+++ b/arch/arm/mach-tegra/sleep-tegra30.S
@@ -59,6 +59,9 @@
 #define CLK_RESET_PLLX_MISC3_IDDQ	3
 #define CLK_RESET_PLLM_MISC_IDDQ	5
 #define CLK_RESET_PLLC_MISC_IDDQ	26
+#define CLK_RESET_PLLP_RESHIFT		0x528
+#define CLK_RESET_PLLP_RESHIFT_DEFAULT	0x3b
+#define CLK_RESET_PLLP_RESHIFT_ENABLE	0x3
 
 #define CLK_RESET_CLK_SOURCE_MSELECT	0x3b4
 
@@ -373,9 +376,13 @@ _pll_m_c_x_done:
 	tegra_get_soc_id TEGRA_APB_MISC_BASE, r1
 	cmp	r1, #TEGRA30
 	beq	1f
+
 	ldr	r1, [r0, #CLK_RESET_PLLP_BASE]
 	bic	r1, r1, #(1<<31)	@ disable PllP bypass
 	str	r1, [r0, #CLK_RESET_PLLP_BASE]
+
+	mov	r1, #CLK_RESET_PLLP_RESHIFT_DEFAULT
+	str	r1, [r0, #CLK_RESET_PLLP_RESHIFT]
 1:
 
 	mov32	r7, TEGRA_TMRUS_BASE
@@ -644,6 +651,10 @@ tegra30_switch_cpu_to_clk32k:
 	orrne	r0, r0, #(1 << 31)	@ enable PllP bypass on fast cluster
 	bic	r0, r0, #(1 << 30)
 	str	r0, [r5, #CLK_RESET_PLLP_BASE]
+	beq	1f
+	mov	r0, #CLK_RESET_PLLP_RESHIFT_ENABLE
+	str	r0, [r5, #CLK_RESET_PLLP_RESHIFT]
+1:
 	ldr	r0, [r5, #CLK_RESET_PLLA_BASE]
 	bic	r0, r0, #(1 << 30)
 	str	r0, [r5, #CLK_RESET_PLLA_BASE]
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
