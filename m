Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB25C1A3960
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 19:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwgR2i/jkyTT2/RllsxKcsx5nnKFAyvJxZN9AVHX81w=; b=Y6oz4looNLUtEb
	24I21UyxZH5vKnKiaom/lS314yvfmoBwdiSszyssyJKt/2CQco68tPwuP/tqMKBdUMBQ9zBYx96pA
	MoqT311YTl2s5OBz2FDbFzLqjBWgTKkBiRMi9fwUKGicPhEP+t671a6xpDOjQkxH9KvvnLmbMs+1c
	sRnGhzWbupFLOSIQsxiOd96rbQEgWizUpOoaM/2FKGd3sRbcrHietdozgIP4w6QerxZ1wZvIktZbB
	17+BeYiSnAbLRhRkw6PMzDpPpDQ/5w/3Jk7YPj1P0gbot2yIXCCkGQSonL0ic2a7JJGvc+Ju0Sqne
	wucu2osVioWOAPOJ71xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbNn-0007El-K1; Thu, 09 Apr 2020 17:54:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbMH-0005vy-Gh
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 17:52:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id j2so1143491wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 10:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w2XWmn2IMve7ztaoE+kNvmQfiIn4SeEph/EH4R+cFe0=;
 b=HU25nZds50xgXaMVYaaR8zQTsdjpOuy2nsbfcKv+XF7AL/K54wXlVVU42XbtvcV/IJ
 50ThtHplKGBzrt16sjOE5ReMK1xcqhpnRyUqU+55bgI0ofak3v3xNJMd45ZbYO0pkcvA
 GZ1ZgcOU5mm7gTAL5foqAXAq3BLOi5+UOyBzmlbdwaGx3ns+tRgjj7I8Odtb73JdVMMi
 jKuzZOgj/OyQVa4YQDRbYwtX+e3SfcpkEVFL6DLd8rOYHGHRAVfxgmbQ/1tYt8ponfUE
 xfwsRH6g2g0tq6HO5YNEzdmtDXjCQZOV7DZNkNyE/EAYd63JMrZzEZrWCQ9ghgkgC9MR
 TWtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w2XWmn2IMve7ztaoE+kNvmQfiIn4SeEph/EH4R+cFe0=;
 b=KhvOhSTex3TOUotDKI/mtt2Z5D3FrxkTtK19l6BDy116MZMwNFr/6TR8G1lZkkYZMP
 GwErPyrdwMDOsvB4lPZyBsJk9oBuXFRZtZKQfNCiuj7r1d9JpTjseP49426TiEy60cR+
 xEMrTa6jiGNn0EsAVCFjt2KDd8ZXenmWs+06rbpltmFynkLS2d0z3/Ep21246SaRppQn
 rPJWXdHtQafKLZOh9xrwIzgqmim/ptoa76+XLD9FVVgtecaDKKTXy6Dgkgqj8bUcgvyA
 PH4IUOJrcIVMzOIoJ2KqR5ZhAKfYjAPUipeCL6P2NshXjLoqiD0nOCRXTzKJ8ursR0b2
 ywTA==
X-Gm-Message-State: AGi0PuY1W4aKgQtCWYpjovZezQBJH3lMEy9V3P3BD+Q+5tYWe/k+m5T6
 17FSXjTT9emyfvZpILP4dNI=
X-Google-Smtp-Source: APiQypKwfR4vjCF7ir++sU76P7m313N0fGNZ69wsA4xwew9Wuf+CnX9oMnlZlVWfxvmNtnYvI+ZHmQ==
X-Received: by 2002:adf:8b5c:: with SMTP id v28mr320365wra.98.1586454776272;
 Thu, 09 Apr 2020 10:52:56 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id q143sm2600501wme.31.2020.04.09.10.52.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:52:55 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 06/14] clk: tegra: Export functions for EMC clock scaling
Date: Thu,  9 Apr 2020 19:52:30 +0200
Message-Id: <20200409175238.3586487-7-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409175238.3586487-1-thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_105257_578131_5F8451C4 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
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
- remove tegra210_clk_emc_get_setting() which is no longer needed

 drivers/clk/tegra/clk-tegra210.c | 26 ++++++++++++++++++++++++++
 include/linux/clk/tegra.h        |  3 +++
 2 files changed, 29 insertions(+)

diff --git a/drivers/clk/tegra/clk-tegra210.c b/drivers/clk/tegra/clk-tegra210.c
index 57d97e87d870..798920ec50e9 100644
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
