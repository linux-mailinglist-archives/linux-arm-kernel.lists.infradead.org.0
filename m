Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E5E1A3F42
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 05:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXonK8381BwIgq0XW5E4arHA71zi1GC85RUgf8hFZfM=; b=TGvqXa/KGWgsOb
	W9YRTk5TpdMEw+MFQ1NT9OX1wGfUdf92PfyRYcmKOecbmj9PdCGfcPE/rTdnxc+eu54G2wu8O7M5j
	HQm3ax/EVzOxOLlp0gwr0CSSm1ipzO0ll6pvBcYwUlWjP9650S4HlDHGIuyMyxjO2L+5qLSzTPBF/
	r+wgJJJ8GTgZVgozC8EhONB/K4ZclajFAe6iCjTPzdPfD1KNBM1/U6ejg8GNxo5ATaqcY3TsULrE0
	OHuSejhjuT5itg6f/9FMjO6vDfqSn9xMp6npL0IuN7a8mV9Xa9JdMnhZPLFbOgdOd0Bfu6TVE/cov
	d1VJFPaMo7KTB+lBp7cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMkkM-0003V6-CX; Fri, 10 Apr 2020 03:54:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMkfn-00054N-CB
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 03:49:45 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2004E20B1F;
 Fri, 10 Apr 2020 03:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586490582;
 bh=Ikc0AYvLKTZZv4VYpqWl7cUBvSOW5ZMNjoOQKDLh2aA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RlS3E8Sn4wqddE2IZtsQpsCJq0t6fvsG6COpxD5wyIAH1tvcGLDIt8bFN8qm2eSYb
 AfZqdFL+YyC7i+05KiIBkTSmXn415/vUB/OPrfryk4RxUHuJ5NxIoN9R7eQbSl7Rgb
 yTajNtPvxPC8uTiDJKx0/RFvx9q5MUnqmYmPmHkU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 28/46] cpufreq: imx6q: fix error handling
Date: Thu,  9 Apr 2020 23:48:51 -0400
Message-Id: <20200410034909.8922-28-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200410034909.8922-1-sashal@kernel.org>
References: <20200410034909.8922-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_204943_436500_F2F8E51B 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Peng Fan <peng.fan@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

[ Upstream commit 3646f50a3838c5949a89ecbdb868497cdc05b8fd ]

When speed checking failed, direclty jumping to put_node label
is not correct. Need jump to out_free_opp to avoid resources leak.

Fixes: 2733fb0d0699 ("cpufreq: imx6q: read OCOTP through nvmem for imx6ul/imx6ull")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/cpufreq/imx6q-cpufreq.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/cpufreq/imx6q-cpufreq.c b/drivers/cpufreq/imx6q-cpufreq.c
index 1fcbbd53a48a2..edef3399c9794 100644
--- a/drivers/cpufreq/imx6q-cpufreq.c
+++ b/drivers/cpufreq/imx6q-cpufreq.c
@@ -381,23 +381,24 @@ static int imx6q_cpufreq_probe(struct platform_device *pdev)
 		goto put_reg;
 	}
 
+	/* Because we have added the OPPs here, we must free them */
+	free_opp = true;
+
 	if (of_machine_is_compatible("fsl,imx6ul") ||
 	    of_machine_is_compatible("fsl,imx6ull")) {
 		ret = imx6ul_opp_check_speed_grading(cpu_dev);
 		if (ret) {
 			if (ret == -EPROBE_DEFER)
-				goto put_node;
+				goto out_free_opp;
 
 			dev_err(cpu_dev, "failed to read ocotp: %d\n",
 				ret);
-			goto put_node;
+			goto out_free_opp;
 		}
 	} else {
 		imx6q_opp_check_speed_grading(cpu_dev);
 	}
 
-	/* Because we have added the OPPs here, we must free them */
-	free_opp = true;
 	num = dev_pm_opp_get_opp_count(cpu_dev);
 	if (num < 0) {
 		ret = num;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
