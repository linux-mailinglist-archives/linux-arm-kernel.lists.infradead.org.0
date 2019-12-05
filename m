Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7FB113BFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 07:55:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YyUFRbGT1Adg+7OVS9aMSO14v6D5ig0z5pnObLblTV8=; b=Xa1QMO9QXZr2C1
	ICs0IUaH1iibWJZLqdGul8QZwDSi+mjdE/708D7B2OMCZezkePqab2SspSyWGCUNSybx/wEHG00cX
	PQOgK92djUvCWE6qmWbwHg2Bta3ii/CzHTAkt2Dt4RN5M7OHESmURcjA5ZfV0d7gcQDHejLzYeqYc
	zgLKJycCHP13uzPB0GtTX+Lbc5dkSMcQ2GldQBLMD5Bum4JESyR3257SOUMLX3K3HTEtXZ+ZyAMIL
	3LS7Jsv3IWtiwqQMS/MHCGjPjS5V6Vi4vSsm29hqvesOZBIgHQalk8m9NxwoBkqpRJySeRqq1wejL
	gxRsOJSlpssj+3IJPJ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icl2g-0003pp-8z; Thu, 05 Dec 2019 06:55:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icl2Y-0003Ef-B7
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 06:55:07 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7C262077B;
 Thu,  5 Dec 2019 06:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575528905;
 bh=9uH4sDVJnWEj3/ho6ZOYWTTU9xGzpseH9s/QX6LK7OM=;
 h=From:To:Cc:Subject:Date:From;
 b=fl4uu+3QlJtoFRyP92aIq2X2NnLJXFiciOWs6HPSTqrym6tzRbemgp+ySlD8M+Tl7
 HVdyY/m2BCGb2/js8WP+z+6ZmWI+zpuUdKHsHXNmwTe5NNgRxndJI9PSzEH6ImKCpq
 HQ0MVHVP5rjKDPbjz34AxShpNffMMQhIiGVa/JxE=
Received: by wens.tw (Postfix, from userid 1000)
 id DA4DB5FD08; Thu,  5 Dec 2019 14:55:01 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Subject: [PATCH] regulator: axp20x: Fix AXP22x ELDO2 regulator enable bitmask
Date: Thu,  5 Dec 2019 14:54:57 +0800
Message-Id: <20191205065457.2039-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_225506_423480_EE8E49DB 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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

Small fix. I prefer to have this merged sooner, i.e. not into -next.
Later patches (to be posted) supporting the camera sensor interface
depend on this at runtime to power on the camera correctly.

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
