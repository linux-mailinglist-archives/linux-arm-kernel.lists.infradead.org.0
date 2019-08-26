Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF8B9CA4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RxsgOoaLTEt+LtmcjeLzZG8Mo+ri/iVnXXDnQoKjiH8=; b=rV1Oz0rhxnpP8P
	aZiyGy9UsgWVRjXWlwDTbD5Q23FxONMm/o6vOsO1m4R1dblMiu9uAApSD7bmC2iIjmmN3RSgWUOZQ
	rcFf46aTUjT0zSGPE+HaIoezM91O8RhFg4VokghHdUgY+9Nu6zrNTun2kd2fXOlQ+iQTT3gzSAc/p
	cpGHGY6Io+NjA0kTWi16T3DAVpUoCY7UPrtpRTB7LBuQCfNF8/eDOUyS6FceZAPXM16fAfcWyEvYp
	F1+rcsevqOuk088mNjiFXORW/T9mVKIPNLMg5HvrMMM6X1ct6M0QgByGnETN6CMpoGtU6A6z5ucXa
	p6FPm7lldKoogffk3DNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29PJ-0001mC-Nu; Mon, 26 Aug 2019 07:27:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29Ns-0000zq-2R
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 07:25:50 +0000
Received: by mail-wr1-x442.google.com with SMTP id q12so14200103wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 00:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Zdrob6jLCWmAD4MIg2cSWU4L47HdPY2t/Oo0wCYY7Hk=;
 b=eNTsqQO+0IRILvTHpP4U1fThTnEQSQzUrubj1bYbnOVATm6sd6W5aOqxUUWAv7BYEL
 ysIjinLA/yDz9vcpiVmz67jr/wTtqIPTQ4IsAJ2mRUDPXZU0VXvBL26m3Z/l1bGc4cwT
 JBSXRBy4jup0VmK8HKTEfS3tgNsDebGX0YjQEg1eUM4fNtxiWmNVClaj8v859lLRFmue
 6aT2HFHzOZP+cbBPh9a25BNyjVHSjHhpPD6S5wwR8OmKxFEj9o+Xf0EE/FhF9R2i9kJ8
 szWomQyyFGc2IZuCz8ObyAoys8HZvToCMDi1FJkb5upkOd09yKVJ5HaTThausIJCaVvJ
 mfGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Zdrob6jLCWmAD4MIg2cSWU4L47HdPY2t/Oo0wCYY7Hk=;
 b=r08Ru9Y6ZqmXbVsloUkGNtegndl2cHgLIS6cakqLIHx50lRnvF/QuMfbctqOQmpSzS
 dWVlto8xY5WSOS9rHjDuzwTzQEcTGzQpYR5/3Wlk+kY/NQX3qf/3aTT2QUXkrx0e5UZa
 KNOd7RAXh2ArgDXfIKic0CySXVaW1kwOTKOKEHd+dRCn6WLO1FvEUtEm6X95YtcM04VB
 kuDQ4s2ZDr4iuWG+TwERSHCeDIr+gEzXu3fSMrwuBVUTUerKB3EJUaRLf9No09rL6Nfj
 N6TrFHqiCCVraBNsmsCUgTETHdB94Z+2Vn841+zm8aff4pk7xAnPv9972f0xqO/+9uO1
 R9mQ==
X-Gm-Message-State: APjAAAUtPadE9GqJ/Q+BdFX7MQGf317qsdzluGlZAIrKYMtcBebKtEO5
 Lnr2CnEDiU4VRzIzdgLORnVGbA==
X-Google-Smtp-Source: APXvYqxqinN+7WHsvAsFVT1CvNtxu5r6NgRiJ3mCW/RlIKEuf/08fVDXcyLiD4oRQqzLSplFV7uOcA==
X-Received: by 2002:a5d:4490:: with SMTP id j16mr20093838wrq.335.1566804346731; 
 Mon, 26 Aug 2019 00:25:46 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm10821324wmg.45.2019.08.26.00.25.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 00:25:46 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	jbrunet@baylibre.com
Subject: [PATCH v2 4/5] clk: meson: g12a: add support for SM1 CPU 1,
 2 & 3 clocks
Date: Mon, 26 Aug 2019 09:25:38 +0200
Message-Id: <20190826072539.27725-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190826072539.27725-1-narmstrong@baylibre.com>
References: <20190826072539.27725-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_002548_188247_3220E7B3 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Amlogic SM1 can set a dedicated clock frequency for each CPU core by
having a dedicate tree for each core similar to the CPU0 tree.
Like the DSU tree, a supplementaty mux has been added to use the CPU0
frequency instead.

But since the cluster only has a single power rail and shares a single PLL,
it's not worth adding 3 unsused clock tree, so we add only the mux to
select the CPU0 clock frequency for each CPU1, CPU2 and CPU3 cores.

They are set read-only because the early boot stages sets them to select
the CPU0 input clock.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/meson/g12a.c | 60 ++++++++++++++++++++++++++++++++++++++++
 drivers/clk/meson/g12a.h |  2 +-
 2 files changed, 61 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index e00df17f800a..ea4c791f106d 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -824,6 +824,60 @@ static struct clk_regmap sm1_dsu_final_clk = {
 	},
 };
 
+/* Datasheet names this field as "Cpu_clk_sync_mux_sel" bit 0 */
+static struct clk_regmap sm1_cpu1_clk = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPU_CLK_CNTL6,
+		.mask = 0x1,
+		.shift = 24,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpu1_clk",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk.hw,
+			/* This CPU also have a dedicated clock tree */
+		},
+		.num_parents = 1,
+	},
+};
+
+/* Datasheet names this field as "Cpu_clk_sync_mux_sel" bit 1 */
+static struct clk_regmap sm1_cpu2_clk = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPU_CLK_CNTL6,
+		.mask = 0x1,
+		.shift = 25,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpu2_clk",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk.hw,
+			/* This CPU also have a dedicated clock tree */
+		},
+		.num_parents = 1,
+	},
+};
+
+/* Datasheet names this field as "Cpu_clk_sync_mux_sel" bit 2 */
+static struct clk_regmap sm1_cpu3_clk = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPU_CLK_CNTL6,
+		.mask = 0x1,
+		.shift = 26,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpu3_clk",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk.hw,
+			/* This CPU also have a dedicated clock tree */
+		},
+		.num_parents = 1,
+	},
+};
+
 /* Datasheet names this field as "Cpu_clk_sync_mux_sel" bit 4 */
 static struct clk_regmap sm1_dsu_clk = {
 	.data = &(struct clk_regmap_mux_data){
@@ -4576,6 +4630,9 @@ static struct clk_hw_onecell_data sm1_hw_onecell_data = {
 		[CLKID_DSU_CLK_DYN]		= &sm1_dsu_clk_dyn.hw,
 		[CLKID_DSU_CLK_FINAL]		= &sm1_dsu_final_clk.hw,
 		[CLKID_DSU_CLK]			= &sm1_dsu_clk.hw,
+		[CLKID_CPU1_CLK]		= &sm1_cpu1_clk.hw,
+		[CLKID_CPU2_CLK]		= &sm1_cpu2_clk.hw,
+		[CLKID_CPU3_CLK]		= &sm1_cpu3_clk.hw,
 		[NR_CLKS]			= NULL,
 	},
 	.num = NR_CLKS,
@@ -4807,6 +4864,9 @@ static struct clk_regmap *const g12a_clk_regmaps[] = {
 	&sm1_dsu_clk_dyn,
 	&sm1_dsu_final_clk,
 	&sm1_dsu_clk,
+	&sm1_cpu1_clk,
+	&sm1_cpu2_clk,
+	&sm1_cpu3_clk,
 };
 
 static const struct reg_sequence g12a_init_regs[] = {
diff --git a/drivers/clk/meson/g12a.h b/drivers/clk/meson/g12a.h
index 6804fcced6b5..9df4068aced1 100644
--- a/drivers/clk/meson/g12a.h
+++ b/drivers/clk/meson/g12a.h
@@ -256,7 +256,7 @@
 #define CLKID_DSU_CLK_DYN			250
 #define CLKID_DSU_CLK_FINAL			251
 
-#define NR_CLKS					253
+#define NR_CLKS					256
 
 /* include the CLKIDs that have been made part of the DT binding */
 #include <dt-bindings/clock/g12a-clkc.h>
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
