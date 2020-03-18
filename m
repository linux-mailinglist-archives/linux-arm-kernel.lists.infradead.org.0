Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 212AF18A479
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 21:54:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=repXsO8b/qykaxizOimTxKWBGDRDOSECvkKKKq8arlo=; b=cQCz6Faq6ey9Fx
	h1EoLASmTrPBLQk9elZ2xGDgkzKuv+21PueCPAB5Cvte0SvWalczcJHYmkezYV1HElTUQU/5mxwVU
	UZ29SyI0frigZfMaPyHDZe0lOpUEMpl4rSqI9pwQl18zhaeRdq9LkT3ZKYRhuhACUDuhjmwu4swMG
	0HINagE1afTTNajSMh9cQr8RAA+Bed3gAvUNv+pLM1BDJ1VQm7LOojYaaFTJlt2EYDIx3jG28eBut
	Kgnnwzm8Nf2UrjK+TDsW7fovcDK2KhVUpLLHBTOSa1UETEDgY+b0PxMEMnKfuv7+ieITSkR/GvCPo
	nI0gbErv1VDszjNtkXmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEfhp-0005A4-JQ; Wed, 18 Mar 2020 20:54:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEfhB-0004cj-6S; Wed, 18 Mar 2020 20:53:46 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3011620A8B;
 Wed, 18 Mar 2020 20:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584564824;
 bh=o2e8wMh9z7NTCPwAMSIFuXNtUqwqXclZwX/VgJCxUEI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mBG7VUtuIo2fRHJ3K9hUNrdtMGMCziQrqAhfDoRpgbiBQlYtCVgU9PyYhiFYpVEgt
 s5AEp5301HUJ6/k2J986dSUIxtx0jxYc5zV7Zmmr6jnom3kfKFHzeKGUVIzRz53iHP
 Bd9097ZXiBa+JppnMHQtgfOYPQExdDjHk+YHlM1c=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 05/73] pinctrl: meson-gxl: fix GPIOX sdio pins
Date: Wed, 18 Mar 2020 16:52:29 -0400
Message-Id: <20200318205337.16279-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318205337.16279-1-sashal@kernel.org>
References: <20200318205337.16279-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_135345_361578_A9E19F2C 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-gpio@vger.kernel.org, Nicolas Belin <nbelin@baylibre.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nicolas Belin <nbelin@baylibre.com>

[ Upstream commit dc7a06b0dbbafac8623c2b7657e61362f2f479a7 ]

In the gxl driver, the sdio cmd and clk pins are inverted. It has not caused
any issue so far because devices using these pins always take both pins
so the resulting configuration is OK.

Fixes: 0f15f500ff2c ("pinctrl: meson: Add GXL pinctrl definitions")
Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>
Signed-off-by: Nicolas Belin <nbelin@baylibre.com>
Link: https://lore.kernel.org/r/1582204512-7582-1-git-send-email-nbelin@baylibre.com
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pinctrl/meson/pinctrl-meson-gxl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/meson/pinctrl-meson-gxl.c b/drivers/pinctrl/meson/pinctrl-meson-gxl.c
index 72c5373c8dc1e..e8d1f3050487f 100644
--- a/drivers/pinctrl/meson/pinctrl-meson-gxl.c
+++ b/drivers/pinctrl/meson/pinctrl-meson-gxl.c
@@ -147,8 +147,8 @@ static const unsigned int sdio_d0_pins[]	= { GPIOX_0 };
 static const unsigned int sdio_d1_pins[]	= { GPIOX_1 };
 static const unsigned int sdio_d2_pins[]	= { GPIOX_2 };
 static const unsigned int sdio_d3_pins[]	= { GPIOX_3 };
-static const unsigned int sdio_cmd_pins[]	= { GPIOX_4 };
-static const unsigned int sdio_clk_pins[]	= { GPIOX_5 };
+static const unsigned int sdio_clk_pins[]	= { GPIOX_4 };
+static const unsigned int sdio_cmd_pins[]	= { GPIOX_5 };
 static const unsigned int sdio_irq_pins[]	= { GPIOX_7 };
 
 static const unsigned int nand_ce0_pins[]	= { BOOT_8 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
