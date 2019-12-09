Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D17DE116F0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:35:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mI39VwVfnGNuCU4r0345ZEm8GBLyCuy+DkPe4KxlaWE=; b=I06Jt553LbUrCT
	I1nL7c7jKnbRCBFxrAffJpQQtbj4bnVPox/+vNS2VshRh/HIeJpOTzZlpskPxR4NSpQvV6VXCkwkv
	US1qJfIeezGp2oRpwWQm1finA828mqQzmGJxVYlBk3k8z4yO+zZRk0NrGMtEZKxcY426PkdKSeHWk
	xGnwETnWKgHV4E6Tm+Hj2Q4XIQkeXL0hTivjtgcG3NfXZsuqrxlTD59DFZ4qnybzout+hpv2Hzw1k
	+EgsuaEjbI8ynhc6Oxot7Im+rQL/NpwVnkj6ZTypIdwEr2rg4rij4KS26HH8boGug+AkRb5bAx5XC
	QdcAlS3siyCffxyUsVyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieK8M-0000Eh-PD; Mon, 09 Dec 2019 14:35:34 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieK8D-0000E0-Ez
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:35:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so15722701wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 06:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BBAexXy6QHb9b0LuhH81Em9Cd0EIq6JiI9qQ4hCSW+k=;
 b=gNRw9VDKotARI9bsXbnGcfwKOXoKZRpJkLpDbHGTHH91cb0RsiLdx7th7wIZ5ILowj
 vcpTphWVbfb/K32PajiDt5MNzJ+VfRGRMlsTwhAJiihkJr2HouyXmb+onQhmHyqvSPBC
 tSEiKhK8lx3spDOuEjRjfg4OlVnzbd247yP6KUKsB3Jr3VFifD3VhhfFHClsWCKVi6SB
 BTxbXbE6w/jLIirDsPi3W/5T3KrF2iw1akIV3CUV6kLice/e2NBpFYakaRqdV3+1GyTL
 e+jAAKG6GSMydBU05dQjc3mdnl/4NvxJGf3jVOB3KQF4m+PUcJiXveibjZmMQAn8Lhru
 GxRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BBAexXy6QHb9b0LuhH81Em9Cd0EIq6JiI9qQ4hCSW+k=;
 b=VDe9KWGmMfzBI+UdoaRXNCNM17YkgikEfxYSULzVXj9LrfYNEekOIP0KpL4jlW6r42
 iPlOr+FOFrnHYwBfZNiacPmLuYjVBy+7Frk3CVQk8Ht1cDrCPt4E2bqrD2vkMlU1rLjU
 MhWRaBafxEH+82g6E+M0CztKMVePqi7+fkbrPoeCplDddRo6LxiQLjSQUaHE21wJzpBH
 U7WmLd2gnOoXIo5bpmar8ks+sbU9uZdJ8oFfZs3NNk8oN2rLPyq4/vJGhuqU+AhtmiXv
 njrcXq3sfotO+POl89s61ncMisUoB5ihwXnJvG7YtjnDLp//g2r+rF0e/N31U4CKSFOW
 HC8w==
X-Gm-Message-State: APjAAAVYKXgoHpdIjd/NFSYHnedotNd8yKVssE/D1pfgVia57XXIUO9G
 fgCQbZVVA3TP67/Qy1fnitg=
X-Google-Smtp-Source: APXvYqzK816vlvz/TWq9VF4WaYU3ZA5UZptXKhUdxphFLCdhJVBFTg0cVPdLNMXFPPNINd1mXAVfDQ==
X-Received: by 2002:a1c:1d8:: with SMTP id 207mr22431650wmb.155.1575902123504; 
 Mon, 09 Dec 2019 06:35:23 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id g9sm27131800wro.67.2019.12.09.06.35.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 06:35:22 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 1/4] memory: tegra: Rename tegra_mc to tegra186_mc on Tegra186
Date: Mon,  9 Dec 2019 15:35:18 +0100
Message-Id: <20191209143521.2357178-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_063525_506712_1ACAF4D1 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
