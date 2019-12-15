Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AB111F9F6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:51:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=y9p/BHCVMHpg59OwRsBbTqJNFFTyz4ZY+w1vhPfJKqM=; b=jjL
	UAuf6yhUQLxV00+FvFkWrzDI/EvS8P6PZzL8ptz7rBTrUm+3xChdgSc/eif5/ouKf/O8LzLV1Di0e
	cG1feMi/GG3hC7ve+zXtMK0DigWHv+9pXU8khn6s/Ltf1yw9cjwV6YXsESyGu0SzNRMn77fW58OHg
	0elGK1s0vQ0TPFbleMUm09XF2iJGK2XBZbYvUnKMLNQricOOA7H0PVMEVJno0z3Zlc+TbtCcoVBI9
	ZAtrUf1gNYTa3aYQ0yZtlDskwiCzIxt1JDGnIiZXp3DzIVJaNiBM6oszWgPDT341S5cCGyn8hpyoF
	8kJU/R51/54uwXH6/VEW1v5p1fbrYUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igY3T-0003VS-3A; Sun, 15 Dec 2019 17:51:43 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igY3G-0003UW-5t; Sun, 15 Dec 2019 17:51:31 +0000
Received: by mail-pj1-x1041.google.com with SMTP id w23so1972220pjd.2;
 Sun, 15 Dec 2019 09:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=z1jBRqifD9uwR57sxHEm4IG5SvaRCOY1FJ5LXadeqP4=;
 b=LD9i0Sz6s6XSzCMt0KxGg8AkP/88Gm29YgxJKl/PIqRJ29V1U4k/Q1BcW2j8KkXiun
 oYLm5Oj4XhSh35ez2t6kOADhXR1IKCNrHdK9Tq2IoifZqzGaoUiYkTDOgVZVjEzxGucW
 t0yMqBvCvtGLkldgOTt6EEETTw6diR2m8JWhrciDiz8t0r6oWa5FoiiSjOFWVrwjKVO1
 3SculOLAtHzrOynoET+zghiGzyI5dGzUZlCNZ+YHnez/tYiMyMo2tB4pHUN2jVptR1lv
 GPXHLuxviOJVUKzri0wyTsmwSmsOOjY0g7WapaSEIWGMR1TvUxQrPW9ddrdvJOARMD1R
 OveQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=z1jBRqifD9uwR57sxHEm4IG5SvaRCOY1FJ5LXadeqP4=;
 b=p6sWZSASE4FLBEiE9PL7x5x8SZe0hKpgCdengkS7Sx/kok10zyKa9wwbL9fTnYO1jD
 v9pmwAqP0YRLC8auGju2p9cp50HSxCZUKcH01+iim6KEzqvUkiWTJJaeTjqhI6pC+mPg
 pQf14m8+JjXZiDZR3cIx0nGs3ulaMuFCLZRDJ+/+FCpWT6by1zn7gTnirdT3yadkWoMk
 pg6SfHZmImSwo61NpAeZAfuKvcFELkv6BmfzkBVVP+CkaJFq6COmZzup5rm2d0dT8deq
 gcJJcCdSgMHvHzOOURSTr8/PNP9//RliQen0JWBe2PxxaKYii24fS6zv3XtqNabFYs1Z
 vcwA==
X-Gm-Message-State: APjAAAX1WYRb0Hbjz1iE0ZobXTPYWoZP0KkLvkKvBUpJILHOQlbeKzsU
 txM9OGr2/2ndVstu3BwpN+Q=
X-Google-Smtp-Source: APXvYqzWCydMHykUpEys8y8YK57hVRHOWOHSqS0Ui0zvmzlWq1mTCq8BkWpBBEPrjneRePs+lPMvMg==
X-Received: by 2002:a17:902:59c9:: with SMTP id
 d9mr11602644plj.184.1576432289298; 
 Sun, 15 Dec 2019 09:51:29 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id q6sm19291374pfl.140.2019.12.15.09.51.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 09:51:28 -0800 (PST)
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
Subject: [PATCH 01/13] mmc: sunxi-mmc: convert to
 devm_platform_ioremap_resource
Date: Sun, 15 Dec 2019 17:51:08 +0000
Message-Id: <20191215175120.3290-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_095130_245755_D98DBBC1 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
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
 drivers/mmc/host/sunxi-mmc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mmc/host/sunxi-mmc.c b/drivers/mmc/host/sunxi-mmc.c
index d577a6b0ceae..f87d7967457f 100644
--- a/drivers/mmc/host/sunxi-mmc.c
+++ b/drivers/mmc/host/sunxi-mmc.c
@@ -1273,8 +1273,7 @@ static int sunxi_mmc_resource_request(struct sunxi_mmc_host *host,
 	if (ret)
 		return ret;
 
-	host->reg_base = devm_ioremap_resource(&pdev->dev,
-			      platform_get_resource(pdev, IORESOURCE_MEM, 0));
+	host->reg_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(host->reg_base))
 		return PTR_ERR(host->reg_base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
