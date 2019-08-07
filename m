Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C517C848D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 11:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oslpBm3TBIywaOWTVnxCNLXue9G4vXqrCHc7BSQc3Gc=; b=ect4p5xP2vKzZ6
	CUkxHRDswad3M1cLGTfB+kYwyviWkl/nza7t+WUOfXYdt/8pY80YcfSrEN0SEvxDbKtqSU7jLJVPb
	71ZMet6KNQfmaMOiIxvN4rJ3BwHISSELHu+uG/fmmHMAA8nXLJarQiGxf3DtPLeX624hUsE2VUhpf
	uVUS6w0TBl9M8AUVYHxVRXglWEUu9WydMIjis/10kvE0ore0Yvlq9X6K6aeAH/xlGuuDPNXa+Vdzm
	zCpDk08ejwDjHnLqCbPVThvoN3J/VKOx2jB/W4JYfFq7IDfKnexqp17MtvDMM7tjH3MtR6M/N2SZC
	qmzIyUgRbIMbWfOxnz6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIVU-0000qA-9W; Wed, 07 Aug 2019 09:45:20 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIV3-0008Ud-S3
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 09:44:55 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x779ioO7102937;
 Wed, 7 Aug 2019 04:44:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565171090;
 bh=WYojn9LceY76Mlk7Y/OrkqTjskWrmEg3mDRct7IOXUk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=BBrlzK/4ZjX/bMNgogTjSTtX1euRW11CG3ZBYen8IAbGG9eHMkgOEmQZltrcHa5gC
 1hY1s5zdLjyE7mGAzZixVUD6VRJNP8MwTDX9fxRLqPzZUnM/haFhqITRrdSzYRv84l
 0hhtOh+U/fcOEiUw8I4c0nsrHAKPCwnqCYs9h2i0=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x779iovK067638
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 7 Aug 2019 04:44:50 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 7 Aug
 2019 04:44:50 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 7 Aug 2019 04:44:50 -0500
Received: from gomoku.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x779imdS037583;
 Wed, 7 Aug 2019 04:44:49 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 1/3] ARM: OMAP4+: remove pdata quirks for omap4+ iommus
Date: Wed, 7 Aug 2019 12:44:39 +0300
Message-ID: <1565171081-7899-2-git-send-email-t-kristo@ti.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1565171081-7899-1-git-send-email-t-kristo@ti.com>
References: <1565171081-7899-1-git-send-email-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_024453_985515_CF1E073C 
X-CRM114-Status: GOOD (  12.82  )
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

IOMMU driver will be using ti-sysc bus driver for power management control
going forward, and the pdata quirks are not needed for anything anymore.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/mach-omap2/pdata-quirks.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm/mach-omap2/pdata-quirks.c b/arch/arm/mach-omap2/pdata-quirks.c
index 6c6f8fc..58fb0de 100644
--- a/arch/arm/mach-omap2/pdata-quirks.c
+++ b/arch/arm/mach-omap2/pdata-quirks.c
@@ -419,14 +419,6 @@ static void __init omap3_pandora_legacy_init(void)
 }
 #endif /* CONFIG_ARCH_OMAP3 */
 
-#if defined(CONFIG_ARCH_OMAP4) || defined(CONFIG_SOC_OMAP5)
-static struct iommu_platform_data omap4_iommu_pdata = {
-	.reset_name = "mmu_cache",
-	.assert_reset = omap_device_assert_hardreset,
-	.deassert_reset = omap_device_deassert_hardreset,
-};
-#endif
-
 #if defined(CONFIG_SOC_AM33XX) || defined(CONFIG_SOC_AM43XX)
 static struct wkup_m3_platform_data wkup_m3_data = {
 	.reset_name = "wkup_m3",
@@ -642,10 +634,6 @@ static void __init omap3_mcbsp_init(void) {}
 		       &wkup_m3_data),
 #endif
 #if defined(CONFIG_ARCH_OMAP4) || defined(CONFIG_SOC_OMAP5)
-	OF_DEV_AUXDATA("ti,omap4-iommu", 0x4a066000, "4a066000.mmu",
-		       &omap4_iommu_pdata),
-	OF_DEV_AUXDATA("ti,omap4-iommu", 0x55082000, "55082000.mmu",
-		       &omap4_iommu_pdata),
 	OF_DEV_AUXDATA("ti,omap4-smartreflex-iva", 0x4a0db000,
 		       "4a0db000.smartreflex", &omap_sr_pdata[OMAP_SR_IVA]),
 	OF_DEV_AUXDATA("ti,omap4-smartreflex-core", 0x4a0dd000,
-- 
1.9.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
