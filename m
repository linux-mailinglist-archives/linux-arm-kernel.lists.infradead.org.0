Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8098CF3E66
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 04:29:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NN9BmvLOg21o/eev4lL21WVc5I1+O0o+ksxuOItkU7w=; b=caieKrEc5CbKMl
	rXwUuuQkSHvLY8yqFFacC/YUFf7QvFlzM68CpgtaE/KGHQpKtz0ib66h9rqy8Dpzc8kBbw2GE6IWD
	YSkfwAXC7V6xECSemy1BJ7My58aZsto//C/IryA5ieRQaWV5aGhTEpapPJoI0wvXyD2LHu6mUqyFa
	jnbFkCixw5Tgs4VirGnDLb9f2WNJdxStvtxZ43AWQTvzE15VqfgTT7O9aXp9BdDbhshkQYex85iHe
	R6VuYpmAomWKa712Y0Rhp7WOGC9jWal2xHQI1KAOguR+hv1k49YeYQtTEs5bH2DCWpb1+Z1uo44L7
	ofrCsMfAbRjaQVwTlo7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSuxg-000376-RP; Fri, 08 Nov 2019 03:29:24 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSuxX-00036e-Oq
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 03:29:17 +0000
Received: by mail-pl1-x643.google.com with SMTP id ay6so3122135plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 19:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BJCUfp8ZkVX+2Q/E2RA51yP281dLV5q+tGMP1kt6Ef8=;
 b=U/LqZXmxhh8yeGmbBFtUj4NR77Lm5hbRR8wTVSBW4aTEN2ZGLfadqRN7ImQUIFSqUy
 sjK0vvA9nvsEcVG+6F7ZEUbp1oDqZVs7y3wsDjSShszolJglwr6/8GnSQGffR/vrqK+j
 Pk+tGPaNICEovggBuwTNSv8EYKs3WKMsIVm5qaPBReQe/0tp1wHMQSyO0bUvBrOKbyTp
 nzJYu8ogUNwqNBa3ZGf087wPssKKXmt16lX17ocJvg3xQ+ySNGOkmgDE0M+dT2XGtRQd
 kOcLa4MvDCWjT/kF9JBmFHW2SjQexsv/GBZfWlG25fy1fdBWyX7hn1MzYuCRfDwCxdTf
 eepQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=BJCUfp8ZkVX+2Q/E2RA51yP281dLV5q+tGMP1kt6Ef8=;
 b=E6CBnz/GOBsNC0Xf+0ZHxpsgumlQ+Mf4pB025kJJlHF4pnPgzh5HSiR9t7/Ys4iPMO
 J3RBgrz/S83XVYXpvBDYj+gi6WLnIcsYih5JIu2w2/og9KdYbcy9COxokm0FGfRJVG0U
 doD+obhT+9jhrBS5LSClFGEQqqivusK7MHGydn4OoeUmIiQoy0g77QFtzSo/arVzo80O
 zLUD5D/MT0i5kQA5uZSvLGMfOlIN3F4tZzU4AhN0jFokXxFwgKHBDYdf4fa3xcK5wGVC
 +07Pvzn4Nzke4I2Pn/Sd/eUOOmfJH6PtT+KSs0neZdBJP97A3pdJ+AhONrWim5Kk1tUY
 vdsg==
X-Gm-Message-State: APjAAAUwMedfwVPZ53DZ1k8RBca0DkGG0VOMqLfuYOls97QD5Y0DmNcM
 iSV2Se6FjcI1wiDfAiCpxJ4=
X-Google-Smtp-Source: APXvYqwUYaLV2Q5lctEAObWGMEHLJbNchUOQ++A589z1HlK7NWtmUmy5xzScfJRPCcXhohywYKP0ag==
X-Received: by 2002:a17:902:bb8f:: with SMTP id
 m15mr4371359pls.121.1573183754056; 
 Thu, 07 Nov 2019 19:29:14 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id c13sm4219194pfo.5.2019.11.07.19.29.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 19:29:13 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, linux-watchdog@vger.kernel.org
Subject: [PATCH] watchdog: aspeed: Fix clock behaviour for ast2600
Date: Fri,  8 Nov 2019 13:59:05 +1030
Message-Id: <20191108032905.22463-1-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_192915_830943_A5F6FA48 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ast2600 no longer uses bit 4 in the control register to indicate a
1MHz clock (It now controls weather this watchdog is reset by a SOC
reset). This means we do not want to set it. It also does not need to be
set for the ast2500, as it is read-only on that SoC.

The comment next to the clock rate selection wandered away from where it
was set, so put it back next to the register setting it's describing.

Fixes: b3528b487448 ("watchdog: aspeed: Add support for AST2600")
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/watchdog/aspeed_wdt.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/watchdog/aspeed_wdt.c b/drivers/watchdog/aspeed_wdt.c
index 4ec0906bf12c..7e00960651fa 100644
--- a/drivers/watchdog/aspeed_wdt.c
+++ b/drivers/watchdog/aspeed_wdt.c
@@ -258,11 +258,6 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
 	if (IS_ERR(wdt->base))
 		return PTR_ERR(wdt->base);
 
-	/*
-	 * The ast2400 wdt can run at PCLK, or 1MHz. The ast2500 only
-	 * runs at 1MHz. We chose to always run at 1MHz, as there's no
-	 * good reason to have a faster watchdog counter.
-	 */
 	wdt->wdd.info = &aspeed_wdt_info;
 	wdt->wdd.ops = &aspeed_wdt_ops;
 	wdt->wdd.max_hw_heartbeat_ms = WDT_MAX_TIMEOUT_MS;
@@ -278,7 +273,16 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
 		return -EINVAL;
 	config = ofdid->data;
 
-	wdt->ctrl = WDT_CTRL_1MHZ_CLK;
+	/*
+	 * On clock rates:
+	 *  - ast2400 wdt can run at PCLK, or 1MHz
+	 *  - ast2500 only runs at 1MHz, hard coding bit 4 to 1
+	 *  - ast2600 always runs at 1MHz
+	 *
+	 * Set the ast2400 to run at 1MHz as it simplifies the driver.
+	 */
+	if (of_device_is_compatible(np, "aspeed,ast2400-wdt"))
+		wdt->ctrl = WDT_CTRL_1MHZ_CLK;
 
 	/*
 	 * Control reset on a per-device basis to ensure the
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
