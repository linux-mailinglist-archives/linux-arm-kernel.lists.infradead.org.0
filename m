Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD14A97E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 03:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bMOcH6MYhublQ423lluFPPVO/al6jN82XzrEi/7oAHk=; b=qL7Vcemv4w/Md2
	ryxxjv8JmpYX5zsq52EgMeqmxpZgQ8Vjy+o8QxvALm2QHdlHKiIp+6sSlXc+ftZMHTj0j511K5elw
	ZTIwzqFI2jN0lAUMWhmgPa0mQIv73b+atLjFcunocWBl4V9TQWEk34mZkEBbK/6xsAyy4+PVkdrEk
	TTUnRktPrnjKSePBhwFGyD6oUfqe/nZauolONOAg9KpxVXcYX1o4Eypco4CVM6OOnqS969sz58ovM
	qYglCtqyD6UtAoOThwB+11/C/0eI0ToZaC9Bs/an5ppGBwNvjGZc0NyPH+MciW+kElDL4/LeWXSrs
	iDYatvv3XqAEr/V1hw1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5gON-0002oy-2c; Thu, 05 Sep 2019 01:16:55 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5gOF-0002oe-1x
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 01:16:48 +0000
Received: by mail-pf1-x442.google.com with SMTP id b13so566257pfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 18:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pOasyZt6sdsNwBn8Gt+vfPwKrru431DH9AuzyGk0MuE=;
 b=Rfio1YTOgo6pg+zve3gTIxmDdPAyguIP5ao4mD3EW1H3R3pwjr/wjhxDn0mTuBoLDb
 jhkvz2jscbKJ83LdJFeb7QPvgQhC6+fpObLqg4NgUA9c7jsFm2LIixt+nnSoWHrZ16Jp
 SbXQiJHsCdwbl9tWrbitPt95fQyxPOnAOBeAgasuMLFSE2zmTK/LtD4/1YuX+jb+NBdf
 vxaCY1HEU2SAvrt+GoBj1klUkN5hJpGfk4sZQRk6OT3mJL7H0BFF8GEsNSxvn8nlcO5h
 tATs6goGtXHeV6kAGYx0Myl/2uRjs2WWqd+9wLX3SDbN53fZVqqgVRNDWXe2TCeI9GXy
 KYhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pOasyZt6sdsNwBn8Gt+vfPwKrru431DH9AuzyGk0MuE=;
 b=qg0RsQp3xTzuiXhUks5rrt1z+15xrc+VxeOpDCE00zddDhq4G9rE5nZwi9yICVvxkI
 1reRjtjm4sqJQHAZ3caS2z4tLi40tNxq55KSUh/g1jQw9HajVDsDC7wc5XEcPnWfOmew
 qe5KZm7clKacRVE0Kj2UCpcqKXlUaQDToct3oP4l6sNxhMLhsYbo9xetd7d83bk6ZIuy
 V/1mmRKJNXyX6sqm9NA2NN7GjZMt0UkfUzr2BagGt7epU+HPIMQLEIvplrSYe2SlzMI/
 T1m2Tz4IsqVEPvdcIESyBCLsfM1cQm4OzA25PEdFk6VojqoOmhqCKbjROH5POiKtsvj8
 xQjQ==
X-Gm-Message-State: APjAAAXzV09oGR12x2KAO6gJraaJB8r0dpkv+Pncp5R1MAj5Xvr8Ikyy
 rCPhq0eoMMgkd7iYzTTVJxo=
X-Google-Smtp-Source: APXvYqzTX/4P+wtUjwav6k/1/i7Nh0oj0E26EmN9zScuJ0JIlRTGuq0FjCWnfFgRvHJ73C7n7rDdow==
X-Received: by 2002:a17:90a:350:: with SMTP id
 16mr1054780pjf.110.1567646206375; 
 Wed, 04 Sep 2019 18:16:46 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id v27sm329968pgn.76.2019.09.04.18.16.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 18:16:45 -0700 (PDT)
From: Rashmica Gupta <rashmica.g@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH v2 1/4] gpio/aspeed: Fix incorrect number of banks
Date: Thu,  5 Sep 2019 11:16:35 +1000
Message-Id: <20190905011635.15902-1-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_181647_096449_F2108A4B 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 Rashmica Gupta <rashmica.g@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current calculation for the number of GPIO banks is only correct if
the number of GPIOs is a multiple of 32 (if there were 31 GPIOs we would
currently say there are 0 banks, which is incorrect).

Fixes: 361b79119a4b7 ('gpio: Add Aspeed driver')

Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
---
 drivers/gpio/gpio-aspeed.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
index 9defe25d4721..b83e23aecd18 100644
--- a/drivers/gpio/gpio-aspeed.c
+++ b/drivers/gpio/gpio-aspeed.c
@@ -1165,7 +1165,7 @@ static int __init aspeed_gpio_probe(struct platform_device *pdev)
 	gpio->chip.base = -1;
 
 	/* Allocate a cache of the output registers */
-	banks = gpio->config->nr_gpios >> 5;
+	banks = DIV_ROUND_UP(gpio->config->nr_gpios, 32);
 	gpio->dcache = devm_kcalloc(&pdev->dev,
 				    banks, sizeof(u32), GFP_KERNEL);
 	if (!gpio->dcache)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
