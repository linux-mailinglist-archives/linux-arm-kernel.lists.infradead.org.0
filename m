Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 269FCA7B4D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 08:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bbnvbqtvIu3p7bPeZ1edB5Q9khrWK8beohlYW6Sawlo=; b=KHMddaCx8TSYL2
	bs/OzGflHpe2xZwRKe1Q0+GOovUdaXLlpC15JaOpgX9PhFCaCYGFTpBLAzENnT0gyJ7nRvkhLHsk3
	TmtcoERvYCxYaLtJf+LlgFaTkbgTuUvwlXuscUdb5Tj9L3czHbYce+b5ytCXs3I3TNdhkgXK3wCY3
	JAdMlPltqaiaJADKwCGA1jCQSqUvcP0qs41m2Wsvt5ScQTk/ZpzvlRDAoYmRTl+NjT1zr0HeCs89L
	aB4QP09KaRqg7NFGkYecG161UJtJ3yy7KzVdNZ0cucCNJ1Ayss5J6gZEnlV/DPLTU3zWSK2Ut1RVg
	H+JBz+1ULMlwlg/JrsSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5OXq-0006wy-4b; Wed, 04 Sep 2019 06:13:30 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5OXd-0006wM-Vg
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 06:13:19 +0000
Received: by mail-pg1-x543.google.com with SMTP id p3so10621463pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 23:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bcvphgpWn7tbDDJiZUCc3MKLcIk2OmmEQ53eSSM6u4w=;
 b=jNQhVRyBcDpvNHDv68xzHndXZuDP2Tf+8P45PkhLYtWd1Axf03Uu2bywcULAhtprhu
 pWhjUsc6c8Qrnq6IyNTkrK8FZQ5PusKpSTPHG0jIwSVGbZv4WgpDkQ7ISPfDWPAbd3Y/
 PColdJktp6/LGSTlwZXBlQbq5QE6cjULI1m1Pi2vqh25fNY57JDpeU1z8IiruHQsGsbi
 U3k4VFvVaY2xF79yiTAGyU1O/tk453hrTMGI1niAB/GTHW+gURn2pKW+djr63fIPdWD5
 RxEm8upNkkx7oldlPwK788cos0dgfZq5C8idLH4sY70NxdFkOMsAYR+HYAkdBlUOLTMw
 z+8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bcvphgpWn7tbDDJiZUCc3MKLcIk2OmmEQ53eSSM6u4w=;
 b=Dl0PjVFmAAK26cPYyRrmZZMvIBZsg0AvN9ACEFRi3ij15iycyGke1EvczK8dKva4Ok
 FJ2dzWpR0EkKj0vp64Z4dTe3A0T/8cYbAX47N9C+TKEbIAq1qXW7IDkdmJTVqJwxQIrz
 drD/d5OGLQEjC0sVnfvZKiTzhvcxv2Oue+/mjRnzSIpZcR4iSiIAvY+xW/j5dl7olyKQ
 BwowsucsiIyKXRHWPNRNiSv519MDsUD16hJlng3cL7tWcVK6JUYuvJvmlRslSPh59fyA
 aIU1ZHabUpQlzStbqS10ueL8zEgjajqrQaivaZkVJ9Tg2hXuCDhb2CSxdIOkF0h1VndE
 ESPQ==
X-Gm-Message-State: APjAAAXfW2fbOgThDerNyjE41le2dLrr6zI7g0cBueCnYXrlw6nAt+7h
 zkoJTizoMvrsR2BVZttVxbw=
X-Google-Smtp-Source: APXvYqxRXrLMzZIzNt8qZ4xFJrSVL5VeAjzMYAlRa/+lOm18OY5vsAjxtxnph8GHTQK/X7yZQtwGfg==
X-Received: by 2002:a17:90a:8a94:: with SMTP id
 x20mr3353253pjn.102.1567577597161; 
 Tue, 03 Sep 2019 23:13:17 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id i9sm42443093pgo.46.2019.09.03.23.13.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 23:13:16 -0700 (PDT)
From: Rashmica Gupta <rashmica.g@gmail.com>
To: linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 bgolaszewski@baylibre.com
Subject: [PATCH 1/4] gpio/aspeed: Fix incorrect number of banks
Date: Wed,  4 Sep 2019 16:12:42 +1000
Message-Id: <20190904061245.30770-1-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_231318_049552_BAFFE9B5 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
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
Cc: linux-aspeed@lists.ozlabs.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, joel@jms.id.au,
 Rashmica Gupta <rashmica.g@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes: 361b79119a4b7 ('gpio: Add Aspeed driver')

Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
---
 drivers/gpio/gpio-aspeed.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
index 9defe25d4721..77752b2624e8 100644
--- a/drivers/gpio/gpio-aspeed.c
+++ b/drivers/gpio/gpio-aspeed.c
@@ -1165,7 +1165,7 @@ static int __init aspeed_gpio_probe(struct platform_device *pdev)
 	gpio->chip.base = -1;
 
 	/* Allocate a cache of the output registers */
-	banks = gpio->config->nr_gpios >> 5;
+	banks = (gpio->config->nr_gpios >> 5) + 1;
 	gpio->dcache = devm_kcalloc(&pdev->dev,
 				    banks, sizeof(u32), GFP_KERNEL);
 	if (!gpio->dcache)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
