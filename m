Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F070D4A13D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hk5B0YVPM5jL0TN1zgq5MUAM8zsTHrsnBPgBoT9g9lA=; b=NGplOhAF3rKZX4
	qzDp2CEswqIwZwcvc0rFn88zr9pUNesv6yN8+FXArfo2w4ztM5u8En8WU5DFkgTjW+AqQ94lP0gCN
	XnAPRbkx+2Oi1MA3J+VljQ5tcxYSlhu2K/xYY4cZJcYhRXpqKEarrmyiwV0D7t36EvtLycB3hPZcm
	v+yzugpDsgD9IsFzIV3gwT6y56lImlK0btaKL7PSKp/CyG7a3Ugy7VfScTTlUFtOJekhHIldTcxfN
	b56a4oVzYm7RqWem3afUXVaGT0wz9NaKe0Jbt9i+3XqFeExsnOH3vlFmBMYJ38TlHBYN1/hWXA1A7
	p38+5wCvgfuFNwgFQRpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdDgh-0003AE-DT; Tue, 18 Jun 2019 12:58:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDdM-0001je-TU
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:54:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 386E0360;
 Tue, 18 Jun 2019 05:54:44 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4940A3F246;
 Tue, 18 Jun 2019 05:54:43 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH v1 1/5] coresight: etm4x: remove superfluous setting of
 os_unlock
Date: Tue, 18 Jun 2019 13:54:29 +0100
Message-Id: <20190618125433.9739-2-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190618125433.9739-1-andrew.murray@arm.com>
References: <20190618125433.9739-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_055445_040408_8532C829 
X-CRM114-Status: GOOD (  10.55  )
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

In addition to unlocking the OS lock, etm4_os_unlock will also
set the os_unlock flag. Therefore let's avoid unnecessarily
setting os_unlock flag outside of this function.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 8bb0092c7ec2..da7cf74d612b 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1045,10 +1045,8 @@ static int etm4_starting_cpu(unsigned int cpu)
 		return 0;
 
 	spin_lock(&etmdrvdata[cpu]->spinlock);
-	if (!etmdrvdata[cpu]->os_unlock) {
+	if (!etmdrvdata[cpu]->os_unlock)
 		etm4_os_unlock(etmdrvdata[cpu]);
-		etmdrvdata[cpu]->os_unlock = true;
-	}
 
 	if (local_read(&etmdrvdata[cpu]->mode))
 		etm4_enable_hw(etmdrvdata[cpu]);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
