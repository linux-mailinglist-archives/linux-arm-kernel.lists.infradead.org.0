Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8664D116F10
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:35:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFVoedY41hGv8ESNzOZaGZ8K9ji64M5l7MoNx9Ccb/s=; b=OxZjOqv8NoNsjn
	EFFOUDUHlIprFvK+RIu5Zz7AVTM1AeYmyEOH0qeA9YHpqG6tfKId1ffxEzDIDKs+b5ZAg67hJnZWw
	pxsEtZjdqwrIGMJsyCk0UrGhuMTZzhz6ucEO8iyCG02tJ8MyJEOHYq1w+bWuUfzHoMc8HIdQsPpTx
	7q0x+Kx6zgUGNcubbdlyAdK8gk22CQyoojpok5mGoutk74C4AyMqa+Z4oRGXI5ml2jXMPKQjbdgky
	HoP2GwZV3R3I+6LIj3LTMHqiuAYBVKV9537dEylWWRnsIMfsvR/r2bm6T1cscFx7vZ+q4JPWpAMhv
	u5TTe9qQ6lReuWL1dILw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieK8j-0000d2-Vy; Mon, 09 Dec 2019 14:35:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieK8G-0000EZ-SL
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:35:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id w15so16522984wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 06:35:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w+/up9hfq8p4ACSSdrH1ZXd7EiQBLXwMXcYJzFgJaOc=;
 b=HNvyAgdEOD2w1gDlLb7eiaFWs4FgSrRvV87ajeNqAR6zqxVbc1EtNYsigYA/Re5VyY
 81BwPZ6odmVs/63pWoUXexjgYemn9M+NIaeVFVY8O11FoZQo56m9p6GU0GY/4Omh/fwW
 CzIV052dK4C6tpfyQxONgseQzFYtdIFGeHi0lMk8TXhJiOhep9+Lv+uPeGIiEPZg53H+
 2EGKsoz9vDoSd2sLVOxejGewI86bw2FxJXpMM3agj0W2mc7f3/qqUk7eOIWvpIUnfpKo
 TRMqIet8S1BNW0i06AJruQ+gp4uqhT+g15r2yjIqLh6B6Q2oHCAsaali4t+bDnd6ntrY
 iI5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w+/up9hfq8p4ACSSdrH1ZXd7EiQBLXwMXcYJzFgJaOc=;
 b=Y9q2FD3Z6ITW6OzYGCSsv1mk6MG07ejfrl7hkVB973TT0xGRWlwWTv0mW/0Yiu/XsJ
 RmkZPdvLN7aso6VGVCXE3W9u/3gXfLtiT4CL5a9BG3acW1ln1E3g8hocD/GMzvWQdTzw
 xs925Y2fgyvhSFdAzNawjZQIY5rwAKNVad/qjif3Er4xuyQy+wBCjX9LaeDRlpHmLhIg
 4HQ7L4+BvrhvqKZOZXT1kpsz+JpxgMUeMp4FrK3+GuqsEVXKK24RLfGrx3kgr9Qmfand
 074KQSFe2POxrg4XucFp463+Hwdm7Zp7qZFpTfnphXprIxiiDZaZ8GSNMV3ApAlljci2
 R2Dg==
X-Gm-Message-State: APjAAAVvzLfxle9z7FnWPdZqiWrb9cMZSZOC3xqSQjr4Z6IRM5cnn8Lf
 CqiDXRTkqg1fjhPFfhm2KU5r8yBq
X-Google-Smtp-Source: APXvYqyKds5tu0qb4MmQnhm021ZUXsdo14wPOu8h0clSObyGcgp7AspA9k6XyVybEIAt3zuxM5Qtsw==
X-Received: by 2002:adf:e6c6:: with SMTP id y6mr2574017wrm.284.1575902127288; 
 Mon, 09 Dec 2019 06:35:27 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id q6sm28906963wrx.72.2019.12.09.06.35.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 06:35:26 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 3/4] memory: tegra: Extract memory client SID programming
Date: Mon,  9 Dec 2019 15:35:20 +0100
Message-Id: <20191209143521.2357178-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191209143521.2357178-1-thierry.reding@gmail.com>
References: <20191209143521.2357178-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_063528_922818_F7DA709B 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

Move programming of the memory client to SID mapping into a separate
function so that it can be reused from multiple call sites.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/memory/tegra/tegra186.c | 49 ++++++++++++++++++---------------
 1 file changed, 27 insertions(+), 22 deletions(-)

diff --git a/drivers/memory/tegra/tegra186.c b/drivers/memory/tegra/tegra186.c
index ad5c353dba6e..57895116c8e5 100644
--- a/drivers/memory/tegra/tegra186.c
+++ b/drivers/memory/tegra/tegra186.c
@@ -32,6 +32,32 @@ struct tegra186_mc {
 	const struct tegra186_mc_soc *soc;
 };
 
+static void tegra186_mc_program_sid(struct tegra186_mc *mc)
+{
+	unsigned int i;
+
+	for (i = 0; i < mc->soc->num_clients; i++) {
+		const struct tegra186_mc_client *client = &mc->soc->clients[i];
+		u32 override, security;
+
+		override = readl(mc->regs + client->regs.override);
+		security = readl(mc->regs + client->regs.security);
+
+		dev_dbg(mc->dev, "client %s: override: %x security: %x\n",
+			client->name, override, security);
+
+		dev_dbg(mc->dev, "setting SID %u for %s\n", client->sid,
+			client->name);
+		writel(client->sid, mc->regs + client->regs.override);
+
+		override = readl(mc->regs + client->regs.override);
+		security = readl(mc->regs + client->regs.security);
+
+		dev_dbg(mc->dev, "client %s: override: %x security: %x\n",
+			client->name, override, security);
+	}
+}
+
 static const struct tegra186_mc_client tegra186_mc_clients[] = {
 	{
 		.name = "ptcr",
@@ -549,7 +575,6 @@ static int tegra186_mc_probe(struct platform_device *pdev)
 {
 	struct tegra186_mc *mc;
 	struct resource *res;
-	unsigned int i;
 	int err;
 
 	mc = devm_kzalloc(&pdev->dev, sizeof(*mc), GFP_KERNEL);
@@ -565,28 +590,8 @@ static int tegra186_mc_probe(struct platform_device *pdev)
 
 	mc->dev = &pdev->dev;
 
-	for (i = 0; i < mc->soc->num_clients; i++) {
-		const struct tegra186_mc_client *client = &mc->soc->clients[i];
-		u32 override, security;
-
-		override = readl(mc->regs + client->regs.override);
-		security = readl(mc->regs + client->regs.security);
-
-		dev_dbg(&pdev->dev, "client %s: override: %x security: %x\n",
-			client->name, override, security);
-
-		dev_dbg(&pdev->dev, "setting SID %u for %s\n", client->sid,
-			client->name);
-		writel(client->sid, mc->regs + client->regs.override);
-
-		override = readl(mc->regs + client->regs.override);
-		security = readl(mc->regs + client->regs.security);
-
-		dev_dbg(&pdev->dev, "client %s: override: %x security: %x\n",
-			client->name, override, security);
-	}
-
 	platform_set_drvdata(pdev, mc);
+	tegra186_mc_program_sid(mc);
 
 	return err;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
