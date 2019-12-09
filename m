Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E77D2116F0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:35:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0eZNRL50VsGCqWK+SPkChXpa7sBMyFnoRr8haf3HOFQ=; b=kaXTRte85xDeA1
	H5mc5eKStOX74CoWVtbySR1EEgedvH0lJpoMEEwY+K+1qikwKeGvpGNwwnUA/tlFvpHw303pm1bP7
	z5eKV5qkuF6R/113Jg+YYmD4S9re3XamthBXqW44P8FWvt+uOazj6REztCcIxROTvMjz67pf8gmMA
	NpIYAG1QMtEB+aT6HnexGqSVn48CMJw2UT2jqajKEL9/4R4CFG2lPPwMTXUfcbNOOiw6HUTn3C291
	a21F1iuHGZMz0j9TPz/JYqEqBwfg9WtOjYm0eUK3JwQqFFxW4y6YLhBuzp0B5hpbvYgTgD8r+xy80
	laOLA9u5m3oeKhk0HEyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieK8Y-0000NE-Vz; Mon, 09 Dec 2019 14:35:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieK8F-0000EF-0h
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:35:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id c14so16447910wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 06:35:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pVJO7p0o9DPYlpTp+A/mOyMkXB2XW+/pQeD4jA/+TpU=;
 b=slDLM5ysQZRF/kAf091dU61vqS/sYFT6gNsGh2WEcykkjVPXwbeTsxqTNOJcE7Kmd6
 r0FcyA3FvQq3Kg+1fM25y+MtJqKomOzLLMlC3DFSVay3ZXqU3Sxul/A7GmxUk165D98E
 7HMoPXAA/J6Tb+uqx9bhgKyYjA4VTCZv0amIhXDroQeImV1sts1yaMvb3ysJj+Kk2z3y
 mlrhiGK0mY1gb05MxoY9Yaf5Hxt1Sa3rdv7BVjFz/tIbGwq8aMcg+tw4Me/ObWQXbcKC
 ZCCr4EDB6+c13sJy5r81ITSfDIGSDN6ZCGk7s+4klTcgFjoJs+kvyhPSSkoPz4xUBRSs
 cl2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pVJO7p0o9DPYlpTp+A/mOyMkXB2XW+/pQeD4jA/+TpU=;
 b=TwELBhbf0fLXQl+Dxu3ZsUStl9EhKCNanePOa+K6wBKHo/fDnj+nEix1qTWOpDZV3m
 U1FYfs6FpQQay4VHS3L0tq1NwDh6Co9qvh75DhG1op11fCMP+D2geq/TBsHVvJ8y9YiD
 D5hRTnn6zmW+sYvCcv30uX1JRqNLNQTL56cNssD21NRCPaPfs4b++9Cw4aF+mYS9PtWM
 2oZxB2TaOqpj8mbFRrbahiQHkv7wIXBysG50OulpwuPtNkpVFessPeCePdeIb88WthkE
 1zNE0ZzXw6k232eGHBDTz3VCyWm+GBYYuv2zpQCiPG642Umprb653lD8ptftlJ9f9cPV
 jGzg==
X-Gm-Message-State: APjAAAWlxjIFadVGtaJHv1H62tkpnujYfoh+ag/1YtTeEeQZGdG8IA0G
 RQto6cIN983ZoHZbyEXy6wc=
X-Google-Smtp-Source: APXvYqz/ajgYyuq5a7RespWFuz0Vk3jwJqQTXoyxavQFwncKJO/uP48YzzSmJTg1p52aEz3kHpcR2g==
X-Received: by 2002:a5d:6406:: with SMTP id z6mr2401027wru.294.1575902125397; 
 Mon, 09 Dec 2019 06:35:25 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id q15sm27625737wrr.11.2019.12.09.06.35.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 06:35:24 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 2/4] memory: tegra: Add per-SoC data for Tegra186
Date: Mon,  9 Dec 2019 15:35:19 +0100
Message-Id: <20191209143521.2357178-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191209143521.2357178-1-thierry.reding@gmail.com>
References: <20191209143521.2357178-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_063527_058168_F63DFAFF 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
