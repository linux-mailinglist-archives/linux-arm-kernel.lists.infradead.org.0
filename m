Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E2511FA30
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:56:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3ZX9yrTa4bokZBI5ASdbDQHFS/bIyvrpUUuZ2lVlQLk=; b=EIiDQ42FXrPs4Z2rQhzctsjk2q
	vilR4gzg9Puz0v48EImEp0qZdbTuIqOQm65pKzxo4rFlP0ZkziPmak2c7NqwlRFxp6sxD+yrnw4Wz
	GbrdK+aEZ0NfOdGUAMYhe8+O7P6iBWNKycT5rXAsuz88fsK7bsINhyMWq/L9P4Vi4m1cm2Rby+GBw
	G0S9jUl74wrMyqoPXucY3nrxFTINff0SbIeR3OSfDTL9qLD6j1NhuTG8/H7JEFjhVB6kEq8ScG3wh
	K7f7E00+2shzIMYsy+3f8tWTOzC6zMj/VS4DT7rp9h9/kEdt7SkjIPGlbQEoTsCZwsiRRknv0wPek
	EkdYMqLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igY84-0000Gc-Sf; Sun, 15 Dec 2019 17:56:28 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igY3d-0003qd-1i; Sun, 15 Dec 2019 17:51:56 +0000
Received: by mail-pl1-x643.google.com with SMTP id g6so3451908plp.7;
 Sun, 15 Dec 2019 09:51:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/cz4vRUnbRV9SZ3G6wT7uGNBKfnOEqLWr9ZhQq3aPJY=;
 b=VUB0KVQAHEHprXd8JPg/0jED90d4vxehQR5oM13rBTaAw8YxpSr2SHoeE4jGTI7E22
 9CU2zoUYjBTnG3V+h4FvWpk0N4jlhpjp3RLjpQqDiDyO3pz0inFoNokv0y6Fsu0Awb+b
 M7s6Pjtbd8WVa7wOSJJuhjTi8zjBu2AzhoYEhH4fmQZO8q7pTFpxAYhgqOwQ4eb0W5aG
 zmAXTggqqLYOk2JsO0UFqjCtuNRE80TkubJxiCWtarkBSzlpDy5d5eZOKISXqW7sd+ap
 kPsjx2a3CPqG9IkXh3otL1pUVKFSZOoFGepy/lTbYnDJhLyZkz4V+bsRjFtnTv1ABJz3
 6zqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/cz4vRUnbRV9SZ3G6wT7uGNBKfnOEqLWr9ZhQq3aPJY=;
 b=DzAQhV7W/31HWtDn9jEfwhGAUVeioOedGsYLg4wXu+C2e6hKSB4BWKBLY4ow735L4T
 msybYdhI+CgdERjujO7hPq4U0HlpEOs47qyTaq/NsW6yPT1dXbN9+fIC+Qn3Co9rNAdg
 3SsCaYcCWZiiHwuYgm1VVgK3WwSPrljPSD1dqsO72KFHX2HffXIH+8rYb6yUhNhHhoDp
 fV9IVO8j2AUa1b75SZXzTjfJn5VWg9DPkAqYkUY6PJZ6aa8jV4csBTXhdUAOH+t/M9tn
 /jmAfp1Kbop9n86ySYA0wfxRyoZJ/40GiYsdMiyx5xIe14/6C3FINmag8Gn61keE6mPn
 mG+w==
X-Gm-Message-State: APjAAAX2AWwfg66NvdjPWz8Fi7+OeGkBG+MgqX42d5QVICYzMY7Cb/eF
 1/bu9Fd27ENXWswWadb9vF8=
X-Google-Smtp-Source: APXvYqwynwF10fAEJxkpOjzXrYzf6q0kcA5H9tyhmFPNupU2grFmbw3V9ozwvElSbTNjK4798iHyCA==
X-Received: by 2002:a17:902:d708:: with SMTP id
 w8mr11897094ply.280.1576432312130; 
 Sun, 15 Dec 2019 09:51:52 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id h3sm19102447pfr.15.2019.12.15.09.51.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 09:51:51 -0800 (PST)
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
Subject: [PATCH 13/13] mmc: au1xmmc: switch to platform_get_irq
Date: Sun, 15 Dec 2019 17:51:20 +0000
Message-Id: <20191215175120.3290-13-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191215175120.3290-1-tiny.windzz@gmail.com>
References: <20191215175120.3290-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_095153_119417_DAA6CCC7 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

platform_get_resource(pdev, IORESOURCE_IRQ) is not recommended for
requesting IRQ's resources, as they can be not ready yet. Using
platform_get_irq() instead is preferred for getting IRQ even if it
was not retrieved earlier.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/mmc/host/au1xmmc.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/mmc/host/au1xmmc.c b/drivers/mmc/host/au1xmmc.c
index bc8aeb47a7b4..8823680ca42c 100644
--- a/drivers/mmc/host/au1xmmc.c
+++ b/drivers/mmc/host/au1xmmc.c
@@ -984,12 +984,9 @@ static int au1xmmc_probe(struct platform_device *pdev)
 		goto out2;
 	}
 
-	r = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
-	if (!r) {
-		dev_err(&pdev->dev, "no IRQ defined\n");
+	host->irq = platform_get_irq(pdev, 0);
+	if (host->irq < 0)
 		goto out3;
-	}
-	host->irq = r->start;
 
 	mmc->ops = &au1xmmc_ops;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
