Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DDAEC6F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 17:42:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cpHFT/QZFOAsjvNQRT7XuD63Jop8Up2caPeyIMUTjXY=; b=gSx4D+tltc21TD
	25EL041Q8CVfqfRmhQXUZBcuA9KSpG3G8XorrJISU6BcpnedDRP8g0AYBIIRJ6HdTskHyVyDxl0TR
	6w62idOTV2JBJKs0tuW/e9mGXOyvbEdYuOUn7zDFvKoBoOGS4XM6L6kHEYSsxu/RTp3bUEVp0ZY7J
	U5hPULRNi4v5yEf3cwerhGklJgIWRmTiZZekbg0X90WKlgcowEX/+CCEZBNg5PSB4oI5FU4a3eaiv
	gVzuegiSHI3dP59xO/HBURwF0cxuSndRgIjgHwMQ55GJ56n7TyXLU4eNL5ISbLnqMnME94sratz0P
	ixI6yObEY2d/jyeRKMdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQa03-000865-AQ; Fri, 01 Nov 2019 16:42:11 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZzw-000855-7g
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 16:42:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572626522; bh=Gmx9bz5c58Bmxt6o/l+l4TxxiIaJ3KV5uLxeuq7aJF4=;
 h=From:To:Cc:Subject:Date:From;
 b=q1GNBpiQn9Hc6z2CYpSi/KhF7+Zu43LFYFVzBX3EmFZCU0KFXbokbxCCPg1g7n+FU
 Ztbh4zB5zrTH1o5e8YV6cvZkk+eeb0mP2ta6GWqUrAWICBj5DIOyo14eLesIO0F8UZ
 YRUOINktiejT4Q2xpVswf4M6RJynZKasnXXDtpGU=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com
Subject: [PATCH v2] cpufreq: sun50i: Fix CPU speed bin detection
Date: Fri,  1 Nov 2019 17:41:51 +0100
Message-Id: <20191101164152.445067-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_094204_604082_35EB69A3 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ondrej Jirman <megous@megous.com>,
 "open list:ALLWINNER CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 Yangtao Li <tiny.windzz@gmail.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
Signed-off-by: Ondrej Jirman <megous@megous.com>
---

 See also https://lkml.org/lkml/2019/11/1/496

 drivers/cpufreq/sun50i-cpufreq-nvmem.c | 25 ++++++++++---------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/cpufreq/sun50i-cpufreq-nvmem.c b/drivers/cpufreq/sun50i-cpufreq-nvmem.c
index eca32e443716..9907a165135b 100644
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
