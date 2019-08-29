Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F59FA29A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oTc1DF0F+bYlASKaBfaxQFH2aFLbxMr5GNUnoS8/CDI=; b=WvOxWAwnA8V6yR
	nAUKGUHdH46k1yqE6p/toPWBkTkkfwnKnnTyqoz5kWETxz1q7P38aqzPEgonfsMJ1jBAL6Dx5qwHr
	c+ZWQ4SqhqXIVjAbirYy6JZde0D2I2GHDRcSCRvfZ1s1I6GFM82AwCEF4peOc5LaesjAFhexWel9K
	lbpGOvKwv3fCO8XVneDl3D0KangcCdXUKoy15XQ47tEamOWNf6X4lWFsQgP1wTZE06bDAH3hWv+T+
	AB4G8nApED7QLg5w7+b9wH5dJeXE5BCrnhMUKk3HKf6ZDNm6Y05vHbTrOcuIEuVLIyL1bevJJ6z/m
	j0RODhT9lB1D1qZ62SPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Smv-0007wd-H6; Thu, 29 Aug 2019 22:21:05 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SlM-0005Ro-Ja
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:19:30 +0000
Received: by mail-ed1-x542.google.com with SMTP id l26so5139508edr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 15:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I3dBCbPCriJ1MhHHanin6tvTjEPqEJAC2OKYyVBuJ1E=;
 b=AdX2VbAOdZ+H7FSeeFrxQzRRPohJpLM5DZGH3ZkXgoCllCHOPlJUKKPT0l4MrlTYdj
 d/dsXDKnxdKAbmf8/0enJ2OGy/WzxjMHU3dDC2WtKQNyKyVx7HASRB04cm532NWR2/Ha
 CNcvL8L27wMVUe2n5FM2dVqLtVwi5FIwkQptdZH3LZMdT8MHSgQgS/k72pJYsUulTQx9
 spSvmR+KVDe4VNdwgSyfKTfbJgZGnVtcR77MQ6EDYdjuM4hoqvUCvUbcPhIyC3HsJa6o
 Ezx7Q1qwsAq4842kvSCCHbI9N3d/IrPG9y9gaiYwbZBN6Iat6Uwo2VRMxv9Wjs9JfqFL
 Fcvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I3dBCbPCriJ1MhHHanin6tvTjEPqEJAC2OKYyVBuJ1E=;
 b=Ti39+m5MU5RTrXrlAUEVi8hhyGMEBNN6rccIJyL5hL/tU9Nml0DPXvbCfWeQ+dQ2HV
 KJ404h5WnTgBDKDVfsUE52wzE+Hq/fOQTenx4ROGCF89filCNFRnZ0ObpjLNG+8A1QVD
 UmdhmAl0kiECUSYdDGagvaT81l4UZJJAfQ/QuEUsOUmyL+k2pHTtMgymHziQ1zkgohaz
 TjdqKzQv3qqqMEGNK1EjgmlMlcn8AypiGGtn09HnJ8MILr4sh7eOZejBC17h7KCVHmC6
 hFgTrCQXIxV1vVh3wz1hRZcrmx3W3922x8yT9btEF3zLQBdGjDl9oqbBJ0tqGuE394oq
 dSJw==
X-Gm-Message-State: APjAAAXTTm4Mz+SA/RfX+Pkfb03vxQBSSYonCC6M/tjfobKrJsOKj/XW
 NfC065WfkCpHIyeh/Oa6MmPsiasf
X-Google-Smtp-Source: APXvYqyzO48Ea8Rk4sdl7C8hYDhlYf9UQpxQ8/17EQU73TkvPYeTy2bbR0MXkZDtfLkxZpcC5oqqsw==
X-Received: by 2002:a17:906:1395:: with SMTP id
 f21mr10332736ejc.49.1567117167388; 
 Thu, 29 Aug 2019 15:19:27 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id t12sm648261edw.40.2019.08.29.15.19.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 15:19:26 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 6/7] phy: tegra: xusb: Use nvmem API
Date: Fri, 30 Aug 2019 00:19:10 +0200
Message-Id: <20190829221911.24876-7-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190829221911.24876-1-thierry.reding@gmail.com>
References: <20190829221911.24876-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_151928_655808_DB0B4722 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, Nagarjuna Kristam <nkristam@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Instead of using the custom Tegra FUSE API to read the calibration fuses
for the UPHY, use the nvmem API. This makes the dependency between the
two devices more explicit and decouples the drivers from one another.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/phy/tegra/xusb-tegra124.c | 10 +++++-----
 drivers/phy/tegra/xusb-tegra186.c |  7 +++----
 drivers/phy/tegra/xusb-tegra210.c | 10 ++++++----
 3 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra124.c b/drivers/phy/tegra/xusb-tegra124.c
index 98d84920c676..f62905ea4ca5 100644
--- a/drivers/phy/tegra/xusb-tegra124.c
+++ b/drivers/phy/tegra/xusb-tegra124.c
@@ -7,6 +7,7 @@
 #include <linux/io.h>
 #include <linux/mailbox_client.h>
 #include <linux/module.h>
+#include <linux/nvmem-consumer.h>
 #include <linux/of.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
@@ -14,8 +15,6 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 
-#include <soc/tegra/fuse.h>
-
 #include "xusb.h"
 
 #define FUSE_SKU_CALIB_HS_CURR_LEVEL_PADX_SHIFT(x) ((x) ? 15 : 0)
@@ -1653,13 +1652,14 @@ static const struct tegra_xusb_port_ops tegra124_usb3_port_ops = {
 };
 
 static int
-tegra124_xusb_read_fuse_calibration(struct tegra124_xusb_fuse_calibration *fuse)
+tegra124_xusb_read_fuse_calibration(struct tegra124_xusb_padctl *padctl)
 {
+	struct tegra124_xusb_fuse_calibration *fuse = &padctl->fuse;
 	unsigned int i;
 	int err;
 	u32 value;
 
-	err = tegra_fuse_readl(TEGRA_FUSE_SKU_CALIB_0, &value);
+	err = nvmem_cell_read_u32(padctl->base.dev, "calibration", &value);
 	if (err < 0)
 		return err;
 
@@ -1695,7 +1695,7 @@ tegra124_xusb_padctl_probe(struct device *dev,
 	padctl->base.dev = dev;
 	padctl->base.soc = soc;
 
-	err = tegra124_xusb_read_fuse_calibration(&padctl->fuse);
+	err = tegra124_xusb_read_fuse_calibration(padctl);
 	if (err < 0)
 		return ERR_PTR(err);
 
diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index 6f3afaf9398f..0663ed00d748 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -6,6 +6,7 @@
 #include <linux/delay.h>
 #include <linux/io.h>
 #include <linux/module.h>
+#include <linux/nvmem-consumer.h>
 #include <linux/of.h>
 #include <linux/phy/phy.h>
 #include <linux/regulator/consumer.h>
@@ -13,8 +14,6 @@
 #include <linux/clk.h>
 #include <linux/slab.h>
 
-#include <soc/tegra/fuse.h>
-
 #include "xusb.h"
 
 /* FUSE USB_CALIB registers */
@@ -800,7 +799,7 @@ tegra186_xusb_read_fuse_calibration(struct tegra186_xusb_padctl *padctl)
 	if (!level)
 		return -ENOMEM;
 
-	err = tegra_fuse_readl(TEGRA_FUSE_SKU_CALIB_0, &value);
+	err = nvmem_cell_read_u32(dev, "calibration", &value);
 	if (err) {
 		dev_err(dev, "failed to read calibration fuse: %d\n", err);
 		return err;
@@ -819,7 +818,7 @@ tegra186_xusb_read_fuse_calibration(struct tegra186_xusb_padctl *padctl)
 	padctl->calib.hs_term_range_adj = (value >> HS_TERM_RANGE_ADJ_SHIFT) &
 						HS_TERM_RANGE_ADJ_MASK;
 
-	err = tegra_fuse_readl(TEGRA_FUSE_USB_CALIB_EXT_0, &value);
+	err = nvmem_cell_read_u32(dev, "calibration-ext", &value);
 	if (err) {
 		dev_err(dev, "failed to read calibration fuse: %d\n", err);
 		return err;
diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
index 0c0df6897a3b..659b62867012 100644
--- a/drivers/phy/tegra/xusb-tegra210.c
+++ b/drivers/phy/tegra/xusb-tegra210.c
@@ -10,6 +10,7 @@
 #include <linux/io.h>
 #include <linux/mailbox_client.h>
 #include <linux/module.h>
+#include <linux/nvmem-consumer.h>
 #include <linux/of.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
@@ -1946,13 +1947,14 @@ static const struct tegra_xusb_port_ops tegra210_usb3_port_ops = {
 };
 
 static int
-tegra210_xusb_read_fuse_calibration(struct tegra210_xusb_fuse_calibration *fuse)
+tegra210_xusb_read_fuse_calibration(struct tegra210_xusb_padctl *padctl)
 {
+	struct tegra210_xusb_fuse_calibration *fuse = &padctl->fuse;
 	unsigned int i;
 	u32 value;
 	int err;
 
-	err = tegra_fuse_readl(TEGRA_FUSE_SKU_CALIB_0, &value);
+	err = nvmem_cell_read_u32(padctl->base.dev, "calibration", &value);
 	if (err < 0)
 		return err;
 
@@ -1966,7 +1968,7 @@ tegra210_xusb_read_fuse_calibration(struct tegra210_xusb_fuse_calibration *fuse)
 		(value >> FUSE_SKU_CALIB_HS_TERM_RANGE_ADJ_SHIFT) &
 		FUSE_SKU_CALIB_HS_TERM_RANGE_ADJ_MASK;
 
-	err = tegra_fuse_readl(TEGRA_FUSE_USB_CALIB_EXT_0, &value);
+	err = nvmem_cell_read_u32(padctl->base.dev, "calibration-ext", &value);
 	if (err < 0)
 		return err;
 
@@ -1991,7 +1993,7 @@ tegra210_xusb_padctl_probe(struct device *dev,
 	padctl->base.dev = dev;
 	padctl->base.soc = soc;
 
-	err = tegra210_xusb_read_fuse_calibration(&padctl->fuse);
+	err = tegra210_xusb_read_fuse_calibration(padctl);
 	if (err < 0)
 		return ERR_PTR(err);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
