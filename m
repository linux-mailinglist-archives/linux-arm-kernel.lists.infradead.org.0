Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C577128E70
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 15:12:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKQJuy0vLLzBSJN+94s5sh/ZLbI+wauHqR0ZgVkWPig=; b=aL7PGAlYo3MnrV
	Or886WtudcTKsRRXzUAvZU4CG3OPbfwasBFOzVPdqFtjsSERd6AirQstO0JVkBuP2INU4gqmeoGiJ
	5pUfURLqaUqWuyQYnePGBzjpfCmn050j92VU1g8ajkX7pTSdM55x2iegGnLGEyKdsSUQnQ9HnqezE
	Cnne5Mz86bklqc8xaIubrXVXIH2er8aow9JwE0wNNGqiWnxIptXIUlwxHsXaCuuMZUYzO/tgHwA+M
	6qxrOJMsT85zSlNcWkqJA00wJv6Ey+rHKI8Cbhp/s0c2zkJUSj3RFwMI+9AI7A3uJDtVRQHhbvKHD
	yTthfNCoCPSlLbFLgLOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1y6-0002f4-35; Sun, 22 Dec 2019 14:12:26 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1wU-0001Zv-Sg
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 14:10:48 +0000
Received: by mail-wm1-x344.google.com with SMTP id b19so13358433wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 06:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1/mOro4NgYwnpZevvzpvIEMzpkoj/ksBreNeBpDTYAo=;
 b=jwAlx0mOsatYHy659lNHs1JqYLJfwOW7+lDE/v1+aWLfc/ysrbCmdr3v9o/hLAjxKP
 2hUvC3lm6hWE2fyKnK61Rq36WqdvgiLx3i7w0wVik41w/8yfHrRf6/xOV7UETxhgVffA
 7L2oKnsmbRGH71Tn0A61uLqXa7JDv5deudZZViRbpaWD7zBxraKtzafK91lMTiOTbMBk
 hgeT4eB/PY/AoFD7YodB+vafhDj8oi/TnyiqAcXakHJjxs1UATYmWNUIDbOu4YgDQKAi
 +OF+mCJOnzxM5lSzlouewcTgKnXMMy7U3jus6qZjZwFUQ4vRyiCNShJad+uuu5Toiu7i
 850Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1/mOro4NgYwnpZevvzpvIEMzpkoj/ksBreNeBpDTYAo=;
 b=FEZ2LgkBsQqkn0tXsZ4VT+JS6UpanIlDLVajwRBN6NqfiolspHuVyxe/T7QLFDCf0M
 VGjgRThD1DmH4ywyvfCZvFS88NeKGQLfaqnVAgOOLrMh86Hh5HGpwL0OhbVIrTNLLIPO
 vyJJp2cAAvVS55t2ngjxZXBUwZAmtfknsiHKd8f8BhGmHB3IbBzg9Vlzg/ywqz+koDDW
 M1O/E8F98cSmSKiF24reUUyfGAVPuuwev6WO83xNhYBYptFYzw6vOXwtBRjMOghWI1iP
 vAKjciotZB829dp59XFzxjxwaM4mLpQSsu8ceDejA9o2pqnyXIjzCWDM2CZdfzmd40E+
 YJOg==
X-Gm-Message-State: APjAAAVIQGf/YWO5Iw76ViKS5F1M6Efm19JBhyYkL2Zff5iOpPDPVK1s
 SEx+ms4qcK3qeUHGtCJdDdA=
X-Google-Smtp-Source: APXvYqziLMOLPfZ2htSrLwZmXGW0Pd0oOIxjqj2jMcn+NCV3zxFx4bNvvnbirf3o0UrmwIrgXs4a2Q==
X-Received: by 2002:a1c:a745:: with SMTP id q66mr25711997wme.167.1577023845756; 
 Sun, 22 Dec 2019 06:10:45 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id p18sm17057478wmb.8.2019.12.22.06.10.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 06:10:45 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 05/13] memory: tegra: Add per-SoC data for Tegra186
Date: Sun, 22 Dec 2019 15:10:27 +0100
Message-Id: <20191222141035.1649937-6-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191222141035.1649937-1-thierry.reding@gmail.com>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_061046_931300_C3C740EA 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Instead of hard-coding the memory client table, use per-SoC data in
preparation for adding support for other SoCs.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/memory/tegra/tegra186.c | 29 +++++++++++++++++++----------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/drivers/memory/tegra/tegra186.c b/drivers/memory/tegra/tegra186.c
index f72e89877295..ad5c353dba6e 100644
--- a/drivers/memory/tegra/tegra186.c
+++ b/drivers/memory/tegra/tegra186.c
@@ -6,15 +6,11 @@
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/mod_devicetable.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 
 #include <dt-bindings/memory/tegra186-mc.h>
 
-struct tegra_mc {
-	struct device *dev;
-	void __iomem *regs;
-};
-
 struct tegra186_mc_client {
 	const char *name;
 	unsigned int sid;
@@ -24,10 +20,16 @@ struct tegra186_mc_client {
 	} regs;
 };
 
+struct tegra186_mc_soc {
+	const struct tegra186_mc_client *clients;
+	unsigned int num_clients;
+};
+
 struct tegra186_mc {
-	struct memory_controller base;
 	struct device *dev;
 	void __iomem *regs;
+
+	const struct tegra186_mc_soc *soc;
 };
 
 static const struct tegra186_mc_client tegra186_mc_clients[] = {
@@ -538,17 +540,24 @@ static const struct tegra186_mc_client tegra186_mc_clients[] = {
 	},
 };
 
+static const struct tegra186_mc_soc tegra186_mc_soc = {
+	.num_clients = ARRAY_SIZE(tegra186_mc_clients),
+	.clients = tegra186_mc_clients,
+};
+
 static int tegra186_mc_probe(struct platform_device *pdev)
 {
 	struct tegra186_mc *mc;
 	struct resource *res;
 	unsigned int i;
-	int err = 0;
+	int err;
 
 	mc = devm_kzalloc(&pdev->dev, sizeof(*mc), GFP_KERNEL);
 	if (!mc)
 		return -ENOMEM;
 
+	mc->soc = of_device_get_match_data(&pdev->dev);
+
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	mc->regs = devm_ioremap_resource(&pdev->dev, res);
 	if (IS_ERR(mc->regs))
@@ -556,8 +565,8 @@ static int tegra186_mc_probe(struct platform_device *pdev)
 
 	mc->dev = &pdev->dev;
 
-	for (i = 0; i < ARRAY_SIZE(tegra186_mc_clients); i++) {
-		const struct tegra186_mc_client *client = &tegra186_mc_clients[i];
+	for (i = 0; i < mc->soc->num_clients; i++) {
+		const struct tegra186_mc_client *client = &mc->soc->clients[i];
 		u32 override, security;
 
 		override = readl(mc->regs + client->regs.override);
@@ -583,7 +592,7 @@ static int tegra186_mc_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id tegra186_mc_of_match[] = {
-	{ .compatible = "nvidia,tegra186-mc", },
+	{ .compatible = "nvidia,tegra186-mc", .data = &tegra186_mc_soc },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, tegra186_mc_of_match);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
