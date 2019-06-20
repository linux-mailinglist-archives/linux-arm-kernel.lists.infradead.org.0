Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9514CF4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRQHEnS/CY963yOoPpYoKBYmyeExePxHx52f8MKCl0g=; b=X6NBetrzQLJrnB
	9s1FbTrgyJ0xTvFNk2IzJ6Q28laskQBGJ4USJO6E3bmVSZPA7oZVZrLx3xauvZ+SrIlHYlGH5jLTP
	yka/PRwKZgIbXJZdDWBwiZKY7K487S1xwkeUq4YhOegB45VKi93bYjDnhFxauS/oyqqA/AhoU/U+z
	Xhdw9fG9UyrCDLnVCp8rRaXelhCM1xumzzCqRHKBAIs+jCl8w3hKMnP2X7b+0y5oKQ2dFxZrUBHxV
	442wBoMsa7OKQmVM0QAF6PpDJciVx/QSn2RQ2iPgPvDRcdl8Ju3fWnlZNOliXk2wVsX0bTyTfhmxe
	X9GvtMBQh+GgSJWwFeSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxOk-0000bL-3a; Thu, 20 Jun 2019 13:46:42 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxOP-0000ZA-M9
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:46:24 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 951466087F; Thu, 20 Jun 2019 13:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561038380;
 bh=wjGKmGJ9b+4RLn8uuVFdjOOHTr+DR+AbytFMu+YO4ks=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GQ3iY5UozqwF6THtWiyvkbXTvJOMG9rYZdv4g18VoQgiI2DuCUFnxUsh4zOHub5Bn
 PA11yqaaZ0LGWLY3a56ichyvaeCwewLUXJ3YxvI3c9pUIZGgAysMJq6bqMan30R6yJ
 pudCjCrmB8QcItepRds2sq2zeaMXDfWLclYmTZsM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A237660E7A;
 Thu, 20 Jun 2019 13:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561038373;
 bh=wjGKmGJ9b+4RLn8uuVFdjOOHTr+DR+AbytFMu+YO4ks=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Wv3D4oZJ01Z8MM6Aj0lkBals+AavLR/scz92Ufuy4iAVArZB5XDEVqtxllYexmDrQ
 tabFcgQDdErldgk5RDRT60h+24/uB37pe9aBZljpe3QafpzndAbzrWoiRpnH/gNqdO
 g5ZF4PxcJgwqt4v020PFroi1PJi0iaCF6g41jM84=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A237660E7A
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Leo Yan <leo.yan@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andy Gross <andy.gross@linaro.org>, David Brown <david.brown@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/2] coresight: Set affinity to invalid for missing CPU phandle
Date: Thu, 20 Jun 2019 19:15:46 +0530
Message-Id: <49d6554536047b9f5526c4ea33990b7c904673d3.1561037262.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <cover.1561037262.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1561037262.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_064621_832429_3C271578 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sibi Sankar <sibis@codeaurora.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Affinity defaults to CPU0 in case of missing CPU phandle
and this leads to crashes in some cases because of such
wrong assumption. Fix this by returning -ENODEV in
coresight platform for such cases and then handle it
in the coresight drivers.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 drivers/hwtracing/coresight/coresight-platform.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 3c5ceda8db24..b1ea60c210e1 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -160,15 +160,17 @@ static int of_coresight_get_cpu(struct device *dev)
 
 	if (!dev->of_node)
 		return 0;
+
 	dn = of_parse_phandle(dev->of_node, "cpu", 0);
-	/* Affinity defaults to CPU0 */
+
+	/* Affinity defaults to invalid if no cpu nodes are found*/
 	if (!dn)
-		return 0;
+		return -ENODEV;
+
 	cpu = of_cpu_node_to_id(dn);
 	of_node_put(dn);
 
-	/* Affinity to CPU0 if no cpu nodes are found */
-	return (cpu < 0) ? 0 : cpu;
+	return cpu;
 }
 
 /*
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
