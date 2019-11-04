Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C7FEE9D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 21:40:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgC3BZ6AdHXiI5TwcwYzQR6OAZci3RPbo86PpdWnAUY=; b=J8vL/Ea15QSmyl
	b5xZqdxfyg1JMimU0Wqi6hZIQx4ZrT69rYs8bqw0REy7xQ9Fc1t8MjD2g7LxC+993x6ox5YORBDjL
	6DxsdriHN/fSqLlk3olgSvdsTGdFfDpNhHxuPEAft5tkNIvaZGc4F38wWRjzI3WyRy1tchkPs90FE
	QNqSiCvEY1W2qq/1o9UbjLl11Ph7XPcUpcG+1g6D0zqf65G8XNU0CXX9hlJuGRsMr9MB1vNHGP15J
	G0k2OF+d1tSaC636HOhN4w2fHhh5p+xMp/JXBMzQJ6+BQUwqXSozWRL9IPn+kaE4dk3h2/4+nMhw6
	06TeEiCFHvD0BXzRpMSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRj8z-0003pE-GL; Mon, 04 Nov 2019 20:40:09 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRj7n-00030A-5t
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 20:38:58 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA4KcqlJ127064;
 Mon, 4 Nov 2019 14:38:52 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572899932;
 bh=1Bhj4EOWi0ydAwvul89PG3T7dhu8tO1R32BihtUQ0BY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=w7lZvUbD3U9X7tEz9z7eCbBzH3AniE48WamoMb8jljber4za1D350uDVez5nzAohZ
 DOs/fTX8WQtPVED69FgQSkGws3H02PYoASKuwDxZaUR7NmhSILCt9ebB3oLJKkAyVk
 j1edDDuVP7+Kk2FCNpLLz8Wqz11ggfpUzzpm2A7U=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA4KcqUP116502
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 4 Nov 2019 14:38:52 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 4 Nov
 2019 14:38:37 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 4 Nov 2019 14:38:37 -0600
Received: from ula0869644.dal.design.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA4Kcl4n020670;
 Mon, 4 Nov 2019 14:38:51 -0600
From: Benoit Parrot <bparrot@ti.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Tony Lindgren <tony@atomide.com>, Tero
 Kristo <t-kristo@ti.com>
Subject: [Patch v2 2/5] clk: ti: dra7: add vpe clkctrl data
Date: Mon, 4 Nov 2019 14:38:38 -0600
Message-ID: <20191104203841.3628-3-bparrot@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104203841.3628-1-bparrot@ti.com>
References: <20191104203841.3628-1-bparrot@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_123855_323908_77C9F70F 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Benoit Parrot <bparrot@ti.com>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add clkctrl data for VPE.

Signed-off-by: Benoit Parrot <bparrot@ti.com>
---
 drivers/clk/ti/clk-7xx.c         |  6 ++++++
 include/dt-bindings/clock/dra7.h | 10 ++++++++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/clk/ti/clk-7xx.c b/drivers/clk/ti/clk-7xx.c
index b57fe09b428b..5dd9cad07542 100644
--- a/drivers/clk/ti/clk-7xx.c
+++ b/drivers/clk/ti/clk-7xx.c
@@ -146,6 +146,11 @@ static const struct omap_clkctrl_reg_data dra7_rtc_clkctrl_regs[] __initconst =
 	{ 0 },
 };
 
+static const struct omap_clkctrl_reg_data dra7_vpe_clkctrl_regs[] __initconst = {
+	{ DRA7_VPE_VPE_CLKCTRL, NULL, CLKF_HW_SUP, "dpll_core_h23x2_ck" },
+	{ 0 },
+};
+
 static const struct omap_clkctrl_reg_data dra7_coreaon_clkctrl_regs[] __initconst = {
 	{ DRA7_COREAON_SMARTREFLEX_MPU_CLKCTRL, NULL, CLKF_SW_SUP, "wkupaon_iclk_mux" },
 	{ DRA7_COREAON_SMARTREFLEX_CORE_CLKCTRL, NULL, CLKF_SW_SUP, "wkupaon_iclk_mux" },
@@ -769,6 +774,7 @@ const struct omap_clkctrl_data dra7_clkctrl_data[] __initconst = {
 	{ 0x4a005550, dra7_ipu_clkctrl_regs },
 	{ 0x4a005620, dra7_dsp2_clkctrl_regs },
 	{ 0x4a005720, dra7_rtc_clkctrl_regs },
+	{ 0x4a005760, dra7_vpe_clkctrl_regs },
 	{ 0x4a008620, dra7_coreaon_clkctrl_regs },
 	{ 0x4a008720, dra7_l3main1_clkctrl_regs },
 	{ 0x4a008920, dra7_ipu2_clkctrl_regs },
diff --git a/include/dt-bindings/clock/dra7.h b/include/dt-bindings/clock/dra7.h
index 72f2e8411523..2b765e579b2a 100644
--- a/include/dt-bindings/clock/dra7.h
+++ b/include/dt-bindings/clock/dra7.h
@@ -29,6 +29,11 @@
 #define DRA7_RTC_CLKCTRL_INDEX(offset)	((offset) - DRA7_RTC_CLKCTRL_OFFSET)
 #define DRA7_RTCSS_CLKCTRL	DRA7_RTC_CLKCTRL_INDEX(0x44)
 
+/* vpe clocks */
+#define DRA7_VPE_CLKCTRL_OFFSET	0x60
+#define DRA7_VPE_CLKCTRL_INDEX(offset)	((offset) - DRA7_VPE_CLKCTRL_OFFSET)
+#define DRA7_VPE_CLKCTRL	DRA7_VPE_CLKCTRL_INDEX(0x64)
+
 /* coreaon clocks */
 #define DRA7_SMARTREFLEX_MPU_CLKCTRL	DRA7_CLKCTRL_INDEX(0x28)
 #define DRA7_SMARTREFLEX_CORE_CLKCTRL	DRA7_CLKCTRL_INDEX(0x38)
@@ -192,6 +197,11 @@
 /* rtc clocks */
 #define DRA7_RTC_RTCSS_CLKCTRL	DRA7_CLKCTRL_INDEX(0x44)
 
+/* vpe clocks */
+#define DRA7_VPE_CLKCTRL_OFFSET	0x60
+#define DRA7_VPE_CLKCTRL_INDEX(offset)	((offset) - DRA7_VPE_CLKCTRL_OFFSET)
+#define DRA7_VPE_VPE_CLKCTRL	DRA7_VPE_CLKCTRL_INDEX(0x64)
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
