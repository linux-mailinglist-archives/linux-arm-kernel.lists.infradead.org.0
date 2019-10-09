Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D996D053E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 03:29:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RWBK2lpKzjkpYDzIoeDvxMvYeRU2prFlXDj210oHlUs=; b=sTOlJUsQlS7y+tZzZFliTjcGGz
	ZYo+6rB5g8hGdsFtvTfhzucyN0iSOkcXrjb4avbTZ8hDRF1HR1H5DlyuQb2AAHrixt19AtV1XoCwV
	Zx7HHij0zR587IaYUJHJ7SsWnYGairOLfhP7pLyQno/gxqnpv+XKPW306THX8fjzGHoTBoFHW22nm
	qmnGLjx5Hv/d/DFdQ87UmPGAdiLz1VG7NPFsR08xeiWJhs+ZfkzpRN1meElXrfygGW6SCcD1T3g0V
	FJ5Rca67wE1m3wRFMRI83RyrkZo6IT4skNpdUqsjpdKeiMfBdc+aiu/69uF/9rLfg76es3EsWIimG
	yPanRTFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI0mt-00023Q-50; Wed, 09 Oct 2019 01:29:11 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI0mF-0001hv-M4
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 01:28:33 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 18:28:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="345212608"
Received: from sgsxdev004.isng.intel.com (HELO localhost) ([10.226.88.13])
 by orsmga004.jf.intel.com with ESMTP; 08 Oct 2019 18:28:27 -0700
From: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
To: linux-mmc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] mmc: sdhci-of-arasan: Add Support for Intel LGM SDXC
Date: Wed,  9 Oct 2019 09:28:18 +0800
Message-Id: <20191009012818.32763-3-vadivel.muruganx.ramuthevar@linux.intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191009012818.32763-1-vadivel.muruganx.ramuthevar@linux.intel.com>
References: <20191009012818.32763-1-vadivel.muruganx.ramuthevar@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_182832_053922_14C0F4A6 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, adrian.hunter@intel.com, michal.simek@xilinx.com,
 Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>,
 robh+dt@kernel.org, qi-ming.wu@intel.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>

The current arasan sdhci PHY configuration isn't compatible
with the PHY on Intel's LGM(Lightning Mountain) SoC devices.

Therefore, add a new compatible, to adapt the Intel's LGM
SDXC PHY with arasan-sdhc controller to configure the PHY.

Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 7023cbec4017..55de839a8a5e 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -120,6 +120,12 @@ static const struct sdhci_arasan_soc_ctl_map intel_lgm_emmc_soc_ctl_map = {
 	.hiword_update = false,
 };
 
+static const struct sdhci_arasan_soc_ctl_map intel_lgm_sdxc_soc_ctl_map = {
+	.baseclkfreq = { .reg = 0x80, .width = 8, .shift = 2 },
+	.clockmultiplier = { .reg = 0, .width = -1, .shift = -1 },
+	.hiword_update = false,
+};
+
 /**
  * sdhci_arasan_syscon_write - Write to a field in soc_ctl registers
  *
@@ -384,6 +390,11 @@ static struct sdhci_arasan_of_data intel_lgm_emmc_data = {
 	.pdata = &sdhci_arasan_cqe_pdata,
 };
 
+static struct sdhci_arasan_of_data intel_lgm_sdxc_data = {
+	.soc_ctl_map = &intel_lgm_sdxc_soc_ctl_map,
+	.pdata = &sdhci_arasan_cqe_pdata,
+};
+
 #ifdef CONFIG_PM_SLEEP
 /**
  * sdhci_arasan_suspend - Suspend method for the driver
@@ -489,6 +500,10 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
 		.compatible = "intel,lgm-sdhci-5.1-emmc",
 		.data = &intel_lgm_emmc_data,
 	},
+	{
+		.compatible = "intel,lgm-sdhci-5.1-sdxc",
+		.data = &intel_lgm_sdxc_data,
+	},
 	/* Generic compatible below here */
 	{
 		.compatible = "arasan,sdhci-8.9a",
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
