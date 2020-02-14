Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0030715E301
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:26:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9da9jik6ISTLCoo54jENtdtk75T1awwvTR2g/g9dwY=; b=IBJ7xxkAleycNG
	QupDBdOFg7voUv+0eLhVOMTCdvwizloo+gMFkT8YIn9McHdFqbxTuo0TrzynQWaCDeUbjyFPwGx8L
	+2MBZGxaKAJmhLGqX8SuUcaM9/1kJALjXHvusIVHDbeExUvkQG6uKeoYM8J5wdpNu8bdjIQXOuHE0
	9vzWsKhSPnTXQkKiZ2Uq2G3/JdjzqtFQVME437+0HuYcJUuSZ0Dg33wc1MUqRbghdfDLKdfhoN8RQ
	fNaNwtDdBbTK18f7g+PqT2NwYK6e74OEhwhxLcM4P+65dnLMIwWrDRthBxlbFAl4d0z1lqGo0Jyju
	/PFxVEe1SzULmPUepAiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dnW-0002Qx-BM; Fri, 14 Feb 2020 16:26:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dTb-0005iw-A5
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:06:07 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3AAE0217F4;
 Fri, 14 Feb 2020 16:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696359;
 bh=gUEGfpV552sDu9X3kZ+5/zD3JhIkLGBT0fJ533BkoeE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fPmuhl8FVe6MBJusVryBmLewCZXjESUGPysUXnzg013OBsPUnQf1NUqRRWmqvNKcd
 ktrhDDKoYqHbFnjOvloei9rOEVpCgYgzyXhsEzfUsWrjW5eb64h8LsHQkAvAPiF6HI
 wTRFA/j/cOy8MMksQAlCnX8lyhyc2i3P9WGXeCTQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 191/459] ARM: OMAP2+: Add workaround for DRA7 DSP
 MStandby errata i879
Date: Fri, 14 Feb 2020 10:57:21 -0500
Message-Id: <20200214160149.11681-191-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080603_438941_D37DAD41 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tony Lindgren <tony@atomide.com>, Sasha Levin <sashal@kernel.org>,
 linux-omap@vger.kernel.org, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suman Anna <s-anna@ti.com>

[ Upstream commit 2f14101a1d760db72393910d481fbf7768c44530 ]

Errata Title:
i879: DSP MStandby requires CD_EMU in SW_WKUP

Description:
The DSP requires the internal emulation clock to be actively toggling
in order to successfully enter a low power mode via execution of the
IDLE instruction and PRCM MStandby/Idle handshake. This assumes that
other prerequisites and software sequence are followed.

Workaround:
The emulation clock to the DSP is free-running anytime CCS is connected
via JTAG debugger to the DSP subsystem or when the CD_EMU clock domain
is set in SW_WKUP mode. The CD_EMU domain can be set in SW_WKUP mode
via the CM_EMU_CLKSTCTRL [1:0]CLKTRCTRL field.

Implementation:
This patch implements this workaround by denying the HW_AUTO mode
for the EMU clockdomain during the power-up of any DSP processor
and re-enabling the HW_AUTO mode during the shutdown of the last
DSP processor (actually done during the enabling and disabling of
the respective DSP MDMA MMUs). Reference counting has to be used to
manage the independent sequencing between the multiple DSP processors.

This switching is done at runtime rather than a static clockdomain
flags value to meet the target power domain state for the EMU power
domain during suspend.

Note that the DSP MStandby behavior is not consistent across all
boards prior to this fix. Please see commit 45f871eec6c0 ("ARM:
OMAP2+: Extend DRA7 IPU1 MMU pdata quirks to DSP MDMA MMUs") for
details.

Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mach-omap2/omap-iommu.c | 43 +++++++++++++++++++++++++++++---
 1 file changed, 40 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap2/omap-iommu.c b/arch/arm/mach-omap2/omap-iommu.c
index f1a6ece8108e4..78247e6f4a720 100644
--- a/arch/arm/mach-omap2/omap-iommu.c
+++ b/arch/arm/mach-omap2/omap-iommu.c
@@ -11,14 +11,43 @@
 
 #include "omap_hwmod.h"
 #include "omap_device.h"
+#include "clockdomain.h"
 #include "powerdomain.h"
 
+static void omap_iommu_dra7_emu_swsup_config(struct platform_device *pdev,
+					     bool enable)
+{
+	static struct clockdomain *emu_clkdm;
+	static DEFINE_SPINLOCK(emu_lock);
+	static atomic_t count;
+	struct device_node *np = pdev->dev.of_node;
+
+	if (!of_device_is_compatible(np, "ti,dra7-dsp-iommu"))
+		return;
+
+	if (!emu_clkdm) {
+		emu_clkdm = clkdm_lookup("emu_clkdm");
+		if (WARN_ON_ONCE(!emu_clkdm))
+			return;
+	}
+
+	spin_lock(&emu_lock);
+
+	if (enable && (atomic_inc_return(&count) == 1))
+		clkdm_deny_idle(emu_clkdm);
+	else if (!enable && (atomic_dec_return(&count) == 0))
+		clkdm_allow_idle(emu_clkdm);
+
+	spin_unlock(&emu_lock);
+}
+
 int omap_iommu_set_pwrdm_constraint(struct platform_device *pdev, bool request,
 				    u8 *pwrst)
 {
 	struct powerdomain *pwrdm;
 	struct omap_device *od;
 	u8 next_pwrst;
+	int ret = 0;
 
 	od = to_omap_device(pdev);
 	if (!od)
@@ -31,13 +60,21 @@ int omap_iommu_set_pwrdm_constraint(struct platform_device *pdev, bool request,
 	if (!pwrdm)
 		return -EINVAL;
 
-	if (request)
+	if (request) {
 		*pwrst = pwrdm_read_next_pwrst(pwrdm);
+		omap_iommu_dra7_emu_swsup_config(pdev, true);
+	}
 
 	if (*pwrst > PWRDM_POWER_RET)
-		return 0;
+		goto out;
 
 	next_pwrst = request ? PWRDM_POWER_ON : *pwrst;
 
-	return pwrdm_set_next_pwrst(pwrdm, next_pwrst);
+	ret = pwrdm_set_next_pwrst(pwrdm, next_pwrst);
+
+out:
+	if (!request)
+		omap_iommu_dra7_emu_swsup_config(pdev, false);
+
+	return ret;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
