Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B213F671EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 17:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBUIjSGVRetjTuUyJK0ed9QI9kQsWO4S59Tnd05FAXw=; b=n722bhZ0l1PwLh
	V8H1swTPNzsTn+vl0OzZIXQ3HKqyelRab4x+6xCQqzZWbAzV9PJ4MGo3QOgBXXHG7PafjYe1t15js
	PiLeHaIeMwLbs3kjQL6jDVxpO4mKRZWjHe8G4A+iU4ABgFQEKmpPaapUuuBn4OD+laVdpzWr3QVdK
	uvnfS+U6iC92jjonPt2SXqkV3mQEUUwF/MG4Rvnubsid3d1o4ut/tYmf7LI3Rgr83x8gqznRz4n67
	wNj22+3FlpBLbWnuEgSSi5GRIsoMcc88uPdEzao11cjJrhC1dMPbWXWn1la8rXds9oYE+pkJcLJoA
	3pQc2B/IEoxJ+hFIdc0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlx4Q-0003Jj-5f; Fri, 12 Jul 2019 15:02:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlx2n-0002m2-5W
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 15:01:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 792CD2B;
 Fri, 12 Jul 2019 08:01:04 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E76A33F59C;
 Fri, 12 Jul 2019 08:01:02 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH] coresight: etm4x: lazily allocate memory for save_state
Date: Fri, 12 Jul 2019 16:00:56 +0100
Message-Id: <20190712150056.15775-1-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711160114.634-6-andrew.murray@arm.com>
References: <20190711160114.634-6-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_080105_280069_19F2D73E 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 Leo Yan <leo.yan@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I had intended to lazily allocate memory for the save_state structure when
it is first used. Following is a patch that I will squash into "[PATCH v3 5/6]
coresight: etm4x: save/restore state across CPU low power states" on my
next respin. I thought I'd share it here to get some feedback along with
the rest of v3.

Thanks,

Andrew Murray

---
 drivers/hwtracing/coresight/coresight-etm4x.c | 14 +++++++++++---
 drivers/hwtracing/coresight/coresight-etm4x.h |  2 +-
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index b0bd8158bf13..cd02372194bc 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1112,6 +1112,13 @@ static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
 	struct etmv4_save_state *state;
 	struct device *etm_dev = &drvdata->csdev->dev;
 
+	if (!drvdata->save_state) {
+		drvdata->save_state = devm_kmalloc(etm_dev,
+				sizeof(struct etmv4_save_state), GFP_KERNEL);
+		if (!drvdata->save_state)
+			return -ENOMEM;
+	}
+
 	/*
 	 * As recommended by 3.4.1 ("The procedure when powering down the PE")
 	 * of ARM IHI 0064D
@@ -1134,7 +1141,7 @@ static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
 		goto out;
 	}
 
-	state = &drvdata->save_state;
+	state = drvdata->save_state;
 
 	state->trcprgctlr = readl(drvdata->base + TRCPRGCTLR);
 	state->trcprocselr = readl(drvdata->base + TRCPROCSELR);
@@ -1234,9 +1241,10 @@ static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
 static void etm4_cpu_restore(struct etmv4_drvdata *drvdata)
 {
 	int i;
-	struct etmv4_save_state *state;
+	struct etmv4_save_state *state = drvdata->save_state;
 
-	state = &drvdata->save_state;
+	if (WARN_ON_ONCE(!state))
+		return;
 
 	CS_UNLOCK(drvdata->base);
 
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
index c31634c64f87..a70cafbbb8cf 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.h
+++ b/drivers/hwtracing/coresight/coresight-etm4x.h
@@ -441,7 +441,7 @@ struct etmv4_drvdata {
 	bool				atbtrig;
 	bool				lpoverride;
 	struct etmv4_config		config;
-	struct etmv4_save_state		save_state;
+	struct etmv4_save_state		*save_state;
 	bool				state_needs_restore;
 };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
