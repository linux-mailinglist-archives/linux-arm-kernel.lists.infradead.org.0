Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C32571801A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 16:21:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xm7BUYSUV60D7RHVWtfkEItfPBWf/RarltOVTJ1r4cA=; b=Ie2kBmFfhOlmhv
	B/UIlaTqlkkBCFkD6rJIEaUm8INvCphe952pPv5ePYE2pZrEmH5QpFDSkf0zLc1eDxpxKicd9Qirb
	H6ArRNVRlUkhPavrKqfvyxL5jZ42y1Xo0AJt5055BcGyiSzOLL3qbCHxr2Mfb3y/6OnpnRoSbiSml
	VhllkK7JPdWGt4bEVlNnoErJxTUQPi0UkraH/01gq6xefiK9LiiL8rT7tm+ne1Bp1FJWXdC+sAMPu
	IrCV3udUN0g4YjjSySjiJmFBlgL0W/C1pVhnwke0viMYAzza0vsqNtw3CZVanTuYu9fmTIMduDGKi
	Swhn7lXwgRNoL7dus4HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBgh4-0002qD-Q9; Tue, 10 Mar 2020 15:21:18 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBgg5-0001kX-D0
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:20:20 +0000
Received: by mail-wr1-x441.google.com with SMTP id s14so2736216wrt.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 08:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ac+20iayhp4+0FnX9pq9ZNATMk94e/yNZak2klt7liY=;
 b=fvFIf0s8tJ7nMhiwYoqjiydXgG4bC0KQkNRaca18ueKV6HcTx8FQWG2bUr/AoWqzOb
 liAZ/jX+9/3EwpFXNhNvOiw0lQ8fHtRLpaI2t1+rBynwu1tCErOb4rnRzxaLgJ8/9cXL
 ns9BNz5uEQiiGMYH0/zII8o1wX1zEeSwBb3NGhvdNXUeGYQFGy028PSKBUJh6YZnQNPx
 x4oJ/8u/I3nI0mNunh3KMhcRxN+7TNkSQyQH58tnLxozeNU7FwGLNbLOD4y0hjoIUWfe
 3Xnn+J4RSYho0qTrwtHmNUThhEzEHS9EwL4/De4YlhadvPVuqMHb++c+WsU3TNqnA/hF
 BA5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ac+20iayhp4+0FnX9pq9ZNATMk94e/yNZak2klt7liY=;
 b=exk+c4P8g3UUK5+S5EVrOgQgzgSbJUKZ/AwVU1PC+qXhOHdzFCbmYeV4Y1m3u0jKIK
 R4PbPRrjzna/iip9MihL5e8xLurdAUqerAIL1gCngA+AF2FRBQcTMRsWX0n8cTuM68h4
 pzFfQPE5Suu32zcaNOV1OezzsGdiNB9vCcjzLTGO6LP1upSa/IGlWbl3evqerBM6O6Aa
 d7AFk22CyjkN8eQzC47eq2xP7IhM+OQsUwDLB+vKWvMxKV9R2jpP7RwhtxbKt0n1xnqL
 kG1Parn042ZeFqtjJFlbHEMWqoKTGkKoodqCwMI7UoofBq1TdkCO/AZ0lpgRsvqdkqM5
 +Zvw==
X-Gm-Message-State: ANhLgQ0nDCBEFqICOPMLQ/DrXWvBENLKxaTo3gIR6Gxu8dzbXDyQHGsx
 0D/tgu9vw4sUouNKtU8reC8=
X-Google-Smtp-Source: ADFU+vv+5coWzF5H1z7jNZwrIOJw0ccmtqYOGmc9003dtqOsXVm8IKrBMBmxJaHP+yjocAhoIv6Hug==
X-Received: by 2002:adf:8501:: with SMTP id 1mr29813544wrh.56.1583853615306;
 Tue, 10 Mar 2020 08:20:15 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id e22sm4369921wme.45.2020.03.10.08.20.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 08:20:14 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v5 2/8] clk: tegra: Export functions for EMC clock scaling
Date: Tue, 10 Mar 2020 16:19:57 +0100
Message-Id: <20200310152003.2945170-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200310152003.2945170-1-thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_082017_473149_27529052 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joseph Lo <josephl@nvidia.com>

Export functions to allow accessing the CAR register required by EMC
clock scaling. These functions will be used to access the CAR register
as part of the scaling sequence.

Signed-off-by: Joseph Lo <josephl@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v5:
- remove tegra210_clk_emc_update_setting() which is no longer needed

 drivers/clk/tegra/clk-tegra210.c | 26 ++++++++++++++++++++++++++
 include/linux/clk/tegra.h        |  3 +++
 2 files changed, 29 insertions(+)

diff --git a/drivers/clk/tegra/clk-tegra210.c b/drivers/clk/tegra/clk-tegra210.c
index f99647b4a71f..0a5be781da60 100644
--- a/drivers/clk/tegra/clk-tegra210.c
+++ b/drivers/clk/tegra/clk-tegra210.c
@@ -37,6 +37,7 @@
 #define CLK_SOURCE_LA 0x1f8
 #define CLK_SOURCE_SDMMC2 0x154
 #define CLK_SOURCE_SDMMC4 0x164
+#define CLK_SOURCE_EMC_DLL 0x664
 
 #define PLLC_BASE 0x80
 #define PLLC_OUT 0x84
@@ -227,6 +228,10 @@
 #define RST_DFLL_DVCO 0x2f4
 #define DVFS_DFLL_RESET_SHIFT 0
 
+#define CLK_RST_CONTROLLER_CLK_OUT_ENB_X_SET	0x284
+#define CLK_RST_CONTROLLER_CLK_OUT_ENB_X_CLR	0x288
+#define CLK_OUT_ENB_X_CLK_ENB_EMC_DLL		BIT(14)
+
 #define CLK_RST_CONTROLLER_RST_DEV_Y_SET 0x2a8
 #define CLK_RST_CONTROLLER_RST_DEV_Y_CLR 0x2ac
 #define CPU_SOFTRST_CTRL 0x380
@@ -555,6 +560,27 @@ void tegra210_set_sata_pll_seq_sw(bool state)
 }
 EXPORT_SYMBOL_GPL(tegra210_set_sata_pll_seq_sw);
 
+void tegra210_clk_emc_dll_enable(bool flag)
+{
+	u32 offset = flag ? CLK_RST_CONTROLLER_CLK_OUT_ENB_X_SET :
+		     CLK_RST_CONTROLLER_CLK_OUT_ENB_X_CLR;
+
+	writel_relaxed(CLK_OUT_ENB_X_CLK_ENB_EMC_DLL, clk_base + offset);
+}
+EXPORT_SYMBOL_GPL(tegra210_clk_emc_dll_enable);
+
+void tegra210_clk_emc_dll_update_setting(u32 emc_dll_src_value)
+{
+	writel_relaxed(emc_dll_src_value, clk_base + CLK_SOURCE_EMC_DLL);
+}
+EXPORT_SYMBOL_GPL(tegra210_clk_emc_dll_update_setting);
+
+void tegra210_clk_emc_update_setting(u32 emc_src_value)
+{
+	writel_relaxed(emc_src_value, clk_base + CLK_SOURCE_EMC);
+}
+EXPORT_SYMBOL_GPL(tegra210_clk_emc_update_setting);
+
 static void tegra210_generic_mbist_war(struct tegra210_domain_mbist_war *mbist)
 {
 	u32 val;
diff --git a/include/linux/clk/tegra.h b/include/linux/clk/tegra.h
index 2b1b35240074..5b0bdb413460 100644
--- a/include/linux/clk/tegra.h
+++ b/include/linux/clk/tegra.h
@@ -131,6 +131,9 @@ extern void tegra210_set_sata_pll_seq_sw(bool state);
 extern void tegra210_put_utmipll_in_iddq(void);
 extern void tegra210_put_utmipll_out_iddq(void);
 extern int tegra210_clk_handle_mbist_war(unsigned int id);
+extern void tegra210_clk_emc_dll_enable(bool flag);
+extern void tegra210_clk_emc_dll_update_setting(u32 emc_dll_src_value);
+extern void tegra210_clk_emc_update_setting(u32 emc_src_value);
 
 struct clk;
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
