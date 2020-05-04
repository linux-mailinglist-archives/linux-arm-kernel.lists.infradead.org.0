Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2281C1C3886
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HhSzWOg7cGDkDae3NAgGNO081leWTuhL55E+3kW2bx0=; b=NMM5Qko27UuXiA
	2wEyPMHHDB71TTCMWY9yprbqhUUxAR+lAfRe5tjz/8l8ALg4gLW/6p5cXrVLZk3fJ9LmMzl6ZNaQB
	T+/jZCywdRK30KhO5FcMCYqmH+OGm9CgQxapm+lv2O58pS6PGDCYwI642GwEqTIXVVCe1WumwLZPn
	KcmgbsvJltOHIXhdxKUuhy7uvE+wn6ml63Mio3MaiLowHNY2oletV7yDizBaUHFy9bRiP0wbdSxbB
	i+XvKShpN03jUUof2BSGI1VtYWFg34pJoyYe9PwufwyYh3I7YFrDp/pR3blrNzty/+DazGiP9Hwr6
	yBX8CbZ5wYpjFoonZG9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZWW-0001Jt-Cv; Mon, 04 May 2020 11:44:36 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZWM-0001JB-TB
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 11:44:28 +0000
Received: by mail-pg1-x542.google.com with SMTP id d22so3142909pgk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 04:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=KE1E6Qa3R2pfEpOWk7MxtXJqUgD9w91BRweLgLc6m/I=;
 b=DoLS6r/Y/Yq6S/rgQycBopx94B6CehgYivKU/+UXsQu2n+Uc9RJCBf7ol4yyYHbq8l
 eRoI1QVG4NX6LNePy+OFPSHt6VKWjZ5y2n/pYcEZ40Zd1IfXpaJf51sjo0kgzaOYeOwE
 KPrxp7VlGPXk7fyFzfsBg+zEO9HOgdHJSk7DfWrj1FUN4s1hEYODkk5yeDBV4SWH9g7M
 bsuIEBwLFuILx130410g3bk8j381PnOoletAhT7YvmGTJp57ce5JMBPZ5R4mv+3GNYdS
 Tfd5ksb26j28n6oOQW2VtoXlmb0VudzdbkwG1Qm8P376KjSDXrV4JPlaRqRqEh/t9aI/
 4FXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=KE1E6Qa3R2pfEpOWk7MxtXJqUgD9w91BRweLgLc6m/I=;
 b=opEIVnCGVcqSzgsVaqdnVvBVAb+dZotzHW9hxw3xs6djjcDbqcv6f12OwFNOTxwZs5
 wTqmfeXjjIsU3ZqkmWH2k0REn12l/AMhJCFn183r+bz+AZ28AKNRYEwM31e6HUyXeREZ
 upo5xAp75mALANzOR35ls56WRa8dwBQQNotxN8aBesL9kcbxcNVndliorISDRlIxUpmT
 wVuHeYzcJFu+M0ac2rs+9DlJWHupfEJmaDatwgwZsUIExeKEtI4R2k1gq6nD0i5Joxph
 wWFb6/XizYntIzChsyiKfc5Jacn9wT0kjZBjTfOU9CeRa/akyPc24CkX/mBHRtbpgV2n
 nJkA==
X-Gm-Message-State: AGi0PubHrQ5zvrKxv/8SP/GFWByL56iEQ9OMUPpBtKfV4EdqSc0bVYXd
 E/WI6fL2lg0yp9vkFusLQgQ=
X-Google-Smtp-Source: APiQypK6Y0ETyZi/tK8Fo012jOB3XHEpY8XYWd7UJbcUvZpongTD58JgYc0v6ieSgnN+Z4hU8KnDxQ==
X-Received: by 2002:a63:7b42:: with SMTP id k2mr10622412pgn.299.1588592666223; 
 Mon, 04 May 2020 04:44:26 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:20a:c836:7c28:bcca:10e4:5523])
 by smtp.gmail.com with ESMTPSA id w30sm8646930pfj.25.2020.05.04.04.44.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 04:44:25 -0700 (PDT)
From: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
To: Thor Thayer <thor.thayer@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>, Vladimir Zapolskiy <vz@mleia.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Baruch Siach <baruch@tkos.co.il>, Dmitry Osipenko <digetx@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] i2c: drivers: Remove superfluous error message
Date: Mon,  4 May 2020 17:14:06 +0530
Message-Id: <20200504114408.9128-1-aishwaryarj100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200503120847.13528-1-aishwaryarj100@gmail.com>
References: <20200503120847.13528-1-aishwaryarj100@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_044426_944568_44B5B760 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aishwaryarj100[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aishwaryarj100[at]gmail.com]
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function platform_get_irq can log an error by itself.
This omit a redundant message for exception handling in the
calling function.

Suggested by Coccinelle.

Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
---
 drivers/i2c/busses/i2c-altera.c   | 4 +---
 drivers/i2c/busses/i2c-cht-wc.c   | 4 +---
 drivers/i2c/busses/i2c-img-scb.c  | 4 +---
 drivers/i2c/busses/i2c-lpc2k.c    | 4 +---
 drivers/i2c/busses/i2c-uniphier.c | 4 +---
 5 files changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/i2c/busses/i2c-altera.c b/drivers/i2c/busses/i2c-altera.c
index f5c00f903df3..af6985f0ae63 100644
--- a/drivers/i2c/busses/i2c-altera.c
+++ b/drivers/i2c/busses/i2c-altera.c
@@ -395,10 +395,8 @@ static int altr_i2c_probe(struct platform_device *pdev)
 		return PTR_ERR(idev->base);
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(&pdev->dev, "missing interrupt resource\n");
+	if (irq < 0)
 		return irq;
-	}
 
 	idev->i2c_clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(idev->i2c_clk)) {
diff --git a/drivers/i2c/busses/i2c-cht-wc.c b/drivers/i2c/busses/i2c-cht-wc.c
index 35e55feda763..343ae5754e6e 100644
--- a/drivers/i2c/busses/i2c-cht-wc.c
+++ b/drivers/i2c/busses/i2c-cht-wc.c
@@ -314,10 +314,8 @@ static int cht_wc_i2c_adap_i2c_probe(struct platform_device *pdev)
 	int ret, reg, irq;
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(&pdev->dev, "Error missing irq resource\n");
+	if (irq < 0)
 		return -EINVAL;
-	}
 
 	adap = devm_kzalloc(&pdev->dev, sizeof(*adap), GFP_KERNEL);
 	if (!adap)
diff --git a/drivers/i2c/busses/i2c-img-scb.c b/drivers/i2c/busses/i2c-img-scb.c
index 422097a31c95..2f6de763816a 100644
--- a/drivers/i2c/busses/i2c-img-scb.c
+++ b/drivers/i2c/busses/i2c-img-scb.c
@@ -1344,10 +1344,8 @@ static int img_i2c_probe(struct platform_device *pdev)
 		return PTR_ERR(i2c->base);
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(&pdev->dev, "can't get irq number\n");
+	if (irq < 0)
 		return irq;
-	}
 
 	i2c->sys_clk = devm_clk_get(&pdev->dev, "sys");
 	if (IS_ERR(i2c->sys_clk)) {
diff --git a/drivers/i2c/busses/i2c-lpc2k.c b/drivers/i2c/busses/i2c-lpc2k.c
index 13b0c12e2dba..43dc9b7043e4 100644
--- a/drivers/i2c/busses/i2c-lpc2k.c
+++ b/drivers/i2c/busses/i2c-lpc2k.c
@@ -362,10 +362,8 @@ static int i2c_lpc2k_probe(struct platform_device *pdev)
 		return PTR_ERR(i2c->base);
 
 	i2c->irq = platform_get_irq(pdev, 0);
-	if (i2c->irq < 0) {
-		dev_err(&pdev->dev, "can't get interrupt resource\n");
+	if (i2c->irq < 0)
 		return i2c->irq;
-	}
 
 	init_waitqueue_head(&i2c->wait);
 
diff --git a/drivers/i2c/busses/i2c-uniphier.c b/drivers/i2c/busses/i2c-uniphier.c
index 668b1fa2b0ef..ee00a44bf4c7 100644
--- a/drivers/i2c/busses/i2c-uniphier.c
+++ b/drivers/i2c/busses/i2c-uniphier.c
@@ -324,10 +324,8 @@ static int uniphier_i2c_probe(struct platform_device *pdev)
 		return PTR_ERR(priv->membase);
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(dev, "failed to get IRQ number\n");
+	if (irq < 0)
 		return irq;
-	}
 
 	if (of_property_read_u32(dev->of_node, "clock-frequency", &bus_speed))
 		bus_speed = I2C_MAX_STANDARD_MODE_FREQ;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
