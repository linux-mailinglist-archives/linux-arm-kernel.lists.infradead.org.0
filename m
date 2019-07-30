Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA737A904
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 14:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ApnoWmMQjbiaz3Vr783ex/GEA8vlpHd2ps2hc8t86c=; b=qnj/14gzcaZAQX
	526kJUQwaLnhv+l/xQpJpWexth7ljk3k0LFY7dJjbOJ8jB3lo7Bq64ljinLYpPEb0sA/dChg7kIdm
	0pj2y/5lHwYJWIkl4gn7+rwf4p2kBOB3x8sw0BxgscyAXyFlXng7iM3VwNeg100djw1HodjEJXn2b
	SXwTFyDRls4Fd5RURU3YdKyK2dnEli73Vi4Lvd7e4XWFOi3KoLvs5zegQXwip6stJDNg5uwUUyQK9
	oIbDFgayOLhkdmxOa9T/Kpg2qNaqsOny5tlR07aJLMuX0QtiA8ns0FS5+GHGNJG4Xf1xGsy9pkAcy
	7j5mDMvIuAGALglEKj5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRdA-0006WV-I7; Tue, 30 Jul 2019 12:53:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRby-0005hh-2Q
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 12:52:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 291421597;
 Tue, 30 Jul 2019 05:52:13 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 752EE3F575;
 Tue, 30 Jul 2019 05:52:11 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH v4 4/6] coresight: etm4x: improve clarity of etm4_os_unlock
 comment
Date: Tue, 30 Jul 2019 13:51:55 +0100
Message-Id: <20190730125157.884-5-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190730125157.884-1-andrew.murray@arm.com>
References: <20190730125157.884-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_055214_235110_9283472C 
X-CRM114-Status: GOOD (  11.19  )
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
Cc: Al.Grant@arm.com, coresight@lists.linaro.org, Leo Yan <leo.yan@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
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
index 615bdbf7c9b7..a128b5063f46 100644
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
