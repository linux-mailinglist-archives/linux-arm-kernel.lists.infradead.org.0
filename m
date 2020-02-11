Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EF115986E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:21:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rkwMmEDXXBjCezMEeQ8lpLSCrKK+VxYSUg+XwCdJKPQ=; b=Bs3NJAUPu0rrOuXKCfOfMegXdk
	8CykSZXOv+qPidVEqHixv3N+NGyejf5m80ZX2GY1lrc3lpsI4W801YFjYPTbiujZVTWkXiK0vmakn
	hImgYIAXEd6dNlZE1nKk3xcaxp6lnqJskKsj7UR78YFiFQPb/6/pNcmxk6eLv/bDyMwIXVXTxzIKt
	gAqY0PIGIxAgim/TqH9Z3pvuHf4zgbGQPW7vjhK079meKRKZcFQVW6wkUxQ12MZw8wLE2/DfYPO6C
	1ctmZB0DlBdknY6vD5eMrNfT/B44nCzQ7L4w0GALDVuk9EVbET3kmo4WL36o954RYF+JAAA2JgXI+
	owzPy07Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1aAW-0000L7-WE; Tue, 11 Feb 2020 18:21:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1a4F-0001ry-OP
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 18:15:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F92C30E;
 Tue, 11 Feb 2020 10:15:25 -0800 (PST)
Received: from dell3630.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F40013F68E;
 Tue, 11 Feb 2020 10:15:23 -0800 (PST)
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] drivers base/arch_topology: Remove 'struct sched_domain'
 forward declaration
Date: Tue, 11 Feb 2020 19:15:14 +0100
Message-Id: <20200211181515.32570-2-dietmar.eggemann@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211181515.32570-1-dietmar.eggemann@arm.com>
References: <20200211181515.32570-1-dietmar.eggemann@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_101527_881846_B6EAC95A 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Juri Lelli <juri.lelli@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sched domain pointer argument from topology_get_freq_scale() and
topology_get_cpu_scale() got removed by commit 7673c8a4c75d
("sched/cpufreq: Remove arch_scale_freq_capacity()'s 'sd' parameter")
and commit 8ec59c0f5f49 ("sched/topology: Remove unused 'sd' parameter
from arch_scale_cpu_capacity()").

So the 'struct sched_domain' forward declaration is no longer needed.
Remove it.

Signed-off-by: Dietmar Eggemann <dietmar.eggemann@arm.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---
 include/linux/arch_topology.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/linux/arch_topology.h b/include/linux/arch_topology.h
index 3015ecbb90b1..f4b1d4fd7efb 100644
--- a/include/linux/arch_topology.h
+++ b/include/linux/arch_topology.h
@@ -16,7 +16,6 @@ bool topology_parse_cpu_capacity(struct device_node *cpu_node, int cpu);
 
 DECLARE_PER_CPU(unsigned long, cpu_scale);
 
-struct sched_domain;
 static inline
 unsigned long topology_get_cpu_scale(int cpu)
 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
