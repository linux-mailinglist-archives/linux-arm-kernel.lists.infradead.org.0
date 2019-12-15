Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3F611FA21
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:54:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mXDNeIm5/difgyyH7LmDmmO2I3YlW7Lk+RhF7k27jWM=; b=ki8ItSBX8WmzYmAKIWnLgWlZGi
	if9bvWV1FGhPeOVRECiBP9N+hH1/dwjd8OzppN9Jwv/RGGZzZeKi/lF+hhbvjxhoj6tneAZzTCTL6
	qP+Hv9uWzPNauFmq+a1SkMr9Ypaq88+I6oXBVzhRYFfovZlXoRZLYTOsyIkSkMDeed0sA+eIdKrh3
	R1qlGZ/hlJp5MRlAU3tEUIVCrQp1q+HmQS8cxxHkPdblW5KNeWaPiDxEmWhAj3tD2Zpmmtu+OkjPi
	n6qZcLB49oGtGHQ4Z9atMNER3SQPLNhHGkoGfUFNlK6f7mmrkTXwli4PeA4cRhX2+DrAJyxvySCp/
	B7dPxXYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igY5m-0005a0-1P; Sun, 15 Dec 2019 17:54:06 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igY3R-0003fF-G2; Sun, 15 Dec 2019 17:51:42 +0000
Received: by mail-pf1-x443.google.com with SMTP id 4so4315744pfz.9;
 Sun, 15 Dec 2019 09:51:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=M4rb0k6npd2G8XmrmT8Mmuq1Mqx3Tqp4JozWv4IeGBE=;
 b=Dffo/ivbPuSxvOTilFvFyuCjze8R3Nz1KdRpjRZXiuzi/VElxSGfIWsE7zsGZ16JIl
 wvqLG4syWI7BDu80fWkO44X0LxOO0zbyOuuPqoHFZE7qxFnwAfg1WM85/YsC08Lr6Atc
 f1x3CHSxQxK4W8uN0GPvNQbdOhAbGrKD/lkgp19Wh+tZzD28fwxnFI/rgDycdti4x/Vd
 NvvdWS9zDoHBOnZcouhEQCaJJTr/qCV+yoefROCP2SQE88CSB79DLklO0AP4rsAyO4us
 kaDbsGbd9ayVBP85+vIGzL5vJ+PoGnyHsXOqkZ2051uGdqVxhI1E/zUisQmkG7MAc+ej
 WBkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=M4rb0k6npd2G8XmrmT8Mmuq1Mqx3Tqp4JozWv4IeGBE=;
 b=Nlyu+aSCmjyuRT9TmdFyd/GJ9JtypTpev98y/wPYqUi9yUGzgT3YxksDFkWPO0Gqrc
 amR2kc1stvESWB/+sP9rZ/YunYM95CE9v1gk3hQVj3ESQrWHT4r/s48/NOQM5i6O3/V2
 gRd4wkGkHEBWI55G5GKW1N3oxQySNKs9GanLTBUdnT2XGzmLsp2aJIU6sammJMqBVUjC
 2hO+UuP6IKFMv4Hw4AJoitHMzMqvfAKepnzSMMLdGW7guPGZcoXFiHwhGmmeWQgmmknZ
 vh7kACQHBijf+GwGTB0bpo9pZeuZJ0/2tcvV0vtWmyb4/90uZwX7cZOBpbUZHYyfA66Z
 FLlQ==
X-Gm-Message-State: APjAAAXaZgo9WC6xGd49nYQjWJHoFXmcIyHDo7J0DopbrTESb1pvMoDw
 oimrYeDK2Juv9efa2X2KhWQ=
X-Google-Smtp-Source: APXvYqyQzdWSpl2Sd5Qy8EvlwnGWckT99MmmuRs6mMqDmxroD8ufUiQwLV2+LBkw71MDRzquOsBmeg==
X-Received: by 2002:a63:6f8a:: with SMTP id k132mr13514164pgc.70.1576432300626; 
 Sun, 15 Dec 2019 09:51:40 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id r62sm19900871pfc.89.2019.12.15.09.51.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 09:51:40 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: manuel.lauss@gmail.com, ulf.hansson@linaro.org, khilman@baylibre.com,
 chaotian.jing@mediatek.com, matthias.bgg@gmail.com, nico@fluxnic.net,
 adrian.hunter@intel.com, agross@kernel.org, bjorn.andersson@linaro.org,
 ben-linux@fluff.org, jh80.chung@samsung.com, vireshk@kernel.org,
 mripard@kernel.org, wens@csie.org, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, kstewart@linuxfoundation.org,
 yamada.masahiro@socionext.com, tglx@linutronix.de, allison@lohutok.net,
 yoshihiro.shimoda.uh@renesas.com, geert+renesas@glider.be,
 linus.walleij@linaro.org
Subject: [PATCH 07/13] mmc: sdhci_f_sdh30: convert to
 devm_platform_ioremap_resource
Date: Sun, 15 Dec 2019 17:51:14 +0000
Message-Id: <20191215175120.3290-7-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191215175120.3290-1-tiny.windzz@gmail.com>
References: <20191215175120.3290-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_095141_557151_99313211 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-arm-msm@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/mmc/host/sdhci_f_sdh30.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mmc/host/sdhci_f_sdh30.c b/drivers/mmc/host/sdhci_f_sdh30.c
index fa0dfc657c22..4625cc071b61 100644
--- a/drivers/mmc/host/sdhci_f_sdh30.c
+++ b/drivers/mmc/host/sdhci_f_sdh30.c
@@ -89,7 +89,6 @@ static int sdhci_f_sdh30_probe(struct platform_device *pdev)
 {
 	struct sdhci_host *host;
 	struct device *dev = &pdev->dev;
-	struct resource *res;
 	int irq, ctrl = 0, ret = 0;
 	struct f_sdhost_priv *priv;
 	u32 reg = 0;
@@ -123,8 +122,7 @@ static int sdhci_f_sdh30_probe(struct platform_device *pdev)
 	host->ops = &sdhci_f_sdh30_ops;
 	host->irq = irq;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	host->ioaddr = devm_ioremap_resource(&pdev->dev, res);
+	host->ioaddr = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(host->ioaddr)) {
 		ret = PTR_ERR(host->ioaddr);
 		goto err;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
