Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70947E9DFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 15:55:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PKE08qpLgVzrkc16OWc2bgdM870ENnOE3EP6DMFbeo8=; b=pw0CbXXOBm2Clf
	0G5JezgsuEsEc00Is/BefJaeEU7FxdMc+gTH6GBTZcJSID6p0M0Jy9nK3ATDSbTCkEo4aVVbVswBq
	G2tW3tObPsSxCZ13aok0EkGcNigbDdY+6esl/Aqbf/O2hcGk9a2iSGxEV8ysmGlqwAK0Eb2q/GO0G
	c0Bff4Szo4P09NBT6V+T8d6cL5Rm7Kh5FB7YyuVIs4dsNUSf4eAp+gHcT5Zw0LcCt+Yizl4W1n0w/
	vx3d2xVC4aMtAb/fKGde8EqaCtdEOrrMpcbC7X/6YRZDWnCLU2ia3SLrBIHUczKBCB8A3N8H//FN6
	kjQAkbzzi9dlpWG4f/Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpNU-0006FR-JI; Wed, 30 Oct 2019 14:55:16 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpNH-0005dT-RY
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 14:55:05 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iPpNB-0000Y6-Dj; Wed, 30 Oct 2019 14:54:57 +0000
From: Colin King <colin.king@canonical.com>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: [PATCH][next] soc: samsung: exynos-asv: fix potential overflow in
 multiply
Date: Wed, 30 Oct 2019 14:54:57 +0000
Message-Id: <20191030145457.10120-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_075504_035719_C935F520 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

The multiplication of opp_freq by MHZ is performed using unsigned int
multiplication however the result is being passed into a function where
the frequency is an unsigned long, so there is an expectation that the
result won't fit into an unsigned int. Fix any potential integer overflow
my making opp_freq an unsigned long.  Also change from %u to %lu format
specifiers

Addresses-Coverity: ("Unintentional integer overflow")
Fixes: 5ea428595cc5 ("soc: samsung: Add Exynos Adaptive Supply Voltage driver")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/soc/samsung/exynos-asv.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/samsung/exynos-asv.c b/drivers/soc/samsung/exynos-asv.c
index 8abf4dfaa5c5..d66fc74379a3 100644
--- a/drivers/soc/samsung/exynos-asv.c
+++ b/drivers/soc/samsung/exynos-asv.c
@@ -30,7 +30,7 @@ static int exynos_asv_update_cpu_opps(struct exynos_asv *asv,
 {
 	struct exynos_asv_subsys *subsys = NULL;
 	struct dev_pm_opp *opp;
-	unsigned int opp_freq;
+	unsigned long opp_freq;
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(asv->subsys); i++) {
@@ -51,7 +51,7 @@ static int exynos_asv_update_cpu_opps(struct exynos_asv *asv,
 
 		opp = dev_pm_opp_find_freq_exact(cpu, opp_freq * MHZ, true);
 		if (IS_ERR(opp)) {
-			dev_info(asv->dev, "cpu%d opp%d, freq: %u missing\n",
+			dev_info(asv->dev, "cpu%d opp%d, freq: %lu missing\n",
 				 cpu->id, i, opp_freq);
 
 			continue;
@@ -68,11 +68,11 @@ static int exynos_asv_update_cpu_opps(struct exynos_asv *asv,
 						new_volt, new_volt, new_volt);
 		if (ret < 0)
 			dev_err(asv->dev,
-				"Failed to adjust OPP %u Hz/%u uV for cpu%d\n",
+				"Failed to adjust OPP %lu Hz/%u uV for cpu%d\n",
 				opp_freq, new_volt, cpu->id);
 		else
 			dev_dbg(asv->dev,
-				"Adjusted OPP %u Hz/%u -> %u uV, cpu%d\n",
+				"Adjusted OPP %lu Hz/%u -> %u uV, cpu%d\n",
 				opp_freq, volt, new_volt, cpu->id);
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
