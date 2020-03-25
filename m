Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB71A193222
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 21:48:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4O+H7asXkZOTuZ22tLHb973EsFbMSWJuxHuvXKi/Wc=; b=QiFsqJBQHUTXLP
	a5vCizVsYimjaK8yxfEk/CniUFCPrvyxgHoLDrlmPKiz4Y8iDVqRSz1D/Oo0ewfpp2EntBN3WCkup
	YqaoPmd+TO/ib502PvvgANRTYrpVshv3xlxX/9wlWCaH6PJYOHhrxA8IeR5Iqsr7YBNmXhKw/HoBu
	UJsyFPOpfDiVeTbX2O5qDscTEn7H8XZarfcUp+lFMnAeKxZcqaLfVUJAoaoY3iLHbi7ZY9J2jwoqe
	ZghLVjYX/jUfCj1AjUjL36NsTVL3TCmtRvkQMKLBa8Tn/KuAjtmMNyABC2ciHVPrHwyQTC7ZndJrP
	EAx0VOU93CTp7riVou4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHCwJ-0003yV-Ke; Wed, 25 Mar 2020 20:47:51 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHCvr-0003q0-0R
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 20:47:24 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02PKl95h077596;
 Wed, 25 Mar 2020 15:47:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585169229;
 bh=su3OnrwWaoP5rlZR/deFktge++Fj5bDZrQZR54Y++tA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ligrhZRBShmDgJ426W+gV5q4sn+soW1IZh5UM05d/JgAZo/LWVOZKwrJxDXAImos5
 TG+wSHZpzHizdogRMIxPmvRAleCaZDzvGMgO5wDOhxMdmlnM1u/capN6/k7ZAmw2UV
 s+kzRXCoMgfi/iAfmi+T42+YiWR7pRxHk9apQSto=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02PKl92Y068125
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 25 Mar 2020 15:47:09 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 25
 Mar 2020 15:47:08 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 25 Mar 2020 15:47:08 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02PKl8Ih080245;
 Wed, 25 Mar 2020 15:47:08 -0500
Received: from localhost ([10.250.35.147])
 by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 02PKl8qq063403;
 Wed, 25 Mar 2020 15:47:08 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 4/4] remoteproc/k3-dsp: Add support for C71x DSPs
Date: Wed, 25 Mar 2020 15:47:01 -0500
Message-ID: <20200325204701.16862-5-s-anna@ti.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200325204701.16862-1-s-anna@ti.com>
References: <20200325204701.16862-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_134723_142172_D441E945 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Clement Leger <cleger@kalray.eu>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org
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
 drivers/remoteproc/ti_k3_dsp_remoteproc.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/remoteproc/ti_k3_dsp_remoteproc.c b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
index 7b712ef74611..48d26f7d5f48 100644
--- a/drivers/remoteproc/ti_k3_dsp_remoteproc.c
+++ b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
@@ -649,6 +649,9 @@ static int k3_dsp_rproc_probe(struct platform_device *pdev)
 
 	rproc->has_iommu = false;
 	rproc->recovery_disabled = true;
+	/* C71x is a 64-bit processor, so plug in generic .sanity_check ops */
+	rproc->ops->sanity_check = rproc_elf_sanity_check;
+
 	kproc = rproc->priv;
 	kproc->rproc = rproc;
 	kproc->dev = dev;
@@ -789,6 +792,12 @@ static const struct k3_dsp_mem_data c66_mems[] = {
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
@@ -796,8 +805,16 @@ static const struct k3_dsp_dev_data c66_data = {
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
