Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB30357E4F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 10:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSY4IhOGCviulwmiLNEY5yG8kjFB2hU8GAKOqO0rVe0=; b=uLtH/kl2JsV4/K
	mfYI7Zu8gHnIYChG8s8mxhnREMgfqqHb1Rat1FoUpQXjs3MjT0bvqaMal9EbfycNQs080L9U9rht9
	ROiNiseKCgV/4cJi9P/IhguiPI0s5VpxLdCxJr4pyVAul7PlqeKSWRXH4nSC3bE8g9xWHeOyM1SY3
	DONO0Sv45kAA/wPniencTYVM7pHI5gynLLt2/sHJlqU5bl5zhiLaAMWIJ0ISFBpEXfJGAb3Nd++66
	9IPqNWvAOd42znWuMedcGjiNmgYUqh7gx9D93AoF0Ueep1lk4DzXBey/W5M8mCfACduAJIDfHGfWY
	yzV7dxkhOq/QqDzT39Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPth-0005qd-18; Thu, 27 Jun 2019 08:36:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPsY-0005Cz-P8
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 08:35:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6317C2B;
 Thu, 27 Jun 2019 01:35:38 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0455E3F706;
 Thu, 27 Jun 2019 01:35:36 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH v2 4/5] coresight: etm4x: improve clarity of etm4_os_unlock
 comment
Date: Thu, 27 Jun 2019 09:35:24 +0100
Message-Id: <20190627083525.37463-5-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627083525.37463-1-andrew.murray@arm.com>
References: <20190627083525.37463-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_013538_932409_2E1E8F16 
X-CRM114-Status: GOOD (  11.47  )
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
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To improve clarity, let's update the comment for etm4_os_unlock
to use the name of the register as per the ETM architecture
specification.

The existing comment is also misleading as it suggests any value
written to TRCOSLAR unlocks the trace registers, however it must
be '0' - let's also correct this.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index a47f29ecdd38..86945f054cf8 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -48,7 +48,7 @@ static enum cpuhp_state hp_online;
 
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
