Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161AD169237
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 00:14:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bdjTzJ0NgSUYN6I6CPWqWV9ZfB4wG5NLeE5eZOcWi2A=; b=D9jGNJDYFnOnln
	5sm8bWPa5lf5RbLCHNV1CelJvUWmiKnjL0EEHsDz8v4IV1Ww6Ld2o2TmCzSpGVpGyzanYJefAeDOI
	Ux+akJO8VwbjlvXva0rhEFd0EAeOMVSI+mmEo81XJEAyZwUkg/A6mlZFUFTwNDsaYSnS+OaceuG6v
	KGb7D3XvP4XP44Iq+kj96ql2mf9F5AR6e3EkbCc/xBOA9Qu1rnQje4kAiI8GKLYpED8cfkF6Ei/TM
	fKMv6vQR4h5ANdu8AGLKJJkjN2LMQEmp2a7tBSaMxJsXScioUlLJCVD6ANzdedTz/8tTwYUY1Xmxa
	ee6pXLfYXKWRNGE+sErA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5dyr-0007a4-SG; Sat, 22 Feb 2020 23:14:41 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5dyk-0007YT-MO
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 23:14:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582413271; bh=EbeAOpviq24JHTSqKTtGGCUdeye+O8up0OquvyuB0Sg=;
 h=From:To:Cc:Subject:Date:References:From;
 b=lcuPU+GfEZsPTBkMZdO9IBD8LxhgGqJSAaMWttZ1ZocTjfnyf9sAKW6N1ahFP7fGz
 StwBRq5EfBO2lhChY6aEQpwUqZtJP4NxdO3ivnACiadBHws37Y1Rm+NLEz3Y9tlabt
 8eeuHQxdfTXPykC9tD30SXbLhOVdfIwsdm119nOw=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 2/4] input: gpio-vibra: Allow to use vcc-supply alone to
 control the vibrator
Date: Sun, 23 Feb 2020 00:14:26 +0100
Message-Id: <20200222231428.233621-3-megous@megous.com>
In-Reply-To: <20200222231428.233621-1-megous@megous.com>
References: <20200222231428.233621-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_151435_065058_326FA05F 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Luca Weiss <luca@z3ntu.xyz>, Tomas Novotny <tomas@novotny.cz>,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make enable-gpio optional to allow using this driver with
boards that have vibrator connected to a power supply without
intermediate gpio based enable circuitry.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 drivers/input/misc/gpio-vibra.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/input/misc/gpio-vibra.c b/drivers/input/misc/gpio-vibra.c
index f79f75595dd73..f11877f04b43c 100644
--- a/drivers/input/misc/gpio-vibra.c
+++ b/drivers/input/misc/gpio-vibra.c
@@ -121,7 +121,8 @@ static int gpio_vibrator_probe(struct platform_device *pdev)
 		return err;
 	}
 
-	vibrator->gpio = devm_gpiod_get(&pdev->dev, "enable", GPIOD_OUT_LOW);
+	vibrator->gpio = devm_gpiod_get_optional(&pdev->dev, "enable",
+						 GPIOD_OUT_LOW);
 	err = PTR_ERR_OR_ZERO(vibrator->gpio);
 	if (err) {
 		if (err != -EPROBE_DEFER)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
