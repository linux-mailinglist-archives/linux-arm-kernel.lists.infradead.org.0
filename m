Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FAE712B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=INmwIA8m+eX2pHKXsLJvbDVgOF81XuElTC7Bjc2D4nQ=; b=UDxVcy7vzvvmKF
	u7QvW5cdQ8bBIQIlbJaBlMO3qvFCqQy05Aws59+twtTxIVWALlDAavRm0J/9cGfRpn4NjyfS9dIz8
	3U/Cckw67zi+eelk8pcHFeFpGZrWhlE09S6wBQT2X3LPnH/EXrlynGRXf1tdVgsj/HPj2Q/YVI+zh
	d1aAFX4aOuyfn25LPzdV7qzqpgUINsy3VVBhb4gf2QQJuYMdCREcPNpZmAkJHgv15MtjWtG3/fdl+
	YQNVdDsoH1dNzJjVGdQw0Ak4lEnV0Zmd+MF0q6pQuyTjNv5l2NFhxJLrMpQdj2Ia3SJzTozZSsXa7
	dzoO4ejnLvrEM8AmOoUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpp7f-0000B7-EI; Tue, 23 Jul 2019 07:22:07 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpp6U-00009U-2w
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 07:20:56 +0000
Received: by mail-pl1-x642.google.com with SMTP id a93so20204827pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 00:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4QWiA/u7FUkm/LP2+FlraH63gXlLRpOie6WBL+YDZks=;
 b=c1pXgPiAsMw1pk8bFK3PwA0hqGMc/sMpkQtw/FfggkERlGIWgPpZNFo/K4CSzw6hd6
 +zz+DO4Bq011chyUgykYBW/IkBssKoYBjfFVYC1kredHk5WX1FmXs4DosE7MK1cerlGI
 wTU/dMy0KoS0rzhw4w/nFiiJwC7JNEC327bqEGrJQZrAfrJ39cs+2rQfU8ylPvzRK+QM
 4afzpXrveZ3d9936OCfAJ7mRhYxKy9xZ5/Hp7WkO3w2hErwZqOUlEFaB14Lpv38NYXfO
 ZmQrd3mvX4gDwemKPKlxatRA0adWdrPQj/WycIIHZ+lLp6QJM0e6dVYom7AHafUlUbqD
 oG4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4QWiA/u7FUkm/LP2+FlraH63gXlLRpOie6WBL+YDZks=;
 b=Br59v3LwgBx+rN60zyLyo0eauua01GbEcHH9KkNGMp9aJ6Hvnn4jKENxBoYo9WKK8A
 ffL7blTYqp95Nh1cZ/SkjlE7/tcVwcOIMOcabIGnEzwnowAcDH52nhWdeq5ezmUiblT0
 ZjJritxHatUDCg4JtY5nmu1W1HazWJ7c8I5ANyfkdYxLuzBh+nSVUI+HdRrIk63g06wn
 4XHsSUXblxnl0wTTnLWlebpZzNkojESufFltN+pxSwuVZSir3mI3I3qeArTlKnnOdIP+
 iky2VWqcWVNJE6WDM7fydNKO2Fk82cLAAz35YIYEwYut+JzyEFeQXbaJkPwQzuKfqLxr
 F4Nw==
X-Gm-Message-State: APjAAAWATkJqCE1DD7GHyk8OiDj90zKvKV8v3AQDoxuF51JhdW5P0TKc
 DEZ16IKjX9PZllPrwgHNjiU=
X-Google-Smtp-Source: APXvYqwTihw8jhNsCmpI+cCen8+lZlsATFxXbsy6cUIM8VdRumBC1BtQZh3JMcofrWyj/ptB6zC+fQ==
X-Received: by 2002:a17:902:a9ca:: with SMTP id
 b10mr5633876plr.69.1563866451938; 
 Tue, 23 Jul 2019 00:20:51 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id v18sm34217115pgl.87.2019.07.23.00.20.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 00:20:51 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] crypto: atmel-sha204a: Use device-managed registration API
Date: Tue, 23 Jul 2019 15:19:36 +0800
Message-Id: <20190723071934.12528-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_002054_730119_D8C3A485 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-crypto@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_hwrng_register to get rid of manual
unregistration.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/crypto/atmel-sha204a.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/crypto/atmel-sha204a.c b/drivers/crypto/atmel-sha204a.c
index ea0d2068ea4f..c96c14e7dab1 100644
--- a/drivers/crypto/atmel-sha204a.c
+++ b/drivers/crypto/atmel-sha204a.c
@@ -109,7 +109,7 @@ static int atmel_sha204a_probe(struct i2c_client *client,
 	i2c_priv->hwrng.read = atmel_sha204a_rng_read;
 	i2c_priv->hwrng.quality = 1024;
 
-	ret = hwrng_register(&i2c_priv->hwrng);
+	ret = devm_hwrng_register(&client->dev, &i2c_priv->hwrng);
 	if (ret)
 		dev_warn(&client->dev, "failed to register RNG (%d)\n", ret);
 
@@ -127,7 +127,6 @@ static int atmel_sha204a_remove(struct i2c_client *client)
 
 	if (i2c_priv->hwrng.priv)
 		kfree((void *)i2c_priv->hwrng.priv);
-	hwrng_unregister(&i2c_priv->hwrng);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
