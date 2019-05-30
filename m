Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C032EBA8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 05:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=duOjaH7EwZzF46w7BDWtPLyExXo2hSSPYJt1CvoE9Hs=; b=VbnJh/3ER4mKZ5
	WGEWKLGauWXeATW4Jy8vTUdsI98RQyd31BTgSor+RK5RwLSFjK8W8TzixEwNxaMFC0KHRwbOIEBpc
	KiFZKAx6EnWcErisQThtsAeuD+ZYwKhWTvmz4EOQFwwg8OIJYAo6ClWa51l5hZhT2DovnP0FL1eeI
	5SeUve6bXseKAV1V+RB7nJp9r8cIwQR9DB0I3ixJadgTw+8HC0X8qIX4zKuwWh2B5YAhY4KGrhudQ
	GdZGRoRMxKrjIfIUzxRvZqphZOI88ZqVnyukmLQ7FLv6LUVxyNwYU8Zt8taS60ekuRY0C6xNm7Aw+
	PS0rmPvT6sgjOo1BWYtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWBXI-00020z-Q6; Thu, 30 May 2019 03:15:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWBX3-0001cd-Ht
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 03:15:13 +0000
Received: from localhost (ip67-88-213-2.z213-88-67.customer.algx.net
 [67.88.213.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BDED2458C;
 Thu, 30 May 2019 03:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559186109;
 bh=VJJ2PuPVWHqol+6SIVNX2fP7TlmgBiJL/thsn/56aRc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cqc5PB8KIwfbhqNqd9dVqIOjJP4WN+11NZ3g1vJyXahzz2NEiIb/oDcjcatSk6w40
 DAmHAi01VbGcsMR/QG9iIfrSGUd08tOB8QJ/hzZqG2MdbhKIDqVpT57igcmPVEm3rq
 HLrUXgwYYm4hAuKJcMNqLXMPr8V2apUYzg5Dzua0=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.0 210/346] cpufreq: imx6q: fix possible object reference leak
Date: Wed, 29 May 2019 20:04:43 -0700
Message-Id: <20190530030551.765653896@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190530030540.363386121@linuxfoundation.org>
References: <20190530030540.363386121@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_201510_504689_DBED536B 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sasha Levin <sashal@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-pm@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 stable@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Viresh Kumar <viresh.kumar@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Wen Yang <wen.yang99@zte.com.cn>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Upstream commit ddb64c5db3cc8fb9c1242214d5798b2c2865681c ]

The call to of_node_get returns a node pointer with refcount
incremented thus it must be explicitly decremented after the last
usage.

Detected by coccinelle with the following warnings:
./drivers/cpufreq/imx6q-cpufreq.c:391:4-10: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 348, but without a corresponding object release within this function.
./drivers/cpufreq/imx6q-cpufreq.c:395:3-9: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 348, but without a corresponding object release within this function.

Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Viresh Kumar <viresh.kumar@linaro.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-pm@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/cpufreq/imx6q-cpufreq.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/cpufreq/imx6q-cpufreq.c b/drivers/cpufreq/imx6q-cpufreq.c
index 9fedf627e000d..3ee55aee5d71a 100644
--- a/drivers/cpufreq/imx6q-cpufreq.c
+++ b/drivers/cpufreq/imx6q-cpufreq.c
@@ -407,11 +407,11 @@ static int imx6q_cpufreq_probe(struct platform_device *pdev)
 		ret = imx6ul_opp_check_speed_grading(cpu_dev);
 		if (ret) {
 			if (ret == -EPROBE_DEFER)
-				return ret;
+				goto put_node;
 
 			dev_err(cpu_dev, "failed to read ocotp: %d\n",
 				ret);
-			return ret;
+			goto put_node;
 		}
 	} else {
 		imx6q_opp_check_speed_grading(cpu_dev);
-- 
2.20.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
