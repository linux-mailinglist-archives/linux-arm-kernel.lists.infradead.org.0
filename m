Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429CD128F9A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 19:52:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gGzQj1P2++itloC9s1+/35T78iO3oSF0IGNxZ5wtTBI=; b=HmOVWCI2ZynyjDMCdquIsBteYs
	vBm4NiYwQVjB5IKYM8grYu5Oj8eVUNrEdGGcRDne91X+klmY2q3wMbC+I7ymuEwZOLQFPNMGr69FB
	+erkKoxkzVYl4NVuYytmr0OC14hNbuSpd2V06Y28J0VXPvFf0Ezn05bcX2rNRfwphKbS/JeUJsJ1+
	EueQ/ju1gSyfJpuKppy57Tbc0+wxSdJsYzb1m07Fm/QjG6H/SfPYZ7uAtYDFJA1BLGgkG7TjDkx4c
	H5QKBRs5ZjEjCwmydR9vaNXzWtk+cORDlYsXxXVKqgzBMMnxeIr7A0KgKXtfcLVJFb/3ucBakPcQp
	PDcB9Jyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij6LQ-0004oR-8S; Sun, 22 Dec 2019 18:52:48 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij6JV-0003K9-TC; Sun, 22 Dec 2019 18:50:51 +0000
Received: by mail-pf1-x441.google.com with SMTP id x185so8083806pfc.5;
 Sun, 22 Dec 2019 10:50:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2mMsPo8M3x876TJIPv/V9kMTnJlbEepMVzpgXqdmw0I=;
 b=ZpEDu81zRHBqo3RV+PuHNZpFGIZ0wGCPWy0hCPcLUTHwoe6j+6Tx2+RBVyksDlngTK
 myaP/2Gs758aoeYWPfu+UwIVsRkdRh2WRHJJyVIsT7SjBgdU7nrLOVzdkap7wePcNF65
 51ANI8s4JJowIaPkgDAgKgcHJxo9wbPnrF7Ym5oE7or4f8qY7FDW17B4k+Dlz5gzBAsB
 4an4A++rTJeqU75iqy9JoNdAXj+vCb4XLdhvt7NKIL26hxzEjqKLOa1p5Kg3Ia1AUxMB
 Vnq+ZdjHbajAsFP/w/hTbmnry1R/ur7tTeDdaXUVtwEWnLybI/lMITQ/Ostu/yvnJ7TJ
 OGbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2mMsPo8M3x876TJIPv/V9kMTnJlbEepMVzpgXqdmw0I=;
 b=VDHVYwm2LwbJxQ6Kza/cGEU0H5twCAZB6vL9xLXk5aq6RmFpXHRNX22JFKAvt/fE+1
 30OVaUuuqAi6yXcmkJEZ3hW8EudZSCOUxioXxE01kws2uV1a0gzD+mT6ptxNup+iFrSz
 RoEKDFfox1pgWA2ZcWjQWTD63p3O4ANFOI0Pq0yrBZMrPSJSuGana9oU8emLfL5hLNle
 jKvoVKCLGC+bV8rmB2sM2AngeDGEWkOTPZ3iTwKPoYtmZ/4wRIN5RwdB9HSgGIQQlgOS
 qOt4lTe77AcbJELG/xiI3dka20D6QTU2ZxnDLknPD2E6mEc0XdxL1NRrOiH7P+aWtiyC
 isxw==
X-Gm-Message-State: APjAAAVw8fmzMZNcnbgE9Lh3S3hVPcIQ4j8EvlIY3Dw38+ymF5FVmgtZ
 pGHYLzWMFl9FGYrnErreJyM=
X-Google-Smtp-Source: APXvYqy/rBMV+0mmOMQ2OMs4KFh2sPHwhPOhJ+NSHNisuaZbPxtgXlTivp/vRnvcVVkI8GuQChVzcg==
X-Received: by 2002:a63:f64a:: with SMTP id u10mr26539866pgj.16.1577040649079; 
 Sun, 22 Dec 2019 10:50:49 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id a12sm18584043pga.11.2019.12.22.10.50.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 22 Dec 2019 10:50:48 -0800 (PST)
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
Subject: [PATCH 8/9] memory: mtk-smi: convert to devm_platform_ioremap_resource
Date: Sun, 22 Dec 2019 18:50:33 +0000
Message-Id: <20191222185034.4665-8-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191222185034.4665-1-tiny.windzz@gmail.com>
References: <20191222185034.4665-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_105049_978820_F43350B2 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
 drivers/memory/mtk-smi.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index a113e811faab..1cc5d94036a2 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -269,7 +269,6 @@ static const struct of_device_id mtk_smi_larb_of_ids[] = {
 static int mtk_smi_larb_probe(struct platform_device *pdev)
 {
 	struct mtk_smi_larb *larb;
-	struct resource *res;
 	struct device *dev = &pdev->dev;
 	struct device_node *smi_node;
 	struct platform_device *smi_pdev;
@@ -279,8 +278,7 @@ static int mtk_smi_larb_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	larb->larb_gen = of_device_get_match_data(dev);
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	larb->base = devm_ioremap_resource(dev, res);
+	larb->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(larb->base))
 		return PTR_ERR(larb->base);
 
@@ -419,7 +417,6 @@ static int mtk_smi_common_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct mtk_smi *common;
-	struct resource *res;
 	int ret;
 
 	common = devm_kzalloc(dev, sizeof(*common), GFP_KERNEL);
@@ -453,8 +450,7 @@ static int mtk_smi_common_probe(struct platform_device *pdev)
 	 * base.
 	 */
 	if (common->plat->gen == MTK_SMI_GEN1) {
-		res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-		common->smi_ao_base = devm_ioremap_resource(dev, res);
+		common->smi_ao_base = devm_platform_ioremap_resource(pdev, 0);
 		if (IS_ERR(common->smi_ao_base))
 			return PTR_ERR(common->smi_ao_base);
 
@@ -466,8 +462,7 @@ static int mtk_smi_common_probe(struct platform_device *pdev)
 		if (ret)
 			return ret;
 	} else {
-		res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-		common->base = devm_ioremap_resource(dev, res);
+		common->base = devm_platform_ioremap_resource(pdev, 0);
 		if (IS_ERR(common->base))
 			return PTR_ERR(common->base);
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
