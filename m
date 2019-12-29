Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0213B12C178
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 09:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KQ/BZjlX+Q1/i6MB2xXQ8GPkv0VHKZvkLrF3wLqPEb4=; b=kMz+X1YDfdBlGZPuH3vB6iQiYc
	uT1ItQ2clX3I5URKTBlqMDICGQbCFWRFAkLkIdpvRyKKvN8ERhNdejAgN1XS2iXEBZbcjkBqNeHBl
	4aI2g1LVGv8BtXFLUBugJOWqAK4/laQdgA3W5gMIONhu+jIY9ETi+vogSXVYrU+RplpDGsP5Daryy
	+ADDbiH+q7LpYI78DMg9sNKxfro9WIzrdOZ6qJ11uNUkRGWAHJzrfRzVbP2n44br7wtRnJDBtLtI3
	4Fkga/rNb7fYcRbx+BR4J+GlaY3nDgQo6p+uyD/oW03GchJ+tqizxAS3JH8/6lqWzcNjHLLeFL5UM
	fJV7Wo4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTf1-00058m-PE; Sun, 29 Dec 2019 08:10:51 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTam-0000wk-4N; Sun, 29 Dec 2019 08:06:29 +0000
Received: by mail-pl1-x641.google.com with SMTP id s21so10760774plr.7;
 Sun, 29 Dec 2019 00:06:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=r7yBzrky9isIDkwNYOWcYiIFvp7DVOIxh9G5y1D9XBQ=;
 b=usDW8hFUshmn8eVuGWMqg4B7C5LZWw/Wg2QrmoaVjXbM3JBFZmrOz+FqgQWJq5+t7I
 YaPOcvdt/Rc3MbjJkx99C+FtSfajrWtGzCd/3gbzr0KZp6KvpKNvprnBd4HU6xgN7bT1
 5SCxjsdAzmnCsn+WiD17WX6ysc8TcTre0+AFmaPbc0LoD94t8RCUm3HjhLI+BrMZVIpH
 whp5b7QAyhA1W8kNSbSqEOufLVVU8fVlpOP/zwpOiW1dW47fAxkbNwjchxDAhzTlpxnH
 fkdeALLLaMn6u4k7kzJ50g2XIIG8E965SJ8uIu0lNHDc6fV045vrCjEaWXgnanmHJJZY
 TeDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=r7yBzrky9isIDkwNYOWcYiIFvp7DVOIxh9G5y1D9XBQ=;
 b=rO5Ckjm1Rt81epUCbumVmrM4POtlFkZloic7UUOSUl3noIDUOG7sozVGVaImsWaDew
 IqiFHDRT+T2En6uYIKBA++yBwn7DHGcqYwXuKAh065tnlM/i0R55YzqXquoPeIXPQJzE
 L76GPAeh4yxv38/J4/V62Mgl/w9pfQwnuUkf60W1MJmmg5wlvhYn7tZZbS3sKT9L8wpN
 u75aCAg7da17jQkKltiRrDBEumY+bkhbT0zsZeemGRdIsa1+M+4tlu8kqkSLFgE24rNv
 m4PB2TiobaGIRWHKqQQMopd9WrnBGOXMkBrDvHMSfJB9gRMuWbQFr0UKjyY5m0PAsMVc
 od9w==
X-Gm-Message-State: APjAAAVPibYn2fqaAkuZG8SrRoQ3L6FtGaWsp1IcqvHqGuzxGtwS6Ut8
 XftFzDq3FyZprsW3X6u6FZ0=
X-Google-Smtp-Source: APXvYqzv0No0diEA1DoLx1b6KestE0Bu3q6K4jZXDVxUtmPpun5145x0dvw4VMRReC+BmBSNqxiP8g==
X-Received: by 2002:a17:902:7288:: with SMTP id
 d8mr59572014pll.341.1577606786514; 
 Sun, 29 Dec 2019 00:06:26 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id r6sm46824501pfh.91.2019.12.29.00.06.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:26 -0800 (PST)
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
Subject: [PATCH 10/32] pwm: zx: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:48 +0000
Message-Id: <20191229080610.7597-10-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000628_236715_B03DD0AB 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
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
 drivers/pwm/pwm-zx.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-zx.c b/drivers/pwm/pwm-zx.c
index e2c21cc34a96..0f5e8919b034 100644
--- a/drivers/pwm/pwm-zx.c
+++ b/drivers/pwm/pwm-zx.c
@@ -196,7 +196,6 @@ static const struct pwm_ops zx_pwm_ops = {
 static int zx_pwm_probe(struct platform_device *pdev)
 {
 	struct zx_pwm_chip *zpc;
-	struct resource *res;
 	unsigned int i;
 	int ret;
 
@@ -204,8 +203,7 @@ static int zx_pwm_probe(struct platform_device *pdev)
 	if (!zpc)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	zpc->base = devm_ioremap_resource(&pdev->dev, res);
+	zpc->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(zpc->base))
 		return PTR_ERR(zpc->base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
