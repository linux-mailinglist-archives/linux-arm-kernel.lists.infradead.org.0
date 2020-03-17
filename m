Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79797187893
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 05:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ori4Fma/0O64bLbDtuNB86VTcp4AM2Jh88/TvS9E1Y4=; b=UAp
	gCahnSCUv6Kk1rGfaUGk6px40CLWS6nxSqSRXaJVWFsmh7CE6XofeUpqA5E1wKjH6+nS/7FXZpOzp
	AwrkwVeJAAd4GI18KqeEjw9On0ICc5XXjrGLzPY0w53QUgIYw1WRHfWKiPyKYQ7Yrrc3BVWfcYj7x
	THqb6AaEwagEKjD/iJfyK7OGynvEeQeo7AgNc015ddaHvzC7MEZJNgxjkKLxaGoekpLDH7MZIkSqk
	C+zrTUQh2JSTzq+e2zBR1n5gV/TYBN9u7F26HbpLbId3pUufFm1gc9SBB+QsQx/DcJOIxmkM4s8CZ
	r9nUKaRZqJY3LULLxVqFqG7w3I1f3Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE46z-0005cs-N6; Tue, 17 Mar 2020 04:45:53 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE46r-0005cO-Lh
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 04:45:47 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9B836200C66;
 Tue, 17 Mar 2020 05:45:42 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5CF03200CA5;
 Tue, 17 Mar 2020 05:45:37 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C14F04029F;
 Tue, 17 Mar 2020 12:45:30 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rjw@rjwysocki.net, viresh.kumar@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] cpufreq: imx6q-cpufreq: Improve the logic of -EPROBE_DEFER
 handling
Date: Tue, 17 Mar 2020 12:38:54 +0800
Message-Id: <1584419934-2303-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_214545_849466_50AC1794 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Improve the -EPROBE_DEFER handling logic to simplify the code.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/cpufreq/imx6q-cpufreq.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/cpufreq/imx6q-cpufreq.c b/drivers/cpufreq/imx6q-cpufreq.c
index 285b8e9..fdb2fff 100644
--- a/drivers/cpufreq/imx6q-cpufreq.c
+++ b/drivers/cpufreq/imx6q-cpufreq.c
@@ -400,11 +400,9 @@ static int imx6q_cpufreq_probe(struct platform_device *pdev)
 		ret = imx6q_opp_check_speed_grading(cpu_dev);
 	}
 	if (ret) {
-		if (ret == -EPROBE_DEFER)
-			goto out_free_opp;
-
-		dev_err(cpu_dev, "failed to read ocotp: %d\n",
-			ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(cpu_dev, "failed to read ocotp: %d\n",
+				ret);
 		goto out_free_opp;
 	}
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
