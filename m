Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2B211FA25
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:54:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VxcVaYlGsAaJaoS5UZUQlq5ysrSRXuJR4ko1tVwh6d4=; b=VLv0JalYF7zXE/Gwzcps6gsx1b
	8AFI900QbcjpXV5WMvtBOc+UkDi3bsgWfQNgWBL6nFTmLKxc7QcPxHlpRPRjk+dCm1W+iFXgNLr39
	CXcyknKsk2qTbdEY63o/iPu8O3SPYtC15i+Cu0CJfVEwXbDr/1yb48zJmSUAiwJV2aBGSFnPmmFU/
	t8i+uQGrL88epEpLt9RKibN1dAPwQtTj6qnRyKhnS9NkqQ5YfdZlnk1cbKtu0JcX1Qr4RKPZFhkW6
	co18zIUJVYe+QOSGxCoxQytXyOUTPZn70ATvYrnNBDH3/szQWlnKSmWClmFnPK0rKW2/MW25jhd5S
	k96w2dqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igY6O-00068c-Oi; Sun, 15 Dec 2019 17:54:44 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igY3V-0003if-Rl; Sun, 15 Dec 2019 17:51:47 +0000
Received: by mail-pl1-x641.google.com with SMTP id x13so3450987plr.9;
 Sun, 15 Dec 2019 09:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=szqF6wBatd141DYcdeo2AKZKHAndczMcysoH1ninemU=;
 b=Vs9JBuJNJgoOVxp/KSDwEkQIgdPDJROFyC0pjCA6tSN96Gz2QLnZcxrIZftP/0vpOz
 1XRwerz7LUlFA7m7JVRVEYTBhus+FTcNU5oI0GcZKEu28b6bhaRGFeR4UFmyztTAIUsN
 EWfCjHjr0axlnC5vKyu64QiMI/2mzM3bxyhO/CWxAbfoWrJJ3ihzzUkhYUhagoj0nX0S
 a1nUV6UUaWC+yy6bYjA9QctSoc6BiMC3BgFRegMkY03eDkw8o8TGZ5GS+l1mos4+XpVN
 u0rn8oHp6l56e/IojaMT2NqW9UzxqLNcOxntYNN7ZPeRrgnfujsJrFOKPyS7lYMI1cyh
 eLyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=szqF6wBatd141DYcdeo2AKZKHAndczMcysoH1ninemU=;
 b=AG0sRroQfVyJjA7c2yPPQjBnxtUKQrtPUnQQWpq1styBvPN8J50XlDD18uJkc6x3ON
 /Yb+qRfTGXJeSxLzFaW+6LhGa91ok892zaVbe6i2NFtA8a1WEhgJj6TpIMArzeh3C3xM
 E54HlDYEjzeVcgjlQSPjy/RjUYS2FGtSjBkPDfAhBpzZkOGP9VoA6lYSnVERrChrhpdX
 WQSAXqg5PA2zETFj3+qmDCX87KP0zFjui0+pMD3/UpCc1HVD1rjJIJ9krTM10TODWw7q
 P9DG7tfcVy90EiU8zj6LUVFnp8XAi8IYTtbUubemRyhJKRGuvUbA43Fy2N4kmm/MPkb7
 v3Xw==
X-Gm-Message-State: APjAAAVQ/HyOWmkxPHzXJBRXI93GMGnqZXPFOBcsvpQuZLKTA5dohYes
 bLtPTwSGnv6f3rt7hca5TKA=
X-Google-Smtp-Source: APXvYqxLXCEA1K+SbpDYjjsq3TkaS0vAO6JjXHILJhQBtbuyekHgkxOcbQ0IvpAcBqayQz3nTOHFsA==
X-Received: by 2002:a17:90a:b010:: with SMTP id
 x16mr13570307pjq.130.1576432304351; 
 Sun, 15 Dec 2019 09:51:44 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id 133sm18872446pfy.14.2019.12.15.09.51.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 09:51:43 -0800 (PST)
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
Subject: [PATCH 09/13] mmc: sdhci-milbeaut: convert to
 devm_platform_ioremap_resource
Date: Sun, 15 Dec 2019 17:51:16 +0000
Message-Id: <20191215175120.3290-9-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191215175120.3290-1-tiny.windzz@gmail.com>
References: <20191215175120.3290-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_095145_995956_34AB0C05 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 drivers/mmc/host/sdhci-milbeaut.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mmc/host/sdhci-milbeaut.c b/drivers/mmc/host/sdhci-milbeaut.c
index a1aa21b9ae1c..e6245b7bda21 100644
--- a/drivers/mmc/host/sdhci-milbeaut.c
+++ b/drivers/mmc/host/sdhci-milbeaut.c
@@ -242,7 +242,6 @@ static int sdhci_milbeaut_probe(struct platform_device *pdev)
 {
 	struct sdhci_host *host;
 	struct device *dev = &pdev->dev;
-	struct resource *res;
 	int irq, ret = 0;
 	struct f_sdhost_priv *priv;
 
@@ -280,8 +279,7 @@ static int sdhci_milbeaut_probe(struct platform_device *pdev)
 	host->ops = &sdhci_milbeaut_ops;
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
