Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8379E848D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 11:45:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xy8zmSpZWngVx2aXMR9t3/mAVe/XtR1SmbNdAmnFAQA=; b=M/ktfvQlEdhvEV
	HR3eWJLpyzFK4y+B+f56UdbJ89yIjqPtIUgs2ZIF77YcLoYdm1/Mp2E6GZTAMFO6gD4/ZtE1TCB4s
	v6bgyxbVEgqStr8HSuBpVPOsNEKOdScOZH3nkFW9dizhOaq/1FHe62wtgMbSe4RFgRh5NIsk9CmMj
	/VoFs8OBmrzYKrWirKQLvzAZRfu1SmB5y7wOjp/KVFzDpR+E0ZiomSHetl6YNothK69Dt/C6aHF3Y
	M110DHrBmRD2DE6J494ioXFya9Q/66DEtmk7OPPE+EPDXHlqbp1Xy7Hiu17PSk1c9AdnZjbrPQutA
	IO7NJYXfvfFjGadDWhSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIVj-0001il-VG; Wed, 07 Aug 2019 09:45:36 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIV3-0008Ue-S2
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 09:44:55 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x779iq4W102943;
 Wed, 7 Aug 2019 04:44:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565171092;
 bh=DET4bLd9R6fJVFl04ZsNlYyjILosap4hxhkL44UmIlI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=KJh+qigmaKoGPWysJ3NGk5QazzoRwLetG1Q0ypFMcdyJVsHcyDbsC/dnKeFyLRdIQ
 chvb9vqDB7VkR5YfaFHfweK1n4o7uaQswm06nW4OLvVB2vgMKwB7/yx2fDIXXpsc/b
 97XpoMFEkwA/DUPOgfK2m/6L42olrC2HIf8Qt/Kc=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x779iqFh067651
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 7 Aug 2019 04:44:52 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 7 Aug
 2019 04:44:51 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 7 Aug 2019 04:44:51 -0500
Received: from gomoku.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x779imdT037583;
 Wed, 7 Aug 2019 04:44:50 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 2/3] ARM: OMAP2+: Add workaround for DRA7 DSP MStandby errata
 i879
Date: Wed, 7 Aug 2019 12:44:40 +0300
Message-ID: <1565171081-7899-3-git-send-email-t-kristo@ti.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1565171081-7899-1-git-send-email-t-kristo@ti.com>
References: <1565171081-7899-1-git-send-email-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_024453_985691_D0C0CEEF 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suman Anna <s-anna@ti.com>

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
---
 arch/arm/mach-omap2/omap-iommu.c | 43 +++++++++++++++++++++++++++++++++++++---
 1 file changed, 40 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap2/omap-iommu.c b/arch/arm/mach-omap2/omap-iommu.c
index 1392a5b..8f6b6b8 100644
--- a/arch/arm/mach-omap2/omap-iommu.c
+++ b/arch/arm/mach-omap2/omap-iommu.c
@@ -19,14 +19,43 @@
 
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
@@ -39,13 +68,21 @@ int omap_iommu_set_pwrdm_constraint(struct platform_device *pdev, bool request,
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
1.9.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
