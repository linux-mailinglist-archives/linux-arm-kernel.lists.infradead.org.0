Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE29140CD0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 15:41:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WQdOh8wcX8Ds8mcyX6d5Ge91iwWg0vB4vOnwWL20+S0=; b=hjYuoF8+p5yMDvU0qJK5N7nksc
	/95eQwXE+PPnwQyl/xxMpEqhyGYS5KIyVkfVJnzXFrlHdgknRpr3nDeHx2kJJSP6+dUqIBA2pwekF
	7ezZvC4Uj0IqAmtylL8g6KxJks+IO4wMk6MZznSsy27NEsuduryr53u6Lb64DWjJtnq1qhuYjYUdp
	d5xbTTy/Cv7S0W8hb2z+vSht2iZUB0XbQ3xehFi8gU8py/S3KB4gL7QmLudSQTsK+zdt617AwOAND
	pqdKQwpLcGcFemM8Se51wgL7ZbnJzra8rWoFGjKvfHquoGdTEmPO8tyADYQ20T2EkQmtBt5isYPGR
	VuwwgdeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isSoJ-000160-60; Fri, 17 Jan 2020 14:41:19 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isSmA-0006lV-RV
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 14:39:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5C30FACD6;
 Fri, 17 Jan 2020 14:39:04 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: linux-arm-kernel@lists.infradead.org,
	mathieu.poirier@linaro.org
Subject: [PATCH RFC 07/15] coresight: Makefile: regroup object files
Date: Fri, 17 Jan 2020 15:40:02 +0100
Message-Id: <20200117144010.11149-8-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200117144010.11149-1-ykaukab@suse.de>
References: <20200117144010.11149-1-ykaukab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_063907_082742_57514CAD 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: alexander.shishkin@linux.intel.com, paul.gortmaker@windriver.com,
 Mian Yousaf Kaukab <ykaukab@suse.de>, linux-kernel@vger.kernel.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Group object files based on the intended module structure.

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
 drivers/hwtracing/coresight/Makefile | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/hwtracing/coresight/Makefile b/drivers/hwtracing/coresight/Makefile
index c7e8a183af14..c1e978397967 100644
--- a/drivers/hwtracing/coresight/Makefile
+++ b/drivers/hwtracing/coresight/Makefile
@@ -2,18 +2,25 @@
 #
 # Makefile for CoreSight drivers.
 #
-obj-$(CONFIG_CORESIGHT) += coresight-bus.o coresight-etm-perf.o coresight-platform.o
-obj-$(CONFIG_CORESIGHT_LINK_AND_SINK_TMC) += coresight-tmc.o \
-					     coresight-tmc-etf.o \
-					     coresight-tmc-etr.o
+
+obj-$(CONFIG_CORESIGHT) += coresight.o
+coresight-y := coresight-bus.o coresight-etm-perf.o coresight-platform.o
+
+obj-$(CONFIG_CORESIGHT_LINK_AND_SINK_TMC) += coresight-tmc-etx.o
+coresight-tmc-etx-y := coresight-tmc.o coresight-tmc-etf.o coresight-tmc-etr.o
+
 obj-$(CONFIG_CORESIGHT_SINK_TPIU) += coresight-tpiu.o
 obj-$(CONFIG_CORESIGHT_SINK_ETBV10) += coresight-etb10.o
 obj-$(CONFIG_CORESIGHT_LINKS_AND_SINKS) += coresight-funnel.o \
 					   coresight-replicator.o
-obj-$(CONFIG_CORESIGHT_SOURCE_ETM3X) += coresight-etm3x.o coresight-etm-cp14.o \
-					coresight-etm3x-sysfs.o
-obj-$(CONFIG_CORESIGHT_SOURCE_ETM4X) += coresight-etm4x.o \
-					coresight-etm4x-sysfs.o
+
+obj-$(CONFIG_CORESIGHT_SOURCE_ETM3X) += coresight-etm3.o
+coresight-etm3-y := coresight-etm3x.o coresight-etm-cp14.o \
+				coresight-etm3x-sysfs.o
+
+obj-$(CONFIG_CORESIGHT_SOURCE_ETM4X) += coresight-etm4.o
+coresight-etm4-y := coresight-etm4x.o coresight-etm4x-sysfs.o
+
 obj-$(CONFIG_CORESIGHT_STM) += coresight-stm.o
 obj-$(CONFIG_CORESIGHT_CPU_DEBUG) += coresight-cpu-debug.o
 obj-$(CONFIG_CORESIGHT_CATU) += coresight-catu.o
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
