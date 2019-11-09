Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF55F5E0C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 09:12:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KVOObv3q4JxjeR89hdxAlp2IZh+Q2O5ixBpYnHLKdMs=; b=Yr7gMroGCXGXiO
	GefKRpAupNymyqQtZEr8yCGOW6B/4fl/zXytXRIIqnZOiVXWMnHFpLKnWGpMNM7U60XqmEFEZe0o7
	TrXBGJc/xFOhqf6lxnrZ6djm6bxfdHklMYXT+O07R7sl77n2bF4lM8JxS29bQfPecqrml+vOSz1Ec
	1SccAGFqg8UhWp+KBN88Xijk5OKGGmJ0n1uPFgRPsczVZuH2+F5PxIw8OXEpmxqEeX6o3+zhiMnfl
	H6Og2AIrU5NTigZIDvY3QnLYDXJThR5V6vIc3DjLSzfnEHfhgHY8wAFYoYzTJGoSHPLeJkX6+Tka0
	xJr/BTgUyYmlqR1Ilq9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTLp0-0003tl-1B; Sat, 09 Nov 2019 08:10:14 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTLol-0003pk-LS
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 08:10:01 +0000
Received: by mail-pg1-x542.google.com with SMTP id q22so5706512pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 Nov 2019 00:09:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=c0AkCz+ons60KF3Basu+r9e0WFH/NQCt67/Tcitib7o=;
 b=EYdZbBZEJ6QnLJLTDb8UPk3rQWSaDm9RyNhSguPvwNe1l6TAepI2uWZPNPwH14R4gk
 nyxnEX6DOnUcklNh4uccNfH/usHsraepcOWcODbFXlk/mnpQZPKHrWAc3zjMOE/c9u58
 OQM+pI7NVIjT1c6V71+4OnvirdmEYTFeI9e04eR0zu01MSrc67c+Kgvi7RgDkmRmLfYR
 +btFjaml5jP0sXZxAh25xohZzvBfLIQzZJ47FbHEePPPxfTPGWaSLOKqpTapaDqRb66T
 THHTCwxKiPH15VncMsjTC/qs67fmXx0gJfNn6RD7tD7TSe6LkTD60xJFhJJdaVWDLtal
 N2eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=c0AkCz+ons60KF3Basu+r9e0WFH/NQCt67/Tcitib7o=;
 b=g+JaeAfy57ZaWDlpIll84xQ/zmi70fnhxp9S3hpkE5QdiMxAezZMOZ44+FkvJlkE99
 nGU1aCpxeSPKFIMoGIppE/iLdRa29vWjbL+neZkSzB9DqovyiRsyjZYhDoe+FlzbuTLZ
 NH/DEyfSwwTN+lh5oiHJbVovWqxFbSCC3+Lj1+Q0N7RvQzVD4KvgAP8bS5WPAku9wmRq
 o0eZ3xLkHTpGVkT/rMMf2qkWLlfdnHdBMuRyEDbdKgJkjpcj2u/PRQgNz6Kiq3w5xsH3
 pl1eo/R8x91Ci44yxaB8XfAGtOVzkAuEVCCkCYEJ4VMl1wAoGfiQaLl9gtpUKY8Y0hpM
 L/2Q==
X-Gm-Message-State: APjAAAWrvfAM9I2nO51LBUAM05eV1Civd2bZRtnUmk8fY1MKOEfE/xU4
 iaIn82OYDQM1gjT1e6oAyoI=
X-Google-Smtp-Source: APXvYqxzY/DL9rM6SfcD+4ow3nbBR4KyVY6j8DGNdrb345k8GNjqK6yfgTyA86TspPW77PvK3sXNmA==
X-Received: by 2002:a63:5c21:: with SMTP id q33mr17660246pgb.61.1573286996321; 
 Sat, 09 Nov 2019 00:09:56 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id q13sm7799715pjq.0.2019.11.09.00.09.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Nov 2019 00:09:55 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v2] spi: pxa2xx: Add missed security checks
Date: Sat,  9 Nov 2019 16:09:43 +0800
Message-Id: <20191109080943.30428-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_000959_733848_5BD3967D 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
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
Cc: Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Daniel Mack <daniel@zonque.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

pxa2xx_spi_init_pdata misses checks for devm_clk_get and
platform_get_irq.
Add checks for them to fix the bugs.

Since ssp->clk and ssp->irq are used in probe, they are mandatory here.
So we cannot use _optional() for devm_clk_get and platform_get_irq.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
Changes in v2:
  - Modify commit message.

 drivers/spi/spi-pxa2xx.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index bb6a14d1ab0f..2e73d75a6ac5 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -1565,7 +1565,13 @@ pxa2xx_spi_init_pdata(struct platform_device *pdev)
 #endif
 
 	ssp->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(ssp->clk))
+		return NULL;
+
 	ssp->irq = platform_get_irq(pdev, 0);
+	if (ssp->irq < 0)
+		return NULL;
+
 	ssp->type = type;
 	ssp->pdev = pdev;
 	ssp->port_id = pxa2xx_spi_get_port_id(adev);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
