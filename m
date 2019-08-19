Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BEE91C5F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 07:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NIZDhiChHLtru+FhIqBGc/BddiNej1/p7HAlLmvf100=; b=nCt3m5MylQvYnv
	N552377LR63ZaAIINF+HWKWu2rcVbetAoDvcFeZOXC0+ddur9vRVh8QBVKd7ndcoeEI7TJObYYdbN
	qRVMBX0gPoTJb48PgPgqb6JGtlE3CgnNyk4Sr1Jxhu1S0Ye+iMI1vabeKc3NAS50OCp4N9PcUjEcC
	c30AAiG6UFTWUtkMZY50tCp49W8OS3SSlg8+fwpf2dqIzNc4dKLl1F/OihlA1ZlJLGsaICU4M4osQ
	hQUvdrD83hQw4boVDq+zH3vhoXRyx3l28WIRdsS3mHlW6XEnGygYSa2AVbhXGRzZdYs9a5KYJzEw4
	nQtMcmDTiyGVy530d8Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hza4I-00037V-H1; Mon, 19 Aug 2019 05:18:58 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hza3J-0002j3-8l
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 05:17:58 +0000
Received: by mail-pg1-x543.google.com with SMTP id n9so488142pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 18 Aug 2019 22:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DyOkWXbip/sFDtzCMcgt9fKortz6cn0pIstBPgx8f+A=;
 b=Wa4gXkppzwM0+r04OH6+s7lLvWAhrUF/5j+fyU8uox4gov+ZJgzHhjmS2Crg475wh6
 68fYVRmc09jA4Dt4DUHcmv7z3UY5O0jDLHnoffxGIO6RMhray7o9zzx1tC4XSJmKckfV
 Hjj53K0p3SiK5nJUfmDDzsy7egJ4dIKXoRs+7XyUHgv4bXyygwYHd+uclWOlihp7j/3B
 wnxMbOPM/xDiv41AqwKcsgUcvD4hq+BbLf1dpSixl9G9UNA+A0kXpREoWFiFqgqA7KJ8
 GNCYMEn88qAvZMIXVBKT4CK/y8vH+tgaLYq77mLsLH4VULjISsY0i6qEQaHEJ3KA3Q5G
 MiHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=DyOkWXbip/sFDtzCMcgt9fKortz6cn0pIstBPgx8f+A=;
 b=uDM7+dZzhW85msKxQU3M5VYQXaps2NoCwCVloFvasN4LeXb+TvRv1UQh8ms/5BbCiB
 Cymm7+DSQFKkcPlUmrkBU7RRyE6VcozpRibCxNWKnzAO6uBHeozjGNLKpcJC3/ECL0r6
 fLN/Cd/ahMb7VJekuMGSuSAyAkAp9smBeYGfWhluENL5KUmzlWNjdHtk+veYlymAfms7
 U+BiYFENIRhnGJyh81/5/qUMF0oBiO7gGqZ3Vxl1sRezrJD8DZ392WADs4ZISQ5y/ZLn
 pRfIBrfv9EFSfhxufDYlmXuCMPwdFwO6saCgj22YhGnMN+1+Vi/l7skNVZc2W7xrSoBA
 k9og==
X-Gm-Message-State: APjAAAXbvU3jT3Q35xW3cPp7PAlGvfxUl1pSNyqmYMUondpevFvF3E50
 Y6+LzgXbg69pIXwWpDIAlj8=
X-Google-Smtp-Source: APXvYqxmKIFDHCNwPUL7Pa2AYZQ57N6+X/NXdnMruTHlp+98Fjja2C1q0M4BwqahIM1AvA03PmrVSw==
X-Received: by 2002:a65:528d:: with SMTP id y13mr18906968pgp.120.1566191876456; 
 Sun, 18 Aug 2019 22:17:56 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id o3sm19010087pje.1.2019.08.18.22.17.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Aug 2019 22:17:55 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 2/2] watchdog: aspeed: Add support for AST2600
Date: Mon, 19 Aug 2019 14:47:38 +0930
Message-Id: <20190819051738.17370-3-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190819051738.17370-1-joel@jms.id.au>
References: <20190819051738.17370-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_221757_422724_2B088873 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ryan Chen <ryan_chen@aspeedtech.com>

The ast2600 can be supported by the same code as the ast2500.

Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
v2:
 Reuse ast2500 config structure
---
 drivers/watchdog/aspeed_wdt.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/aspeed_wdt.c b/drivers/watchdog/aspeed_wdt.c
index cc71861e033a..5b64bc2e8788 100644
--- a/drivers/watchdog/aspeed_wdt.c
+++ b/drivers/watchdog/aspeed_wdt.c
@@ -34,6 +34,7 @@ static const struct aspeed_wdt_config ast2500_config = {
 static const struct of_device_id aspeed_wdt_of_table[] = {
 	{ .compatible = "aspeed,ast2400-wdt", .data = &ast2400_config },
 	{ .compatible = "aspeed,ast2500-wdt", .data = &ast2500_config },
+	{ .compatible = "aspeed,ast2600-wdt", .data = &ast2500_config },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, aspeed_wdt_of_table);
@@ -259,7 +260,8 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
 		set_bit(WDOG_HW_RUNNING, &wdt->wdd.status);
 	}
 
-	if (of_device_is_compatible(np, "aspeed,ast2500-wdt")) {
+	if ((of_device_is_compatible(np, "aspeed,ast2500-wdt")) ||
+		(of_device_is_compatible(np, "aspeed,ast2600-wdt"))) {
 		u32 reg = readl(wdt->base + WDT_RESET_WIDTH);
 
 		reg &= config->ext_pulse_width_mask;
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
