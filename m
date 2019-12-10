Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0C511936D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:11:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ee/KDw+jbEkxwFcq9j2VulX2LIijCA66aW+zmc8zS74=; b=D/pN2HrBNocB21
	TuPT6FoPYPznZVV5GUFGdhNTt+NfoY2R6jloNu1RsdZUnkX+JcYF4gyzdrLcc87LV9pb/8ELti6Bk
	5t8vQjKQQTvCiEBMs8g6jILpiGfhUeDVEST026z2iANvNDEfZj0m0R1koQI5lUORSAw8mWCPT01ML
	ztBYArq/3IW2qhKGghMJDIBrA592CMHk0L3kvNRGj6VGQOBE3q3iCkriuH2hywMIeaxlejud+aUB2
	TYMhDkK6t4PZV7FCyA1X0aIXXwGP6lhioF03DOPPcjec68B88uXgz1SpODtRpKxII0KRusB/uy1AU
	sau+jY73mQQTC/VxUNGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemnN-0005bL-IW; Tue, 10 Dec 2019 21:11:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemmV-0004xd-2D
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:10:56 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99D51246AE;
 Tue, 10 Dec 2019 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012254;
 bh=iKHzYfg2mi5+rXn4bwwSLeTeA/Prirx9XvsHR+GrqNA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=B4sagRIvW9990KfUKB6onyejIIjyx/Xi3LNSViu1NLzmTPHrslZQizeYb0lUdOc7E
 bsvtQgtwhOsn2x5VF/JTf8zDKhVt8gJTFplzgB1bbshq+qaXxyeuS1EblgP/lvJsn/
 K5kWwtJF77fnLA3YCVIsTcBbUE66aaJCyjNp8uQQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 201/350] cpufreq: sun50i: Fix CPU speed bin
 detection
Date: Tue, 10 Dec 2019 16:05:06 -0500
Message-Id: <20191210210735.9077-162-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_131055_210726_C3982B59 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, Sasha Levin <sashal@kernel.org>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 Maxime Ripard <mripard@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

[ Upstream commit c23734487fb44ee16c1b007ba72d793c085e4ec4 ]

I have observed failures to boot on Orange Pi 3, because this driver
determined that my SoC is from the normal bin, but my SoC only works
reliably with the OPP values for the slowest bin.

By querying H6 owners, it was found that e-fuse values found in the wild
are in the range of 1-3, value of 7 was not reported, yet. From this and
from unused defines in BSP code, it can be assumed that meaning of efuse
values on H6 actually is:

- 1 = slowest bin
- 2 = normal bin
- 3 = fastest bin

Vendor code actually treats 0 and 2 as invalid efuse values, but later
treats all invalid values as a normal bin. This looks like a mistake in
bin detection code, that was plastered over by a hack in cpufreq code,
so let's not repeat it here. It probably only works because there are no
SoCs in the wild with efuse value of 0, and fast bin SoCs are made to
use normal bin OPP tables, which is also safe.

Let's play it safe and interpret 0 as the slowest bin, but fix detection
of other bins to match this research. More research will be done before
actual OPP tables are merged.

Fixes: f328584f7bff ("cpufreq: Add sun50i nvmem based CPU scaling driver")
Acked-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/cpufreq/sun50i-cpufreq-nvmem.c | 25 ++++++++++---------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/cpufreq/sun50i-cpufreq-nvmem.c b/drivers/cpufreq/sun50i-cpufreq-nvmem.c
index eca32e443716c..9907a165135b7 100644
--- a/drivers/cpufreq/sun50i-cpufreq-nvmem.c
+++ b/drivers/cpufreq/sun50i-cpufreq-nvmem.c
@@ -25,7 +25,7 @@
 static struct platform_device *cpufreq_dt_pdev, *sun50i_cpufreq_pdev;
 
 /**
- * sun50i_cpufreq_get_efuse() - Parse and return efuse value present on SoC
+ * sun50i_cpufreq_get_efuse() - Determine speed grade from efuse value
  * @versions: Set to the value parsed from efuse
  *
  * Returns 0 if success.
@@ -69,21 +69,16 @@ static int sun50i_cpufreq_get_efuse(u32 *versions)
 		return PTR_ERR(speedbin);
 
 	efuse_value = (*speedbin >> NVMEM_SHIFT) & NVMEM_MASK;
-	switch (efuse_value) {
-	case 0b0001:
-		*versions = 1;
-		break;
-	case 0b0011:
-		*versions = 2;
-		break;
-	default:
-		/*
-		 * For other situations, we treat it as bin0.
-		 * This vf table can be run for any good cpu.
-		 */
+
+	/*
+	 * We treat unexpected efuse values as if the SoC was from
+	 * the slowest bin. Expected efuse values are 1-3, slowest
+	 * to fastest.
+	 */
+	if (efuse_value >= 1 && efuse_value <= 3)
+		*versions = efuse_value - 1;
+	else
 		*versions = 0;
-		break;
-	}
 
 	kfree(speedbin);
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
