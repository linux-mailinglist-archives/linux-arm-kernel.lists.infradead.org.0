Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E578A01C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 15:53:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4r1ayLtUQpTd1i58+dNTBjnkjSYUqXxBEs5eIXo33Eo=; b=jcmIJeIMRS6s0y
	toYe/OVnJX1AkL6zM1I8RyVLPKBk6DP5ivwr4D8eVraYOK9UmzYTIj7x5lNDmzR5Crejtf/7sJAgn
	5KKKiyv1E5zsWk27UH3eSbi1RNBX3xHaO3zFlEmezGVLn+vd8j26B0LdN7bXoindJyDj6xF/0DEjm
	Yq1cTZtR8u2dzJyirHbdGPmdDfqh3T2H788NHASYxw7/P3NITPMWBuZaWpi8SbuVBWYiNG5tZwhge
	75Dwf+zMv7szQRtDWQtjTl3Ql2cHpNZ3D0b/H7889rwP0OvYKhySSTi7xwOovaQ1kKUPARWnnOpQD
	YLSxukX+xHf2Uu4C+07A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxAle-0007XB-HM; Mon, 12 Aug 2019 13:53:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxAlS-0007Wt-9R
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 13:53:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F320915A2;
 Mon, 12 Aug 2019 06:53:32 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3226B3F718;
 Mon, 12 Aug 2019 06:53:32 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: stable@vger.kernel.org
Subject: [PATCH] coresight: Fix DEBUG_LOCKS_WARN_ON for uninitialized attribute
Date: Mon, 12 Aug 2019 14:53:28 +0100
Message-Id: <20190812135328.30952-1-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_065334_376930_986F90BE 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
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
Cc: gregkh@linuxfoundation.org, linux-arm-kernel@lists.infradead.org,
 mathieu.poirier@linaro.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

commit 5511c0c309db4c526a6e9f8b2b8a1483771574bc upstream

While running the linux-next with CONFIG_DEBUG_LOCKS_ALLOC enabled,
I get the following splat.

 BUG: key ffffcb5636929298 has not been registered!
 ------------[ cut here ]------------
 DEBUG_LOCKS_WARN_ON(1)
 WARNING: CPU: 1 PID: 53 at kernel/locking/lockdep.c:3669 lockdep_init_map+0x164/0x1f0
 CPU: 1 PID: 53 Comm: kworker/1:1 Tainted: G  W  5.2.0-next-20190712-00015-g00ad4634222e-dirty #603
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

Fixes: bb8e370bdc14 ("coresight: perf: Add "sinks" group to PMU directory")
Cc: stable@vger.kernel.org # 5.2.x-
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-etm-perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm-perf.c b/drivers/hwtracing/coresight/coresight-etm-perf.c
index 3c6294432748..1ef098ff27c3 100644
--- a/drivers/hwtracing/coresight/coresight-etm-perf.c
+++ b/drivers/hwtracing/coresight/coresight-etm-perf.c
@@ -544,6 +544,7 @@ int etm_perf_add_symlink_sink(struct coresight_device *csdev)
 	/* See function coresight_get_sink_by_id() to know where this is used */
 	hash = hashlen_hash(hashlen_string(NULL, name));
 
+	sysfs_attr_init(&ea->attr.attr);
 	ea->attr.attr.name = devm_kstrdup(pdev, name, GFP_KERNEL);
 	if (!ea->attr.attr.name)
 		return -ENOMEM;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
