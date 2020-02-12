Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94967159E48
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 01:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z32+aVdxh4GmGVY/ouU9jLNbjAu5RLpBjBBbfyPOpEg=; b=pSwmqjvwXk7+L9
	YAMcEVjJ60LiXgNWvn+4nZHTTeZYzp7UKnpJgwhqIcgY1ar7wFxzW/xPtg0Ky1ACkOQ7NbM4A3Yez
	3wtkki28J2qi+4/ur6RFzk6N2pTBVe+87qAHlWbvZyP6Z5jcwxc5XBlxLxqlBa3DHEIB9McgAi+iw
	gFq7dOhv96ibkrusYide7dZuDiUV8+4kpsbYR+c69hLW3wuDSMDj6TPu4UrLvNdR8FZy0aW1q3ZkX
	6gPPUH2bB5Ae/R/+tgfqSetBlKeq8/cLQpaeo8+neNbJq58QxvDAwGGpeKKAcfox2+b0d/4asaH0t
	+6bWCfJxC2or2qHDLtvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1gA7-0005p5-FW; Wed, 12 Feb 2020 00:45:55 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1g4r-0008Jt-VK; Wed, 12 Feb 2020 00:40:33 +0000
Received: by mail-lj1-x241.google.com with SMTP id n18so256671ljo.7;
 Tue, 11 Feb 2020 16:40:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FJYKPthvZIFedIlxbcTRXaWUixnzV1+Q9RiZEPYQb/8=;
 b=XRUOYw1FAkTzb6oW3oIsS8OrrN+JDesE+lr0Eg5RKKCAGYyMWyjwLUo6beSeizUGhq
 RgMChJuxxMdMfwy1UX/UAcxmGlSym9l2K/JYczKwDWXjgaogauFOflQwjP50YXIlTZiU
 DGMYFyU/qb0xujibkcIeA8KYFLwPt+VWN6Linlz47TdJyttGzGCM4BOVECZKTJ+CMfq+
 /tlh+vLf+ycG/NXi3N+RgYjSn7A/7iUsj9CjpcboM+B6OvgvJCuXjwk6Fpzu2QVyTMLD
 s1pInl6rcIeUO+t+aqUYwJ5g2apQ2wlLtneq1wUdwlH7CIlILApyrZMC+5NKd9QKyApy
 TlMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FJYKPthvZIFedIlxbcTRXaWUixnzV1+Q9RiZEPYQb/8=;
 b=pyYvFStZ8aHsY6mQzJe/EZXiW7gtGVK645nuwPOs2DDlIrsdIDvpRqJFwe902AKUPv
 DLH/GDksr9wI1AL8ngcSY2MSUcY5m9P1EgZf+xQqLANVL0SPCoK4apshguZdNQkPivTd
 qOByQSnTZVAbmDeC0BWxrQde+5Vss9f2tcefOC382qAI1pFmH/O3JJgVW7ksrC1mOLSg
 bbOnQ1NEP/PaY8bnyLw/eHN0NGnK3j7ns2Aw3InKEjbj7v4qi5fnrAgvxJs+PItBRuk3
 kERhd6beK2NCkI55xuNnaPfYVbSty6ASowqcj9W8CdhhtEw2zy39DLTKcp/0bfEY37SX
 5nkw==
X-Gm-Message-State: APjAAAXFVgFHHT7o5cyRpfbErwSVthHIvMcqSp8zgNUFwRMY8LzYU/G/
 mb4NTfb/O+pJ8JZ7z0um+yA=
X-Google-Smtp-Source: APXvYqw8vOkP/end+TVMFx46dyQcENtXIweuu3keRWt1h/CrKYtPMYiEk3ELj0Qt93lVXrk/HH4MXg==
X-Received: by 2002:a2e:b4e7:: with SMTP id s7mr6220313ljm.58.1581468024270;
 Tue, 11 Feb 2020 16:40:24 -0800 (PST)
Received: from z50.gdansk-morena.vectranet.pl
 (109241122244.gdansk.vectranet.pl. [109.241.122.244])
 by smtp.gmail.com with ESMTPSA id e8sm3621935ljb.45.2020.02.11.16.40.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 16:40:23 -0800 (PST)
From: Janusz Krzysztofik <jmkrzyszt@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>
Subject: [RFC PATCH 09/14] mtd: rawnand: ams-delta: Handle more GPIO pins as
 optional
Date: Wed, 12 Feb 2020 01:39:24 +0100
Message-Id: <20200212003929.6682-10-jmkrzyszt@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212003929.6682-1-jmkrzyszt@gmail.com>
References: <20200212003929.6682-1-jmkrzyszt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_164030_096392_7A240E34 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jmkrzyszt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>,
 linux-mtd@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to make the driver more useful on platforms other than Amstrad
Delta, allow GPIO descriptor pointers of possibly non-critical NWP and
NCE pins to be initialised as NULL.

Signed-off-by: Janusz Krzysztofik <jmkrzyszt@gmail.com>
---
 drivers/mtd/nand/raw/ams-delta.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/ams-delta.c b/drivers/mtd/nand/raw/ams-delta.c
index c481d73e3dcb..0c88e94e9b71 100644
--- a/drivers/mtd/nand/raw/ams-delta.c
+++ b/drivers/mtd/nand/raw/ams-delta.c
@@ -264,14 +264,16 @@ static int ams_delta_init(struct platform_device *pdev)
 	platform_set_drvdata(pdev, priv);
 
 	/* Set chip enabled but write protected */
-	priv->gpiod_nwp = devm_gpiod_get(&pdev->dev, "nwp", GPIOD_OUT_HIGH);
+	priv->gpiod_nwp = devm_gpiod_get_optional(&pdev->dev, "nwp",
+						  GPIOD_OUT_HIGH);
 	if (IS_ERR(priv->gpiod_nwp)) {
 		err = PTR_ERR(priv->gpiod_nwp);
 		dev_err(&pdev->dev, "NWP GPIO request failed (%d)\n", err);
 		return err;
 	}
 
-	priv->gpiod_nce = devm_gpiod_get(&pdev->dev, "nce", GPIOD_OUT_LOW);
+	priv->gpiod_nce = devm_gpiod_get_optional(&pdev->dev, "nce",
+						  GPIOD_OUT_LOW);
 	if (IS_ERR(priv->gpiod_nce)) {
 		err = PTR_ERR(priv->gpiod_nce);
 		dev_err(&pdev->dev, "NCE GPIO request failed (%d)\n", err);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
