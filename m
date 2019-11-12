Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D00E0F9238
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:26:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LTSu9Qv2h1Nzb4kFY3WYpUoYHRjA2DJ/Bjk52DWENR8=; b=AYgzCH82eQW+b/
	i/CH0jlUkqT2n4LD0DnYrfpmKWIvgtvSjoR01ZqW8Gd4Jk6NXqlyv+Y1hL94FSmjylTSF3H2TT84y
	R6rmEfxxuOKkcVSnOwzi+KOe+caWvsmqdPCWr52y4PCCQpYM23oUyKlQITn6hUlzLQyZH3wcmUZCB
	nXyqQa8lTsPfMZe6vPDbhvn19NUTwIKjsWxpG/eMSI+6Ag1czqZM3c1OngFchyULMcuGrNqAWSS1M
	CWjsnh+ok69i1DJxAHNEnGot/Jny4Gr3y8PJdVSXy7WUywR8WMurXIf5M92TQhBWgY/WfCDBAWKBG
	fV30DwHGLobOBzZ+1AgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUX7h-0001Dj-Q2; Tue, 12 Nov 2019 14:26:25 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUX6I-0007am-VH
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:25:01 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xACEOtNh013024;
 Tue, 12 Nov 2019 08:24:55 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573568695;
 bh=OLANNa/zS4QeJmZdVJHCwy6f1uzgaNDwDH1+yts73FE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=zHIqMtDlwdhEHDIUM1XoWS30YkeATGsHnwEPz8nKAFdpUFgaBH6gw53aYT2JMmBX/
 oxFd0dYuB9TC5E0vuqcslmy1O4OEA4JVvZpXj2YGb5ANataEkdoh3bwXfdhly3y8fs
 QEqeFtxpaIZA3hxWNfgailK9vZhHkEf9X+ysq6iE=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xACEOtII115945
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 12 Nov 2019 08:24:55 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 12
 Nov 2019 08:24:37 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 12 Nov 2019 08:24:37 -0600
Received: from uda0869644b.dal.design.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xACEOrBg036029;
 Tue, 12 Nov 2019 08:24:54 -0600
From: Benoit Parrot <bparrot@ti.com>
To: Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>
Subject: [Patch v3 01/10] clk: ti: dra7: add cam clkctrl data
Date: Tue, 12 Nov 2019 08:27:44 -0600
Message-ID: <20191112142753.22976-2-bparrot@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191112142753.22976-1-bparrot@ti.com>
References: <20191112142753.22976-1-bparrot@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_062459_119660_6A06E307 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Benoit Parrot <bparrot@ti.com>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add clkctrl data for CAM domain.

Signed-off-by: Benoit Parrot <bparrot@ti.com>
---
 drivers/clk/ti/clk-7xx.c         | 19 +++++++++++++++++++
 include/dt-bindings/clock/dra7.h | 10 ++++++++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/clk/ti/clk-7xx.c b/drivers/clk/ti/clk-7xx.c
index 5dd9cad07542..8f2204a36b51 100644
--- a/drivers/clk/ti/clk-7xx.c
+++ b/drivers/clk/ti/clk-7xx.c
@@ -151,6 +151,24 @@ static const struct omap_clkctrl_reg_data dra7_vpe_clkctrl_regs[] __initconst =
 	{ 0 },
 };
 
+static const char * const dra7_cam_gfclk_mux_parents[] __initconst = {
+	"l3_iclk_div",
+	"core_iss_main_clk",
+	NULL,
+};
+
+static const struct omap_clkctrl_bit_data dra7_cam_bit_data[] __initconst = {
+	{ 24, TI_CLK_MUX, dra7_cam_gfclk_mux_parents, NULL },
+	{ 0 },
+};
+
+static const struct omap_clkctrl_reg_data dra7_cam_clkctrl_regs[] __initconst = {
+	{ DRA7_CAM_VIP1_CLKCTRL, dra7_cam_bit_data, CLKF_HW_SUP, "l3_iclk_div" },
+	{ DRA7_CAM_VIP2_CLKCTRL, dra7_cam_bit_data, CLKF_HW_SUP, "l3_iclk_div" },
+	{ DRA7_CAM_VIP3_CLKCTRL, dra7_cam_bit_data, CLKF_HW_SUP, "l3_iclk_div" },
+	{ 0 },
+};
+
 static const struct omap_clkctrl_reg_data dra7_coreaon_clkctrl_regs[] __initconst = {
 	{ DRA7_COREAON_SMARTREFLEX_MPU_CLKCTRL, NULL, CLKF_SW_SUP, "wkupaon_iclk_mux" },
 	{ DRA7_COREAON_SMARTREFLEX_CORE_CLKCTRL, NULL, CLKF_SW_SUP, "wkupaon_iclk_mux" },
@@ -783,6 +801,7 @@ const struct omap_clkctrl_data dra7_clkctrl_data[] __initconst = {
 	{ 0x4a008c00, dra7_atl_clkctrl_regs },
 	{ 0x4a008d20, dra7_l4cfg_clkctrl_regs },
 	{ 0x4a008e20, dra7_l3instr_clkctrl_regs },
+	{ 0x4a009020, dra7_cam_clkctrl_regs },
 	{ 0x4a009120, dra7_dss_clkctrl_regs },
 	{ 0x4a009320, dra7_l3init_clkctrl_regs },
 	{ 0x4a0093b0, dra7_pcie_clkctrl_regs },
diff --git a/include/dt-bindings/clock/dra7.h b/include/dt-bindings/clock/dra7.h
index 2b765e579b2a..2c058a534bab 100644
--- a/include/dt-bindings/clock/dra7.h
+++ b/include/dt-bindings/clock/dra7.h
@@ -34,6 +34,11 @@
 #define DRA7_VPE_CLKCTRL_INDEX(offset)	((offset) - DRA7_VPE_CLKCTRL_OFFSET)
 #define DRA7_VPE_CLKCTRL	DRA7_VPE_CLKCTRL_INDEX(0x64)
 
+/* vip clocks */
+#define DRA7_VIP1_CLKCTRL	DRA7_CLKCTRL_INDEX(0x20)
+#define DRA7_VIP2_CLKCTRL	DRA7_CLKCTRL_INDEX(0x28)
+#define DRA7_VIP3_CLKCTRL	DRA7_CLKCTRL_INDEX(0x30)
+
 /* coreaon clocks */
 #define DRA7_SMARTREFLEX_MPU_CLKCTRL	DRA7_CLKCTRL_INDEX(0x28)
 #define DRA7_SMARTREFLEX_CORE_CLKCTRL	DRA7_CLKCTRL_INDEX(0x38)
@@ -202,6 +207,11 @@
 #define DRA7_VPE_CLKCTRL_INDEX(offset)	((offset) - DRA7_VPE_CLKCTRL_OFFSET)
 #define DRA7_VPE_VPE_CLKCTRL	DRA7_VPE_CLKCTRL_INDEX(0x64)
 
+/* vip clocks */
+#define DRA7_CAM_VIP1_CLKCTRL	DRA7_CLKCTRL_INDEX(0x20)
+#define DRA7_CAM_VIP2_CLKCTRL	DRA7_CLKCTRL_INDEX(0x28)
+#define DRA7_CAM_VIP3_CLKCTRL	DRA7_CLKCTRL_INDEX(0x30)
+
 /* coreaon clocks */
 #define DRA7_COREAON_SMARTREFLEX_MPU_CLKCTRL	DRA7_CLKCTRL_INDEX(0x28)
 #define DRA7_COREAON_SMARTREFLEX_CORE_CLKCTRL	DRA7_CLKCTRL_INDEX(0x38)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
