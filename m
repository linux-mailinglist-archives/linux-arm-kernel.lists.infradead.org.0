Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 127848A7A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 21:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UoMfPfZCFnkxitQwOKTV931A0WQ6AIYg+ldsmqO3bI8=; b=N5FJ5kQC9UwN6z
	fAmuXePVOWzoB/y/EKiGs6FXO/ItkP6n2dHjQ17NYH4pZ/PNGC7l83PBQLmikWAkw5PNvsIb5hpdy
	YNkvnKJeAuv+9IBcXyW3cdK1RqhjMhfC9hwBTa7IjtfBS8ZAhZtmAIntjMoTyuCAJvz/YUwmpvWkv
	cs5kjiylLhWew+ZX/wEmfSil7zAFEVXmKlFmpCmXAwIKRawU6SUkhIX6XCjmIF87LR7a6UdhPIxpp
	0K6+nntaK1gleiPjSHwc8Y4BnOOK0g5EGRLRFtK186V0UZmn3YbTHej55S9tZ9ZGvS03NtQ8jCMq5
	JCH3s6Ia8dJ9Roq6U85A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxGS5-0004gX-4k; Mon, 12 Aug 2019 19:57:57 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGRf-0004fI-0K
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 19:57:33 +0000
Received: by mail-pl1-x64a.google.com with SMTP id p9so2715257pls.18
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 12:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=5GNCPkMMbCZ3HJHDz62HBb2xsYps2/ATdm0Eu79x0Cc=;
 b=rSVqKmJ5mu4NSSE+/diGDw+cA4jm4cUJ/0cofc87KVgJiI0hlVlnDylK9lWYoYd5JY
 YnKAy5uzwUW8ZdD36aZrfwI8KHdJ/L2wOZ/+UmW1roZOjGh/fVi9Mp+b0U6SGPIBkjWf
 kccl9phzs2wgdYasHuVvB/qFMwsI1ZLohbpAacZ5jWUBh7rbeL+FZcGWtseN8nPh3eju
 Jo73aWHk+77xGg4J67NvEhZtKsjFZNnJecqA2EIb3j7UFXvrOSpB1+Ge5xBJD35NEEdf
 rr4+dCJdLv0QqUXFOrKjSOD6BNoX6upELIRZzZK1hnRirQ9Iq/Yb0UGHlVjawfsojobw
 0Ngg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=5GNCPkMMbCZ3HJHDz62HBb2xsYps2/ATdm0Eu79x0Cc=;
 b=iyuOGDTpmC6ukcxhwps5waH5xch3zXdXve76FV9xKfj0oMHdMwCJSkF7rV6waEqpUj
 F0jGxCxZ74r0C7R07HFd6xQboAKw3dfqyIxd5Qe47jsEB38JejNzmqAaV6Lv/YR7esqv
 xQv7diVC7OPjHxq7tuYkXwMkTl84S/XNe1nmkTc4olqsSCaR6q9QJfPNzL2LrVOBTP1Y
 +nHtoluMQGzBoatWtW3+UypbXXjeV87h7vcLtgyN0jU+/igVwneu8hlkrlwYPKkSZ3By
 n06HssbJbKAvUGJhbFzjS2+ynGzlnVv/t24S0MHCpBuw+QIvWGmv3MYf1ugu0uQ+/lGP
 GDfQ==
X-Gm-Message-State: APjAAAVBEg+UiWVWQV6+Z/cUr/rk6oda3GNpTNfhVUucFHNufAvKmTpU
 8SVJzlUfFp3ACk2FJhye66aq4P+h+w==
X-Google-Smtp-Source: APXvYqxBt5V2UNHkAs2bWNvKFJgjtO4oF5Zc/GfbLWJRd4JRuCJBH394zibvcdFEg21WL8/QpyCECSidpkA=
X-Received: by 2002:a63:204b:: with SMTP id r11mr31496394pgm.121.1565639849123; 
 Mon, 12 Aug 2019 12:57:29 -0700 (PDT)
Date: Mon, 12 Aug 2019 12:57:25 -0700
Message-Id: <20190812195725.11793-1-yabinc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v3] coresight: Serialize enabling/disabling a link device.
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_125731_590999_01CB284B 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Yabin Cui <yabinc@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When tracing etm data of multiple threads on multiple cpus through perf
interface, some link devices are shared between paths of different cpus.
It creates race conditions when different cpus wants to enable/disable
the same link device at the same time.

Example 1:
Two cpus want to enable different ports of a coresight funnel, thus
calling the funnel enable operation at the same time. But the funnel
enable operation isn't reentrantable.

Example 2:
For an enabled coresight dynamic replicator with refcnt=1, one cpu wants
to disable it, while another cpu wants to enable it. Ideally we still have
an enabled replicator with refcnt=1 at the end. But in reality the result
is uncertain.

Since coresight devices claim themselves when enabled for self-hosted
usage, the race conditions above usually make the link devices not usable
after many cycles.

To fix the race conditions, this patch adds a spinlock to serialize
enabling/disabling a link device.

Fixes: a06ae8609b3d ("coresight: add CoreSight core layer framework")
Signed-off-by: Yabin Cui <yabinc@google.com>
---

v2 -> v3: extend lock range to protect csdev->enable for link devices.
          Add fixes tag.

---
 drivers/hwtracing/coresight/coresight.c | 12 +++++++++++-
 include/linux/coresight.h               |  3 +++
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 55db77f6410b..c069ada151b8 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -256,6 +256,7 @@ static int coresight_enable_link(struct coresight_device *csdev,
 	int ret;
 	int link_subtype;
 	int refport, inport, outport;
+	unsigned long flags;
 
 	if (!parent || !child)
 		return -EINVAL;
@@ -274,17 +275,20 @@ static int coresight_enable_link(struct coresight_device *csdev,
 	if (refport < 0)
 		return refport;
 
+	spin_lock_irqsave(&csdev->spinlock, flags);
 	if (atomic_inc_return(&csdev->refcnt[refport]) == 1) {
 		if (link_ops(csdev)->enable) {
 			ret = link_ops(csdev)->enable(csdev, inport, outport);
 			if (ret) {
 				atomic_dec(&csdev->refcnt[refport]);
+				spin_unlock_irqrestore(&csdev->spinlock, flags);
 				return ret;
 			}
 		}
 	}
 
 	csdev->enable = true;
+	spin_unlock_irqrestore(&csdev->spinlock, flags);
 
 	return 0;
 }
@@ -296,6 +300,7 @@ static void coresight_disable_link(struct coresight_device *csdev,
 	int i, nr_conns;
 	int link_subtype;
 	int refport, inport, outport;
+	unsigned long flags;
 
 	if (!parent || !child)
 		return;
@@ -315,16 +320,20 @@ static void coresight_disable_link(struct coresight_device *csdev,
 		nr_conns = 1;
 	}
 
+	spin_lock_irqsave(&csdev->spinlock, flags);
 	if (atomic_dec_return(&csdev->refcnt[refport]) == 0) {
 		if (link_ops(csdev)->disable)
 			link_ops(csdev)->disable(csdev, inport, outport);
 	}
 
 	for (i = 0; i < nr_conns; i++)
-		if (atomic_read(&csdev->refcnt[i]) != 0)
+		if (atomic_read(&csdev->refcnt[i]) != 0) {
+			spin_unlock_irqrestore(&csdev->spinlock, flags);
 			return;
+		}
 
 	csdev->enable = false;
+	spin_unlock_irqrestore(&csdev->spinlock, flags);
 }
 
 static int coresight_enable_source(struct coresight_device *csdev, u32 mode)
@@ -1225,6 +1234,7 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
 	csdev->subtype = desc->subtype;
 	csdev->ops = desc->ops;
 	csdev->orphan = false;
+	spin_lock_init(&csdev->spinlock);
 
 	csdev->dev.type = &coresight_dev_type[desc->type];
 	csdev->dev.groups = desc->groups;
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index a2b68823717b..dd28d9ab841d 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -9,6 +9,7 @@
 #include <linux/device.h>
 #include <linux/perf_event.h>
 #include <linux/sched.h>
+#include <linux/spinlock.h>
 
 /* Peripheral id registers (0xFD0-0xFEC) */
 #define CORESIGHT_PERIPHIDR4	0xfd0
@@ -153,6 +154,7 @@ struct coresight_connection {
  *		activated but not yet enabled.  Enabling for a _sink_
  *		appens when a source has been selected for that it.
  * @ea:		Device attribute for sink representation under PMU directory.
+ * @spinlock:	Serialize enabling/disabling this device.
  */
 struct coresight_device {
 	struct coresight_platform_data *pdata;
@@ -166,6 +168,7 @@ struct coresight_device {
 	/* sink specific fields */
 	bool activated;	/* true only if a sink is part of a path */
 	struct dev_ext_attribute *ea;
+	spinlock_t spinlock;
 };
 
 /*
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
