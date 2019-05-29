Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B82312D7A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:22:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78bY+wFtHpepnnYnq09j9fwWRUpOM5jVcZRJUxxH/+E=; b=pjhYn68RQIAxio
	NjYkDTOWPVsvP8U01ELZMj81dDsBmuVCSSUQOCZrV+VXIwpVC2ykg7jDLNmUwKT1xLwnUJuuswPB1
	Jv3qRliMZj3b8A4ynDlYc1W5a2rkEFG/s7FXJeqmzws0K2Zk3WQxY03wbTZeR28kYhFnimVH8nFlZ
	AsjmrQqz9tenyJ/0YBoz0oROCQsieO4bV6TsdpGsvCyCYZzrbML3uYQZfAoaEKeVzfZy7paTTdNyy
	1znTrtQhbcDnxsiAcDSvm3j9IPKZaidI/jpt/oZAyQYfKz7nmytwRoGHI9BVb/6oplU89b6Raab4f
	N01hFliSlRJnkEMTAa8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtqt-0007k1-5w; Wed, 29 May 2019 08:22:27 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtqP-0007P1-LN
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 08:22:01 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cee41250001>; Wed, 29 May 2019 01:21:57 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 29 May 2019 01:21:57 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 29 May 2019 01:21:57 -0700
Received: from HQMAIL104.nvidia.com (172.18.146.11) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 29 May
 2019 08:21:57 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL104.nvidia.com
 (172.18.146.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Wed, 29 May 2019 08:21:56 +0000
Received: from josephl-linux.nvidia.com (Not Verified[10.19.108.132]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5cee41230000>; Wed, 29 May 2019 01:21:56 -0700
From: Joseph Lo <josephl@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>, Peter De Schrijver
 <pdeschrijver@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, Rob
 Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V4 3/8] clk: tegra: Export functions for EMC clock scaling
Date: Wed, 29 May 2019 16:21:34 +0800
Message-ID: <20190529082139.5581-4-josephl@nvidia.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529082139.5581-1-josephl@nvidia.com>
References: <20190529082139.5581-1-josephl@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559118117; bh=13pp1F63Nzgu9M/P9qq/n3xX2+XBsdK0+qoNt5EjMc8=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:MIME-Version:X-NVConfidentiality:
 Content-Transfer-Encoding:Content-Type;
 b=OrQx8DRPBGLS8sV31cQ8LVW5oAy4bqLBZT+HCn5jC5lfJy+0118anSiz/1aN/r6yn
 0RcwXDTxscUaWapoTtH8S6hH4PsR39HcizCwtlc/CimjSMp3RsMG0AnsmDfFvIPObN
 PQjAunLeAownFpwuWpBep1k7eBxedGdtCVGqNLq9nJXRqnpVhZ+u6MgQJ5kYt/fjF9
 U6cs+4gt9w+qV0w8mJWIFcPYKN3B1kHTY6tv6t4aNV/v7kQZSfXBUtDUwsoRquAlhn
 XyNQ69rhrv6mhADeOhHdmYthGU7mrQiTFLh+sZvCJHU2STJjPBVj3tCq+Wq97VzScW
 75V//LW7kQnww==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_012158_324601_B275762A 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Joseph Lo <josephl@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Export functions to allow accessing the CAR register required by EMC
clock scaling. These functions will be used to access the CAR register
as part of the scaling sequence.

Signed-off-by: Joseph Lo <josephl@nvidia.com>
---
v4:
- no change
v3:
- split to 3 patches from the previous version
---
 drivers/clk/tegra/clk-tegra210.c | 36 ++++++++++++++++++++++++++++++++
 include/linux/clk/tegra.h        |  5 +++++
 2 files changed, 41 insertions(+)

diff --git a/drivers/clk/tegra/clk-tegra210.c b/drivers/clk/tegra/clk-tegra210.c
index a985faa4a3c1..1d52354820ca 100644
--- a/drivers/clk/tegra/clk-tegra210.c
+++ b/drivers/clk/tegra/clk-tegra210.c
@@ -47,6 +47,7 @@
 #define CLK_SOURCE_LA 0x1f8
 #define CLK_SOURCE_SDMMC2 0x154
 #define CLK_SOURCE_SDMMC4 0x164
+#define CLK_SOURCE_EMC_DLL 0x664
 
 #define PLLC_BASE 0x80
 #define PLLC_OUT 0x84
@@ -234,6 +235,10 @@
 #define RST_DFLL_DVCO 0x2f4
 #define DVFS_DFLL_RESET_SHIFT 0
 
+#define CLK_RST_CONTROLLER_CLK_OUT_ENB_X_SET	0x284
+#define CLK_RST_CONTROLLER_CLK_OUT_ENB_X_CLR	0x288
+#define CLK_OUT_ENB_X_CLK_ENB_EMC_DLL		BIT(14)
+
 #define CLK_RST_CONTROLLER_RST_DEV_Y_SET 0x2a8
 #define CLK_RST_CONTROLLER_RST_DEV_Y_CLR 0x2ac
 
@@ -560,6 +565,37 @@ void tegra210_set_sata_pll_seq_sw(bool state)
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
+u32 tegra210_clk_emc_get_setting(void)
+{
+	u32 val;
+
+	val = readl_relaxed(clk_base + CLK_SOURCE_EMC);
+
+	return val;
+}
+EXPORT_SYMBOL_GPL(tegra210_clk_emc_get_setting);
+
 static void tegra210_generic_mbist_war(struct tegra210_domain_mbist_war *mbist)
 {
 	u32 val;
diff --git a/include/linux/clk/tegra.h b/include/linux/clk/tegra.h
index afb9edfa5d58..b212c332b6e0 100644
--- a/include/linux/clk/tegra.h
+++ b/include/linux/clk/tegra.h
@@ -129,5 +129,10 @@ extern void tegra210_set_sata_pll_seq_sw(bool state);
 extern void tegra210_put_utmipll_in_iddq(void);
 extern void tegra210_put_utmipll_out_iddq(void);
 extern int tegra210_clk_handle_mbist_war(unsigned int id);
+extern void tegra210_clk_emc_dll_enable(bool flag);
+extern void tegra210_clk_emc_dll_update_setting(u32 emc_dll_src_value);
+extern void tegra210_clk_emc_update_setting(u32 emc_src_value);
+extern u32 tegra210_clk_emc_get_setting(void);
+
 
 #endif /* __LINUX_CLK_TEGRA_H_ */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
