Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BF310FBE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 11:41:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jPQ+O+a5b4ObVCkiNQsgTCzuigsO0VyyzcgzF2TN2K0=; b=TDOanUh6VzvQXB
	D8aSCfAuyZWsiN2iaYGn3eFS8PrYoUX0VZiuIA1j0MOMk7uA2y5koMQvvDaIZlpicCFiF01J8PZrs
	9kT9ojuBpsQm8LHAvMEcIkak52LRDYo3A8vp0s0/IyEKaoln9ZrkoEhuN5OPpKq2aQDh7EIXiM4Vv
	L2NWHJ8mPOrzsaxIg8cUtNunGBS2ymm9Byl1YncPa/YhwryoKAipvnWoFcUkA1iCqut3XnqM+UycN
	HH8elVG/x6XwBR2UT03iEEI13RTZWM643TgcjduQm1jJhAJBFbPR1l/t2f3oz5rJqKyEbxSCAEA75
	/84HzZyWg3Rh1wrvYEew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic5cc-0001j3-VM; Tue, 03 Dec 2019 10:41:34 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic5cW-0001iV-5X
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 10:41:29 +0000
Received: by mail-lj1-x243.google.com with SMTP id c19so3152451lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 02:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mrvs6h7B77zhY/dvgGVMP2aw115pTExbDOys7wfhXQ8=;
 b=EJ7O/gk5BCM3/xGAg72SY3pyiUemJ1/YkJmUUcYLCV2p9a1Y20o026g0wsXo1lvd7X
 Qe73obZxqFMCE6l1gPI3BmykvUJESqhh1BcFinK3mofbfV2qFNfwblV7Kp33qtMxJWVX
 /dFCVnjrG1uK81Xcw/bzw+FyEpqfJ/WX3HO1dXwmDHmDLqx4EEH5NkIcgnr/F50bWlw3
 +KUuLePAB2e1hBv/NAZcJnazlC0skBJOTsBbNKY5Azz8q1Fnge3kWw4glDFQ9T+tw91w
 EScQLsjsx1ML20FhWhHZ74xeFTc+ihKuEjyJCI/0QUvQrD8CrPaLA23NuNCgwS/MJF0N
 rfDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mrvs6h7B77zhY/dvgGVMP2aw115pTExbDOys7wfhXQ8=;
 b=JH6HYODouQscL6xe8CQN+NURiNZpOqXcVhRdoX/+M70VDHfiqBdkkYr5dVMngsqIhg
 QLEKBGkp8fVlUuZZ9XoiUwcn6CHQi0YPbcRU34gL5BdoCKQjiBhNOeZzrVubwLCuZIXM
 zBYVSs5r+PgiKZZw2yOsjk+ext3Q2ZCj3HjSAz+AmqUt2XFcpQiUi8epBdUIatbxdRqJ
 fCdMAIkG+9GmbwkYBg+foF2BvWHfqNFhW1FmTKr+Gu+vSvjrDZI7Dm55Br0WSsgEVROy
 05WvoRY+wZWeHGly5eX0n67RhZm4RB2bo0V665jwOHLyQ3bpv/t9eccd1EGunjV5gDDk
 7b2g==
X-Gm-Message-State: APjAAAVHBLch1l1l5nYZAE8Tv/5XhFREdwD5pEsyAgdfUUkKu0tkO9zM
 twW5fvjM+f/xVSlAgcuMGwkviQ==
X-Google-Smtp-Source: APXvYqxvYpXJy7jtyfmN1SBOdqcbnzkZgfUnaBOmUa4dLMSbfNvAJZAaJsLSVy73hCRL4bxXrVbqvQ==
X-Received: by 2002:a05:651c:208:: with SMTP id
 y8mr2180778ljn.36.1575369685613; 
 Tue, 03 Dec 2019 02:41:25 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id s20sm1083490lfb.30.2019.12.03.02.41.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 02:41:24 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] ARM: pxa: Fix resource properties
Date: Tue,  3 Dec 2019 11:41:17 +0100
Message-Id: <20191203104117.85517-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_024128_219295_D832B64D 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The conversion to properties changed one assignment and
missed three other assignments in the same file, fix it
up so the platform compiles.

The bug was reported by a few build bots but noone noticed.
I noticed it when making other changes to the PXA platforms.

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Fixes: 50ec88120ea1 ("can: mcp251x: get rid of legacy platform data")
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks: please apply this directly for fixes.
---
 arch/arm/mach-pxa/icontrol.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-pxa/icontrol.c b/arch/arm/mach-pxa/icontrol.c
index 0474a4b1394d..151e26ec0696 100644
--- a/arch/arm/mach-pxa/icontrol.c
+++ b/arch/arm/mach-pxa/icontrol.c
@@ -89,7 +89,7 @@ static struct spi_board_info mcp251x_board_info[] = {
 		.max_speed_hz    = 6500000,
 		.bus_num         = 3,
 		.chip_select     = 1,
-		.platform_data   = &mcp251x_info,
+		.properties      = mcp251x_properties,
 		.controller_data = &mcp251x_chip_info2,
 		.irq             = PXA_GPIO_TO_IRQ(ICONTROL_MCP251x_nIRQ2)
 	},
@@ -98,7 +98,7 @@ static struct spi_board_info mcp251x_board_info[] = {
 		.max_speed_hz    = 6500000,
 		.bus_num         = 4,
 		.chip_select     = 0,
-		.platform_data   = &mcp251x_info,
+		.properties      = mcp251x_properties,
 		.controller_data = &mcp251x_chip_info3,
 		.irq             = PXA_GPIO_TO_IRQ(ICONTROL_MCP251x_nIRQ3)
 	},
@@ -107,7 +107,7 @@ static struct spi_board_info mcp251x_board_info[] = {
 		.max_speed_hz    = 6500000,
 		.bus_num         = 4,
 		.chip_select     = 1,
-		.platform_data   = &mcp251x_info,
+		.properties      = mcp251x_properties,
 		.controller_data = &mcp251x_chip_info4,
 		.irq             = PXA_GPIO_TO_IRQ(ICONTROL_MCP251x_nIRQ4)
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
