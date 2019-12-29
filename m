Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDD212C18B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 09:13:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e0jcc92OVjbNi/maGhyBa2ytSf5QnXmkBCkc6rNQz34=; b=pWJsVTDYaTQyk8Kk2nFhM6si1f
	CFWg0cZkcLb60BmNgey8FOEzZvPMnxYm1e97ZbOGUryDbnque9J/LAVoN9HB1OJdOXasz1x7B8VaP
	wRSZ+5DF7kA8hVwgtvlHxr2Iiv1XmGxLDB/hkj3SmCydnnm9EGddtl38uAfrML1QIH6ghU5g0KCRZ
	eKtkkh2JtRJdk9HiK4swOuNnCIqA6WZHl0qVaT6lV88MtnfP/khHYOZs371iF5anE7x+mPyT9ptPI
	oT+PgAOcRj+k9eFKld5jTZwPZYYe7+ru6UJy49z8vbMo6RREsZa2IUeNV7TKDVCGo0nogXC9hqXRW
	h2qc7eMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilThq-0007wZ-HG; Sun, 29 Dec 2019 08:13:46 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTaz-00017Q-1Q; Sun, 29 Dec 2019 08:06:43 +0000
Received: by mail-pj1-x1041.google.com with SMTP id a6so6625726pjh.2;
 Sun, 29 Dec 2019 00:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Pe7z29fRNe5SM3JyqTcr+ajpELEpJ4s61Kvtp+b3jfk=;
 b=E6kKDc1ccDfUno5iuV2/36t1tRGyzcoCrbrGkA48JnmLme4WYttoT2natZ0DS1wKBy
 jQlL7uYK0gxMbTMdSW/ouKjGvg6uGzW4AACMSO73e89dnkNh/b+8vCGyVE6wHArrA4qg
 rZJ9hH3uoB9wDdCAPwZl3jfrY021ZsUga0LMCTHRNs2mMJ6/g/QHoWb9fxu0jB7+xZTd
 Z/kGz/BRPgLl6OIG9cjDx3g30glFXrSoW1KmlRnOJSWs7dfGvv3J1lgYNQWKvPJMKP5w
 0LVM9WywgdkNgbxEYjhxa05BF3g9PfZ5tsAKHZrLXeRxyEx3GOnbmeNcKzu61Se8a+ib
 KWlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Pe7z29fRNe5SM3JyqTcr+ajpELEpJ4s61Kvtp+b3jfk=;
 b=TtYC/hCzFhjWUV/JUNcmvl5cVJgOVDpZt9XHrVJb67OjEWGGnu2eJVL2/qvjsxBWwH
 8f8g/WLkbomp2ZYwoi4BXe/FVhHpeUyQQtG6pyJo1rsGDtfPXwtp5yGVn8+mQ38iB2Qd
 6laLTJCxaSfUIgfmPD1cDSfVOI18k75DObQgyPeWjEQ+76z7QBXwsVnUI3iGSHfy31LF
 pVnYHDX7rdUM8+NkvYMtcz7rLuEFgEiLw8HZU/cVcVWTMa/YYJ38ODevBBjTXus4Ljjh
 McRxM2tRKwX5wquyucUHISdDe/g6JoLeaVWeUVAbxr2IgRA6I/tZE2ZoTW20Dog+mOgb
 uytg==
X-Gm-Message-State: APjAAAUYaAH4sgsZJiN4d6DV1CdNkfamZaorj0YjUJQL1YCMXiQuN7MO
 P1P9BWSb1MkWlEQZNu3lGhQ=
X-Google-Smtp-Source: APXvYqxIMYpEGxMzLdsKYBj8rpDkpOr4YQd01fkuyPBNDQ089lxGYTs+RS+KP+qyyW8xims4wb9VOQ==
X-Received: by 2002:a17:90a:5d95:: with SMTP id
 t21mr38920834pji.31.1577606798522; 
 Sun, 29 Dec 2019 00:06:38 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id q7sm20290229pjd.3.2019.12.29.00.06.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:37 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: claudiu.beznea@microchip.com, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, f.fainelli@gmail.com,
 nsaenzjulienne@suse.de, shc_work@mail.ru, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, vz@mleia.com, slemieux.tyco@gmail.com,
 khilman@baylibre.com, matthias.bgg@gmail.com, heiko@sntech.de,
 palmer@dabbelt.com, paul.walmsley@sifive.com, mripard@kernel.org,
 wens@csie.org, jonathanh@nvidia.com, linux@prisktech.co.nz,
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-riscv@lists.infradead.org,
 linux-tegra@vger.kernel.org
Subject: [PATCH 20/32] pwm: imx: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:58 +0000
Message-Id: <20191229080610.7597-20-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000641_235394_A72D9530 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/pwm/pwm-imx1.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-imx1.c b/drivers/pwm/pwm-imx1.c
index f8b2c2e001a7..1a60bfd7d659 100644
--- a/drivers/pwm/pwm-imx1.c
+++ b/drivers/pwm/pwm-imx1.c
@@ -136,7 +136,6 @@ MODULE_DEVICE_TABLE(of, pwm_imx1_dt_ids);
 static int pwm_imx1_probe(struct platform_device *pdev)
 {
 	struct pwm_imx1_chip *imx;
-	struct resource *r;
 
 	imx = devm_kzalloc(&pdev->dev, sizeof(*imx), GFP_KERNEL);
 	if (!imx)
@@ -168,8 +167,7 @@ static int pwm_imx1_probe(struct platform_device *pdev)
 	imx->chip.base = -1;
 	imx->chip.npwm = 1;
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	imx->mmio_base = devm_ioremap_resource(&pdev->dev, r);
+	imx->mmio_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(imx->mmio_base))
 		return PTR_ERR(imx->mmio_base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
