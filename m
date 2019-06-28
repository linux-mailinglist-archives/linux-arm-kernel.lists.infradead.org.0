Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9754591D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 05:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+EkNTcH3PSgXhm6DV7Pm0QeQ9KrjesErcHOXfzxqAyQ=; b=PbvSAllr7mmkGJsPGE9wP2S9j3
	ZGnkYjyXbQ4sZifyv/IQFsD1m7WPmNEwwk6UyJpkLU/jCnMPcsfMXKl/1XnF0BqDpl/e6xLJ6OT7j
	DiNtOwm6qbva7ZFH4IJ9Vdn2EtrnLR2yP8zrdau/Ma3GxtVVKY62tOHyMsyagc/2sGzCDhE3LMX+7
	pp8BvpLx48sAKewaoZospOaPLzWLpto2UE5XNM2M7b3I2O6hlWbs3yfMpkYsJmwzA1EvySHvc/Xzt
	GMgPLX0Ooi+ega3dWyVi3fp7+CbTqbXw+ZWL+DlnCK9SJb09U5AZwJl2ysLYB/E6rJ2BRe5Nep1vZ
	o1fIvKKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hghDM-00083f-4x; Fri, 28 Jun 2019 03:06:16 +0000
Received: from mx7.zte.com.cn ([202.103.147.169] helo=mxct.zte.com.cn)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hghCw-0006m7-Qw
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 03:05:53 +0000
Received: from mse-fl1.zte.com.cn (unknown [10.30.14.238])
 by Forcepoint Email with ESMTPS id BBF1EA339E319CD62CE4;
 Fri, 28 Jun 2019 11:03:37 +0800 (CST)
Received: from notes_smtp.zte.com.cn ([10.30.1.239])
 by mse-fl1.zte.com.cn with ESMTP id x5S32eB1063726;
 Fri, 28 Jun 2019 11:02:40 +0800 (GMT-8)
 (envelope-from wen.yang99@zte.com.cn)
Received: from fox-host8.localdomain ([10.74.120.8])
 by szsmtp06.zte.com.cn (Lotus Domino Release 8.5.3FP6)
 with ESMTP id 2019062811031122-1800719 ;
 Fri, 28 Jun 2019 11:03:11 +0800 
From: Wen Yang <wen.yang99@zte.com.cn>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] media: exynos4-is: fix leaked of_node references
Date: Fri, 28 Jun 2019 11:01:15 +0800
Message-Id: <1561690876-20977-3-git-send-email-wen.yang99@zte.com.cn>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1561690876-20977-1-git-send-email-wen.yang99@zte.com.cn>
References: <1561690876-20977-1-git-send-email-wen.yang99@zte.com.cn>
X-MIMETrack: Itemize by SMTP Server on SZSMTP06/server/zte_ltd(Release
 8.5.3FP6|November 21, 2013) at 2019-06-28 11:03:11,
 Serialize by Router on notes_smtp/zte_ltd(Release 9.0.1FP7|August  17, 2016) at
 2019-06-28 11:02:45, Serialize complete at 2019-06-28 11:02:45
X-MAIL: mse-fl1.zte.com.cn x5S32eB1063726
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_200551_054275_BB3BDAF0 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.103.147.169 listed in list.dnswl.org]
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
Cc: wang.yi59@zte.com.cn, linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Wen Yang <wen.yang99@zte.com.cn>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The call to of_get_child_by_name returns a node pointer with refcount
incremented thus it must be explicitly decremented after the last
usage.

Detected by coccinelle with the following warnings:
drivers/media/platform/exynos4-is/fimc-is.c:813:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 807, but without a corresponding object release within this function.
drivers/media/platform/exynos4-is/fimc-is.c:870:1-7: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 807, but without a corresponding object release within this function.
drivers/media/platform/exynos4-is/fimc-is.c:885:1-7: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 807, but without a corresponding object release within this function.
drivers/media/platform/exynos4-is/media-dev.c:545:1-7: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 541, but without a corresponding object release within this function.
drivers/media/platform/exynos4-is/media-dev.c:528:1-7: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 499, but without a corresponding object release within this function.
drivers/media/platform/exynos4-is/media-dev.c:534:1-7: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 499, but without a corresponding object release within this function.

Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
Cc: Kyungmin Park <kyungmin.park@samsung.com>
Cc: Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Kukjin Kim <kgene@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-media@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-samsung-soc@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/media/platform/exynos4-is/fimc-is.c   | 1 +
 drivers/media/platform/exynos4-is/media-dev.c | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/media/platform/exynos4-is/fimc-is.c b/drivers/media/platform/exynos4-is/fimc-is.c
index e043d55..b7cc8e6 100644
--- a/drivers/media/platform/exynos4-is/fimc-is.c
+++ b/drivers/media/platform/exynos4-is/fimc-is.c
@@ -806,6 +806,7 @@ static int fimc_is_probe(struct platform_device *pdev)
 		return -ENODEV;
 
 	is->pmu_regs = of_iomap(node, 0);
+	of_node_put(node);
 	if (!is->pmu_regs)
 		return -ENOMEM;
 
diff --git a/drivers/media/platform/exynos4-is/media-dev.c b/drivers/media/platform/exynos4-is/media-dev.c
index d53427a..a838189 100644
--- a/drivers/media/platform/exynos4-is/media-dev.c
+++ b/drivers/media/platform/exynos4-is/media-dev.c
@@ -501,6 +501,7 @@ static int fimc_md_register_sensor_entities(struct fimc_md *fmd)
 			continue;
 
 		ret = fimc_md_parse_port_node(fmd, port, index);
+		of_node_put(port);
 		if (ret < 0) {
 			of_node_put(node);
 			goto cleanup;
@@ -542,6 +543,7 @@ static int __of_get_csis_id(struct device_node *np)
 	if (!np)
 		return -EINVAL;
 	of_property_read_u32(np, "reg", &reg);
+	of_node_put(np);
 	return reg - FIMC_INPUT_MIPI_CSI2_0;
 }
 
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
