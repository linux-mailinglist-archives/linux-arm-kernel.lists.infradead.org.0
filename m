Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8035111FA1A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:53:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NOQUVpA9auaLCuUCt0X9KtAhPhmAhbTJTie/NtvpTLk=; b=Uv65z0Txt5Cj4Nis3JmLWns+4u
	ncQH93NKLM899+mvUnNGwmsSUHjDPRmzmkB7L+4i3O9tiZ9toxITjC3MNBqsN3H2M7Gt+B5G0cmsP
	DDx0jZcWlnyOyhtgn11rAkNrJR5INvUEPERYW3YSzu4ME3K9dJZtRZCtE9tFZaXJsuWG5AIRAyWvK
	2QQb9VnfoYvrr8gmJBqNOZ9y9mFquloNymvO2L4r3f8LF3pTkerw1uQl6vzop571uZj3h+tzybxuX
	H7j0QeUiGg/RdDpYsZHrqddHJ7rqx3sYe1h5cc0r4WlTK7meR3sfOqyw+cV5nwzX0nBLuE6BXVIy8
	jV099nYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igY51-0004uk-QK; Sun, 15 Dec 2019 17:53:19 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igY3N-0003bC-Uz; Sun, 15 Dec 2019 17:51:39 +0000
Received: by mail-pj1-x1043.google.com with SMTP id n96so1972393pjc.3;
 Sun, 15 Dec 2019 09:51:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WeP5mW5bX8FRuVYI+VlxgSACH3PZvZTDMYz0Hzl+V2E=;
 b=ID1AOj+6c8Ogf0Hu5RDxzXewB10SEfdGb1Sv5+d7Jnh10f5Ti9G6Mnp7WYJ+JvHBMw
 Shs1Qw8ygC1pEBmPk2Y8Kbi4K/5tjj43ezK5rIxZX07WPLIL6y6q4Gm0r6uStqVcyqfh
 EvHvWDrU8OJVtLLoE5W9knOzkIQ0UYH+H6jiiy0H46OeG3zx2tI8brAeIsg7+8bxPk5N
 +T14M+YvMTh+XtVxMyz3VyipChwVCEny8TyCnAQy3/4M2i9Bj4T2ne21MJkeuzf/TtaL
 eeCY+E01S18KAYaAHH5Gi8UBpIY98wZIPbBCiydcMqnPLyS9sewsj2AahiOmtUINUxLi
 MF9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WeP5mW5bX8FRuVYI+VlxgSACH3PZvZTDMYz0Hzl+V2E=;
 b=LQ6h0MSfChz5BKtLopc7NQQX7iFCO7TsmV1l+vEC6qhwlmEXMgFL6DE2byNmBn3sbT
 +Fp74DZVs2Mm6TchjYvpRWzMFWvivgpa/5dGYHbhAkKv1t2W2F1ZQqxhTqmwXHAttZb6
 lqBNN4GAuzqhZK5BB8ex5XAcQJWVywu8biIjDLSUG2DZORJCHPcoZcuEqsVwsfmWuGTa
 88kGFyFXJ8AVBz86oDkjDQsovPKSU1/dIRsAbB2j3HPKuOH6mruw6RK+jVepbyrQkWtD
 AGL9hVrg8MxtUCXxmzHNg/O6cWRh81XYqYwzQ6jZmLtynfs1d0RfcoYi28cU15xhIDWW
 xJPQ==
X-Gm-Message-State: APjAAAWVV1RfkMugXQJSBuKZLZZy7Td51Y1w7Jb/x5Gbi6GT6cG+PfC+
 lVFKtKKd183GcgC390rKjEc=
X-Google-Smtp-Source: APXvYqwb6x+cb5JVAvjSiuBW/F0DFFAQ4Dqz9YAQgQrWJMBNZDKKdDo/7lm7jAMWqNB+6idpMU7dww==
X-Received: by 2002:a17:902:9682:: with SMTP id
 n2mr11535190plp.336.1576432297060; 
 Sun, 15 Dec 2019 09:51:37 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id m22sm12304608pgn.8.2019.12.15.09.51.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 09:51:36 -0800 (PST)
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
Subject: [PATCH 05/13] mmc: sdhci-spear: convert to
 devm_platform_ioremap_resource
Date: Sun, 15 Dec 2019 17:51:12 +0000
Message-Id: <20191215175120.3290-5-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191215175120.3290-1-tiny.windzz@gmail.com>
References: <20191215175120.3290-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_095138_003368_8572D02D 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 drivers/mmc/host/sdhci-spear.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mmc/host/sdhci-spear.c b/drivers/mmc/host/sdhci-spear.c
index 916b5b09c3d1..37f1c41c8a9c 100644
--- a/drivers/mmc/host/sdhci-spear.c
+++ b/drivers/mmc/host/sdhci-spear.c
@@ -43,7 +43,6 @@ static const struct sdhci_ops sdhci_pltfm_ops = {
 static int sdhci_probe(struct platform_device *pdev)
 {
 	struct sdhci_host *host;
-	struct resource *iomem;
 	struct spear_sdhci *sdhci;
 	struct device *dev;
 	int ret;
@@ -56,8 +55,7 @@ static int sdhci_probe(struct platform_device *pdev)
 		goto err;
 	}
 
-	iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	host->ioaddr = devm_ioremap_resource(&pdev->dev, iomem);
+	host->ioaddr = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(host->ioaddr)) {
 		ret = PTR_ERR(host->ioaddr);
 		dev_dbg(&pdev->dev, "unable to map iomem: %d\n", ret);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
