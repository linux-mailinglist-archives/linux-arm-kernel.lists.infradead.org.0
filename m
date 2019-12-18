Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 274D11252B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 21:07:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=afcorHNCo5F7627Tzu1FrqX20HsBqz+CCZMWG3YO90c=; b=u8K
	E3bZFoAzLN2JLghXdVKGvGUhIpGKx9Ddy3Zj/g65baLyE4p8hQCMqHu6GQt80LbmguY2/HanF7bgA
	P3zyavcE/qeSXcN2fo9sE5oT0AByUkinHf1kw+meOGe4xwjCSFKQKByAsYwkurrwmDfgop1rls7th
	w6z9sXBpwbx9UkYGCvh+P3HYeSdPBBDVRSIOU2pL6RggDM9yT+RyLHk/DPRVziTet/8PZkrKR9e0D
	xLIV4TsSl6rCUo5rTHTLKwQEONoqUI+Zx6aw3NYpJjQhuZUop+9P19mDwOtVXr+M3IzEefFaxtklW
	eWKaegiPsNQEU1/8BZwl6TpEs4h1kRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihfas-0006wJ-NC; Wed, 18 Dec 2019 20:06:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihfad-0006vc-Vp
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 20:06:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9665A31B;
 Wed, 18 Dec 2019 12:06:35 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1112B3F67D;
 Wed, 18 Dec 2019 12:06:34 -0800 (PST)
Date: Wed, 18 Dec 2019 20:06:33 +0000
From: Mark Brown <broonie@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Applied "regulator: axp20x: Fix AXP22x ELDO2 regulator enable
 bitmask" to the regulator tree
In-Reply-To: <20191218044720.21990-1-wens@kernel.org>
Message-Id: <applied-20191218044720.21990-1-wens@kernel.org>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_120636_063605_F08F5602 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Maxime Ripard <mripard@kernel.org>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   regulator: axp20x: Fix AXP22x ELDO2 regulator enable bitmask

has been applied to the regulator tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-5.5

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From f40ddaa059fdfb472e3aeb733c6220d8e0633a47 Mon Sep 17 00:00:00 2001
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 18 Dec 2019 12:47:20 +0800
Subject: [PATCH] regulator: axp20x: Fix AXP22x ELDO2 regulator enable bitmask

A copy-paste error was introduced when bitmasks were converted to
macros, incorrectly setting the enable bitmask for ELDO2 to the one
for ELDO1 for the AXP22x units.

Fix it by using the correct macro.

On affected boards, ELDO1 and/or ELDO2 are used to power the camera,
which is currently unsupported.

Fixes: db4a555f7c4c ("regulator: axp20x: use defines for masks")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
Link: https://lore.kernel.org/r/20191218044720.21990-1-wens@kernel.org
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/regulator/axp20x-regulator.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/axp20x-regulator.c b/drivers/regulator/axp20x-regulator.c
index 989506bd90b1..fe369cba34fb 100644
--- a/drivers/regulator/axp20x-regulator.c
+++ b/drivers/regulator/axp20x-regulator.c
@@ -605,7 +605,7 @@ static const struct regulator_desc axp22x_regulators[] = {
 		 AXP22X_PWR_OUT_CTRL2, AXP22X_PWR_OUT_ELDO1_MASK),
 	AXP_DESC(AXP22X, ELDO2, "eldo2", "eldoin", 700, 3300, 100,
 		 AXP22X_ELDO2_V_OUT, AXP22X_ELDO2_V_OUT_MASK,
-		 AXP22X_PWR_OUT_CTRL2, AXP22X_PWR_OUT_ELDO1_MASK),
+		 AXP22X_PWR_OUT_CTRL2, AXP22X_PWR_OUT_ELDO2_MASK),
 	AXP_DESC(AXP22X, ELDO3, "eldo3", "eldoin", 700, 3300, 100,
 		 AXP22X_ELDO3_V_OUT, AXP22X_ELDO3_V_OUT_MASK,
 		 AXP22X_PWR_OUT_CTRL2, AXP22X_PWR_OUT_ELDO3_MASK),
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
