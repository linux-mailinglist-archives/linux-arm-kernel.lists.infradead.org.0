Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4015B11FA17
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:52:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HeL7twURUDzQphVikY6s4IVhKcSEt3aDBrqlEICSHkA=; b=MREmbymDNO8EnS3pzV2csJzg0I
	DqOmif1F5zdlp9nBxUXqsePMOvPxUujmW+Q6WIdlceDrnloVNm3fpvTSsW1Zr+viIeOTIq9oYS19s
	FohgR2LCfKcobrTAKKwjfBqd7h6wQ+7ztmQvC9M2AZT0OYFS8AxkxQ/8YnrWdV4y+mDif8Z2X4qeq
	FD2Fef8RSfQllSw+h7469e6GDR9VIhg1WQR+qJrEkHBOgzZppdupanv8M6LZuYT1H1KySyX+VdbNW
	hDNjtiXXiUnkhQFbD6MYWtI3UxINKiaxY0jNkxD7FjneiTk7B9ES1dPBy7Cf4Phh1pERPrcU3pIkK
	MVCIA0Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igY4N-0004JZ-Oc; Sun, 15 Dec 2019 17:52:39 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igY3J-0003X3-S8; Sun, 15 Dec 2019 17:51:35 +0000
Received: by mail-pg1-x541.google.com with SMTP id a33so2331590pgm.5;
 Sun, 15 Dec 2019 09:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=q2+k5GlnKvFjGF2Y6yVzyvXp0HKBb/C1jWd07eNgP/E=;
 b=fsRMvr+l5cfpJljHCbs3wt3hpAlsSGdaq75BXagITm/GapRuZTC7T9dKBuKkWECQ1H
 ujeH2rpWcODHLCarJxDOBUzouTCLTq19xzl8C9i5FFnS4CquK+QyydtebwxBxJTAdX+x
 lFtHLpZa7YhjBNQSXioToys+V90ggr6pdrP/yEYZav7HK8DePNrfYAmHn4LlJTpGxsFu
 4RHgNMUL+P70URpzULeeR4s+qkbZS2T8TTTeziYmi+4bS64yWGEqUkC1RasMvPVTF7XU
 Ph6OWnLv0eXj3oitlB94bqP/cMI7l3zmdwR4ezisbpjHbVCZzcuass1dYqARA+O2L4JG
 WFkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=q2+k5GlnKvFjGF2Y6yVzyvXp0HKBb/C1jWd07eNgP/E=;
 b=ci8i4niPrrl7nekSus7DNYFzsTwg/brMB3+S4a9MI+QDMBt+zrxKWVsETBG0U+l1CQ
 Y0ZK9iBWxSk5qiSOEChqFcUTBUeyG27ue5Gp50wxZiq6cA9SXWM8oFiM/cOy4thaZMSc
 FsZVue6cA8cSGLZmkXgnZigcQWCcY93F7VyujM+nPuQnx5gWTo2299Xh1t/ShOOUmeUc
 k3SYDfII8EEzobkYQS3J1ghM3PQZkBz8K5yzWrqG9qP5OmqijAxb96YGY/OSGcGJYV3W
 ruFXWXd/dxekUKLIgiamFw8BK761UEA/YiME2fo7FpEKMo9Wc9YQWOREvmfKsNn5SKt9
 Qswg==
X-Gm-Message-State: APjAAAWmrNO6OBgvrKagr5CK1yRGBSnrPHKBzNK9R5TzUqp5MvcEoSKM
 oPn2KOViVGYcZZLz5Xr44f0=
X-Google-Smtp-Source: APXvYqxm8P6lOSGnTWI55dL9YMjFEmSH9JpmoZJXF4dK5sHP7ZYsgkyVJ7Xzi44T9ZmJFRecdQZP0g==
X-Received: by 2002:aa7:85d3:: with SMTP id z19mr11914677pfn.62.1576432293359; 
 Sun, 15 Dec 2019 09:51:33 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id k5sm16070147pju.5.2019.12.15.09.51.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 09:51:32 -0800 (PST)
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
Subject: [PATCH 03/13] mmc: meson-mx-sdio: convert to
 devm_platform_ioremap_resource
Date: Sun, 15 Dec 2019 17:51:10 +0000
Message-Id: <20191215175120.3290-3-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191215175120.3290-1-tiny.windzz@gmail.com>
References: <20191215175120.3290-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_095133_931885_DD76DCEC 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
 drivers/mmc/host/meson-mx-sdio.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mmc/host/meson-mx-sdio.c b/drivers/mmc/host/meson-mx-sdio.c
index ba9a63db73da..8b038e7b2cd3 100644
--- a/drivers/mmc/host/meson-mx-sdio.c
+++ b/drivers/mmc/host/meson-mx-sdio.c
@@ -638,7 +638,6 @@ static int meson_mx_mmc_probe(struct platform_device *pdev)
 	struct platform_device *slot_pdev;
 	struct mmc_host *mmc;
 	struct meson_mx_mmc_host *host;
-	struct resource *res;
 	int ret, irq;
 	u32 conf;
 
@@ -663,8 +662,7 @@ static int meson_mx_mmc_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, host);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	host->base = devm_ioremap_resource(host->controller_dev, res);
+	host->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(host->base)) {
 		ret = PTR_ERR(host->base);
 		goto error_free_mmc;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
