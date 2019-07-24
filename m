Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9610772DF0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=he9ROntGA2a7gsbWCj25m1CNCuSORMyZlbRC3225SGw=; b=X/VIk+AQ+oPDnx
	GvDj7q5NJ0flmPErvG03O/LL+FihfvFL0Qp2s7InqkfhsEZ9xHUUakKCY3DAYv+y5fgBLxFvLVcSk
	x3XtdMu4BtI+ilOdoIlYRQpLShDk7xNiro/SMJ778WvjuiWTAMfhkAKPZBqHTy/1VK23T9gkqd7CH
	65RmX1QXz6+SfVzfbY5UcXOqJ3VCcJAMu2qwaH/DhyOFlJC5Ep44QWNcMdl3nM4XAb808N8zslOZJ
	LP9sNTTEjlOEl1Z8BQKnvEMVtOI7SMZhJlZy1fi1pATQ76hWgWw16NfIQzARIiIHVOiL4IhIZtY0Q
	LZMa3OkI4AIIQ6UBR4AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFge-0005cO-4t; Wed, 24 Jul 2019 11:44:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFg8-0005Ko-M9
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:43:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 440041509;
 Wed, 24 Jul 2019 04:43:28 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 917533F71A;
 Wed, 24 Jul 2019 04:43:27 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/5] coresight: Fix DEBUG_LOCKS_WARN_ON for uninitialized
 attribute
Date: Wed, 24 Jul 2019 12:43:08 +0100
Message-Id: <20190724114312.1024-2-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190724114312.1024-1-suzuki.poulose@arm.com>
References: <20190724114312.1024-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_044328_764610_ECF0A477 
X-CRM114-Status: GOOD (  10.21  )
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
Cc: coresight@lists.linaro.org, mathieu.poirier@linaro.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While running the linux-nex with CONFIG_DEBUG_LOCKS_ALLOC enabled,
I get the following splat.

 BUG: key ffffcb5636929298 has not been registered!
 ------------[ cut here ]------------
 DEBUG_LOCKS_WARN_ON(1)
 WARNING: CPU: 1 PID: 53 at kernel/locking/lockdep.c:3669 lockdep_init_map+0x164/0x1f0
 CPU: 1 PID: 53 Comm: kworker/1:1 Tainted: G        W         5.2.0-next-20190712-00015-g00ad4634222e-dirty #603
 Workqueue: events amba_deferred_retry_func
 pstate: 60c00005 (nZCv daif +PAN +UAO)
 pc : lockdep_init_map+0x164/0x1f0
 lr : lockdep_init_map+0x164/0x1f0

 [ trimmed ]

 Call trace:
  lockdep_init_map+0x164/0x1f0
  __kernfs_create_file+0x9c/0x158
  sysfs_add_file_mode_ns+0xa8/0x1d0
  sysfs_add_file_to_group+0x88/0xd8
  etm_perf_add_symlink_sink+0xcc/0x138
  coresight_register+0x110/0x280
  tmc_probe+0x160/0x420

 [ trimmed ]

 ---[ end trace ab4cc669615ba1b0 ]---

Fix this by initialising the dynamically allocated attribute properly.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Fixes: bb8e370bdc141ddf ("coresight: perf: Add "sinks" group to PMU directory")
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-etm-perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm-perf.c b/drivers/hwtracing/coresight/coresight-etm-perf.c
index 5c1ca0df5cb0..84f1dcb69827 100644
--- a/drivers/hwtracing/coresight/coresight-etm-perf.c
+++ b/drivers/hwtracing/coresight/coresight-etm-perf.c
@@ -544,6 +544,7 @@ int etm_perf_add_symlink_sink(struct coresight_device *csdev)
 	/* See function coresight_get_sink_by_id() to know where this is used */
 	hash = hashlen_hash(hashlen_string(NULL, name));
 
+	sysfs_attr_init(&ea->attr.attr);
 	ea->attr.attr.name = devm_kstrdup(dev, name, GFP_KERNEL);
 	if (!ea->attr.attr.name)
 		return -ENOMEM;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
