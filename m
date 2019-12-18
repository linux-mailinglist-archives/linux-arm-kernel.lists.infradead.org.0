Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4FB123EA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 05:47:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MgkRvVbWxwTEUWJCiQGtWsVbn4B+8NEmW5FMJ6TJk9E=; b=GSLjxch3f+0oNe
	Am2kqLnZZ6kjcPQFvmN8h+fUt7pcesmpG8HroeYD35UjbuOiFjDEY4AccbHm8FgZxcmNS0easSFAz
	fZl7Aq6nSVxS/3whkUly4obzH4MfUhx8XmtLoCGXGLz4Ue4BoA5Sh3r3AUaKtdEhH6WSA+J8sUd+a
	ACOt9YqnY0YIFnRWaKdqnx+kBdb1dqNY5HnDv48T+wvnSDxXuZJhVRkq37Tu64OxopjeUvNjOVmqr
	wkAA0T/3x5VCoEZZiU7kR4Q0V1DxAKiv1UIykllVZEuc1SRwmRVkUmQE4ijvdgf3y/Rl++iOPbI4t
	+E/FnrzVrAH9PCN2JIYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihRFN-0002Il-RO; Wed, 18 Dec 2019 04:47:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihRFG-0002IS-8H
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 04:47:35 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFF4620715;
 Wed, 18 Dec 2019 04:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576644452;
 bh=eC2bTR5Nkmvf2hgzbrBdYOzQGZ9iz4olZoASTWentL4=;
 h=From:To:Cc:Subject:Date:From;
 b=03panMM7i10MTKkulWSQQELugfIRDUetMkvoNf/Pepl+5CbShiE3MqAahnLqDgH0A
 VYgS+czKP01EWQHU4hwahvXS8I8TRITlEZB6Gc+QhZk8tXE1ji0WviUxnsO5L4M2I4
 NSbZLJGaTyL2OqPxzLCYbc6fT/yUcXvspnk2s8Mg=
Received: by wens.tw (Postfix, from userid 1000)
 id 059ED5FCD0; Wed, 18 Dec 2019 12:47:28 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Maxime Ripard <mripard@kernel.org>
Subject: [PATCH RESEND] regulator: axp20x: Fix AXP22x ELDO2 regulator enable
 bitmask
Date: Wed, 18 Dec 2019 12:47:20 +0800
Message-Id: <20191218044720.21990-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_204734_317401_F6C18426 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

A copy-paste error was introduced when bitmasks were converted to
macros, incorrectly setting the enable bitmask for ELDO2 to the one
for ELDO1 for the AXP22x units.

Fix it by using the correct macro.

On affected boards, ELDO1 and/or ELDO2 are used to power the camera,
which is currently unsupported.

Fixes: db4a555f7c4c ("regulator: axp20x: use defines for masks")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---

(Originally sent before v5.5-rc1 was tagged.)

Small fix. Patches [1] supporting the camera sensor interface on the
Allwinner R40 based BPI-M2U board depend on this at runtime to power on
the camera correctly.

[1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=217057

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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
