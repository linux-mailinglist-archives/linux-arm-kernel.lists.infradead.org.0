Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1DDA45B4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 20:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+CmHt3oTUgrjb760S73glHbAUiVxFJnO9wak+SMzlPQ=; b=ane24ovEHGtI9D
	1WdQRiYFLjfT4aKRmPM5MN1xZ30ai2qgO6Yj2JxLoTWr/2azNeVqXcqeYQR7DFFNdD3g0U3is0lja
	wK9oV8PfVFNCmnTUGPxPFwMezpAZAdaG6czqovmzkoO15domg+j6NFmV4Es5/95QyjvZsu0CxhHPo
	MgdpU4oP6SLjD4LBqB3nxOErQOJDHWGNWqhWgiYrCosMtfo06Z+R+rjzYOqZ2D9RWhccoMFC9IEBu
	lEQqhezFalmeu3F+pyUknmdGVlF7ZubmcF67yv0WP3yhUFZGsGLkLMOC2Da1JeXgbuEIvB5URrsZu
	wOZtpPw7mykACY/GDHhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i47ko-0002vT-73; Sat, 31 Aug 2019 18:05:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i47kU-0002uz-EG
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 18:05:19 +0000
Received: by mail-wm1-x341.google.com with SMTP id l2so10652454wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 31 Aug 2019 11:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cg1fwu+MPCpI46o99kUNkk3DzcQuLSSfn5/pLPnlQmk=;
 b=cCG3ij4HsfNRBMeQSagh82b3Q6Pdr6zuOM9F+AM3QFjejedmyBrhGd+AV9x2Gq2Hom
 NX5CXWPhXX8vsQz77lsPbU2JztNpVBgJvBi1xwrQ3aoNWZ67sHsGg9kxrxn+CGy+4VPp
 R6xXPhYHfEOGG2aUZJqXbIn8Xzhea1nnH8oKFnSDd0YZ0UE39VRtvL2ymuvSWx1RqwQ6
 tFFaQhCbxa8n5iNNap36PlPAVUUJFn4A2cflOEqkVBV401AbpVy5CvBiyOFzUMyr2rRn
 ZVgO3E3qadGKak87yGbS1Hzlgj1Y+IijkhaTQs4W169pflSX1rtvKAXd/IKRX2PwpjRs
 PyJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cg1fwu+MPCpI46o99kUNkk3DzcQuLSSfn5/pLPnlQmk=;
 b=X7dEgLVpZVpJFxtrHPtoyVHYHbKWR98vtFtA/3yryOtdZvjeqmdoHMbUHpj33o0ZCg
 U5L7H0fO4MIeJNvpBdn6x8ocy7hDaqOedNcBdiya5uD/x86NWliSJfLzvAWkINWnqnV9
 bErzXKnOg5kVQKraiVsmvFUgsM4mBRw2rfQsai54lNjABVXT4yb5TC3ltXDsfb+6T2RD
 lWCYrPJXwKmFJP1DpQNh74bKqYq/xh2RwvjB5wTJhw/xRa+xiLtv6J5FmkomifUj8toF
 Q+ctQFv3rXosPAbwg95Fm0w9BfzJN25DVKqeTfsn7Ca0E4Av2lsWYImDJlX8tvirB0h/
 ToRA==
X-Gm-Message-State: APjAAAVpFTOcs23sPOaNjzHi4BBRsufQUtchjhr0HkoEHPHxTseWZ5kU
 NH7Iq4z4wc3HwUIBCc13PPQ=
X-Google-Smtp-Source: APXvYqzaEIjD33uuFBMH28zOJch9FGQc20lyBYMjfo0iWKI8qyrhysZgJUwV0aYFwXnzbTGmPQZ2Fg==
X-Received: by 2002:a7b:ca5a:: with SMTP id m26mr24394720wml.134.1567274716535; 
 Sat, 31 Aug 2019 11:05:16 -0700 (PDT)
Received: from giga-mm.localdomain ([195.245.49.151])
 by smtp.gmail.com with ESMTPSA id 20sm10471642wmj.45.2019.08.31.11.05.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 31 Aug 2019 11:05:15 -0700 (PDT)
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-spi@vger.kernel.org
Subject: [PATCH] spi: ep93xx: Repair SPI CS lookup tables
Date: Sat, 31 Aug 2019 20:04:02 +0200
Message-Id: <20190831180402.10008-1-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_110518_485025_DDF0E48D 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.sverdlin[at]gmail.com)
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
Cc: Hartley Sweeten <hsweeten@visionengravers.com>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Russell King <linux@armlinux.org.uk>, stable@vger.kernel.org,
 Lukasz Majewski <lukma@denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The actual device name of the SPI controller being registered on EP93xx is
"spi0" (as seen by gpiod_find_lookup_table()). This patch fixes all
relevant lookup tables and the following failure (seen on EDB9302):

ep93xx-spi ep93xx-spi.0: failed to register SPI master
ep93xx-spi: probe of ep93xx-spi.0 failed with error -22

Fixes: 1dfbf334f1236 ("spi: ep93xx: Convert to use CS GPIO descriptors")
Cc: stable@vger.kernel.org
Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
 arch/arm/mach-ep93xx/edb93xx.c       | 2 +-
 arch/arm/mach-ep93xx/simone.c        | 2 +-
 arch/arm/mach-ep93xx/ts72xx.c        | 4 ++--
 arch/arm/mach-ep93xx/vision_ep9307.c | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-ep93xx/edb93xx.c b/arch/arm/mach-ep93xx/edb93xx.c
index 1f0da76a39de..7b7280c21ee0 100644
--- a/arch/arm/mach-ep93xx/edb93xx.c
+++ b/arch/arm/mach-ep93xx/edb93xx.c
@@ -103,7 +103,7 @@ static struct spi_board_info edb93xx_spi_board_info[] __initdata = {
 };
 
 static struct gpiod_lookup_table edb93xx_spi_cs_gpio_table = {
-	.dev_id = "ep93xx-spi.0",
+	.dev_id = "spi0",
 	.table = {
 		GPIO_LOOKUP("A", 6, "cs", GPIO_ACTIVE_LOW),
 		{ },
diff --git a/arch/arm/mach-ep93xx/simone.c b/arch/arm/mach-ep93xx/simone.c
index e2658e22bba1..8a53b74dc4b2 100644
--- a/arch/arm/mach-ep93xx/simone.c
+++ b/arch/arm/mach-ep93xx/simone.c
@@ -73,7 +73,7 @@ static struct spi_board_info simone_spi_devices[] __initdata = {
  * v1.3 parts will still work, since the signal on SFRMOUT is automatic.
  */
 static struct gpiod_lookup_table simone_spi_cs_gpio_table = {
-	.dev_id = "ep93xx-spi.0",
+	.dev_id = "spi0",
 	.table = {
 		GPIO_LOOKUP("A", 1, "cs", GPIO_ACTIVE_LOW),
 		{ },
diff --git a/arch/arm/mach-ep93xx/ts72xx.c b/arch/arm/mach-ep93xx/ts72xx.c
index 582e06e104fd..e0e1b11032f1 100644
--- a/arch/arm/mach-ep93xx/ts72xx.c
+++ b/arch/arm/mach-ep93xx/ts72xx.c
@@ -267,7 +267,7 @@ static struct spi_board_info bk3_spi_board_info[] __initdata = {
  * goes through CPLD
  */
 static struct gpiod_lookup_table bk3_spi_cs_gpio_table = {
-	.dev_id = "ep93xx-spi.0",
+	.dev_id = "spi0",
 	.table = {
 		GPIO_LOOKUP("F", 3, "cs", GPIO_ACTIVE_LOW),
 		{ },
@@ -316,7 +316,7 @@ static struct spi_board_info ts72xx_spi_devices[] __initdata = {
 };
 
 static struct gpiod_lookup_table ts72xx_spi_cs_gpio_table = {
-	.dev_id = "ep93xx-spi.0",
+	.dev_id = "spi0",
 	.table = {
 		/* DIO_17 */
 		GPIO_LOOKUP("F", 2, "cs", GPIO_ACTIVE_LOW),
diff --git a/arch/arm/mach-ep93xx/vision_ep9307.c b/arch/arm/mach-ep93xx/vision_ep9307.c
index a88a1d807b32..cbcba3136d74 100644
--- a/arch/arm/mach-ep93xx/vision_ep9307.c
+++ b/arch/arm/mach-ep93xx/vision_ep9307.c
@@ -242,7 +242,7 @@ static struct spi_board_info vision_spi_board_info[] __initdata = {
 };
 
 static struct gpiod_lookup_table vision_spi_cs_gpio_table = {
-	.dev_id = "ep93xx-spi.0",
+	.dev_id = "spi0",
 	.table = {
 		GPIO_LOOKUP_IDX("A", 6, "cs", 0, GPIO_ACTIVE_LOW),
 		GPIO_LOOKUP_IDX("A", 7, "cs", 1, GPIO_ACTIVE_LOW),
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
