Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 216EC11F31E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 18:56:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0KbkCU4YPg4G7y6vmK0Bp+Aed1hY3qP3OqpXbEeNLIA=; b=LnfQZu6dAZOyUAykOMbLi40sqG
	apE26QjDR6Q5+zxs9fWnbz90IG9LDNANuArz9VowgQBuOPpi+FxdVoMNCDZgK27xuGbaf5sKMPqV4
	47NHs8h6qX4HE+O35ik6vfshvzxXuU60w+IgLrDxYukBW/q/L8DuyqXT/+65gyiofra8SugDO6hFc
	TSweXYIpmQfRwwYei+zFs/VZeAKDEZ5HifB2YgCiH+Rx37vBP2znb4KYS8GMHtbWYDCwpr4q/IF9k
	ZYi173EWTsLJ8ZGmRQEhV8a9/bCzrB2Hw0jar7ZSrdATJBk1GozNZteDyoRtU9jmvVY+eaxEYUtrs
	alZFhS4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igBe6-0005M0-Gn; Sat, 14 Dec 2019 17:56:02 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igBd5-0003SA-SG; Sat, 14 Dec 2019 17:55:01 +0000
Received: by mail-pl1-x643.google.com with SMTP id c13so2632415pls.0;
 Sat, 14 Dec 2019 09:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cR390BUd1z2kCitxpdbSxliSXAqeOVtm3C9sL9OzjjQ=;
 b=ak3fvDEQ4v6f6WR6iuVyCDGGuOXR5kV7UcWmahh2teo8P+j98Rkfhsic/vSt4LF2S0
 dG816usghYdayQyFi+h73xQK7mV3WEin9ewgy+4obyVj2YJLKxIBJTgWNVo1ReynM9f2
 dGPbh5KaUL27AYtbMhomIj9EpwiJPMiJrFqZGaR8U8Y1Hr81RmU50AXBc5AYTUAAcu+X
 h34m0JUpuOCbta0deTOnbL3CduxIdcdVoOTeaS4rX/cXd1+cHBmGKmJAfRZMkgReE+eh
 ib0Fwx6P7vvwuE0bkNdrKd7uZCbDlbvAJgyao18OQue/ZJTBhgdtEsEcKmDZssmDkZmE
 2MGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cR390BUd1z2kCitxpdbSxliSXAqeOVtm3C9sL9OzjjQ=;
 b=dxdJ5efI6rBAa1us/sBE8bvETkzgnvMlwGgPxMhG8IzcWS42EP+1ibALeg74GC/rPQ
 biiWhng03YkR9HT5yR2QXFDMer9ev8BRmZDpDPFfYpmR1wBIFamM54Yy4dqlMm0l4+Gc
 3TtsBL1H7eL5X3BE3T4678SZ056pDSvbgAT5Q3UwkD8R1Y606Ka5M/mJupZyfdURZGWZ
 TNs7MSawMbUZxbA/qpmwY57Ch+hLhVyMpYktLqFTGe0BPXPqxEbbGPg8cHp4GERfA5US
 G69bCRsKW2NoWEV451Hw46i5HATTq+iPEofFgpY3J/kQBl+m/zd1g/noP79PydZqri0q
 Vhug==
X-Gm-Message-State: APjAAAWjw6OMbmut5ZjTS0qFhb/kGp2DMhA4onGPRGOVn2ZPjZxhTPxZ
 QloXlOcpjtLUt7e1s6wTVbE=
X-Google-Smtp-Source: APXvYqwoSFUXO6LtjfdNMc8g3OGbieZm7pvHioNceUic/z+nzmqFIdRcPY5BJ/C1CRPZ5uLd99i6yw==
X-Received: by 2002:a17:902:6b49:: with SMTP id
 g9mr6338781plt.156.1576346099003; 
 Sat, 14 Dec 2019 09:54:59 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id k23sm15535481pgg.7.2019.12.14.09.54.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 14 Dec 2019 09:54:58 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: khilman@baylibre.com, leoyang.li@nxp.com, khalasa@piap.pl,
 john@phrozen.org, matthias.bgg@gmail.com, agross@kernel.org,
 bjorn.andersson@linaro.org, kgene@kernel.org, krzk@kernel.org,
 mripard@kernel.org, wens@csie.org, ssantosh@kernel.org, jun.nie@linaro.org,
 shawnguo@kernel.org
Subject: [PATCH 03/10] soc: amlogic: convert to devm_platform_ioremap_resource
Date: Sat, 14 Dec 2019 17:54:40 +0000
Message-Id: <20191214175447.25482-3-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191214175447.25482-1-tiny.windzz@gmail.com>
References: <20191214175447.25482-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_095459_930798_5DA0FD53 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 drivers/soc/amlogic/meson-canvas.c      | 4 +---
 drivers/soc/amlogic/meson-clk-measure.c | 4 +---
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/soc/amlogic/meson-canvas.c b/drivers/soc/amlogic/meson-canvas.c
index c655f5f92b12..561044063319 100644
--- a/drivers/soc/amlogic/meson-canvas.c
+++ b/drivers/soc/amlogic/meson-canvas.c
@@ -166,7 +166,6 @@ EXPORT_SYMBOL_GPL(meson_canvas_free);
 
 static int meson_canvas_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	struct meson_canvas *canvas;
 	struct device *dev = &pdev->dev;
 
@@ -174,8 +173,7 @@ static int meson_canvas_probe(struct platform_device *pdev)
 	if (!canvas)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	canvas->reg_base = devm_ioremap_resource(dev, res);
+	canvas->reg_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(canvas->reg_base))
 		return PTR_ERR(canvas->reg_base);
 
diff --git a/drivers/soc/amlogic/meson-clk-measure.c b/drivers/soc/amlogic/meson-clk-measure.c
index 0fa47d77577d..173baa53fce3 100644
--- a/drivers/soc/amlogic/meson-clk-measure.c
+++ b/drivers/soc/amlogic/meson-clk-measure.c
@@ -605,7 +605,6 @@ static int meson_msr_probe(struct platform_device *pdev)
 {
 	const struct meson_msr_id *match_data;
 	struct meson_msr *priv;
-	struct resource *res;
 	struct dentry *root, *clks;
 	void __iomem *base;
 	int i;
@@ -623,8 +622,7 @@ static int meson_msr_probe(struct platform_device *pdev)
 
 	memcpy(priv->msr_table, match_data, sizeof(priv->msr_table));
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(&pdev->dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base)) {
 		dev_err(&pdev->dev, "io resource mapping failed\n");
 		return PTR_ERR(base);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
