Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9723E11F322
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 18:56:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K21gcqa69/aeXYyTiVOXosK7U7wDrqcQpKFYUDmuxQo=; b=BaeUYCQQI1S49CRr6J5AFFHCMo
	6IvOUoHswb1T0fUYlowFOL1tZlVrkEXAnNsO7lQzPNdZuibXlHZy3NdHYuJV19CqaqENrofJF0oxu
	/wBliPKqtuIfMNlbZvqgt7p319Eo2LFcZ9PKUjLQkkiz1jPlhJ/mhsEPM/MoIsAc2FPK6uWgnMOP4
	6zJTR7/72CB5McdQaPzof189cC7ch50VOdLTXNHzGwx45f3UiynjkOFj0JV8hbWICURTmVXn2auwH
	7z8izsOI8TNH52GzRlZStyw3UisImhuOn+8DIWvcoK1VOLUWC3MNPN+kzyKr88OLzAeJgOOchJQK8
	mXpFFlJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igBee-0005pC-Lq; Sat, 14 Dec 2019 17:56:36 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igBdB-0003iX-Gq; Sat, 14 Dec 2019 17:55:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id k25so1183682pgt.7;
 Sat, 14 Dec 2019 09:55:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=v6oAG/oclrFZaQCUj3wJrPoJgy8LLnv+ppI5zjGSg18=;
 b=OCcdjtzdFuDyzNdFRzdJGEK76qLV1wGwcTnhFwUzPrNIPhZ9jWkNZij8M6nrd2EqfQ
 xLdaVpLufWVdsT/JQCTm7lDYNoW5zbwtCZ3JNDX9PBDxZEeDrr4LM94ONhsxXiBoRYSD
 vwMSJnvm2XuH/yOd7dnU9xcj13rrYnxkxAdEB0sheLW1J/ap+GQdqZDSfv7y/fC3AO05
 q8jxfaZssVfvuKTZ5klKz3YaPLhO9FNqhKBHW9Zj8q9hcdEPxDNLOD88YHAJFHlAKzH3
 RmKZEcild3g8BPyIPHduEF8bqveRyYY24EdZfRKUZ+xRhqr4Sbmhg7f/o/Tu/c95uI1S
 whoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=v6oAG/oclrFZaQCUj3wJrPoJgy8LLnv+ppI5zjGSg18=;
 b=qq1IHkRwQYS6wsJKvsGu9MPXayg+t4Jso9xueFVyB1at/GxKLshZSpnGHqrd7AaZWD
 dl3KEHPLubOuE25c9G4opnKAFd8Q1lbTCTEfEqhN3ybJh0Ent4RqMxc/3ZExYxY+oABJ
 vI/q9rHQowq1lCzouN7UoT38wd+vtIKg2GOWsBLyE4AlFIhAAyvy7yEZzoy8GsIVrmPR
 RIzeVUKFqCiEt7s4dhQPfKosvDhabnphd4ekO9Trwmb29iuE37L9F2+hLA8Qsesd5o1A
 7L2D+HQJRrn09tXXQRnFePo91jBuxrTXpU7PZqpmuHsKE4CdgkTtY1OxbXErKIW9U5YW
 Z1bg==
X-Gm-Message-State: APjAAAUeKXHA5enNmmXd0wTm/h2kwYH7LeF9IRZUFgwvu3yz8af49MOZ
 vWWw2o66FB5by2nee7pDcoY=
X-Google-Smtp-Source: APXvYqzpEedmt61YxQUSdB6sRDA3ehIRbG8Z9JBjQgmUFXEG8lTrpXVy3xxhvrG+pkjNaW8TwDq1eA==
X-Received: by 2002:a63:4f5c:: with SMTP id p28mr6565754pgl.409.1576346104392; 
 Sat, 14 Dec 2019 09:55:04 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id b22sm16045885pfd.63.2019.12.14.09.55.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 14 Dec 2019 09:55:03 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: khilman@baylibre.com, leoyang.li@nxp.com, khalasa@piap.pl,
 john@phrozen.org, matthias.bgg@gmail.com, agross@kernel.org,
 bjorn.andersson@linaro.org, kgene@kernel.org, krzk@kernel.org,
 mripard@kernel.org, wens@csie.org, ssantosh@kernel.org, jun.nie@linaro.org,
 shawnguo@kernel.org
Subject: [PATCH 05/10] soc: fsl: convert to devm_platform_ioremap_resource
Date: Sat, 14 Dec 2019 17:54:42 +0000
Message-Id: <20191214175447.25482-5-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191214175447.25482-1-tiny.windzz@gmail.com>
References: <20191214175447.25482-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_095505_956582_1BA5CAD6 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/soc/fsl/guts.c | 4 +---
 drivers/soc/fsl/rcpm.c | 7 +------
 2 files changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/soc/fsl/guts.c b/drivers/soc/fsl/guts.c
index 34810f9bb2ee..ebec06a22ab4 100644
--- a/drivers/soc/fsl/guts.c
+++ b/drivers/soc/fsl/guts.c
@@ -140,7 +140,6 @@ static int fsl_guts_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct device *dev = &pdev->dev;
-	struct resource *res;
 	const struct fsl_soc_die_attr *soc_die;
 	const char *machine;
 	u32 svr;
@@ -152,8 +151,7 @@ static int fsl_guts_probe(struct platform_device *pdev)
 
 	guts->little_endian = of_property_read_bool(np, "little-endian");
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	guts->regs = devm_ioremap_resource(dev, res);
+	guts->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(guts->regs))
 		return PTR_ERR(guts->regs);
 
diff --git a/drivers/soc/fsl/rcpm.c b/drivers/soc/fsl/rcpm.c
index a093dbe6d2cb..322fde95974b 100644
--- a/drivers/soc/fsl/rcpm.c
+++ b/drivers/soc/fsl/rcpm.c
@@ -102,7 +102,6 @@ static const struct dev_pm_ops rcpm_pm_ops = {
 static int rcpm_probe(struct platform_device *pdev)
 {
 	struct device	*dev = &pdev->dev;
-	struct resource *r;
 	struct rcpm	*rcpm;
 	int ret;
 
@@ -110,11 +109,7 @@ static int rcpm_probe(struct platform_device *pdev)
 	if (!rcpm)
 		return -ENOMEM;
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!r)
-		return -ENODEV;
-
-	rcpm->ippdexpcr_base = devm_ioremap_resource(&pdev->dev, r);
+	rcpm->ippdexpcr_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(rcpm->ippdexpcr_base)) {
 		ret =  PTR_ERR(rcpm->ippdexpcr_base);
 		return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
