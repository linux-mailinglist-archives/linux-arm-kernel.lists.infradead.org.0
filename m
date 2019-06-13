Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5154351B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 12:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9GwHfWZ7F8DZpT1RY2feGAUsPiaHfcA778vg/y5TzUM=; b=jDU
	M7xm1YBp1UTQSd24wcelP57rXBwAuHQyqN8KfzuMCIocc59ao5Dvc2BZ5bpa3aLfbu3RTPdVFy5K0
	x9PbwJ4DpxALaQDgTf0eISPlPmkqwFQcE4YWl1rF/POh+KOy3tjAcKaZzlp0hNlcqNjtAfxxMNvJS
	rBVx/Dkf93nSS8CyhTa54p4d5OJ49RwvoIAEgvi3SvFeKHidibptsxgtNg5hIohDQFXF32eySV8gU
	Yw7+DNVODDqFLzkldRHQzr6ZmOIPAvcu5bJzur/fTT5Fkhy4pEuLYog5AGj+f00QOqh0YRbAkYVM2
	QEFU81ibuaqIEBsaNM3sjYyaxv54FsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbMd5-0005jH-4K; Thu, 13 Jun 2019 10:06:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMct-0005iH-WA
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 10:06:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E74CA367;
 Thu, 13 Jun 2019 03:06:32 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 75BD83F694; Thu, 13 Jun 2019 03:08:15 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] coresight: etm3x: Smatch: Fix potential NULL pointer
 dereference
Date: Thu, 13 Jun 2019 11:06:25 +0100
Message-Id: <1560420386-4239-1-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_030636_081304_E7F7C10B 
X-CRM114-Status: GOOD (  10.22  )
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
Cc: coresight@lists.linaro.org, Dan Carpenter <dan.carpenter@oracle.com>,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Based on the following report from  Smatch tool, make sure we have a
valid drvdata before we dereference it to find the real dev.

The patch 21d26b905c05: "coresight: etm: Clean up device specific
data" from May 22, 2019, leads to the following Smatch complaint:

    ./drivers/hwtracing/coresight/coresight-etm3x.c:460 etm_get_trace_id()
    warn: variable dereferenced before check 'drvdata' (see line 458)

./drivers/hwtracing/coresight/coresight-etm3x.c
   457		int trace_id = -1;
   458		struct device *etm_dev = drvdata->csdev->dev.parent;
                                         ^^^^^^^^^
New dereference

   459
   460		if (!drvdata)
                    ^^^^^^^^
Checked too late.  Delete the check?

   461			goto out;
   462

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-etm3x.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
index bed7291..225c298 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x.c
@@ -455,11 +455,12 @@ int etm_get_trace_id(struct etm_drvdata *drvdata)
 {
 	unsigned long flags;
 	int trace_id = -1;
-	struct device *etm_dev = drvdata->csdev->dev.parent;
+	struct device *etm_dev;
 
 	if (!drvdata)
 		goto out;
 
+	etm_dev = drvdata->csdev->dev.parent;
 	if (!local_read(&drvdata->mode))
 		return drvdata->traceid;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
