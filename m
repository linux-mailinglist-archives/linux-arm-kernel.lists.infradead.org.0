Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E72F74A176
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqGEm+K+pdH3IMx6SOEWuniZqt/JhQHZPG2GNr6ZECQ=; b=ugXYMB1OSvSK+4
	Cx+oycWg1pWDK0bkg7x2LZj+LAx6m1tyEUixP6mkWP2M7Nbl02FyG8k4Mn6+REx94lZ58ZUsIBxkP
	IBAwut5bEwpcAHStZE0hFtsiqeXflcGcLzBMVca+WArKS+gpyZIPa2rjhwAYLEZ/WuaFOmhykVDEE
	I9+MVL/JkAS8vf1YW+c6dfPeNWRyIdeY6vqU1ByeVVvTwmdQ2ci77Kr3+jCe0N4CcY1guZBJpiRmH
	eZzaiftNiyANJbSEL3jqIjFt400OS1nneJCY5TwISQw6hZK7t1FSt5W9a6Kg98HWbX2lie6vBGsGw
	VS83T2fMVbgC2mK4YA/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdDm1-0005TJ-G8; Tue, 18 Jun 2019 13:03:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDdQ-0001kp-DU
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:54:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD93C2B;
 Tue, 18 Jun 2019 05:54:47 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EEAEB3F246;
 Tue, 18 Jun 2019 05:54:46 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH v1 4/5] coresight: etm4x: improve clarity of etm4_os_unlock
 comment
Date: Tue, 18 Jun 2019 13:54:32 +0100
Message-Id: <20190618125433.9739-5-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190618125433.9739-1-andrew.murray@arm.com>
References: <20190618125433.9739-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_055448_540145_51C7D00A 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To improve clarity, let's update the comment for etm4_os_unlock
to use the name of the register as per the ETM architecture
specification.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 885c4f2c691c..bda90d4cd62b 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -47,7 +47,7 @@ static enum cpuhp_state hp_online;
 
 static void etm4_os_unlock(struct etmv4_drvdata *drvdata)
 {
-	/* Writing any value to ETMOSLAR unlocks the trace registers */
+	/* Writing 0 to TRCOSLAR unlocks the trace registers */
 	writel_relaxed(0x0, drvdata->base + TRCOSLAR);
 	drvdata->os_unlock = true;
 	isb();
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
