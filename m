Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F93919AA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 11:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OIicpX/hsKxGYTgKVuTvEfZEKtMjHiWollprN9LtEvY=; b=UXV
	FLM6XVCtbJxmAEwV2OsHG5IXtfqoKa8ShemlxCyX89N24RANoG0NrVs3ZQOBWlBYDozek1Jmd1Um7
	niV4JDdDCIkx4jts3e3pynpNG6XuemrZuuy2dYOSjUmBNCbaO61RyvIR1sE1kmdfG1nD1NGEWuzpm
	/ZrExsSS8CSPnhB7okASYILvEo2aI1vk/YN+DYMNzJZcca5DYtRvkbTxhKx58lomoI3WkjEdm2QgL
	8WZ9gPr8n92MRDH5NM31Sxiy0FLBJl1iERhdFnK1xM/Q3erwXtuPi+xKUjAvCXjT6lgSvmbCLwxwA
	YcdMmNudSpkxbOiPtNy8VAOLVph5h3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1sC-00058t-9E; Fri, 10 May 2019 09:31:24 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1s4-00057V-Bj
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 09:31:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 85431A78;
 Fri, 10 May 2019 02:31:13 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 6C5A53F738; Fri, 10 May 2019 02:31:12 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: mathieu.poirier@linaro.org
Subject: [PATCH 0/4] coresight: Do not call smp_processor_id from preemptible
 contexts
Date: Fri, 10 May 2019 10:30:59 +0100
Message-Id: <1557480663-16759-1-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_023116_406864_29CAFC5C 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


We have a few places where we call smp_processor_id() from preemptible
contexts during the perf buffer handling. We do this to figure out the
numa node for the allocation in case the event is not CPU bound. Use
numa_node_id() instead in such cases to avoid a splat.

Suzuki K Poulose (4):
  coresight: tmc-etr: Do not call smp_processor_id() from preemptible
  coresight: tmc-etr: alloc_perf_buf: Do not call smp_processor_id from
    preemptible
  coresight: tmc-etf: Do not call smp_processor_id from preemptible
  coresight: etb10: Do not call smp_processor_id from preemptible

 drivers/hwtracing/coresight/coresight-etb10.c   |  6 ++----
 drivers/hwtracing/coresight/coresight-tmc-etf.c |  6 ++----
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 13 ++++---------
 3 files changed, 8 insertions(+), 17 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
