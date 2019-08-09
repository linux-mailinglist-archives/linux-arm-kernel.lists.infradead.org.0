Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE2188532
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 23:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TdA/dw9vTGulKllncql4V5qHoaAoAYqX9ip8N6ACN8g=; b=rejyvSkpIHqn8b
	P99n+YrhZCJH+ua40O8wGaGTedJA5tzxOm6a01t8Fg8Yes3ytd/sxzcSH2u7raO4xaptm/emb/dRk
	6M4EbSkWD6pZwQCGyN+trMpZyIhBGnTb+JJDOi6S1rXnIzs3Cv5d3Sna9OrdaWI6B1ByUqZ6Lx99n
	0YLCCluh/Wgyp6/uZmpkQqi+js9rRFlex6t05Pa9f04M/EWMVUMGrUju6YN6vZ+/9XV0MO5XKeLnj
	zmyVpP/Rn4Psk4MfQUvqwxeQjhye5AQcLwnOZX+zxKbZYjRbVA2C1hnEyPXFpdhXy0fbBb97saPI3
	sjXL9+ktmGad1sfUwTfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwCht-0004ho-0j; Fri, 09 Aug 2019 21:45:53 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwChk-0004ea-M3
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 21:45:46 +0000
Received: by mail-pf1-x449.google.com with SMTP id q67so2486787pfc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 14:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=6tkFczY/dvkkIFEc1rtR6Zc8LvZ9pSwYHPfa/X0Paso=;
 b=wEoB7tUZTCW5+AS5NImPnh1gGOxb1EwZw4FOWS8Kc/dFOzqKipvTD8X2nUqgQhU+k4
 eRok0zGoilfIAi7gZS5+da+uS1CxgtR7v9eEH4Nrr9s4YGJFh9/VkIK40nplbLwagTQ9
 N5l7slKvKREmdveVoJqNBT0mSNN3h922j/reIAysk+8ieUYLVBTzy9z7mryF3oma93PS
 961HyDaifASIWVYvhCo0cGV3yAe8gsjsjVrUSCSIITDX3t0poWrjbIK5OSi0z1lp2Xjr
 U8OGoWqNC4bkquCCoeZyNLoQwrUImwZlYA8fc9QaJJmZOakgFEP6Ulxqi+fJG/v2L9bC
 nPCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=6tkFczY/dvkkIFEc1rtR6Zc8LvZ9pSwYHPfa/X0Paso=;
 b=lpapk6mr55u/ICg3zNJXC91KSWpkFDKf+T+A/i2vr4HEUpGazo5jwCgVPl3xN0NHQb
 sPc1btN8/sk3guLftKDBm6tSl7iYfn5Y/+MDtms5Oa0d9HTkDEJwzBZD2hLh2HQR7Tga
 ne8hQ5JkezqyQ5n4qx824PqT8RXlCsOW0ewMRjtYso0qnpUU26FzME7QwZbXrdui8iQ9
 VW40GTFOrtZpBz92vcs0TkZ+o4zHPyuhDDHJvD09OEROi2b0YTXsX6+11kKwmGo454ib
 EoZBgukYSG+blrUDWv/Jf8xU5Z3iX8Ob4oNu1rRugo6KA78YNbeVS98ZW+jsYeMEdIS6
 NFsQ==
X-Gm-Message-State: APjAAAVaGozsIBZSeRdkrSCT+h4s2WRX7m/eCW/EUsayaP/l/i8NHlix
 TiQOpYIR0lVOY8Ycb+v5i5Iiqg82Tw==
X-Google-Smtp-Source: APXvYqzFEh7O8qf2o48Fv33K5IsiswwPvBLa5bi275a3dGlUPo7TR41h1n+PjPOmFKM8497I52qf9ZqFlWQ=
X-Received: by 2002:a65:6497:: with SMTP id e23mr18570776pgv.89.1565387142462; 
 Fri, 09 Aug 2019 14:45:42 -0700 (PDT)
Date: Fri,  9 Aug 2019 14:45:38 -0700
Message-Id: <20190809214538.29677-1-yabinc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v2] coresight: Serialize enabling/disabling a link device.
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_144544_749919_CC77BAD7 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

Signed-off-by: Yabin Cui <yabinc@google.com>
---

v1 -> v2: extend lock range to protect read of refcnt in
coresight_disable_link().

---
 drivers/hwtracing/coresight/coresight.c | 12 +++++++++++-
 include/linux/coresight.h               |  3 +++
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 55db77f6410b..e526bdeaeb22 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -256,6 +256,7 @@ static int coresight_enable_link(struct coresight_device *csdev,
 	int ret;
 	int link_subtype;
 	int refport, inport, outport;
+	unsigned long flags;
 
 	if (!parent || !child)
 		return -EINVAL;
@@ -274,15 +275,18 @@ static int coresight_enable_link(struct coresight_device *csdev,
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
+	spin_unlock_irqrestore(&csdev->spinlock, flags);
 
 	csdev->enable = true;
 
@@ -296,6 +300,7 @@ static void coresight_disable_link(struct coresight_device *csdev,
 	int i, nr_conns;
 	int link_subtype;
 	int refport, inport, outport;
+	unsigned long flags;
 
 	if (!parent || !child)
 		return;
@@ -315,14 +320,18 @@ static void coresight_disable_link(struct coresight_device *csdev,
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
+	spin_unlock_irqrestore(&csdev->spinlock, flags);
 
 	csdev->enable = false;
 }
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
