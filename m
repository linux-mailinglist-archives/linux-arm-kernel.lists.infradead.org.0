Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 502EC128E6F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 15:12:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxYvXcynGx1XC0NJydEUPWIlvTnn/QEdUciFy4SlvBs=; b=h+wSDmbkBLG1ts
	1ZETlgPxnNTRSxaR9uLww9m9sZPP+elL3VYmadtV3CmrQvRK7Xj9qczKTiJoRBY4348FmpCyued24
	66uFVSLrUNnEXfvO4PKDOmFVYgbQnVH+x8bkf+PEnFRCvMpVj+yXvW+Skx9I3HDRAhmo0LrWa1qR9
	b0XNd1MTcg4I47SFZG3EBWGgOb9THc8T/wMl97oZgdCcWIBMEZLoysk391/Ac1zU7AhrCPkqXxy0c
	ALTfcM/BemsOMpZXhANPx8BmbbY9gClypH8uvqtxGNOohq5oLYEqplvmJDvkNW+0PlOF6eBM/e0Jn
	CH0auQfjUgn83y0L/2Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1xp-0002Uj-5y; Sun, 22 Dec 2019 14:12:09 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1wT-0001YD-RN
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 14:10:47 +0000
Received: by mail-wm1-x344.google.com with SMTP id t14so13676399wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 06:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gypWLRrVcyfmXsR2Lq/xNfZI590shTJoNFs/LRxFM9k=;
 b=fPtWVoeZOG+Jis11ejJC365MxwVBPDZ7g+QyhTF8O+IdzM8l2PadMus/O68hVIW7dS
 kExO0Sd95JI9dUPUMBZ4o2D/rgVdqaks9iXncDetUxmKh3aLr49iOb7pdIDGKNswqNdb
 dTv+eGmE4da/N8WeZaSeM7bnVJpuCmzju1lAFJxNysMvBFhI8tPArJ7fYy5VLHvOHRBl
 GJ7PL5V3b6XI604zjQ7H6S/px+QwhtWSl727uzuTeViD9fRXOx7QnwJWfcYuOILyhUBe
 AJu+FXRo/72xSql53PnOc6CxSfphtgYSFrDd5JdIXj0uzGc5X8uY9X9OPC3FIX67Ldbv
 6Tsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gypWLRrVcyfmXsR2Lq/xNfZI590shTJoNFs/LRxFM9k=;
 b=HsHFrV8A7F/r/R0Np2+5kgBf/P4lG7T/KwugWqT5xaIUC8RWOESqvy+D1zyssTz80h
 B4IVd/ahzQuUOy4Q3FMWrjloR0ZHyiBNeJCwDMknGdg0PPZS3Z+DOFw185mA8iUwQKJb
 c6jZwS5xrvG7sEjdyQojLnTfGteg/ysSFG+kKL2mqz5lYiSK4VE5okmlUxVg7CaI0NEh
 ZX67HHnrOI8c4nI5dCiO9XXnYDwBy/lXRAi4mKG09VI/mfK5nDmJOfjEnAcgZv4pNgcR
 nIpTXRWSarcI80FQttnLUCmh22NZK+zFTCGSncTKrpkMF1GaMciOhSVWN4YIFPPa3+JR
 iE9w==
X-Gm-Message-State: APjAAAXV3xOJC2lD5M0ZodGt5o4YsC0DPSiBm6bhnQv1FbvJErCIWV16
 EyiPM/YwcAs5xcBhsE0RJD0=
X-Google-Smtp-Source: APXvYqwfQQ/i9Xw8UCOw53luspQWYcwLDoCCJmQaYEcZnycgiR6FaeP9pkigflvubw3L7Ds34KO/fg==
X-Received: by 2002:a1c:7901:: with SMTP id l1mr26455323wme.67.1577023844301; 
 Sun, 22 Dec 2019 06:10:44 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id c4sm16570126wml.7.2019.12.22.06.10.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 06:10:43 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 04/13] memory: tegra: Rename tegra_mc to tegra186_mc on
 Tegra186
Date: Sun, 22 Dec 2019 15:10:26 +0100
Message-Id: <20191222141035.1649937-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191222141035.1649937-1-thierry.reding@gmail.com>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_061045_938968_9BB34FF7 
X-CRM114-Status: GOOD (  12.85  )
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

This is just for consistency with the rest of the driver.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/memory/tegra/tegra186.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/memory/tegra/tegra186.c b/drivers/memory/tegra/tegra186.c
index 441213a35930..f72e89877295 100644
--- a/drivers/memory/tegra/tegra186.c
+++ b/drivers/memory/tegra/tegra186.c
@@ -15,7 +15,7 @@ struct tegra_mc {
 	void __iomem *regs;
 };
 
-struct tegra_mc_client {
+struct tegra186_mc_client {
 	const char *name;
 	unsigned int sid;
 	struct {
@@ -24,7 +24,13 @@ struct tegra_mc_client {
 	} regs;
 };
 
-static const struct tegra_mc_client tegra186_mc_clients[] = {
+struct tegra186_mc {
+	struct memory_controller base;
+	struct device *dev;
+	void __iomem *regs;
+};
+
+static const struct tegra186_mc_client tegra186_mc_clients[] = {
 	{
 		.name = "ptcr",
 		.sid = TEGRA186_SID_PASSTHROUGH,
@@ -534,8 +540,8 @@ static const struct tegra_mc_client tegra186_mc_clients[] = {
 
 static int tegra186_mc_probe(struct platform_device *pdev)
 {
+	struct tegra186_mc *mc;
 	struct resource *res;
-	struct tegra_mc *mc;
 	unsigned int i;
 	int err = 0;
 
@@ -551,7 +557,7 @@ static int tegra186_mc_probe(struct platform_device *pdev)
 	mc->dev = &pdev->dev;
 
 	for (i = 0; i < ARRAY_SIZE(tegra186_mc_clients); i++) {
-		const struct tegra_mc_client *client = &tegra186_mc_clients[i];
+		const struct tegra186_mc_client *client = &tegra186_mc_clients[i];
 		u32 override, security;
 
 		override = readl(mc->regs + client->regs.override);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
