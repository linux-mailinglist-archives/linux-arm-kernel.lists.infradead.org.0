Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0931D1DD102
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:17:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RI7icI1AdPNnnBTprNXIB+8A9Js7u5EFcXsnBikq8Is=; b=ooqOELBmsx2+Hn
	i2ll6qDo4jBiISeMThs+Qhn9xCEL4s0JkNd9ySZ7Le9FZMnyMi6iHXBPO/B/STbZaoXW2d4OLnV29
	nXXkWJqeICyXRHQobwKSB5DayhmFxT9IshK+60KGxluckN7d3BtnqR7EWhLDJXIpS97SXhADobIuM
	e4pd6MrtsklCWctLsE4AOoxFUHG01+x1FHw16988KoNTwJSoqiqDg+Es2x7nmL+Gg+lKh+6Dtprrq
	2ITLlZ+WVtQcbPnw3Kj1u+CpiR0Mp2G3qW4HkEksdGnSPt9yAivINtObWsS0+S8VPjQY9qDVCCter
	VhBiB9FPjVFs7A/pBQyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmwu-0000K8-Pi; Thu, 21 May 2020 15:17:32 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmw8-0008Ii-5S
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 15:16:46 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04LFGfpH106524;
 Thu, 21 May 2020 10:16:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590074201;
 bh=FLX5BGiA2jzuKm0fysF7agio1KGEJZtEH0AKo+Wdr1Y=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=eJk3qKcMN3dfTb4mMrz5CVeXkKL8CcuoSQLKIBqCn3RKDiReQGk/ckt8d8AcJ8oOG
 mbKrKy0FysIE/VRUWTxtYi8Xc5uE8v3I/m6kzHfK+3VLydKq+qhjlbxrIkitveZkyJ
 8sDONOA6Xhha8GavDKSakG3o7YOQmL8GGPwBmM7Q=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04LFGf6g035534;
 Thu, 21 May 2020 10:16:41 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 May 2020 10:16:41 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 May 2020 10:16:41 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04LFGfQH071720;
 Thu, 21 May 2020 10:16:41 -0500
Received: from localhost ([10.250.48.148])
 by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 04LFGfwq076181;
 Thu, 21 May 2020 10:16:41 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH v2 2/2] remoteproc/k3-dsp: Add support for C71x DSPs
Date: Thu, 21 May 2020 10:16:36 -0500
Message-ID: <20200521151636.28260-3-s-anna@ti.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200521151636.28260-1-s-anna@ti.com>
References: <20200521151636.28260-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_081644_283951_5563C4E5 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Texas Instrument's K3 J721E SoCs have a newer next-generation
C71x DSP Subsystem in the MAIN voltage domain in addition to the
previous generation C66x DSP subsystems. The C71x DSP subsystem is
based on the TMS320C71x DSP CorePac module. The C71x CPU is a true
64-bit machine including 64-bit memory addressing and single-cycle
64-bit base arithmetic operations and supports vector signal processing
providing a significant lift in DSP processing power over C66x DSPs.
J721E SoCs use a C711 (a one-core 512-bit vector width CPU core) DSP
that is cache coherent with the A72 Arm cores.

Each subsystem has one or more Fixed/Floating-Point DSP CPUs, with 32 KB
of L1P Cache, 48 KB of L1D SRAM that can be configured and partitioned as
either RAM and/or Cache, and 512 KB of L2 SRAM configurable as either RAM
and/or Cache. The CorePac also includes a Matrix Multiplication Accelerator
(MMA), a Stream Engine (SE) and a C71x Memory Management Unit (CMMU), an
Interrupt Controller (INTC) and a Powerdown Management Unit (PMU) modules.

Update the existing K3 DSP remoteproc driver to add support for this C71x
DSP subsystem. The firmware loading support is provided by using the newly
added 64-bit ELF loader support, and is limited to images using only
external DDR memory at the moment. The L1D and L2 SRAMs are used as scratch
memory when using as RAMs, and cannot be used for loadable segments. The
CMMU is also not supported to begin with, and the driver is designed to
treat the MMU as if it is in bypass mode.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
v2: 
 - k3_dsp_rproc_prepare/unprepare plugged in dynamically based on local reset,
   C71x doesn't use local resets
 - Dropped the sanity_check ops override, not needed on latest codebase
v1: https://patchwork.kernel.org/patch/11458595/

 drivers/remoteproc/ti_k3_dsp_remoteproc.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/remoteproc/ti_k3_dsp_remoteproc.c b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
index 610fbbf85ee6..2dbed316b6ac 100644
--- a/drivers/remoteproc/ti_k3_dsp_remoteproc.c
+++ b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
@@ -406,8 +406,6 @@ static void *k3_dsp_rproc_da_to_va(struct rproc *rproc, u64 da, size_t len)
 }
 
 static const struct rproc_ops k3_dsp_rproc_ops = {
-	.prepare	= k3_dsp_rproc_prepare,
-	.unprepare	= k3_dsp_rproc_unprepare,
 	.start		= k3_dsp_rproc_start,
 	.stop		= k3_dsp_rproc_stop,
 	.kick		= k3_dsp_rproc_kick,
@@ -617,6 +615,10 @@ static int k3_dsp_rproc_probe(struct platform_device *pdev)
 
 	rproc->has_iommu = false;
 	rproc->recovery_disabled = true;
+	if (data->uses_lreset) {
+		rproc->ops->prepare = k3_dsp_rproc_prepare;
+		rproc->ops->unprepare = k3_dsp_rproc_unprepare;
+	}
 	kproc = rproc->priv;
 	kproc->rproc = rproc;
 	kproc->dev = dev;
@@ -744,6 +746,12 @@ static const struct k3_dsp_mem_data c66_mems[] = {
 	{ .name = "l1dram", .dev_addr = 0xf00000 },
 };
 
+/* C71x cores only have a L1P Cache, there are no L1P SRAMs */
+static const struct k3_dsp_mem_data c71_mems[] = {
+	{ .name = "l2sram", .dev_addr = 0x800000 },
+	{ .name = "l1dram", .dev_addr = 0xe00000 },
+};
+
 static const struct k3_dsp_dev_data c66_data = {
 	.mems = c66_mems,
 	.num_mems = ARRAY_SIZE(c66_mems),
@@ -751,8 +759,16 @@ static const struct k3_dsp_dev_data c66_data = {
 	.uses_lreset = true,
 };
 
+static const struct k3_dsp_dev_data c71_data = {
+	.mems = c71_mems,
+	.num_mems = ARRAY_SIZE(c71_mems),
+	.boot_align_addr = SZ_2M,
+	.uses_lreset = false,
+};
+
 static const struct of_device_id k3_dsp_of_match[] = {
 	{ .compatible = "ti,j721e-c66-dsp", .data = &c66_data, },
+	{ .compatible = "ti,j721e-c71-dsp", .data = &c71_data, },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, k3_dsp_of_match);
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
