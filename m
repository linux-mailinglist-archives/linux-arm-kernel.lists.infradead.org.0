Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD19A128F97
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 19:52:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U9zLdtsXN7nqD/EdUXcOhLKROwGybsY8wkHysZXVlpc=; b=lgrB06VPLH67ceJ5s4V84f19bI
	lhwHy2m6eM1eneyF5B5vfjUGJhkLirH0d9I6u/hfj48Kr5lDxV0Qr17xb6/E00BMwsXspy2P7xwx/
	9LtJBZA9KSqsBpbQgCwVIKTzqOh0tPF0anXE02psQ/5EwoXuTlY7wzYNJBKhh07EyNazvCZavcxP4
	9bwLYSGCbHhDNAL2TiVm5ME+p0kLR+Hz4Yuxkp509RrK60a3RoA+wNKn43U2DfmMZzaOGG6Bj2Fq/
	VEoDHgez0EYSgn59NOi5P7t72aicQBQfnJEzqdumgl9KmIKqYmcBfql6MoGDdO7lDLkTbyEmCQssY
	owh9AHMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij6Kh-00046b-1v; Sun, 22 Dec 2019 18:52:03 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij6JS-0003GM-Sj; Sun, 22 Dec 2019 18:50:48 +0000
Received: by mail-pj1-x1044.google.com with SMTP id n59so6514805pjb.1;
 Sun, 22 Dec 2019 10:50:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zogEy1R5bHAzYb0JSK89rU9lJX3Wruc73hLWvRKN/jg=;
 b=IWvfa6cbF84MPkGoGhvjZjcoRqq4uO59BCTZeZG/vKbNza8MhOFdV5dpqdOq7FHmtn
 piFe9b6NPPyBI5IY4Cl+FYvpDwNgr94dUjj3j7lVDgHfkzRmsoukLUeXmQovUjSiJMnF
 vJ8FBnGPHmWYy/VsFOKNb78z+ZaEK4AAjVvEgk3tfth0ea3Q+ikx/oPCDxZT/3njhlYg
 bCVJZA6tvnmCmhhXN+q/DPlritdPq3ayfH9wus/5n0RKF2LiKYlRvvKj/6L5Gtv5WMaU
 7OBqrDoxyuurfeOCt04NsK6fJWfx7LOBZhGRHafGemQHEn7CZBxD6e2rgcmx4YvPx6dd
 9AOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zogEy1R5bHAzYb0JSK89rU9lJX3Wruc73hLWvRKN/jg=;
 b=alhm8WK2O/Uz7eABeUHHHs/p48/1r16kito1oLh2mO36dWDDnmybn1zNKiFVeMeAp7
 7KI/qxn4u2Kdb8Vp7z8g8SdJKMX+E0lCJnnYEZEsOChnzfwMWX0RSRIOzHMmpbPgTG+a
 m4oSR0vrKlJhl175pSaN/Lo4yOfefRb9nztReW6SIaQLsteUkmmwweJSegmZcePaxULE
 VcvVqB13nMkEHGMfQaq8XXW0jelkkx0xti34HlAelUb7KImtP0O4rXmu5x/cGUtGyNnO
 td6MagZdRpFynciadqeoAgRUJgx1eZvPWseA8QPpWn/yi1mX5q8UwOuYA2OZ41tlzvsO
 HIkQ==
X-Gm-Message-State: APjAAAXgQ6QGtXnWdjV5pf3wwQ5j7k6Ncvq8KHo7OjJJhBrGSiLTHqWe
 GYiW7rVjgAnt6SLzAHDGwTQ=
X-Google-Smtp-Source: APXvYqyKKfxfSyCuABzQ6eqEF5lsR+6vnx8hRy7dJwwQCFJClBYG8jWJoC5x8F/QV0jwvtIYirEEig==
X-Received: by 2002:a17:902:b681:: with SMTP id
 c1mr27401740pls.220.1577040644128; 
 Sun, 22 Dec 2019 10:50:44 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id f8sm21035451pfn.2.2019.12.22.10.50.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 22 Dec 2019 10:50:43 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: ssantosh@kernel.org, paul@crapouillou.net, matthias.bgg@gmail.com,
 rogerq@ti.com, tony@atomide.com, lukasz.luba@arm.com, kgene@kernel.org,
 krzk@kernel.org, thierry.reding@gmail.com, jonathanh@nvidia.com,
 allison@lohutok.net, tglx@linutronix.de, yong.wu@mediatek.com,
 jroedel@suse.de, evgreen@chromium.org, rfontana@redhat.com,
 digetx@gmail.com, pdeschrijver@nvidia.com, john@phrozen.org,
 alexios.zavras@intel.com, sboyd@kernel.org, kstewart@linuxfoundation.org,
 info@metux.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-omap@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: [PATCH 4/9] memory: tegra: convert to devm_platform_ioremap_resource
Date: Sun, 22 Dec 2019 18:50:29 +0000
Message-Id: <20191222185034.4665-4-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191222185034.4665-1-tiny.windzz@gmail.com>
References: <20191222185034.4665-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_105046_952607_9F2BBEC5 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/memory/tegra/mc.c           | 4 +---
 drivers/memory/tegra/tegra124-emc.c | 4 +---
 drivers/memory/tegra/tegra186.c     | 4 +---
 drivers/memory/tegra/tegra20-emc.c  | 4 +---
 4 files changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/memory/tegra/mc.c b/drivers/memory/tegra/mc.c
index ec8403557ed4..71390d4ad809 100644
--- a/drivers/memory/tegra/mc.c
+++ b/drivers/memory/tegra/mc.c
@@ -593,7 +593,6 @@ static __maybe_unused irqreturn_t tegra20_mc_irq(int irq, void *data)
 
 static int tegra_mc_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	struct tegra_mc *mc;
 	void *isr;
 	u64 mask;
@@ -619,8 +618,7 @@ static int tegra_mc_probe(struct platform_device *pdev)
 	/* length of MC tick in nanoseconds */
 	mc->tick = 30;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mc->regs = devm_ioremap_resource(&pdev->dev, res);
+	mc->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mc->regs))
 		return PTR_ERR(mc->regs);
 
diff --git a/drivers/memory/tegra/tegra124-emc.c b/drivers/memory/tegra/tegra124-emc.c
index 464f0ceaee63..2c73260654ba 100644
--- a/drivers/memory/tegra/tegra124-emc.c
+++ b/drivers/memory/tegra/tegra124-emc.c
@@ -1085,7 +1085,6 @@ static int tegra_emc_probe(struct platform_device *pdev)
 	struct platform_device *mc;
 	struct device_node *np;
 	struct tegra_emc *emc;
-	struct resource *res;
 	u32 ram_code;
 	int err;
 
@@ -1095,8 +1094,7 @@ static int tegra_emc_probe(struct platform_device *pdev)
 
 	emc->dev = &pdev->dev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	emc->regs = devm_ioremap_resource(&pdev->dev, res);
+	emc->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(emc->regs))
 		return PTR_ERR(emc->regs);
 
diff --git a/drivers/memory/tegra/tegra186.c b/drivers/memory/tegra/tegra186.c
index 441213a35930..226d2b16036d 100644
--- a/drivers/memory/tegra/tegra186.c
+++ b/drivers/memory/tegra/tegra186.c
@@ -534,7 +534,6 @@ static const struct tegra_mc_client tegra186_mc_clients[] = {
 
 static int tegra186_mc_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	struct tegra_mc *mc;
 	unsigned int i;
 	int err = 0;
@@ -543,8 +542,7 @@ static int tegra186_mc_probe(struct platform_device *pdev)
 	if (!mc)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mc->regs = devm_ioremap_resource(&pdev->dev, res);
+	mc->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mc->regs))
 		return PTR_ERR(mc->regs);
 
diff --git a/drivers/memory/tegra/tegra20-emc.c b/drivers/memory/tegra/tegra20-emc.c
index 1b23b1c34476..d2efd0c658c0 100644
--- a/drivers/memory/tegra/tegra20-emc.c
+++ b/drivers/memory/tegra/tegra20-emc.c
@@ -482,7 +482,6 @@ static int tegra_emc_probe(struct platform_device *pdev)
 {
 	struct device_node *np;
 	struct tegra_emc *emc;
-	struct resource *res;
 	int irq, err;
 
 	/* driver has nothing to do in a case of memory timing absence */
@@ -518,8 +517,7 @@ static int tegra_emc_probe(struct platform_device *pdev)
 	if (err)
 		return err;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	emc->regs = devm_ioremap_resource(&pdev->dev, res);
+	emc->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(emc->regs))
 		return PTR_ERR(emc->regs);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
